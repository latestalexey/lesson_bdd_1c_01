﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"УМеняЕстьПервоеСлагаемоеРавное(Парам01)","УМеняЕстьПервоеСлагаемоеРавное","Допустим у меня есть первое слагаемое равное 10");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"УМеняЕстьВтороеСлагаемоеРавное(Парам01)","УМеняЕстьВтороеСлагаемоеРавное","И у меня есть второе слагаемое равное 15.5");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"РезультатСложенияБудетРавен(Парам01)","РезультатСложенияБудетРавен","Тогда результат сложения будет равен 25.5");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Допустим у меня есть первое слагаемое равное 10
//@УМеняЕстьПервоеСлагаемоеРавное(Парам01)
Процедура УМеняЕстьПервоеСлагаемоеРавное(ПервоеСлагаемое) Экспорт
	Контекст.Вставить("ПервоеСлагаемое", ПервоеСлагаемое);	
КонецПроцедуры

&НаКлиенте
//И у меня есть второе слагаемое равное 15.5
//@УМеняЕстьВтороеСлагаемоеРавное(Парам01)
Процедура УМеняЕстьВтороеСлагаемоеРавное(ВтороеСлагаемое) Экспорт
	Контекст.Вставить("ВтороеСлагаемое", ВтороеСлагаемое);	
КонецПроцедуры

&НаКлиенте
//Тогда результат сложения будет равен 25.5
//@РезультатСложенияБудетРавен(Парам01)
Процедура РезультатСложенияБудетРавен(ОжидаемыйРезультат) Экспорт
	Результат = ОбщийМодуль1.ПолучитьРезультатСложенияДвухЧисел(Контекст.ПервоеСлагаемое, Контекст.ВтороеСлагаемое);	
	Если Не Результат = ОжидаемыйРезультат Тогда
		ВызватьИсключение "Результат рассчитан не верно";
	КонецЕсли;
КонецПроцедуры

//окончание текста модуля
