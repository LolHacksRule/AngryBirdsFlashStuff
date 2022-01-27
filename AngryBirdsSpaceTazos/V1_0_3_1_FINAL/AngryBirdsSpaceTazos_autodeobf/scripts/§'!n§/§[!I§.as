package §'!n§
{
   import §,!7§.§%!J§;
   import §,!7§.§2a§;
   import §,!7§.§5!k§;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §[!I§
   {
      
      public static const §]!,§:String = "en";
      
      public static var §%!w§:Boolean = true;
      
      private static var §@!p§:§[!I§;
       
      
      private var §,a§:Vector.<String>;
      
      private var §=!d§:String = "en";
      
      private var §4!I§:XML;
      
      public function §[!I§()
      {
         super();
      }
      
      public static function get §8!J§() : §[!I§
      {
         if(§@!p§ == null)
         {
            §@!p§ = new §[!I§();
         }
         return §@!p§;
      }
      
      public function §!!V§(param1:XML) : void
      {
         var _loc2_:XML = null;
         this.§4!I§ = param1;
         this.§,a§ = new Vector.<String>();
         for each(_loc2_ in this.§4!I§.language)
         {
            if(_loc2_.@id != "")
            {
               this.§,a§.push(_loc2_.@id);
            }
         }
      }
      
      public function updateTextFields(param1:§5!k§, param2:String) : void
      {
         var group:XMLList = null;
         var xml:XML = null;
         var isPopup:Boolean = false;
         var textXML:XMLList = null;
         var fontName:String = null;
         var textField:§2a§ = null;
         var button:§%!J§ = null;
         var textfield:TextField = null;
         var view:§5!k§ = param1;
         var groupId:String = param2;
         group = this.§4!I§.group.(@name == groupId);
         if(group.automatic != undefined)
         {
            fontName = this.§4!I§.font.language.(@id == §=!d§);
            for each(xml in group.automatic.text)
            {
               isPopup = String(xml.@popup).toUpperCase() == "TRUE";
               textXML = xml.language.(@id == §=!d§);
               if(textXML.length() > 0)
               {
                  textField = view.getItemByName(xml.@id) as §2a§;
                  if(textField != null)
                  {
                     textField.§%!%§.text = textXML.toString();
                     this.§1`§(textField.§%!%§,fontName);
                     if(this.§#!s§(textField.§%!%§))
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
               textXML = xml.language.(@id == §=!d§);
               if(textXML.length() > 0)
               {
                  button = view.getItemByName(xml.@id) as §%!J§;
                  if(button != null)
                  {
                     textfield = button.mClip.text;
                     if(textfield == null)
                     {
                        throw new Error("UIButtonRovio.text not defined!");
                     }
                     textfield.text = textXML.toString();
                     this.§1`§(textfield,fontName);
                     if(this.§#!s§(textfield))
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
      
      public function §0"-§(param1:String, param2:String) : String
      {
         var xml:String = null;
         var groupId:String = param1;
         var textId:String = param2;
         xml = this.§4!I§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §=!d§).toString();
         if(xml != null)
         {
            return xml.toString();
         }
         throw new Error("Manual text was undefinded in (language: " + this.§=!d§ + ", groupID: " + groupId + ", textID: " + textId + ")");
      }
      
      private function §1`§(param1:TextField, param2:String) : void
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
      
      public function §"!S§(param1:§5!k§, param2:String, param3:String, param4:String) : void
      {
         var fontName:String = null;
         var xml:XMLList = null;
         var textField:§2a§ = null;
         var view:§5!k§ = param1;
         var groupId:String = param2;
         var componentId:String = param3;
         var textId:String = param4;
         fontName = this.§4!I§.font.language.(@id == §=!d§);
         xml = this.§4!I§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §=!d§);
         if(xml.length() > 0)
         {
            textField = view.getItemByName(componentId) as §2a§;
            if(textField == null)
            {
               throw new Error("Text field id: \'" + componentId + "\' was not found in view.");
            }
            textField.§%!%§.text = xml.toString();
            this.§1`§(textField.§%!%§,fontName);
            if(this.§#!s§(textField.§%!%§))
            {
               throw new Error("Manual Input (id: \'" + textId + "\') is wider than TextField (id: \'" + componentId + "\')");
            }
         }
      }
      
      public function §#!s§(param1:TextField) : Boolean
      {
         var _loc2_:TextLineMetrics = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         if(§%!w§)
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
         this.§=!d§ = param1;
         if(this.§,a§)
         {
            if(this.§,a§.indexOf(param1) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §,"+§() : String
      {
         return this.§=!d§;
      }
      
      public function §^"C§(param1:String) : String
      {
         var i:int = 0;
         var text:String = null;
         var char:String = null;
         var lang:String = param1;
         var chars:String = "";
         for each(text in this.§4!I§.group.§*§.§*§.language.(@id == §=!d§))
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
