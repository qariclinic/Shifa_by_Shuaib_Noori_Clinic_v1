# شفا کلینک - ڈاکٹر مفتی محمد شعیب خان آلائی

![شفا کلینک](https://images.unsplash.com/photo-1519494026892-80bbd2d6fd0d?w=400&h=200&fit=crop)

## 🏥 کلینک کے بارے میں

شفا کلینک ڈاکٹر مفتی محمد شعیب خان آلائی کا ایک معروف طبی مرکز ہے جو اعلی معیار کی طبی خدمات فراہم کرتا ہے۔ ڈاکٹر مفتی محمد شعیب خان آلائی 20+ سال کے تجربے کے ساتھ مریضوں کی خدمت کر رہے ہیں۔

## 👨‍⚕️ ڈاکٹر کا تعارف

**ڈاکٹر مفتی محمد شعیب خان آلائی**
- ایم بی بی ایس، ایم ڈی
- ماہر امراض | جنرل فزیشن
- 20+ سال کا طبی تجربہ
- متعدد طبی کانفرنسز میں شرکت
- جدید طبی آلات کا استعمال

## ✨ خصوصیات

- **آن لائن اپائنٹمنٹ** - گھر بیٹھے اپائنٹمنٹ بک کریں
- **ماہر ڈاکٹرز** - تجربہ کار ڈاکٹرز کی ٹیم
- **جدید آلات** - جدید ترین طبی سہولیات
- **24/7 ایمرجنسی** - ہنگامی صورت میں فوری رابطہ
- **مریضوں کی دیکھ بھال** - مکمل علاج اور دیکھ بھال

## 🏥 خدمات

1. کارڈیالوجی (دل کی بیماریاں)
2. نیورالوجی (اعصابی بیماریاں)
3. نمونیا کا علاج
4. ارتھوپیڈکس (ہڈیاں اور جوڑ)
5. پیڈیاٹرکس (بچوں کی بیماریاں)
6. آئی کیئر (آنکھوں کی بیماریاں)

## 🕒 اوقات کار

- **سوموار - جمعہ:** صبح 9 بجے سے شام 9 بجے تک
- **ہفتہ:** صبح 9 بجے سے دوپہر 2 بجے تک
- **اتوار:** صرف ایمرجنسی

## 📞 رابطہ

- **پتہ:** بلاک 5، گلشن اقبال، کراچی
- **فون:** 0300-1234567
- **ای میل:** drshuaib@shifaclinic.com
- **ویب سائٹ:** https://qariclinic.github.io/Shifa_by_Shuaib_Noori_Clinic_v1/

## 🌐 آن لائن ویب سائٹ

یہ ویب سائٹ GitHub Pages پر ہوسٹ کی گئی ہے اور خودکار طریقے سے اپ ڈیٹ ہوتی رہتی ہے۔

**لائیو ویب سائٹ:** [https://qariclinic.github.io/Shifa_by_Shuaib_Noori_Clinic_v1/](https://qariclinic.github.io/Shifa_by_Shuaib_Noori_Clinic_v1/)

## 🛠️ ٹیکنالوجیز

- HTML5, CSS3, JavaScript
- Font Awesome آئیکنز
- Google Fonts (اردو اور انگریزی)
- GitHub Pages ہوسٹنگ
- GitHub Actions برائے خودکار ڈیپلائمنٹ

## 📁 فائلوں کی ساخت
cat > script.js << 'EOF'
// Mobile Navigation Toggle
const navToggle = document.getElementById('navToggle');
const navMenu = document.getElementById('navMenu');

if (navToggle && navMenu) {
    navToggle.addEventListener('click', () => {
        navMenu.classList.toggle('active');
    });
}

// Close menu when clicking on a link
const navLinks = document.querySelectorAll('.nav-menu a');
navLinks.forEach(link => {
    link.addEventListener('click', () => {
        const navMenu = document.getElementById('navMenu');
        if (navMenu) {
            navMenu.classList.remove('active');
        }
    });
});

// Appointment Form Submission
const bookingForm = document.getElementById('bookingForm');
if (bookingForm) {
    bookingForm.addEventListener('submit', function(e) {
        e.preventDefault();
        
        // Get form values
        const name = document.getElementById('name').value;
        const phone = document.getElementById('phone').value;
        const doctor = document.getElementById('doctor').value;
        const date = document.getElementById('date').value;
        
        // Simple validation
        if (!name || !phone || !doctor || !date) {
            alert('براہ کرم تمام ضروری معلومات درج کریں۔');
            return;
        }
        
        // In a real application, you would send this data to a server
        // For now, we'll just show a success message
        const formattedDate = new Date(date).toLocaleDateString('ur-PK');
        
        alert(`شکریہ ${name}!\n\nآپ کی اپائنٹمنٹ ${doctor} کے ساتھ ${formattedDate} کو بک ہو گئی ہے۔\nہم جلد آپ سے رابطہ کریں گے۔`);
        
        // Reset form
        bookingForm.reset();
    });
}

// Set minimum date for appointment to today
const dateInput = document.getElementById('date');
if (dateInput) {
    const today = new Date();
    const formattedDate = today.toISOString().split('T')[0];
    dateInput.min = formattedDate;
}

// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();
        
        const targetId = this.getAttribute('href');
        if (targetId === '#') return;
        
        const targetElement = document.querySelector(targetId);
        if (targetElement) {
            window.scrollTo({
                top: targetElement.offsetTop - 80,
                behavior: 'smooth'
            });
        }
    });
});

// Active navigation link on scroll
window.addEventListener('scroll', () => {
    const sections = document.querySelectorAll('section');
    const navLinks = document.querySelectorAll('.nav-menu a');
    
    let current = '';
    
    sections.forEach(section => {
        const sectionTop = section.offsetTop;
        const sectionHeight = section.clientHeight;
        
        if (scrollY >= (sectionTop - 100)) {
            current = section.getAttribute('id');
        }
    });
    
    navLinks.forEach(link => {
        link.classList.remove('active');
        if (link.getAttribute('href') === `#${current}`) {
            link.classList.add('active');
        }
    });
});

// Form validation for phone number
const phoneInput = document.getElementById('phone');
if (phoneInput) {
    phoneInput.addEventListener('input', function(e) {
        const value = e.target.value;
        // Remove non-numeric characters
        e.target.value = value.replace(/\D/g, '');
    });
}
