package §1!D§
{
   import §,![§.§'!S§;
   import §,![§.§2!"§;
   import §9!8§.§0!7§;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §0S§
   {
      
      public static const §;!9§:String = "en";
      
      public static var §6!m§:Boolean = true;
      
      private static var §=!J§:§0S§;
       
      
      private var §7!1§:Vector.<String>;
      
      private var §?!H§:String = "en";
      
      private var §?!#§:XML;
      
      public function §0S§()
      {
         super();
      }
      
      public static function get §>E§() : §0S§
      {
         if(§=!J§ == null)
         {
            §=!J§ = new §0S§();
         }
         return §=!J§;
      }
      
      public function §+I§(param1:XML) : void
      {
         var _loc2_:XML = null;
         this.§?!#§ = param1;
         this.§7!1§ = new Vector.<String>();
         for each(_loc2_ in this.§?!#§.language)
         {
            if(_loc2_.@id != "")
            {
               this.§7!1§.push(_loc2_.@id);
            }
         }
      }
      
      public function updateTextFields(param1:§0!7§, param2:String) : void
      {
         var group:XMLList = null;
         var xml:XML = null;
         var isPopup:Boolean = false;
         var textXML:XMLList = null;
         var fontName:String = null;
         var textField:§'!S§ = null;
         var button:§2!"§ = null;
         var textfield:TextField = null;
         var view:§0!7§ = param1;
         var groupId:String = param2;
         group = this.§?!#§.group.(@name == groupId);
         if(group.automatic != undefined)
         {
            fontName = this.§?!#§.font.language.(@id == §?!H§);
            for each(xml in group.automatic.text)
            {
               isPopup = String(xml.@popup).toUpperCase() == "TRUE";
               textXML = xml.language.(@id == §?!H§);
               if(textXML.length() > 0)
               {
                  textField = view.getItemByName(xml.@id) as §'!S§;
                  if(textField != null)
                  {
                     textField.§'!Z§.text = textXML.toString();
                     this.§][§(textField.§'!Z§,fontName);
                     if(this.§7G§(textField.§'!Z§))
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
               textXML = xml.language.(@id == §?!H§);
               if(textXML.length() > 0)
               {
                  button = view.getItemByName(xml.@id) as §2!"§;
                  if(button != null)
                  {
                     textfield = button.mClip.text;
                     if(textfield == null)
                     {
                        throw new Error("UIButtonRovio.text not defined!");
                     }
                     textfield.text = textXML.toString();
                     this.§][§(textfield,fontName);
                     if(this.§7G§(textfield))
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
      
      public function §4Z§(param1:String, param2:String) : String
      {
         var xml:String = null;
         var groupId:String = param1;
         var textId:String = param2;
         xml = this.§?!#§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §?!H§).toString();
         if(xml != null)
         {
            return xml.toString();
         }
         throw new Error("Manual text was undefinded in (language: " + this.§?!H§ + ", groupID: " + groupId + ", textID: " + textId + ")");
      }
      
      private function §][§(param1:TextField, param2:String) : void
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
      
      public function §@B§(param1:§0!7§, param2:String, param3:String, param4:String) : void
      {
         var fontName:String = null;
         var xml:XMLList = null;
         var textField:§'!S§ = null;
         var view:§0!7§ = param1;
         var groupId:String = param2;
         var componentId:String = param3;
         var textId:String = param4;
         fontName = this.§?!#§.font.language.(@id == §?!H§);
         xml = this.§?!#§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §?!H§);
         if(xml.length() > 0)
         {
            textField = view.getItemByName(componentId) as §'!S§;
            if(textField == null)
            {
               throw new Error("Text field id: \'" + componentId + "\' was not found in view.");
            }
            textField.§'!Z§.text = xml.toString();
            this.§][§(textField.§'!Z§,fontName);
            if(this.§7G§(textField.§'!Z§))
            {
               throw new Error("Manual Input (id: \'" + textId + "\') is wider than TextField (id: \'" + componentId + "\')");
            }
         }
      }
      
      public function §7G§(param1:TextField) : Boolean
      {
         var _loc2_:TextLineMetrics = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         if(§6!m§)
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
      
      public function §?!7§(param1:String) : Boolean
      {
         this.§?!H§ = param1;
         if(this.§7!1§)
         {
            if(this.§7!1§.indexOf(param1) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getLanguage() : String
      {
         return this.§?!H§;
      }
      
      public function §,!f§(param1:String) : String
      {
         var i:int = 0;
         var text:String = null;
         var char:String = null;
         var lang:String = param1;
         var chars:String = "";
         for each(text in this.§?!#§.group.§*§.§*§.language.(@id == §?!H§))
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
