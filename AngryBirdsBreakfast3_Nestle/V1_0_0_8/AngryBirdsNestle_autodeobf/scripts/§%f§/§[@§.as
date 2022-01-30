package §%f§
{
   import §;"+§.§"!I§;
   import §;"+§.§9!M§;
   import §;"+§.§^!i§;
   import fl.text.TLFTextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §[@§
   {
      
      public static const §0!Y§:String = "en";
      
      public static var §8![§:Boolean = true;
      
      private static var §1!7§:§[@§;
       
      
      private var §[n§:Vector.<String>;
      
      private var §^!W§:String = "en";
      
      private var §8]§:String;
      
      private var §8!K§:XML;
      
      public function §[@§()
      {
         super();
      }
      
      public static function get §"e§() : §[@§
      {
         if(§1!7§ == null)
         {
            §1!7§ = new §[@§();
         }
         return §1!7§;
      }
      
      public function § !U§(param1:XML) : void
      {
         var _loc2_:XML = null;
         this.§8!K§ = param1;
         this.§[n§ = new Vector.<String>();
         for each(_loc2_ in this.§8!K§.language)
         {
            if(_loc2_.@id != "")
            {
               this.§[n§.push(_loc2_.@id);
            }
         }
      }
      
      public function updateTextFields(param1:§^!i§, param2:String) : void
      {
         var group:XMLList = null;
         var xml:XML = null;
         var isPopup:Boolean = false;
         var textXML:XMLList = null;
         var fontName:String = null;
         var textField:§"!I§ = null;
         var button:§9!M§ = null;
         var textfield:TLFTextField = null;
         var view:§^!i§ = param1;
         var groupId:String = param2;
         group = this.§8!K§.group.(@name == groupId);
         if(group.automatic != undefined)
         {
            fontName = this.§8!K§.font.language.(@id == §^!W§);
            for each(xml in group.automatic.text)
            {
               isPopup = String(xml.@popup).toUpperCase() == "TRUE";
               textXML = xml.language.(@id == §^!W§);
               if(textXML.length() > 0)
               {
                  textField = view.getItemByName(xml.@id) as §"!I§;
                  if(textField != null)
                  {
                     textField.§6s§.text = textXML.toString();
                     this.§#Q§(textField.§6s§,fontName);
                     if(this.§1!2§(textField.§6s§))
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
               textXML = xml.language.(@id == §^!W§);
               if(textXML.length() > 0)
               {
                  button = view.getItemByName(xml.@id) as §9!M§;
                  if(button != null)
                  {
                     textfield = button.mClip.text;
                     if(textfield == null)
                     {
                        throw new Error("UIButtonRovio.text not defined!");
                     }
                     textfield.text = textXML.toString();
                     this.§#Q§(textfield,fontName);
                     if(this.§1!2§(textfield))
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
      
      public function §[!=§(param1:String, param2:String) : String
      {
         var xml:String = null;
         var groupId:String = param1;
         var textId:String = param2;
         xml = this.§8!K§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §^!W§).toString();
         if(xml != null)
         {
            return xml.toString();
         }
         throw new Error("Manual text was undefinded in (language: " + this.§^!W§ + ", groupID: " + groupId + ", textID: " + textId + ")");
      }
      
      private function §#Q§(param1:Object, param2:String) : void
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
      
      public function §8!J§(param1:§^!i§, param2:String, param3:String, param4:String) : void
      {
         var fontName:String = null;
         var xml:XMLList = null;
         var textField:§"!I§ = null;
         var view:§^!i§ = param1;
         var groupId:String = param2;
         var componentId:String = param3;
         var textId:String = param4;
         fontName = this.§8!K§.font.language.(@id == §^!W§);
         xml = this.§8!K§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §^!W§);
         if(xml.length() > 0)
         {
            textField = view.getItemByName(componentId) as §"!I§;
            if(textField == null)
            {
               throw new Error("Text field id: \'" + componentId + "\' was not found in view.");
            }
            textField.§6s§.text = xml.toString();
            this.§#Q§(textField.§6s§,fontName);
            if(this.§1!2§(textField.§6s§))
            {
               throw new Error("Manual Input (id: \'" + textId + "\') is wider than TextField (id: \'" + componentId + "\')");
            }
         }
      }
      
      public function §1!2§(param1:Object) : Boolean
      {
         var _loc2_:TextLineMetrics = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         if(§8![§)
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
         this.§^!W§ = param1;
         if(this.§[n§)
         {
            if(this.§[n§.indexOf(param1) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §1-§() : String
      {
         return this.§^!W§;
      }
      
      public function §,!"§(param1:String) : void
      {
         this.§8]§ = param1;
      }
      
      public function §]f§() : String
      {
         return this.§8]§;
      }
      
      public function §>" §(param1:String) : String
      {
         var i:int = 0;
         var text:String = null;
         var char:String = null;
         var lang:String = param1;
         var chars:String = "";
         for each(text in this.§8!K§.group.§*§.§*§.language.(@id == §^!W§))
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
