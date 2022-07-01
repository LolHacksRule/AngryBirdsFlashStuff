package §4!i§
{
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §2u§.§]"%§;
   import fl.text.TLFTextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §@"#§
   {
      
      public static const §7?§:String = "en";
      
      public static var §]!v§:Boolean = true;
      
      private static var §'E§:§@"#§;
       
      
      private var §3A§:Vector.<String>;
      
      private var §3!`§:String = "en";
      
      private var §,!l§:String;
      
      private var §9!#§:XML;
      
      public function §@"#§()
      {
         super();
      }
      
      public static function get §,2§() : §@"#§
      {
         if(§'E§ == null)
         {
            §'E§ = new §@"#§();
         }
         return §'E§;
      }
      
      public function §%!p§(param1:XML) : void
      {
         var _loc2_:XML = null;
         this.§9!#§ = param1;
         this.§3A§ = new Vector.<String>();
         for each(_loc2_ in this.§9!#§.language)
         {
            if(_loc2_.@id != "")
            {
               this.§3A§.push(_loc2_.@id);
            }
         }
      }
      
      public function updateTextFields(param1:§,6§, param2:String) : void
      {
         var group:XMLList = null;
         var xml:XML = null;
         var isPopup:Boolean = false;
         var textXML:XMLList = null;
         var fontName:String = null;
         var textField:§7!&§ = null;
         var button:§]"%§ = null;
         var textfield:TLFTextField = null;
         var view:§,6§ = param1;
         var groupId:String = param2;
         group = this.§9!#§.group.(@name == groupId);
         if(group.automatic != undefined)
         {
            fontName = this.§9!#§.font.language.(@id == §3!`§);
            for each(xml in group.automatic.text)
            {
               isPopup = String(xml.@popup).toUpperCase() == "TRUE";
               textXML = xml.language.(@id == §3!`§);
               if(textXML.length() > 0)
               {
                  textField = view.getItemByName(xml.@id) as §7!&§;
                  if(textField != null)
                  {
                     textField.§'!"§.text = textXML.toString();
                     this.§!0§(textField.§'!"§,fontName);
                     if(this.§[" §(textField.§'!"§))
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
               textXML = xml.language.(@id == §3!`§);
               if(textXML.length() > 0)
               {
                  button = view.getItemByName(xml.@id) as §]"%§;
                  if(button != null)
                  {
                     textfield = button.mClip.text;
                     if(textfield == null)
                     {
                        throw new Error("UIButtonRovio.text not defined!");
                     }
                     textfield.text = textXML.toString();
                     this.§!0§(textfield,fontName);
                     if(this.§[" §(textfield))
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
      
      public function §#!Q§(param1:String, param2:String) : String
      {
         var xml:String = null;
         var groupId:String = param1;
         var textId:String = param2;
         xml = this.§9!#§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §3!`§).toString();
         if(xml != null)
         {
            return xml.toString();
         }
         throw new Error("Manual text was undefinded in (language: " + this.§3!`§ + ", groupID: " + groupId + ", textID: " + textId + ")");
      }
      
      private function §!0§(param1:Object, param2:String) : void
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
      
      public function §"y§(param1:§,6§, param2:String, param3:String, param4:String) : void
      {
         var fontName:String = null;
         var xml:XMLList = null;
         var textField:§7!&§ = null;
         var view:§,6§ = param1;
         var groupId:String = param2;
         var componentId:String = param3;
         var textId:String = param4;
         fontName = this.§9!#§.font.language.(@id == §3!`§);
         xml = this.§9!#§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §3!`§);
         if(xml.length() > 0)
         {
            textField = view.getItemByName(componentId) as §7!&§;
            if(textField == null)
            {
               throw new Error("Text field id: \'" + componentId + "\' was not found in view.");
            }
            textField.§'!"§.text = xml.toString();
            this.§!0§(textField.§'!"§,fontName);
            if(this.§[" §(textField.§'!"§))
            {
               throw new Error("Manual Input (id: \'" + textId + "\') is wider than TextField (id: \'" + componentId + "\')");
            }
         }
      }
      
      public function §[" §(param1:Object) : Boolean
      {
         var _loc2_:TextLineMetrics = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         if(§]!v§)
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
         this.§3!`§ = param1;
         if(this.§3A§)
         {
            if(this.§3A§.indexOf(param1) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §2"2§() : String
      {
         return this.§3!`§;
      }
      
      public function §7!3§(param1:String) : void
      {
         this.§,!l§ = param1;
      }
      
      public function §0!x§() : String
      {
         return this.§,!l§;
      }
      
      public function §&"%§(param1:String) : String
      {
         var i:int = 0;
         var text:String = null;
         var char:String = null;
         var lang:String = param1;
         var chars:String = "";
         for each(text in this.§9!#§.group.§*§.§*§.language.(@id == §3!`§))
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
