<div align="center">

# تكة (Takka)

أداة قوية متعددة الوظائف لتحسين وتخصيص نظام Windows الخاص بك. يوفر واجهة سهلة الاستخدام تعمل بنظام القوائم للوصول إلى مجموعة متنوعة من الأدوات المفيدة من مكان مركزي واحد.<br/><br/>

> **اللغة: <a href="README.md">English</a>**

</div>

## البدء

### المتطلبات الأساسية:

- نظام التشغيل Windows 10 أو Windows 11
- PowerShell (مثبت افتراضياً)
- [WinGet](https://apps.microsoft.com/detail/9NBLGGH4NNS1) - مطلوب لأدوات PowerShell
- [7-Zip](https://7-zip.org/) - مطلوب لوظيفة فك تشفير كلمة مرور WinRAR (يجب تثبيته في C:\Program Files\7-Zip)

## التحميل

قم بتنزيل أحدث إصدار مستقر من صفحة [الإصدارات](https://github.com/Nahh2/Takka/releases).<br/>

## المميزات الرئيسية

### 1. تنظيف Windows 🧹
- إزالة التطبيقات المثبتة مسبقاً غير الضرورية
- تعطيل الخدمات غير المرغوب فيها
- تحسين أداء النظام

### 2. تنشيط Windows و Office 🔑
- تفعيل منتجات Microsoft باستخدام خدمة إدارة المفاتيح (KMS)
- دعم لمختلف إصدارات Windows و Office

### 3. أدوات الأمان 🛡️
- اختبار اختراق SMB باستخدام قوائم كلمات المرور
- أداة فك تشفير كلمات مرور أرشيفات WinRAR

### 4. أدوات التحسين ⚡
- تشغيل Microsoft Activation Scripts (MAS)
- أدوات Chris Titus PowerShell للتخصيص المتقدم
- تفعيل Internet Download Manager (IDM)
- تنظيف شامل للنظام وإزالة الملفات المؤقتة

> [!Important]
> - تتطلب معظم الوظائف صلاحيات المسؤول
> - تأكد من تثبيت جميع البرامج المطلوبة قبل استخدام الميزات المتقدمة
> - احرص على إنشاء نسخة احتياطية من بياناتك المهمة قبل إجراء تغييرات على النظام

## الأدوات المدمجة

### أدوات Chris Titus PowerShell
مجموعة شاملة من أدوات تحسين Windows

[![YouTube](https://img.shields.io/badge/YouTube-%23FF0000.svg?style=for-the-badge&logo=YouTube&logoColor=white)](https://www.youtube.com/@christitustech)
[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)](https://github.com/ChrisTitusTech)
[![X](https://img.shields.io/badge/X-%23000000.svg?style=for-the-badge&logo=X&logoColor=white)](https://x.com/christitustech)
[![RSS](https://img.shields.io/badge/rss-F88900?style=for-the-badge&logo=rss&logoColor=white)](https://christitus.com/rss/)

### Win11Debloat
[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Raphire/Win11Debloat)

### MAS Script
[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)](https://github.com/massgravel/Microsoft-Activation-Scripts?tab=readme-ov-file#download--how-to-use-it)

# تثبيت WinGet يدوياً من متجر Microsoft

## المقدمة
WinGet هو مدير حزم سطر الأوامر الرسمي من Microsoft لنظام Windows 10 و Windows 11. هذا الدليل يشرح كيفية تثبيت WinGet يدوياً من متجر Microsoft.

## المتطلبات الأساسية
- نظام Windows 10 (1809 أو أحدث) أو Windows 11
- حساب Microsoft Store
- اتصال بالإنترنت

## خطوات التثبيت

### الطريقة 1: التثبيت من Microsoft Store
1. افتح Microsoft Store
2. أذهب إلى "Library"
3. قم بتثبيت أو تحديث التطبيق "App Installer"
4. انتظر حتى اكتمال التثبيت

### الطريقة 2: التثبيت المباشر من المتصفح
1. قم بزيارة [صفحة App Installer](https://www.microsoft.com/store/productId/9NBLGGH4NNS1)
2. انقر على "احصل عليه"
3. سيتم فتح Microsoft Store تلقائياً
4. اتبع التعليمات لإكمال التثبيت

## التحقق من التثبيت
1. افتح موجه الأوامر (Command Prompt) أو PowerShell
2. اكتب الأمر التالي: WinGet
