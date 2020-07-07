package com.harish.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.server.ResponseStatusException;

import com.harish.lab.model.Lab;
import com.harish.lab.model.LabBooking;
import com.harish.lab.model.LabCancel;
import com.harish.lab.model.LabProgress;
import com.harish.lab.model.LabRequest;
import com.harish.lab.repository.LabBookingRepository;
import com.harish.lab.repository.LabCancelRepository;
import com.harish.lab.repository.LabRequestRepository;
import com.harish.lab.repository.LabprogressRepository;
import com.harish.lab.repository.Labrepository;
import com.harish.model.Booking;
import com.harish.model.CancelBooking;
import com.harish.model.Hall;
import com.harish.model.HallProgress;
import com.harish.model.Request;
import com.harish.model.User;
import com.harish.repository.BookingRepository;
import com.harish.repository.CancelRepository;
import com.harish.repository.HallProgressRepository;
import com.harish.repository.HallRepository;
import com.harish.repository.RequestRepository;
import com.harish.repository.UserRepository;
import com.harish.transport.model.Cab;
import com.harish.transport.model.TransportBooking;
import com.harish.transport.model.TransportCancel;
import com.harish.transport.model.TransportProgress;
import com.harish.transport.model.TransportRequest;
import com.harish.transport.repository.CabRepository;
import com.harish.transport.repository.TransportBookingRepository;
import com.harish.transport.repository.TransportCancelRepository;
import com.harish.transport.repository.TransportRequestRepository;
import com.harish.transport.repository.TransportprogressRepository;
import com.harish.transport.repository.Transportrepository;
import com.harish.transportguest.model.GuestTransportBooking;
import com.harish.transportguest.model.GuestTransportCancel;
import com.harish.transportguest.model.GuestTransportProgress;
import com.harish.transportguest.model.GuestTransportRequest;
import com.harish.transportguest.model.Transport;
import com.harish.transportguest.repository.GuestTransportBookingRepository;
import com.harish.transportguest.repository.GuestTransportCancelRepository;
import com.harish.transportguest.repository.GuestTransportRequestRepository;
import com.harish.transportguest.repository.GuestTransportprogressRepository;

@Controller

public class HomeController 
{
	String msg;
	@Autowired
	private UserRepository repo;
	//hall Booking
	@Autowired
	private HallRepository repo3;
	@Autowired
	private PasswordEncoder passwordEncoder;
	@Autowired
	private BookingRepository bookrepo;
	@Autowired
	private RequestRepository reqrepo;
	@Autowired
	private JavaMailSender javaMailsender;
	@Autowired
	private CancelRepository cancelrepo;
	@Autowired
	private HallProgressRepository progressrepo;
	
	//Lab Booking
	@Autowired
	private Labrepository labrepo;
	@Autowired
	private LabBookingRepository labbookrepo;
	@Autowired
	private LabRequestRepository labreqrepo;
	@Autowired
	private LabCancelRepository labcancelrepo;
	@Autowired
	private LabprogressRepository labprogressrepo;
	
	
	//Transport booking
	@Autowired
	private Transportrepository tranrepo;
	@Autowired
	private TransportBookingRepository tranbookrepo;
	@Autowired
	private TransportRequestRepository tranreqrepo;
	@Autowired
	private TransportCancelRepository trancancelrepo;
	@Autowired
	private TransportprogressRepository tranprogressrepo;
	@Autowired
	private CabRepository cabrepo;
	
	//Guest pickuping
	@Autowired
	private GuestTransportBookingRepository guesttranbookrepo;
	@Autowired
	private GuestTransportRequestRepository guesttranreqrepo;
	@Autowired
	private GuestTransportCancelRepository guesttrancancelrepo;
	@Autowired
	private GuestTransportprogressRepository guesttranprogressrepo;
	
	
	@RequestMapping(value= {"/","/homepage"})
	public String home(Model model) throws IOException
	{
		
		
		
		
		//Hall Booking
		String uname;
		Object prin=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (prin instanceof UserDetails) {
			uname = ((UserDetails)prin).getUsername();
		}
		else
		{
			uname=prin.toString();
		}
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");  
		LocalDateTime now = LocalDateTime.now();  
		String s=dtf.format(now);
		
		//Download All
		List<Booking> download=new ArrayList<>();
		bookrepo.findAll().forEach(download::add);
		model.addAttribute("download", download);
		
		List<CancelBooking> cancelbooking=new ArrayList<>();
		cancelrepo.findAll().forEach(cancelbooking::add);
		model.addAttribute("cancelbooking", cancelbooking);
		
		
		List<LabBooking> labdownload=new ArrayList<>();
		labbookrepo.findAll().forEach(labdownload::add);
		model.addAttribute("labdownload", labdownload);
		
		List<LabCancel> labcancell=new ArrayList<>();
		labcancelrepo.findAll().forEach(labcancell::add);
		model.addAttribute("labcancell", labcancell);
		
		List<TransportBooking> tranallbooking=new ArrayList<>();
		tranbookrepo.findAll().forEach(tranallbooking::add);
		model.addAttribute("tranallbooking", tranallbooking);
		
		List<TransportCancel> tranallcancel=new ArrayList<>();
		trancancelrepo.findAll().forEach(tranallcancel::add);
		model.addAttribute("tranallcancel", tranallcancel);
		
		List<GuestTransportBooking> tranallguestbooking=new ArrayList<>();
		guesttranbookrepo.findAll().forEach(tranallguestbooking::add);
		model.addAttribute("tranallguestbooking", tranallguestbooking);
		
		List<GuestTransportCancel> guesttranallcancel=new ArrayList<>();
		guesttrancancelrepo.findAll().forEach(guesttranallcancel::add);
		model.addAttribute("guesttranallcancel", guesttranallcancel);
		
		User user=repo.findByUsername(uname);
		model.addAttribute("user", user);
		
		
		//Download By department
		List<Booking> deptdownload=new ArrayList<>();
		bookrepo.findByDept(user.getDept()).forEach(deptdownload::add);
		model.addAttribute("deptdownload", deptdownload);
		
		List<CancelBooking> deptcancelbooking=new ArrayList<>();
		cancelrepo.findByDept(user.getDept()).forEach(deptcancelbooking::add);
		model.addAttribute("deptcancelbooking", deptcancelbooking);
		
		List<LabBooking> deptlabdownload=new ArrayList<>();
		labbookrepo.findByDept(user.getDept()).forEach(deptlabdownload::add);
		model.addAttribute("deptlabdownload", deptlabdownload);
		
		List<LabCancel> deptlabcancell=new ArrayList<>();
		labcancelrepo.findByDept(user.getDept()).forEach(deptlabcancell::add);
		model.addAttribute("deptlabcancell", deptlabcancell);
		
		List<TransportBooking> depttranallbooking=new ArrayList<>();
		tranbookrepo.findByDept(user.getDept()).forEach(depttranallbooking::add);
		model.addAttribute("depttranallbooking", depttranallbooking);
		
		List<TransportCancel> depttranallcancel=new ArrayList<>();
		trancancelrepo.findByDept(user.getDept()).forEach(depttranallcancel::add);
		model.addAttribute("depttranallcancel", depttranallcancel);
		
		List<GuestTransportBooking> depttranallguestbooking=new ArrayList<>();
		guesttranbookrepo.findByDept(user.getDept()).forEach(depttranallguestbooking::add);
		model.addAttribute("depttranallguestbooking", depttranallguestbooking);
		
		List<GuestTransportCancel> deptguesttranallcancel=new ArrayList<>();
		guesttrancancelrepo.findByDept(user.getDept()).forEach(deptguesttranallcancel::add);
		model.addAttribute("deptguesttranallcancel", deptguesttranallcancel);
		
		//Hall Booking
		List<HallProgress> hallpro=new ArrayList<>();
		progressrepo.findByEnddateandtimeAndUsername(s,uname).forEach(hallpro::add);
		model.addAttribute("hallpro",hallpro);
		
		List<CancelBooking> cancel=new ArrayList<>();
		cancelrepo.findByEnddateandtimeAndUsername(s,uname).forEach(cancel::add);
		model.addAttribute("cancel", cancel);
		
		List<Request> requ=new ArrayList<>();
		reqrepo.findByEnddateandtimeAndUsername(s, uname).forEach(requ::add);
		model.addAttribute("requ", requ);
		
		long a=reqrepo.countByEnddateandtimeAndUsername(s, uname);
		model.addAttribute("Requestcount", a);
		
		//System.out.println(uname);
		List<Hall> hall1=new ArrayList<>();
		repo3.findAll().forEach(hall1::add);
		model.addAttribute("halllist",hall1);
		
		List<Booking> booking=new ArrayList<>();
		bookrepo.findByEnddateandtime(s).forEach(booking::add);
		model.addAttribute("booking",booking);
		
		
		//LabBooking
		List<LabProgress> labpro=new ArrayList<>();
		labprogressrepo.findByEnddateandtimeAndUsername(s,uname).forEach(labpro::add);
		model.addAttribute("labpro",labpro);
		
		List<LabCancel> labcancel=new ArrayList<>();
		labcancelrepo.findByEnddateandtimeAndUsername(s,uname).forEach(labcancel::add);
		model.addAttribute("labcancel", labcancel);
		
		List<LabRequest> labrequ=new ArrayList<>();
		labreqrepo.findByEnddateandtimeAndUsername(s, uname).forEach(labrequ::add);
		model.addAttribute("labrequ", labrequ);
		
		long b=labreqrepo.countByEnddateandtimeAndUsername(s, uname);
		model.addAttribute("LabRequestcount", b);
		
		List<Lab> lab1=new ArrayList<>();
		labrepo.findAll().forEach(lab1::add);
		model.addAttribute("lablist",lab1);
		
		List<LabBooking> labbooking=new ArrayList<>();
		labbookrepo.findByEnddateandtime(s).forEach(labbooking::add);
		model.addAttribute("labbooking",labbooking);
		
		
		//Transport Booking
		List<TransportProgress> tranpro=new ArrayList<>();
		tranprogressrepo.findByEnddateandtimeAndUsername(s,uname).forEach(tranpro::add);
		model.addAttribute("tranpro",tranpro);
		
		List<TransportCancel> trancancel=new ArrayList<>();
		trancancelrepo.findByEnddateandtimeAndUsername(s,uname).forEach(trancancel::add);
		model.addAttribute("trancancel", trancancel);
		
		List<TransportRequest> tranrequ=new ArrayList<>();
		tranreqrepo.findByEnddateandtimeAndUsername(s, uname).forEach(tranrequ::add);
		model.addAttribute("tranrequ", tranrequ);
		
		long c=tranreqrepo.countByEnddateandtimeAndUsername(s, uname);
		model.addAttribute("TranRequestcount", c);
		
		List<Transport> tran=new ArrayList<>();
		tranrepo.findAll().forEach(tran::add);
		model.addAttribute("tranlist",tran);
		
		List<TransportBooking> tranbooking=new ArrayList<>();
		tranbookrepo.findByEnddateandtime(s).forEach(tranbooking::add);
		model.addAttribute("tranbooking",tranbooking);
		
		//Guest Booking
		List<GuestTransportProgress> guesttranpro=new ArrayList<>();
		guesttranprogressrepo.findByPickupenddateandtimeAndUsername(s, uname).forEach(guesttranpro::add);
		model.addAttribute("guesttranpro",guesttranpro);
		
		List<GuestTransportCancel> guesttrancancel=new ArrayList<>();
		guesttrancancelrepo.findByPickupstartdateandtimeAndUsername(s,uname).forEach(guesttrancancel::add);
		model.addAttribute("guesttrancancel", guesttrancancel);
		
		List<GuestTransportRequest> guesttranrequ=new ArrayList<>();
		guesttranreqrepo.findByDropenddateandtimeAndUsername(s, uname).forEach(guesttranrequ::add);
		model.addAttribute("guesttranrequ", guesttranrequ);
		
		long d=guesttranreqrepo.countByDropenddateandtimeAndUsername(s, uname);
		model.addAttribute("guestTranRequestcount", d);
		
		List<GuestTransportBooking> guesttranbooking=new ArrayList<>();
		guesttranbookrepo.findByPickupstartdateandtime(s).forEach(guesttranbooking::add);
		model.addAttribute("guesttranbooking",guesttranbooking);
		
		return "Dashboard";
	}
	
	@RequestMapping("/editprofile")
	public String editprofile(@RequestParam("staffid") String staffid,@RequestParam("name")String name,@RequestParam("dept")String dept,@RequestParam("mnumber")Long mnumber)
	{
		String uname;
		Object prin=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (prin instanceof UserDetails) {
			uname = ((UserDetails)prin).getUsername();
		}
		else
		{
			uname=prin.toString();
		}
		repo.editprofile(staffid, name, dept, mnumber, uname);
		return "redirect:/";
	}
	
	
	@RequestMapping("/changepassword")
	public String changepassword(@RequestParam("oldpass") String oldpass,@RequestParam("newpass") String newpass,Model model)
	{
		String uname;
		Object prin=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (prin instanceof UserDetails) {
			uname = ((UserDetails)prin).getUsername();
		}
		else
		{
			uname=prin.toString();
		}
		BCryptPasswordEncoder bcrypt= new BCryptPasswordEncoder(); 
		User u=repo.findByUsername(uname);
		boolean isPasswordMatches= bcrypt.matches(oldpass,u.getPassword());
		if(isPasswordMatches)
		{
		repo.changepass(passwordEncoder.encode(newpass), uname);
		}
		else
		{
			msg="Old Password is Wrong";
			model.addAttribute("msg",msg);
			return "error";
		}
		return "login";
	}
	
	@RequestMapping("/otherchangepassword")
	public String otherchangepassword(@RequestParam("username") String uname,@RequestParam("pass") String newpass,Model model)
	{
		
		repo.changepass(passwordEncoder.encode(newpass), uname);
		
		return "redirect:/";
	}
	
	@RequestMapping("/login")
	public String login()
	{
		System.out.println("\n Calling home Page");
		
		return "login";
	}
	
	
	
	
	
	@RequestMapping("/userregister")
	public String userregistration(User user)
	{
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		repo.save(user);
		
		return "login";
	}
	
	
	//Hall Booking
	
	@RequestMapping(value="/addnewhall",method = RequestMethod.POST)
	public String hallregistration(Hall hall,Model model)
	{
		int hallcount=(int)repo3.count();
		hall.setHallid(hallcount+1);
		try
		{
			repo3.save(hall);
		}
		catch (Exception ex) {
	        throw new ResponseStatusException(
	          HttpStatus.NOT_FOUND, "Actor Not Found", ex);
	    }
		
		return "redirect:/";
	}
	
	@PostMapping("/updatehall")
	public String updatehall(Hall hall,Model model)
	{
		
		repo3.save(hall);
		return "redirect:/";
	}
	
	

	public List<Hall> listall()
	{
		return repo3.findAll();
	}
	
	@RequestMapping("/Dashboard")
	public String viewHall(Model model)
	{
		List<Hall> list=listall();
		model.addAttribute("halllist",list);
		return "redirect:/";
	}
	
	@RequestMapping("/requesthall")
	public String RequestHall(Model model,@RequestParam("guest_name") String guest_name,@RequestParam("purpose") String purpose,@RequestParam("hallid") int hallid,@RequestParam("startdate") String startdate,@RequestParam("enddate") String enddate,@RequestParam("starttime") String starttime,@RequestParam("endtime") String endtime,Request request,Booking booking) throws ParseException
	{
		
		System.out.println("hallid="+hallid);
		String name,startdatee=null,enddatee=null;
		DateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
		DateFormat inputFormat = new SimpleDateFormat("MM/dd/yyyy");
		Date date = inputFormat.parse(startdate);

		startdatee=outputFormat.format(date);
		date=inputFormat.parse(enddate);
		enddatee=outputFormat.format(date);
        startdate = startdatee;
		enddate=enddatee;
		Object prin=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (prin instanceof UserDetails) {
			name = ((UserDetails)prin).getUsername();
		}
		else
		{
			name=prin.toString();
		}
		System.out.println("\n\nStart time="+starttime);
		
		String startdateandtime=startdate+" "+starttime;
		String enddateandtime=enddate+" "+endtime;
		
		System.out.println("Enddateandtime="+enddateandtime);
		Object[] req=(Object[]) bookrepo.findByBookingid(hallid, startdateandtime, enddateandtime);
		System.out.println(req.length);
		for(Object o:req)
		{
			System.out.println(o);
		}
		
		if(req.length==0)
		{
			User user=repo.findByUsername(name);
			Hall hall=repo3.findByHallid(hallid);
			System.out.println("Hall name="+hall.getHall_name());
			reqrepo.count();
			request.setUsername(user.getUsername());
			request.setName(user.getName());
			request.setDept(user.getDept());
			request.setMnumber(user.getMnumber());
			request.setHall_name(hall.getHall_name());
			request.setHallid(hall.getHallid());
			request.setStartdateandtime(startdateandtime);
			request.setGuest_name(guest_name);
			request.setPurpose(purpose);
			
			request.setEnddateandtime(enddateandtime);
			if(user.getDept().equals("CSE"))
			{
				System.out.println("CSE="+"mathumithams98@gmail.com");
			request.setRequestMailid("mathumithams98@gmail.com");
			}
			else if(user.getDept().equals("ECE"))
			{
				request.setRequestMailid("hariprasathc67@gmail.com");
			}
			else if(user.getDept().equals("EEE"))
			{
				request.setRequestMailid("17csl005@kpriet.ac.in");
			}
			else if(user.getDept().equals("BME"))
			{
				request.setRequestMailid("mathumithams98@gmail.com");
			}
			else if(user.getDept().equals("MECH"))
			{
				request.setRequestMailid("mathumithams98@gmail.com");
			}
			else if(user.getDept().equals("CIVIL"))
			{
				request.setRequestMailid("mathumithams98@gmail.com");
			}
			else if(user.getDept().equals("ADMINISTRATOR"))
			{
				request.setRequestMailid("mathumithams98@gmail.com");
			}
			else if(user.getDept().equals("CHEMICAL"))
			{
				request.setRequestMailid("mathumithams98@gmail.com");
			}
			reqrepo.save(request);
			System.out.println("Request id="+request.getRequestid());
			int bookcount=(int)bookrepo.count();
			booking.setBookingid(bookcount+1);
			booking.setName(user.getName());
			booking.setDept(user.getDept());
			booking.setMnumber(user.getMnumber());
			booking.setUsername(user.getUsername());
			booking.setHallid(hall.getHallid());
			booking.setHall_name(hall.getHall_name());
			booking.setGuest_name(guest_name);
			booking.setPurpose(purpose);
			booking.setStartdateandtime(startdateandtime);
			booking.setEnddateandtime(enddateandtime);
			booking.setRequestid(request.getRequestid());
			bookrepo.save(booking);
			
			HallProgress hprog=new HallProgress();
			hprog.setHall_name(request.getHall_name());
			hprog.setProgressper("20%");
			hprog.setRequestid(request.getRequestid());
			hprog.setUsername(name);
			hprog.setChecker("progress-bar progress-bar-success");
			hprog.setEnddateandtime(enddateandtime);
			progressrepo.save(hprog);
			SimpleMailMessage mailMessage=new SimpleMailMessage();
			
			mailMessage.setTo(request.getRequestMailid());
			mailMessage.setSubject("Booking the Hall");
			
			mailMessage.setText("The booking request from " + user.getName()+ "and" +user.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
			javaMailsender.send(mailMessage);
		}
		else
		{
			
			msg="Kindly Check details after book the hall";
			model.addAttribute("msg",msg);
			System.out.println("error message");
			return "error";
			
		}
		return "redirect:/";
	}
	
	@RequestMapping("/requacceptedbyhod")
	public String Requacceptedbyhod(@RequestParam int requestid)
	{
		
		String name;
		Object prin=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (prin instanceof UserDetails) {
			name = ((UserDetails)prin).getUsername();
		}
		else
		{
			name=prin.toString();
		}
		User user=repo.findByUsername(name);
		Request reque=reqrepo.findByRequestid(requestid);
		if(name.equals("nithyavarshika97@gmail.com"))
		{
		
			SimpleMailMessage mailMessage=new SimpleMailMessage();
			progressrepo.updateprogressper("100%", requestid);
			mailMessage.setTo(reque.getUsername());
			mailMessage.setSubject("Confirmation of Booking");
			
			mailMessage.setText("The request hall is booked Successfully");
			javaMailsender.send(mailMessage);
			reqrepo.deleteById(requestid);
		}
		else
		{
			progressrepo.updateprogressper("60%", requestid);
			reqrepo.updaterequestmailid("nithyavarshika97@gmail.com",requestid);
			
			SimpleMailMessage mailMessage=new SimpleMailMessage();

			mailMessage.setTo("nithyavarshika97@gmail.com");
			mailMessage.setSubject("Booking the Hall");
			
			mailMessage.setText("The booking request from " + user.getName()+ " and " +user.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
			javaMailsender.send(mailMessage);
		}
		return "redirect:/";
		
	}
	
	@RequestMapping("/requestcancelbyuser")
	public String Requcanceledbyhod(@RequestParam int requestid)
	{
		HallProgress hallpro=progressrepo.findByRequestid(requestid);
		if(hallpro.getChecker().equals("progress-bar progress-bar-danger"))
		{
			progressrepo.deleteByRequestid(requestid);
			return "redirect:/";
		}
		else
		{
		Request requ=reqrepo.findByRequestid(requestid);
		
		SimpleMailMessage mailMessage=new SimpleMailMessage();

		mailMessage.setTo(requ.getUsername());
		mailMessage.setSubject("Booking the Hall");
		
		mailMessage.setText("The booking cancelled By Your self.\n"+"Click and go to login http://localhost:8080");
		
		javaMailsender.send(mailMessage);
		CancelBooking cancel=new CancelBooking(); 
		cancel.setDept(requ.getDept());
		cancel.setEnddateandtime(requ.getEnddateandtime());
		cancel.setGuest_name(requ.getGuest_name());
		cancel.setHall_name(requ.getHall_name());
		cancel.setHallid(requ.getHallid());
		cancel.setMnumber(requ.getMnumber());
		cancel.setName(requ.getName());
		cancel.setPurpose(requ.getPurpose());
		cancel.setRequestid(requ.getRequestid());
		cancel.setStartdateandtime(requ.getStartdateandtime());
		cancel.setUsername(requ.getUsername());
		cancelrepo.save(cancel);
		reqrepo.deleteById(requestid);
		bookrepo.deleterequestid(requestid);
		progressrepo.updatecherker("progress-bar progress-bar-danger", requestid);

		return "redirect:/";
		}
		
	}
	
	
	@RequestMapping("/requcanceled")
	public String Requcanceledbyuser(@RequestParam int requestid)
	{
		String name;
		Object prin=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (prin instanceof UserDetails) {
			name = ((UserDetails)prin).getUsername();
		}
		else
		{
			name=prin.toString();
		}
		Request requ=reqrepo.findByRequestid(requestid);
		
		SimpleMailMessage mailMessage=new SimpleMailMessage();

		mailMessage.setTo(requ.getUsername());
		mailMessage.setSubject("Booking the Hall");
		if(name.equals("nithyavarshika97@gmail.com"))
		{
			mailMessage.setText("The booking cancelled By A.O please check.\n"+"Click and go to login http://localhost:8080");	
		}
		else
		{
		mailMessage.setText("The booking cancelled By HOD of " +requ.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
		}
		javaMailsender.send(mailMessage);
		CancelBooking cancel=new CancelBooking();
		cancel.setDept(requ.getDept());
		cancel.setEnddateandtime(requ.getEnddateandtime());
		cancel.setGuest_name(requ.getGuest_name());
		cancel.setHall_name(requ.getHall_name());
		cancel.setHallid(requ.getHallid());
		cancel.setMnumber(requ.getMnumber());
		cancel.setName(requ.getName());
		cancel.setPurpose(requ.getPurpose());
		cancel.setRequestid(requ.getRequestid());
		cancel.setStartdateandtime(requ.getStartdateandtime());
		cancel.setUsername(requ.getUsername());
		cancelrepo.save(cancel);
		reqrepo.deleteById(requestid);
		bookrepo.deleterequestid(requestid);
		progressrepo.deleteById(requestid);

		return "redirect:/";
		
	}
	
	@RequestMapping("/deletehall")
	public String deletehall(@RequestParam int hallid)
	{
		repo3.deleteById(hallid);
		return "redirect:/";
	}
	
	
	//Lab Booking
	
	@RequestMapping(value="/addnewlab",method = RequestMethod.POST)
	public String labregistration(Lab lab,Model model)
	{
		int hallcount=(int)labrepo.count();
		lab.setLabid(hallcount+1);
		
			labrepo.save(lab);
			
		return "redirect:/";
	}
	
	@PostMapping("/updatelab")
	public String updatelab(Lab lab,Model model)
	{
		
		labrepo.save(lab);
		return "redirect:/";
	}
	
	
	
	@RequestMapping("/requestlab")
	public String RequestLab(Model model,@RequestParam("guest_name") String guest_name,@RequestParam("purpose") String purpose,@RequestParam("labid") int labid,@RequestParam("startdate") String startdate,@RequestParam("enddate") String enddate,@RequestParam("starttime") String starttime,@RequestParam("endtime") String endtime,LabRequest request,LabBooking booking) throws ParseException
	{
		
		System.out.println("labid="+labid);
		String name,startdatee=null,enddatee=null;
		DateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
		DateFormat inputFormat = new SimpleDateFormat("MM/dd/yyyy");
		Date date = inputFormat.parse(startdate);

		startdatee=outputFormat.format(date);
		date=inputFormat.parse(enddate);
		enddatee=outputFormat.format(date);
        startdate = startdatee;
		enddate=enddatee;
		Object prin=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (prin instanceof UserDetails) {
			name = ((UserDetails)prin).getUsername();
		}
		else
		{
			name=prin.toString();
		}
		System.out.println("\n\nStart time="+starttime);
		
		String startdateandtime=startdate+" "+starttime;
		String enddateandtime=enddate+" "+endtime;
		
		System.out.println("Enddateandtime="+enddateandtime);
		Object[] req=(Object[]) labbookrepo.findByBookingid(labid, startdateandtime, enddateandtime);
		System.out.println("Request="+req.length);
		
		if(req.length==0)
		{
			User user=repo.findByUsername(name);
			Lab lab=labrepo.findByLabid(labid);
			System.out.println("Lab name="+lab.getLab_name());
			
		
			request.setUsername(user.getUsername());
			request.setName(user.getName());
			request.setDept(user.getDept());
			request.setMnumber(user.getMnumber());
			request.setLab_name(lab.getLab_name());
			request.setLabid(lab.getLabid());
			request.setStartdateandtime(startdateandtime);
			request.setGuest_name(guest_name);
			request.setPurpose(purpose);
			
			request.setEnddateandtime(enddateandtime);
			if(user.getDept().equals("CSE"))
			{
				System.out.println("CSE="+"mathumithams98@gmail.com");
			request.setRequestMailid("mathumithams98@gmail.com");
			}
			else if(user.getDept().equals("ECE"))
			{
				request.setRequestMailid("hariprasathc67@gmail.com");
			}
			else if(user.getDept().equals("EEE"))
			{
				request.setRequestMailid("17csl005@kpriet.ac.in");
			}
			else if(user.getDept().equals("BME"))
			{
				request.setRequestMailid("mathumithams98@gmail.com");
			}
			else if(user.getDept().equals("MECH"))
			{
				request.setRequestMailid("mathumithams98@gmail.com");
			}
			else if(user.getDept().equals("CIVIL"))
			{
				request.setRequestMailid("mathumithams98@gmail.com");
			}
			else if(user.getDept().equals("ADMINISTRATOR"))
			{
				request.setRequestMailid("mathumithams98@gmail.com");
			}
			else if(user.getDept().equals("CHEMICAL"))
			{
				request.setRequestMailid("mathumithams98@gmail.com");
			}
			labreqrepo.save(request);
			System.out.println("Request id="+request.getRequestid());
			int bookcount=(int)labbookrepo.count();
			booking.setBookingid(bookcount+1);
			booking.setName(user.getName());
			booking.setDept(user.getDept());
			booking.setMnumber(user.getMnumber());
			booking.setUsername(user.getUsername());
			booking.setLabid(lab.getLabid());
			booking.setLab_name(lab.getLab_name());
			booking.setGuest_name(guest_name);
			booking.setPurpose(purpose);
			booking.setStartdateandtime(startdateandtime);
			booking.setEnddateandtime(enddateandtime);
			booking.setRequestid(request.getRequestid());
			labbookrepo.save(booking);
			
			LabProgress labprog=new LabProgress();
			labprog.setLab_name(request.getLab_name());
			labprog.setProgressper("25%");
			labprog.setRequestid(request.getRequestid());
			labprog.setUsername(name);
			labprog.setChecker("progress-bar progress-bar-success");
			labprog.setEnddateandtime(enddateandtime);
			labprogressrepo.save(labprog);
			SimpleMailMessage mailMessage=new SimpleMailMessage();
			
			mailMessage.setTo(request.getRequestMailid());
			mailMessage.setSubject("Lab Booking");
			
			mailMessage.setText("The booking request from " + user.getName()+ "and" +user.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
			javaMailsender.send(mailMessage);
		}
		else
		{
			msg="Kindly Check details after book the Lab";
			model.addAttribute("msg",msg);
			System.out.println("error message");
			return "error";
			
		}
		return "redirect:/";
	}
	
	@RequestMapping("/labrequaccepted")
	public String labRequaccepted(@RequestParam int requestid)
	{
		
		String name;
		Object prin=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (prin instanceof UserDetails) {
			name = ((UserDetails)prin).getUsername();
		}
		else
		{
			name=prin.toString();
		}
		
		User user=repo.findByUsername(name);
		LabRequest labreque=labreqrepo.findByRequestid(requestid);
		LabProgress checkprogress=labprogressrepo.findByRequestid(requestid);
		Lab lab=labrepo.findByLabid(labreque.getLabid());
		
		if(checkprogress.getProgressper().equals("75%"))
		{
		
			SimpleMailMessage mailMessage=new SimpleMailMessage();
			labprogressrepo.updateprogressper("100%", requestid);
			mailMessage.setTo(labreque.getUsername());
			mailMessage.setSubject("Lab Booking Confirmation");
			
			mailMessage.setText("The request lab is booked Successfully");
			javaMailsender.send(mailMessage);
			labreqrepo.deleteById(requestid);
		}
		else if(checkprogress.getProgressper().equals("25%"))
		{
			labprogressrepo.updateprogressper("50%", requestid);
			labreqrepo.updaterequestmailid(lab.getLab_incharge_mailid(),requestid);
			
			SimpleMailMessage mailMessage=new SimpleMailMessage();

			mailMessage.setTo(lab.getLab_incharge_mailid());
			mailMessage.setSubject("Lab Booking Request");
			
			mailMessage.setText("The booking request from " + user.getName()+ " and " +user.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
			javaMailsender.send(mailMessage);
		}
		else if(checkprogress.getProgressper().equals("50%"))
		{
			labprogressrepo.updateprogressper("75%", requestid);
			if(user.getDept().equals("CSE"))
			{
				System.out.println("CSE="+"mathumithams98@gmail.com");
				labreqrepo.updaterequestmailid("mathumithams98@gmail.com",requestid);
			}
			else if(user.getDept().equals("ECE"))
			{
				labreqrepo.updaterequestmailid("hariprasathc67@gmail.com",requestid);
				
			}
			else if(user.getDept().equals("EEE"))
			{
				labreqrepo.updaterequestmailid("17csl005@kpriet.ac.in",requestid);
				
			}
			else if(user.getDept().equals("BME"))
			{
				labreqrepo.updaterequestmailid("mathumithams98@gmail.com",requestid);
			}
			else if(user.getDept().equals("MECH"))
			{
				labreqrepo.updaterequestmailid("mathumithams98@gmail.com",requestid);
			}
			else if(user.getDept().equals("CIVIL"))
			{
				labreqrepo.updaterequestmailid("mathumithams98@gmail.com",requestid);
			}
			else if(user.getDept().equals("ADMINISTRATOR"))
			{
				labreqrepo.updaterequestmailid("mathumithams98@gmail.com",requestid);
			}
			else if(user.getDept().equals("CHEMICAL"))
			{
				labreqrepo.updaterequestmailid("mathumithams98@gmail.com",requestid);
			}
			
			SimpleMailMessage mailMessage=new SimpleMailMessage();
			LabRequest labreque1=labreqrepo.findByRequestid(requestid);
			mailMessage.setTo(labreque1.getRequestMailid());
			mailMessage.setSubject("Lab Booking Request");
			
			mailMessage.setText("The booking request from " + user.getName()+ " and " +user.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
			javaMailsender.send(mailMessage);
		}
		return "redirect:/";
		
	}
	
	@RequestMapping("/labrequcanceledbyuser")
	public String LabRequcanceledbyuser(@RequestParam int requestid)
	{
		LabProgress labpro=labprogressrepo.findByRequestid(requestid);
		if(labpro.getChecker().equals("progress-bar progress-bar-danger"))
		{
			labprogressrepo.deleteByRequestid(requestid);
			return "redirect:/";
		}
		else
		{
		LabRequest requ=labreqrepo.findByRequestid(requestid);
		
		SimpleMailMessage mailMessage=new SimpleMailMessage();

		mailMessage.setTo(requ.getUsername());
		mailMessage.setSubject("Booking the Hall");
		
		mailMessage.setText("The booking cancelled By Your self.\n"+"Click and go to login http://localhost:8080");
		
		javaMailsender.send(mailMessage);
		LabCancel cancel=new LabCancel(); 
		cancel.setDept(requ.getDept());
		cancel.setEnddateandtime(requ.getEnddateandtime());
		cancel.setGuest_name(requ.getGuest_name());
		cancel.setLab_name(requ.getLab_name());
		cancel.setLabid(requ.getLabid());
		cancel.setMnumber(requ.getMnumber());
		cancel.setName(requ.getName());
		cancel.setPurpose(requ.getPurpose());
		cancel.setRequestid(requ.getRequestid());
		cancel.setStartdateandtime(requ.getStartdateandtime());
		cancel.setUsername(requ.getUsername());
		labcancelrepo.save(cancel);
		labreqrepo.deleteById(requestid);
		labbookrepo.deleterequestid(requestid);
		labprogressrepo.updatecherker("progress-bar progress-bar-danger", requestid);

		return "redirect:/";
		}
		
	}
	
	@RequestMapping("/labrequcanceled")
	public String labRequcanceled(@RequestParam int requestid)
	{
		
		LabRequest requ=labreqrepo.findByRequestid(requestid);
		
		SimpleMailMessage mailMessage=new SimpleMailMessage();

		mailMessage.setTo(requ.getUsername());
		mailMessage.setSubject("Lab Booking Cancel");
		
		LabProgress checkprogress=labprogressrepo.findByRequestid(requestid);
		
		if(checkprogress.getProgressper().equals("75%"))
		{
			mailMessage.setText("The booking cancelled By Respected department HoD.\n"+"Click and go to login http://localhost:8080");	
		}
		else if(checkprogress.getProgressper().equals("50%"))
		{
		mailMessage.setText("The booking cancelled By Lab Incharge.\n"+"Click and go to login http://localhost:8080");
		}
		else if(checkprogress.getProgressper().equals("25%"))
		{
		mailMessage.setText("The booking cancelled By HOD of " +requ.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
		}
		javaMailsender.send(mailMessage);
		LabCancel cancel=new LabCancel();
		cancel.setDept(requ.getDept());
		cancel.setEnddateandtime(requ.getEnddateandtime());
		cancel.setGuest_name(requ.getGuest_name());
		cancel.setLab_name(requ.getLab_name());
		cancel.setLabid(requ.getLabid());
		cancel.setMnumber(requ.getMnumber());
		cancel.setName(requ.getName());
		cancel.setPurpose(requ.getPurpose());
		cancel.setRequestid(requ.getRequestid());
		cancel.setStartdateandtime(requ.getStartdateandtime());
		cancel.setUsername(requ.getUsername());
		labcancelrepo.save(cancel);
		labreqrepo.deleteById(requestid);
		labbookrepo.deleterequestid(requestid);
		labprogressrepo.updatecherker("progress-bar progress-bar-danger", requestid);
		

		return "redirect:/";
		
	}
	
	@RequestMapping("/deletelab")
	public String deletelab(@RequestParam int labid)
	{
		labrepo.deleteById(labid);
		return "redirect:/";
	}
	
	//Transport Booking
	
		@RequestMapping(value="/addnewcardetails",method = RequestMethod.POST)
		public String tranregistration(Transport tran,Model model)
		{
			int trancount=(int)tranrepo.count();
			tran.setCarid(trancount+1);
			
				tranrepo.save(tran);
				
			return "redirect:/";
		}
		
		@PostMapping("/updatecardetails")
		public String updatetran(Transport tran)
		{
			
			tranrepo.save(tran);
			return "redirect:/";
		}
		
		@RequestMapping("/requesttran")
		public String RequestTran(@RequestParam("except_members") int except_members,@RequestParam("enddate") String enddate,@RequestParam("purpose") String purpose,@RequestParam("carid") int carid,@RequestParam("startdate") String startdate,@RequestParam("starttime") String starttime,@RequestParam("endtime") String endtime,TransportRequest request,TransportBooking booking) throws ParseException
		{
			
			System.out.println("carid="+carid);
			String name,startdatee=null,enddatee=null;
			DateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
			DateFormat inputFormat = new SimpleDateFormat("MM/dd/yyyy");
			Date date = inputFormat.parse(startdate);
			
			startdatee=outputFormat.format(date);
			date=inputFormat.parse(enddate);
			enddatee=outputFormat.format(date);
			
	        startdate = startdatee;
			enddate=enddatee;
			Object prin=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			if (prin instanceof UserDetails) {
				name = ((UserDetails)prin).getUsername();
			}
			else
			{
				name=prin.toString();
			}
			System.out.println("\n\nStart time="+starttime);
			
			String startdateandtime=startdate+" "+starttime;
			String enddateandtime=enddate+" "+endtime;
			
			System.out.println("Enddateandtime="+enddateandtime);
			
			
			
			
				User user=repo.findByUsername(name);
				Cab tran=cabrepo.findByCarid(carid);
				System.out.println("Car name="+tran.getCar_name());
				
				
				request.setUsername(user.getUsername());
				request.setName(user.getName());
				request.setDept(user.getDept());
				request.setMnumber(user.getMnumber());
				request.setCar_name(tran.getCar_name());
				request.setCarid(tran.getCarid());
				request.setStartdateandtime(startdateandtime);
				request.setExcept_members(except_members);
				request.setPurpose(purpose);
				
				request.setEnddateandtime(enddateandtime);
				if(user.getDept().equals("CSE"))
				{
					System.out.println("CSE="+"mathumithams98@gmail.com");
				request.setRequestMailid("mathumithams98@gmail.com");
				}
				else if(user.getDept().equals("ECE"))
				{
					request.setRequestMailid("hariprasathc67@gmail.com");
				}
				else if(user.getDept().equals("EEE"))
				{
					request.setRequestMailid("17csl005@kpriet.ac.in");
				}
				else if(user.getDept().equals("BME"))
				{
					request.setRequestMailid("mathumithams98@gmail.com");
				}
				else if(user.getDept().equals("MECH"))
				{
					request.setRequestMailid("mathumithams98@gmail.com");
				}
				else if(user.getDept().equals("CIVIL"))
				{
					request.setRequestMailid("mathumithams98@gmail.com");
				}
				else if(user.getDept().equals("ADMINISTRATOR"))
				{
					request.setRequestMailid("mathumithams98@gmail.com");
				}
				else if(user.getDept().equals("CHEMICAL"))
				{
					request.setRequestMailid("mathumithams98@gmail.com");
				}
				tranreqrepo.save(request);
				System.out.println("Request id="+request.getRequestid());
				int bookcount=(int)tranbookrepo.count();
				booking.setBookingid(bookcount+1);
				booking.setName(user.getName());
				booking.setDept(user.getDept());
				booking.setMnumber(user.getMnumber());
				booking.setUsername(user.getUsername());
				booking.setCarid(tran.getCarid());
				booking.setCar_name(tran.getCar_name());
				booking.setExcept_members(except_members);
				booking.setPurpose(purpose);
				booking.setStartdateandtime(startdateandtime);
				booking.setEnddateandtime(enddateandtime);
				booking.setRequestid(request.getRequestid());
				tranbookrepo.save(booking);
				
				TransportProgress tranprog=new TransportProgress();
				tranprog.setCar_name(request.getCar_name());
				tranprog.setProgressper("25%");
				tranprog.setRequestid(request.getRequestid());
				tranprog.setUsername(name);
				tranprog.setChecker("progress-bar progress-bar-success");
				tranprog.setEnddateandtime(enddateandtime);
				tranprogressrepo.save(tranprog);
				SimpleMailMessage mailMessage=new SimpleMailMessage();
				
				mailMessage.setTo(request.getRequestMailid());
				mailMessage.setSubject("Transport Booking");
				
				mailMessage.setText("The booking request from " + user.getName()+ "and" +user.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
				javaMailsender.send(mailMessage);
			
			
			return "redirect:/";
		}
	
		@RequestMapping("/tranrequaccepted")
		public String TransRequaccepted(@RequestParam int requestid)
		{
			
			String name;
			Object prin=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			if (prin instanceof UserDetails) {
				name = ((UserDetails)prin).getUsername();
			}
			else
			{
				name=prin.toString();
			}
			
			User user=repo.findByUsername(name);
			TransportRequest tranreque=tranreqrepo.findByRequestid(requestid);
			TransportProgress checkprogress=tranprogressrepo.findByRequestid(requestid);
			//Transport tran=tranrepo.findByCarid(tranreque.getCarid());
			
			if(checkprogress.getProgressper().equals("75%"))
			{
			
				SimpleMailMessage mailMessage=new SimpleMailMessage();
				tranprogressrepo.updateprogressper("100%", requestid);
				mailMessage.setTo(tranreque.getUsername());
				mailMessage.setSubject("Transport Booking Confirmation");
				
				mailMessage.setText("The request vechile is booked Successfully");
				javaMailsender.send(mailMessage);
				tranreqrepo.deleteById(requestid);
			}
			else if(checkprogress.getProgressper().equals("25%"))
			{
				tranprogressrepo.updateprogressper("50%", requestid);
				tranreqrepo.updaterequestmailid("hariprasathc67@gmail.com",requestid);
				
				SimpleMailMessage mailMessage=new SimpleMailMessage();

				mailMessage.setTo("hariprasathc67@gmail.com");
				mailMessage.setSubject("Transport Booking Request");
				
				mailMessage.setText("The booking request from " + user.getName()+ " and " +user.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
				javaMailsender.send(mailMessage);
			}
			else if(checkprogress.getProgressper().equals("50%"))
			{
				tranprogressrepo.updateprogressper("75%", requestid);
				tranreqrepo.updaterequestmailid("mathumithams98@gmail.com",requestid);
				
				SimpleMailMessage mailMessage=new SimpleMailMessage();

				mailMessage.setTo("mathumithams98@gmail.com");
				mailMessage.setSubject("Transport Booking Request");
				
				mailMessage.setText("The booking request from " + user.getName()+ " and " +user.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
				javaMailsender.send(mailMessage);
			}
			return "redirect:/";
			
		}
		
		@RequestMapping("/tranrequcanceledbyuser")
		public String TranRequcanceledbyuser(@RequestParam int requestid)
		{
			TransportProgress tranpro=tranprogressrepo.findByRequestid(requestid);
			if(tranpro.getChecker().equals("progress-bar progress-bar-danger"))
			{
				tranprogressrepo.deleteByRequestid(requestid);
				return "redirect:/";
			}
			TransportRequest requ=tranreqrepo.findByRequestid(requestid);
			
			SimpleMailMessage mailMessage=new SimpleMailMessage();

			mailMessage.setTo(requ.getUsername());
			mailMessage.setSubject("Transport Booking Cancelling");
			
			mailMessage.setText("The booking cancelled By Your self.\n"+"Click and go to login http://localhost:8080");
			
			javaMailsender.send(mailMessage);
			TransportCancel cancel=new TransportCancel(); 
			cancel.setDept(requ.getDept());
			cancel.setEnddateandtime(requ.getEnddateandtime());
			cancel.setExcept_members(requ.getExcept_members());
			cancel.setCar_name(requ.getCar_name());
			cancel.setCarid(requ.getCarid());
			cancel.setMnumber(requ.getMnumber());
			cancel.setName(requ.getName());
			cancel.setPurpose(requ.getPurpose());
			cancel.setRequestid(requ.getRequestid());
			cancel.setStartdateandtime(requ.getStartdateandtime());
			cancel.setUsername(requ.getUsername());
			trancancelrepo.save(cancel);
			tranreqrepo.deleteById(requestid);
			tranbookrepo.deleterequestid(requestid);
			tranprogressrepo.updatecherker("progress-bar progress-bar-danger", requestid);

			return "redirect:/";
			
		}
		
		@RequestMapping("/tranrequcanceled")
		public String tranRequcanceled(@RequestParam int requestid)
		{
			System.out.println(requestid);
			TransportRequest requ=tranreqrepo.findByRequestid(requestid);
			
			SimpleMailMessage mailMessage=new SimpleMailMessage();

			mailMessage.setTo(requ.getUsername());
			mailMessage.setSubject("Transport Booking Cancel");
			
			TransportProgress checkprogress=tranprogressrepo.findByRequestid(requestid);
			
			if(checkprogress.getProgressper().equals("75%"))
			{
				mailMessage.setText("The booking cancelled By A/o.\n"+"Click and go to login http://localhost:8080");	
			}
			else if(checkprogress.getProgressper().equals("50%"))
			{
			mailMessage.setText("The booking cancelled By Transport Incharge.\n"+"Click and go to login http://localhost:8080");
			}
			else if(checkprogress.getProgressper().equals("25%"))
			{
			mailMessage.setText("The booking cancelled By HOD of " +requ.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
			}
			javaMailsender.send(mailMessage);
			TransportCancel cancel=new TransportCancel();
			cancel.setDept(requ.getDept());
			cancel.setEnddateandtime(requ.getEnddateandtime());
			cancel.setExcept_members(requ.getExcept_members());
			cancel.setCar_name(requ.getCar_name());
			cancel.setCarid(requ.getCarid());
			cancel.setMnumber(requ.getMnumber());
			cancel.setName(requ.getName());
			cancel.setPurpose(requ.getPurpose());
			cancel.setRequestid(requ.getRequestid());
			cancel.setStartdateandtime(requ.getStartdateandtime());
			cancel.setUsername(requ.getUsername());
			trancancelrepo.save(cancel);
			tranreqrepo.deleteById(requestid);
			tranbookrepo.deleterequestid(requestid);
			tranprogressrepo.updatecherker("progress-bar progress-bar-danger", requestid);
			

			return "redirect:/";
			
		}
		@RequestMapping("/deletetran")
		public String deletetran(@RequestParam int carid)
		{
			tranrepo.deleteById(carid);
			return "redirect:/";
		}
	
		
		//Guest pickup
		@RequestMapping("/requesttran2")
		public String GuestRequestTran(Model model,@RequestParam("noOfpersons") int noOfpersons,@RequestParam("pickuppoint") String pickuppoint,@RequestParam("droppoint") String droppoint,@RequestParam("purpose") String purpose,@RequestParam("carid") int carid,@RequestParam("startdate") String startdate,@RequestParam("pickupstarttime") String starttime,@RequestParam("pickupendtime") String endtime,GuestTransportRequest request,GuestTransportBooking booking) throws ParseException
		{
			
			System.out.println("carid="+carid);
			String name,startdatee=null;
			DateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
			DateFormat inputFormat = new SimpleDateFormat("MM/dd/yyyy");
			Date date = inputFormat.parse(startdate);

			startdatee=outputFormat.format(date);
			
			
	        startdate = startdatee;
			
			Object prin=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			if (prin instanceof UserDetails) {
				name = ((UserDetails)prin).getUsername();
			}
			else
			{
				name=prin.toString();
			}
			System.out.println("\n\nStart time="+starttime);
			
			String startdateandtime=startdate+" "+starttime;
			String enddateandtime=startdate+" "+endtime;
			
			System.out.println("Enddateandtime="+enddateandtime);
			
			
			
			
				User user=repo.findByUsername(name);
				Transport tran=tranrepo.findByCarid(carid);
				System.out.println("Car name="+tran.getCar_name());
				
				Object[] req=(Object[]) guesttranbookrepo.findByBookingid(carid, startdateandtime, enddateandtime);
				System.out.println("Request="+req.length);
				
				if(req.length==0)
				{
				
				request.setUsername(user.getUsername());
				request.setName(user.getName());
				request.setDept(user.getDept());
				request.setMnumber(user.getMnumber());
				request.setCar_name(tran.getCar_name());
				request.setCarid(tran.getCarid());
				request.setPickupstartdateandtime(startdateandtime);
				request.setNoOfpersons(noOfpersons);
				request.setPurpose(purpose);
				request.setPickuppoint(pickuppoint);
				request.setDroppoint(droppoint);
				request.setDropenddateandtime(enddateandtime);
				if(user.getDept().equals("CSE"))
				{
					System.out.println("CSE="+"mathumithams98@gmail.com");
				request.setRequestMailid("mathumithams98@gmail.com");
				}
				else if(user.getDept().equals("ECE"))
				{
					request.setRequestMailid("hariprasathc67@gmail.com");
				}
				else if(user.getDept().equals("EEE"))
				{
					request.setRequestMailid("17csl005@kpriet.ac.in");
				}
				else if(user.getDept().equals("BME"))
				{
					request.setRequestMailid("hariprasathc67@gmail.com");
				}
				else if(user.getDept().equals("MECH"))
				{
					request.setRequestMailid("hariprasathc67@gmail.com");
				}
				else if(user.getDept().equals("CIVIL"))
				{
					request.setRequestMailid("hariprasathc67@gmail.com");
				}
				else if(user.getDept().equals("ADMINISTRATOR"))
				{
					request.setRequestMailid("hariprasathc67@gmail.com");
				}
				else if(user.getDept().equals("CHEMICAL"))
				{
					request.setRequestMailid("hariprasathc67@gmail.com");
				}
				guesttranreqrepo.save(request);
				System.out.println("Request id="+request.getRequestid());
				int bookcount=(int)tranbookrepo.count();
				booking.setBookingid(bookcount+1);
				booking.setName(user.getName());
				booking.setDept(user.getDept());
				booking.setMnumber(user.getMnumber());
				booking.setUsername(user.getUsername());
				booking.setCarid(tran.getCarid());
				booking.setCar_name(tran.getCar_name());
				booking.setNoOfpersons(noOfpersons);
				booking.setPurpose(purpose);
				booking.setPickuppoint(pickuppoint);
				booking.setDroppoint(droppoint);
				booking.setPickupstartdateandtime(startdateandtime);
				booking.setDropenddateandtime(enddateandtime);
				booking.setRequestid(request.getRequestid());
				guesttranbookrepo.save(booking);
				
				GuestTransportProgress tranprog=new GuestTransportProgress();
				tranprog.setCar_name(request.getCar_name());
				tranprog.setProgressper("25%");
				tranprog.setRequestid(request.getRequestid());
				tranprog.setUsername(name);
				tranprog.setChecker("progress-bar progress-bar-success");
				tranprog.setPickupstartdateandtime(startdateandtime);
				guesttranprogressrepo.save(tranprog);
				SimpleMailMessage mailMessage=new SimpleMailMessage();
				
				mailMessage.setTo(request.getRequestMailid());
				mailMessage.setSubject("Transport Booking");
				
				mailMessage.setText("The booking request from " + user.getName()+ "and" +user.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
				javaMailsender.send(mailMessage);
				}
				else
				{
					msg="Kindly Check details after book the Cab";
					model.addAttribute("msg",msg);
					return "error";
				}
			
			return "redirect:/";
		}
		
		@RequestMapping("/tranrequaccepted2")
		public String GuestTransRequaccepted(@RequestParam int requestid)
		{
			
			String name;
			Object prin=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			if (prin instanceof UserDetails) {
				name = ((UserDetails)prin).getUsername();
			}
			else
			{
				name=prin.toString();
			}
			
			User user=repo.findByUsername(name);
			GuestTransportRequest tranreque=guesttranreqrepo.findByRequestid(requestid);
			GuestTransportProgress checkprogress=guesttranprogressrepo.findByRequestid(requestid);
			//Transport tran=tranrepo.findByCarid(tranreque.getCarid());
			
			if(checkprogress.getProgressper().equals("75%"))
			{
			
				SimpleMailMessage mailMessage=new SimpleMailMessage();
				tranprogressrepo.updateprogressper("100%", requestid);
				mailMessage.setTo(tranreque.getUsername());
				mailMessage.setSubject("Transport Booking Confirmation");
				
				mailMessage.setText("The request vechile is booked Successfully");
				javaMailsender.send(mailMessage);
				tranreqrepo.deleteById(requestid);
			}
			else if(checkprogress.getProgressper().equals("25%"))
			{
				guesttranprogressrepo.updateprogressper("50%", requestid);
				guesttranreqrepo.updaterequestmailid("hariprasathc67@gmail.com",requestid);
				
				SimpleMailMessage mailMessage=new SimpleMailMessage();

				mailMessage.setTo("hariprasathc67@gmail.com");
				mailMessage.setSubject("Transport Booking Request");
				
				mailMessage.setText("The booking request from " + user.getName()+ " and " +user.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
				javaMailsender.send(mailMessage);
			}
			else if(checkprogress.getProgressper().equals("50%"))
			{
				guesttranprogressrepo.updateprogressper("75%", requestid);
				guesttranreqrepo.updaterequestmailid("mathumithams98@gmail.com",requestid);
				
				SimpleMailMessage mailMessage=new SimpleMailMessage();

				mailMessage.setTo("mathumithams98@gmail.com");
				mailMessage.setSubject("Transport Booking Request");
				
				mailMessage.setText("The booking request from " + user.getName()+ " and " +user.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
				javaMailsender.send(mailMessage);
			}
			return "redirect:/";
			
		}
		
		@RequestMapping("/tranrequcanceledbyuser2")
		public String GuestTranRequcanceledbyuser(@RequestParam int requestid)
		{
			GuestTransportProgress tranpro=guesttranprogressrepo.findByRequestid(requestid);
			if(tranpro.getChecker().equals("progress-bar progress-bar-danger"))
			{
				guesttranprogressrepo.deleteByRequestid(requestid);
				return "redirect:/";
			}
			GuestTransportRequest requ=guesttranreqrepo.findByRequestid(requestid);
			
			SimpleMailMessage mailMessage=new SimpleMailMessage();

			mailMessage.setTo(requ.getUsername());
			mailMessage.setSubject("Transport Booking Cancelling");
			
			mailMessage.setText("The booking cancelled By Your self.\n"+"Click and go to login http://localhost:8080");
			
			javaMailsender.send(mailMessage);
			GuestTransportCancel cancel=new GuestTransportCancel(); 
			cancel.setDept(requ.getDept());
			cancel.setDropenddateandtime(requ.getDropenddateandtime());
			cancel.setNoOfpersons(requ.getNoOfpersons());
			cancel.setCar_name(requ.getCar_name());
			cancel.setCarid(requ.getCarid());
			cancel.setMnumber(requ.getMnumber());
			cancel.setName(requ.getName());
			cancel.setPurpose(requ.getPurpose());
			cancel.setRequestid(requ.getRequestid());
			cancel.setPickuppoint(requ.getPickupstartdateandtime());
			cancel.setUsername(requ.getUsername());
			cancel.setPickuppoint(requ.getPickuppoint());
			cancel.setDroppoint(requ.getDroppoint());
			guesttrancancelrepo.save(cancel);
			guesttranreqrepo.deleteById(requestid);
			guesttranbookrepo.deleterequestid(requestid);
			guesttranprogressrepo.updatecherker("progress-bar progress-bar-danger", requestid);

			return "redirect:/";
			
		}
		
		@RequestMapping("/tranrequcanceled2")
		public String GuesttranRequcanceled(@RequestParam int requestid)
		{
			System.out.println(requestid);
			GuestTransportRequest requ=guesttranreqrepo.findByRequestid(requestid);
			
			SimpleMailMessage mailMessage=new SimpleMailMessage();

			mailMessage.setTo(requ.getUsername());
			mailMessage.setSubject("Transport Booking Cancel");
			
			GuestTransportProgress checkprogress=guesttranprogressrepo.findByRequestid(requestid);
			
			if(checkprogress.getProgressper().equals("75%"))
			{
				mailMessage.setText("The booking cancelled By A/o.\n"+"Click and go to login http://localhost:8080");	
			}
			else if(checkprogress.getProgressper().equals("50%"))
			{
			mailMessage.setText("The booking cancelled By Transport Incharge.\n"+"Click and go to login http://localhost:8080");
			}
			else if(checkprogress.getProgressper().equals("25%"))
			{
			mailMessage.setText("The booking cancelled By HOD of " +requ.getDept()+ " please check.\n"+"Click and go to login http://localhost:8080");
			}
			javaMailsender.send(mailMessage);
			GuestTransportCancel cancel=new GuestTransportCancel();
			cancel.setDept(requ.getDept());
			cancel.setPickupstartdateandtime(requ.getPickupstartdateandtime());
			cancel.setDropenddateandtime(requ.getDropenddateandtime());
			cancel.setCar_name(requ.getCar_name());
			cancel.setCarid(requ.getCarid());
			cancel.setMnumber(requ.getMnumber());
			cancel.setName(requ.getName());
			cancel.setPurpose(requ.getPurpose());
			cancel.setRequestid(requ.getRequestid());
			cancel.setNoOfpersons(requ.getNoOfpersons());
			cancel.setPickuppoint(requ.getPickuppoint());
			cancel.setDroppoint(requ.getDroppoint());
			cancel.setUsername(requ.getUsername());
			guesttrancancelrepo.save(cancel);
			guesttranreqrepo.deleteById(requestid);
			guesttranbookrepo.deleterequestid(requestid);
			guesttranprogressrepo.updatecherker("progress-bar progress-bar-danger", requestid);
			

			return "redirect:/";
			
		}
		
	@RequestMapping("/errormessage")
	public String ErrorMessage()
	{
		return "redirect:/";
	}
	
	@RequestMapping("/logout-success")
	public String logoutpage()
	{
		return "login";
	}
}
