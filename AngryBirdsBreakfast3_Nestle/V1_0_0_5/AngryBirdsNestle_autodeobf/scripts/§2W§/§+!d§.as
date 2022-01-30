package §2W§
{
   import §[!F§.§1c§;
   import §[!F§.§3j§;
   import §[!F§.§^!g§;
   import fl.text.TLFTextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §+!d§
   {
      
      public static const §1!s§:String = "en";
      
      public static var §]U§:Boolean = true;
      
      private static var §>r§:§+!d§;
       
      
      private var §6s§:Vector.<String>;
      
      private var §8!8§:String = "en";
      
      private var §8"+§:String;
      
      private var §2!A§:XML;
      
      public function §+!d§()
      {
         super();
      }
      
      public static function get §<"5§() : §+!d§
      {
         if(§>r§ == null)
         {
            §>r§ = new §+!d§();
         }
         return §>r§;
      }
      
      public function §'!f§(param1:XML) : void
      {
         var _loc2_:XML = null;
         this.§2!A§ = param1;
         this.§6s§ = new Vector.<String>();
         for each(_loc2_ in this.§2!A§.language)
         {
            if(_loc2_.@id != "")
            {
               this.§6s§.push(_loc2_.@id);
            }
         }
      }
      
      public function updateTextFields(param1:§3j§, param2:String) : void
      {
         var group:XMLList = null;
         var xml:XML = null;
         var isPopup:Boolean = false;
         var textXML:XMLList = null;
         var fontName:String = null;
         var textField:§1c§ = null;
         var button:§^!g§ = null;
         var textfield:TLFTextField = null;
         var view:§3j§ = param1;
         var groupId:String = param2;
         group = this.§2!A§.group.(@name == groupId);
         if(group.automatic != undefined)
         {
            fontName = this.§2!A§.font.language.(@id == §8!8§);
            for each(xml in group.automatic.text)
            {
               isPopup = String(xml.@popup).toUpperCase() == "TRUE";
               textXML = xml.language.(@id == §8!8§);
               if(textXML.length() > 0)
               {
                  textField = view.getItemByName(xml.@id) as §1c§;
                  if(textField != null)
                  {
                     textField.§ e§.text = textXML.toString();
                     this.§ !e§(textField.§ e§,fontName);
                     if(this.§7!Q§(textField.§ e§))
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
               textXML = xml.language.(@id == §8!8§);
               if(textXML.length() > 0)
               {
                  button = view.getItemByName(xml.@id) as §^!g§;
                  if(button != null)
                  {
                     textfield = button.mClip.text;
                     if(textfield == null)
                     {
                        throw new Error("UIButtonRovio.text not defined!");
                     }
                     textfield.text = textXML.toString();
                     this.§ !e§(textfield,fontName);
                     if(this.§7!Q§(textfield))
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
      
      public function §9!U§(param1:String, param2:String) : String
      {
         var xml:String = null;
         var groupId:String = param1;
         var textId:String = param2;
         xml = this.§2!A§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §8!8§).toString();
         if(xml != null)
         {
            return xml.toString();
         }
         throw new Error("Manual text was undefinded in (language: " + this.§8!8§ + ", groupID: " + groupId + ", textID: " + textId + ")");
      }
      
      private function § !e§(param1:Object, param2:String) : void
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
      
      public function § 9§(param1:§3j§, param2:String, param3:String, param4:String) : void
      {
         var fontName:String = null;
         var xml:XMLList = null;
         var textField:§1c§ = null;
         var view:§3j§ = param1;
         var groupId:String = param2;
         var componentId:String = param3;
         var textId:String = param4;
         fontName = this.§2!A§.font.language.(@id == §8!8§);
         xml = this.§2!A§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §8!8§);
         if(xml.length() > 0)
         {
            textField = view.getItemByName(componentId) as §1c§;
            if(textField == null)
            {
               throw new Error("Text field id: \'" + componentId + "\' was not found in view.");
            }
            textField.§ e§.text = xml.toString();
            this.§ !e§(textField.§ e§,fontName);
            if(this.§7!Q§(textField.§ e§))
            {
               throw new Error("Manual Input (id: \'" + textId + "\') is wider than TextField (id: \'" + componentId + "\')");
            }
         }
      }
      
      public function §7!Q§(param1:Object) : Boolean
      {
         var _loc2_:TextLineMetrics = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         if(§]U§)
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
         this.§8!8§ = param1;
         if(this.§6s§)
         {
            if(this.§6s§.indexOf(param1) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §,!;§() : String
      {
         return this.§8!8§;
      }
      
      public function §+B§(param1:String) : void
      {
         this.§8"+§ = param1;
      }
      
      public function §'!G§() : String
      {
         return this.§8"+§;
      }
      
      public function §@",§(param1:String) : String
      {
         var i:int = 0;
         var text:String = null;
         var char:String = null;
         var lang:String = param1;
         var chars:String = "";
         for each(text in this.§2!A§.group.§*§.§*§.language.(@id == §8!8§))
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
