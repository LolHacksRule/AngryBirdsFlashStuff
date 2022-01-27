package §4u§
{
   import §="<§.§#`§;
   import §="<§.§,"$§;
   import §="<§.§87§;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §!H§
   {
      
      public static const §&+§:String = "en";
      
      public static var §4"B§:Boolean = true;
      
      private static var §7"5§:§!H§;
       
      
      private var §]%§:Vector.<String>;
      
      private var §+Q§:String = "en";
      
      private var §+!?§:XML;
      
      public function §!H§()
      {
         super();
      }
      
      public static function get §3R§() : §!H§
      {
         if(§7"5§ == null)
         {
            §7"5§ = new §!H§();
         }
         return §7"5§;
      }
      
      public function §1&§(param1:XML) : void
      {
         var _loc2_:XML = null;
         this.§+!?§ = param1;
         this.§]%§ = new Vector.<String>();
         for each(_loc2_ in this.§+!?§.language)
         {
            if(_loc2_.@id != "")
            {
               this.§]%§.push(_loc2_.@id);
            }
         }
      }
      
      public function updateTextFields(param1:§,"$§, param2:String) : void
      {
         var group:XMLList = null;
         var xml:XML = null;
         var isPopup:Boolean = false;
         var textXML:XMLList = null;
         var fontName:String = null;
         var textField:§#`§ = null;
         var button:§87§ = null;
         var textfield:TextField = null;
         var view:§,"$§ = param1;
         var groupId:String = param2;
         group = this.§+!?§.group.(@name == groupId);
         if(group.automatic != undefined)
         {
            fontName = this.§+!?§.font.language.(@id == §+Q§);
            for each(xml in group.automatic.text)
            {
               isPopup = String(xml.@popup).toUpperCase() == "TRUE";
               textXML = xml.language.(@id == §+Q§);
               if(textXML.length() > 0)
               {
                  textField = view.getItemByName(xml.@id) as §#`§;
                  if(textField != null)
                  {
                     textField.§';§.text = textXML.toString();
                     this.§;"2§(textField.§';§,fontName);
                     if(this.§+!#§(textField.§';§))
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
               textXML = xml.language.(@id == §+Q§);
               if(textXML.length() > 0)
               {
                  button = view.getItemByName(xml.@id) as §87§;
                  if(button != null)
                  {
                     textfield = button.mClip.text;
                     if(textfield == null)
                     {
                        throw new Error("UIButtonRovio.text not defined!");
                     }
                     textfield.text = textXML.toString();
                     this.§;"2§(textfield,fontName);
                     if(this.§+!#§(textfield))
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
      
      public function §#H§(param1:String, param2:String) : String
      {
         var xml:String = null;
         var groupId:String = param1;
         var textId:String = param2;
         xml = this.§+!?§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §+Q§).toString();
         if(xml != null)
         {
            return xml.toString();
         }
         throw new Error("Manual text was undefinded in (language: " + this.§+Q§ + ", groupID: " + groupId + ", textID: " + textId + ")");
      }
      
      private function §;"2§(param1:TextField, param2:String) : void
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
      
      public function §<r§(param1:§,"$§, param2:String, param3:String, param4:String) : void
      {
         var fontName:String = null;
         var xml:XMLList = null;
         var textField:§#`§ = null;
         var view:§,"$§ = param1;
         var groupId:String = param2;
         var componentId:String = param3;
         var textId:String = param4;
         fontName = this.§+!?§.font.language.(@id == §+Q§);
         xml = this.§+!?§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §+Q§);
         if(xml.length() > 0)
         {
            textField = view.getItemByName(componentId) as §#`§;
            if(textField == null)
            {
               throw new Error("Text field id: \'" + componentId + "\' was not found in view.");
            }
            textField.§';§.text = xml.toString();
            this.§;"2§(textField.§';§,fontName);
            if(this.§+!#§(textField.§';§))
            {
               throw new Error("Manual Input (id: \'" + textId + "\') is wider than TextField (id: \'" + componentId + "\')");
            }
         }
      }
      
      public function §+!#§(param1:TextField) : Boolean
      {
         var _loc2_:TextLineMetrics = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         if(§4"B§)
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
         this.§+Q§ = param1;
         if(this.§]%§)
         {
            if(this.§]%§.indexOf(param1) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §6"-§() : String
      {
         return this.§+Q§;
      }
      
      public function §][§(param1:String) : String
      {
         var i:int = 0;
         var text:String = null;
         var char:String = null;
         var lang:String = param1;
         var chars:String = "";
         for each(text in this.§+!?§.group.§*§.§*§.language.(@id == §+Q§))
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
