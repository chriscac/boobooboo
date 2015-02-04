
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
	dashStart()
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
	tour.InvoiceDemo.visible = false
	tour.ExpenseDemo.visible = false
	tour.BillDemo.visible = false
	
	tour.BankDemoButton.opacity = 0
	
	
	tour.BankWidget.opacity = 1	
	tour.CashflowWidget.opacity = 1
	tour.InvoiceWidget.opacity = 1
	tour.BillWidget.opacity = 1
	tour.ExpenseWidget.opacity = 1
	



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

# Bank Demo Hide 
bankDemoTipRemove = ->
	tour.BankDemo.animate
		properties:
			opacity: 0
		curve: "ease"
		time: 0.2
	


		
# Cashflow Demo overlay
CashflowDemoTip = ->
	tour.CashflowDemo.visible = true
	
	# Fade all the other widgets
	tour.BankWidget.opacity = 0.5
	tour.InvoiceWidget.opacity = 0.5
	tour.BillWidget.opacity = 0.5
	tour.ExpenseWidget.opacity = 0.5
	
	tour.CashflowDemo.opacity = 0
	CashflowDemoAnimate()
	
	
# Cashflow Demo animations
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

# Cashflow Demo Hide 
CashflowDemoTipRemove = ->
	tour.CashflowDemo.animate
		properties:
			opacity: 0
		curve: "ease"
		time: 0.2
	


	
	
# Invoice Demo overlay
InvoiceDemoTip = ->
	tour.InvoiceDemo.visible = true
	
	# Fade all the other widgets
	tour.BankWidget.opacity = 0.5
	tour.InvoiceWidget.opacity = 0.5
	tour.BillWidget.opacity = 0.5
	tour.ExpenseWidget.opacity = 0.5

	tour.InvoiceDemo.opacity = 0	
	InvoiceDemoAnimate()
	
	
# Invoice Demo animations
InvoiceDemoAnimate = ->
	InvoiceTipXOrigin = tour.InvoiceTip.x
	tour.InvoiceTip.x = InvoiceTipXOrigin - 50
	
	tour.InvoiceDemo.animate
		properties:
			opacity: 1
		curve: "ease"
		time: 0.3
	
	tour.InvoiceTip.animate
		properties:
			x: InvoiceTipXOrigin
		curve:"spring(200,15,0)"

# Invoice Demo Hide 
InvoiceDemoTipRemove = ->
	tour.InvoiceDemo.animate
		properties:
			opacity: 0
		curve: "ease"
		time: 0.2
	

				
# Bill Demo overlay
BillDemoTip = ->
	tour.BillDemo.visible = true
	
	# Fade all the other widgets
	tour.BankWidget.opacity = 0.5
	tour.BillWidget.opacity = 0.5
	tour.ExpenseWidget.opacity = 0.5

	tour.BillDemo.opacity = 0	
	BillDemoAnimate()
	
	
# Bill Demo animations
BillDemoAnimate = ->
	BillTipXOrigin = tour.BillTip.x
	tour.BillTip.x = BillTipXOrigin - 50
	
	tour.BillDemo.animate
		properties:
			opacity: 1
		curve: "ease"
		time: 0.3
	
	tour.BillTip.animate
		properties:
			x: BillTipXOrigin
		curve:"spring(200,15,0)"

# Bill Demo Hide 
BillDemoTipRemove = ->
	tour.BillDemo.animate
		properties:
			opacity: 0
		curve: "ease"
		time: 0.2
	



# Expense Demo overlay
ExpenseDemoTip = ->
	tour.ExpenseDemo.visible = true
	
	# Fade all the other widgets
	tour.ExpenseWidget.opacity = 0


	tour.ExpenseDemo.opacity = 0	
	ExpenseDemoAnimate()
	
	
# Expense Demo animations
ExpenseDemoAnimate = ->
	ExpenseTipXOrigin = tour.ExpenseTip.x
	tour.ExpenseTip.x = ExpenseTipXOrigin - 50
	
	tour.ExpenseDemo.animate
		properties:
			opacity: 1
		curve: "ease"
		time: 0.3
	
	tour.ExpenseTip.animate
		properties:
			x: ExpenseTipXOrigin
		curve:"spring(200,15,0)"
				
# Expense Demo Hide 
ExpenseDemoTipRemove = ->
	tour.ExpenseDemo.animate
		properties:
			opacity: 0
		curve: "ease"
		time: 0.2
	
		
	
				
				
	
# ---------------------------------------------------------------------
# INTERACTION TRIGGERS						

# trigger tip
tour.BankWidget.on Events.MouseOver, ->
	tour.BankDemoButton.animate
		properties:
			opacity: 1
		curve:"ease"
		time: 0.3	

# Move to next tip
tour.BankDemoButton.on Events.Click, ->
	bankDemoTip()
tour.BankTipNext.on Events.Click, ->
	CashflowDemoTip()
	bankDemoTipRemove()


# trigger tip
tour.CashflowWidget.on Events.MouseOver, ->
	tour.CashflowDemoButton.animate
		properties:
			opacity: 1
		curve:"ease"
		time: 0.3	
tour.CashflowDemoButton.on Events.Click, ->
	CashflowDemoTip()

# Move to next tip
tour.CashflowDemoButton.on Events.Click, ->
	CashflowDemoTip()
tour.CashflowTipNext.on Events.Click, ->
	InvoiceDemoTip()
	CashflowDemoTipRemove()


# trigger tip
tour.InvoiceWidget.on Events.MouseOver, ->
	tour.InvoiceDemoButton.animate
		properties:
			opacity: 1
		curve:"ease"
		time: 0.3	
tour.InvoiceDemoButton.on Events.Click, ->
	InvoiceDemoTip()

# Move to next tip
tour.InvoiceDemoButton.on Events.Click, ->
	InvoiceDemoTip()
tour.InvoiceTipNext.on Events.Click, ->
	BillDemoTip()
	InvoiceDemoTipRemove()


# trigger tip
tour.BillWidget.on Events.MouseOver, ->
	tour.BillDemoButton.animate
		properties:
			opacity: 1
		curve:"ease"
		time: 0.3	
tour.BillDemoButton.on Events.Click, ->
	BillDemoTip()

# Move to next tip
tour.BillDemoButton.on Events.Click, ->
	BillDemoTip()
tour.BillTipNext.on Events.Click, ->
	ExpenseDemoTip()
	BillDemoTipRemove()


# trigger tip
tour.ExpenseWidget.on Events.MouseOver, ->
	tour.ExpenseDemoButton.animate
		properties:
			opacity: 1
		curve:"ease"
		time: 0.3	
tour.ExpenseDemoButton.on Events.Click, ->
	ExpenseDemoTip()

# Move to next tip
tour.ExpenseDemoButton.on Events.Click, ->
	ExpenseDemoTip()
tour.ExpenseTipNext.on Events.Click, ->
	dashStart()
	ExpenseDemoTipRemove()








# Cursors
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






	
	
# ---------------------------------------------------------------------
# INITIALIZE STATE

# initialize empty dash
dashWelcome()
	
	
	