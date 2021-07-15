//MAY NOT HAVE BEEN DEOBFUSCATED CORRECTLY

package com.rovio.utils
{
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import fl.text.TLFTextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class DynamicLanguage
   {
      
      public static const DEFAULT_LANG:String = "en";
      
      public static var THROW_ERROR_AT_OVERFLOW:Boolean = true;
      
      private static var mInstance:DynamicLanguage;
       
      
      private var mSupportedLanguages:Vector.<String>;
      
      private var mLanguage:String = "en";
      
      private var mCountry:String;
      
      private var onTransitionLoop:XML;
      
      public function DynamicLanguage()
      {
         super();
      }
      
      public static function get instance() : DynamicLanguage
      {
         if(mInstance == null)
         {
            mInstance = new DynamicLanguage();
         }
         return mInstance;
      }
      
      public function setSourceXML(param1:XML) : void
      {
         var _loc2_:XML = null;
         this.onTransitionLoop = param1;
         this.mSupportedLanguages = new Vector.<String>();
         for each(_loc2_ in this.onTransitionLoop.language)
         {
            if(_loc2_.@id != "")
            {
               this.mSupportedLanguages.push(_loc2_.@id);
            }
         }
      }
      
      public function updateTextFields(param1:UIContainerRovio, param2:String) : void
      {
         var group:XMLList = null;
         var xml:XML = null;
         var isPopup:Boolean = false;
         var textXML:XMLList = null;
         var fontName:String = null;
         var textField:UITextFieldRovio = null;
         var button:UIButtonRovio = null;
         var textfield:TLFTextField = null;
         var view:UIContainerRovio = param1;
         var groupId:String = param2;
         group = this.onTransitionLoop.group.(@name == groupId);
         if(group.automatic != undefined)
         {
            fontName = this.onTransitionLoop.font.language.(@id == mLanguage);
            for each(xml in group.automatic.text)
            {
               isPopup = String(xml.@popup).toUpperCase() == "TRUE";
               textXML = xml.language.(@id == mLanguage);
               if(textXML.length() > 0)
               {
                  textField = view.getItemByName(xml.@id) as UITextFieldRovio;
                  if(textField != null)
                  {
                     textField.mTextField.text = textXML.toString();
                     this.setCorrectFont(textField.mTextField,fontName);
                     if(this.textFieldOverflow(textField.mTextField))
                     {
                        throw new Error("Automatic Input (id: \'" + xml.@id + "\') is wider than TextField.");
                     }
                  }
                  else if(isPopup)
                  {
                     throw new Error("Text field id: \'" + xml.@id + "\' was not found in view.");
                  }
               }
            }
            for each(xml in group.automatic.button)
            {
               isPopup = String(xml.@popup).toUpperCase() == "TRUE";
               textXML = xml.language.(@id == mLanguage);
               if(textXML.length() > 0)
               {
                  button = view.getItemByName(xml.@id) as UIButtonRovio;
                  if(button != null)
                  {
                     textfield = button.mClip.text;
                     if(textfield == null)
                     {
                        throw new Error("UIButtonRovio.text not defined!");
                     }
                     textfield.text = textXML.toString();
                     this.setCorrectFont(textfield,fontName);
                     if(this.textFieldOverflow(textfield))
                     {
                        throw new Error("Automatic Input (id: \'" + xml.@id + "\') is wider than button TextField.");
                     }
                  }
                  else if(isPopup)
                  {
                     throw new Error("Button id: \'" + xml.@id + "\' was not found in view.");
                  }
               }
            }
         }
      }
      
      public function getManualText(param1:String, param2:String) : String
      {
         var xml:String = null;
         var groupId:String = param1;
         var textId:String = param2;
         xml = this.onTransitionLoop.group.(@name == groupId).manual.text.(@id == textId).language.(@id == mLanguage).toString();
         if(xml != null)
         {
            return xml.toString();
         }
         throw new Error("Manual text was undefinded in (language: " + this.mLanguage + ", groupID: " + groupId + ", textID: " + textId + ")");
      }
      
      private function setCorrectFont(param1:Object, param2:String) : void
      {
         var _loc3_:TextFormat = null;
         if(param2 != "")
         {
            _loc3_ = new TextFormat();
            _loc3_.font = param2;
            param1.mouseEnabled = false;
            param1.setTextFormat(_loc3_);
         }
      }
      
      public function setManualTextToTextField(param1:UIContainerRovio, param2:String, param3:String, param4:String) : void
      {
         var fontName:String = null;
         var xml:XMLList = null;
         var textField:UITextFieldRovio = null;
         var view:UIContainerRovio = param1;
         var groupId:String = param2;
         var componentId:String = param3;
         var textId:String = param4;
         fontName = this.onTransitionLoop.font.language.(@id == mLanguage);
         xml = this.onTransitionLoop.group.(@name == groupId).manual.text.(@id == textId).language.(@id == mLanguage);
         if(xml.length() > 0)
         {
            textField = view.getItemByName(componentId) as UITextFieldRovio;
            if(textField == null)
            {
               throw new Error("Text field id: \'" + componentId + "\' was not found in view.");
            }
            textField.mTextField.text = xml.toString();
            this.setCorrectFont(textField.mTextField,fontName);
            if(this.textFieldOverflow(textField.mTextField))
            {
               throw new Error("Manual Input (id: \'" + textId + "\') is wider than TextField (id: \'" + componentId + "\')");
            }
         }
      }
      
      public function textFieldOverflow(param1:Object) : Boolean
      {
         var _loc2_:TextLineMetrics = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         if(THROW_ERROR_AT_OVERFLOW)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.numLines)
            {
               _loc2_ = param1.getLineMetrics(_loc3_);
               if(_loc2_.width > param1.width)
               {
                  return true;
               }
               if(_loc3_ == param1.numLines - 1)
               {
                  if((_loc4_ = _loc2_.height * param1.numLines) > param1.height)
                  {
                     return true;
                  }
               }
               _loc3_++;
            }
         }
         return false;
      }
      
      public function setLanguage(param1:String) : Boolean
      {
         this.mLanguage = param1;
         if(this.mSupportedLanguages)
         {
            if(this.mSupportedLanguages.indexOf(param1) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getLanguage() : String
      {
         return this.mLanguage;
      }
      
      public function setCountry(param1:String) : void
      {
         this.mCountry = param1;
      }
      
      public function getCountry() : String
      {
         return this.mCountry;
      }
      
      public function usedCharacters(param1:String) : String
      {
         var i:int = 0;
         var text:String = null;
         var char:String = null;
         var lang:String = param1;
         var chars:String = "";
         for each(text in this.onTransitionLoop.group.*.*.language.(@id == mLanguage))
         {
            i = 0;
            while(i < text.length)
            {
               char = text.charAt(i);
               if(chars.indexOf(char) == -1)
               {
                  chars += char;
               }
               i++;
            }
         }
         return chars;
      }
   }
}
