
# ---------------------------------------------------------------------
# DOC SETUP

document.body.style.cursor = "auto"
tour = Framer.Importer.load "imported/tour"
tour.app1.centerX()
background = new BackgroundLayer
	backgroundColor:"RGBA(246, 248, 249, 1)"



# ---------------------------------------------------------------------
# STATES

# DashWelcome (Default State)
dashWelcome = ->
	tour.app2.visible = true
	tour.app2.centerX()
	tour.IntroText.center()
	
	tour.IntroText.scale = 1.2
	tour.IntroText.opacity = 0
	tour.IntroText.blur = 5
	
	tour.IntroText.animate
		properties:
			scale: 1
			opacity:1
			blur: 0
		curve:"spring(200,20,0)"
		delay: 0.7

	dashStart()
	
	tour.app1.scale = 1.5
	tour.app1.opacity = 0.7
	tour.app1.blur = 15

	
	tour.app1.on Events.Click, ->
		background.backgroundColor = "RGBA(246, 248, 249, 1)"
		
		tour.app1.animate
			properties:
				scale: 1
				blur: 0
				opacity:1
			curve:"spring(800,55,30)"			
		
		tour.IntroText.animate
			properties:
				opacity:0
			curve:"ease"
			time:0.2


# Empty States (Default State)
dashStart = ->
	tour.BankDemo.visible = false
	tour.CashflowDemo.visible = false
	tour.InvoicesDemo.visible = false
	tour.ExpenseDemo.visible = false
	tour.BillDemo.visible = false
	tour.BankDemoButton.opacity = 0
	


# Bank Demo overlay
bankDemoTip = ->
	tour.BankDemo.visible = true
	
	# Fade all the other widgets
	tour.CashflowWidget.opacity = 0.5
	tour.InvoiceWidget.opacity = 0.5
	tour.BillWidget.opacity = 0.5
	tour.ExpenseWidget.opacity = 0.5
	
	tour.BankDemo.opacity = 0
	bankDemoAnimate()
	
	
# Bank Demo animations
bankDemoAnimate = ->
	BankTipXOrigin = tour.BankTip.x
	tour.BankTip.x = BankTipXOrigin - 50
	
	tour.BankDemo.animate
		properties:
			opacity: 1
		curve: "ease"
		time: 0.3
	
	tour.BankTip.animate
		properties:
			x: BankTipXOrigin
		curve:"spring(200,15,0)"

		
# Bank Demo overlay
CashflowDemoTip = ->
	tour.CashflowDemo.visible = true
	
	# Fade all the other widgets
	tour.BankWidget.opacity = 0.5
	tour.InvoiceWidget.opacity = 0.5
	tour.BillWidget.opacity = 0.5
	tour.ExpenseWidget.opacity = 0.5
	
	CashflowDemoAnimate()
	
	
# Bank Demo animations
CashflowDemoAnimate = ->
	CashflowTipXOrigin = tour.CashflowTip.x
	tour.CashflowTip.x = CashflowTipXOrigin - 50
	
	tour.CashflowDemo.animate
		properties:
			opacity: 1
		curve: "ease"
		time: 0.3
	
	tour.CashflowTip.animate
		properties:
			x: CashflowTipXOrigin
		curve:"spring(200,15,0)"
		
				

		

# ---------------------------------------------------------------------
# INITIALIZE STATE

# initialize empty dash
CashflowDemoTip()


# trigger tip
tour.BankWidget.on Events.MouseOver, ->
	tour.BankDemoButton.animate
		properties:
			opacity: 1
		curve:"ease"
		time: 0.3	

tour.BankDemoButton.on Events.MouseOver, ->
	document.body.style.cursor = "pointer"
tour.BankDemoButton.on Events.MouseOut, ->
	document.body.style.cursor = "auto"
tour.CashflowDemoButton.on Events.MouseOver, ->
	document.body.style.cursor = "pointer"
tour.CashflowDemoButton.on Events.MouseOut, ->
	document.body.style.cursor = "auto"
tour.InvoiceDemoButton.on Events.MouseOver, ->
	document.body.style.cursor = "pointer"
tour.InvoiceDemoButton.on Events.MouseOut, ->
	document.body.style.cursor = "auto"
tour.BillDemoButton.on Events.MouseOver, ->
	document.body.style.cursor = "pointer"
tour.BillDemoButton.on Events.MouseOut, ->
	document.body.style.cursor = "auto"
tour.InvoiceDemoButton.on Events.MouseOver, ->
	document.body.style.cursor = "pointer"
tour.InvoiceDemoButton.on Events.MouseOut, ->
	document.body.style.cursor = "auto"

tour.BankDemoButton.on Events.Click, ->
	bankDemoTip()
	
	
	
	
	
	