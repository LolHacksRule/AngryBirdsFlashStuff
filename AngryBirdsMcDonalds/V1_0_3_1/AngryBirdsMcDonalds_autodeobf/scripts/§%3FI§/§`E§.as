package §?I§
{
   import §2y§.§?`§;
   import §2y§.§@!a§;
   import §3g§.§"!n§;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §`E§
   {
      
      public static const §,q§:String = "en";
      
      public static var §2!O§:Boolean = true;
      
      private static var §7r§:§`E§;
       
      
      private var §@!R§:Vector.<String>;
      
      private var §7!b§:String = "en";
      
      private var §>?§:XML;
      
      public function §`E§()
      {
         super();
      }
      
      public static function get §@!7§() : §`E§
      {
         if(§7r§ == null)
         {
            §7r§ = new §`E§();
         }
         return §7r§;
      }
      
      public function §4!Q§(param1:XML) : void
      {
         var _loc2_:XML = null;
         this.§>?§ = param1;
         this.§@!R§ = new Vector.<String>();
         for each(_loc2_ in this.§>?§.language)
         {
            if(_loc2_.@id != "")
            {
               this.§@!R§.push(_loc2_.@id);
            }
         }
      }
      
      public function updateTextFields(param1:§"!n§, param2:String) : void
      {
         var group:XMLList = null;
         var xml:XML = null;
         var isPopup:Boolean = false;
         var textXML:XMLList = null;
         var fontName:String = null;
         var textField:§?`§ = null;
         var button:§@!a§ = null;
         var textfield:TextField = null;
         var view:§"!n§ = param1;
         var groupId:String = param2;
         group = this.§>?§.group.(@name == groupId);
         if(group.automatic != undefined)
         {
            fontName = this.§>?§.font.language.(@id == §7!b§);
            for each(xml in group.automatic.text)
            {
               isPopup = String(xml.@popup).toUpperCase() == "TRUE";
               textXML = xml.language.(@id == §7!b§);
               if(textXML.length() > 0)
               {
                  textField = view.getItemByName(xml.@id) as §?`§;
                  if(textField != null)
                  {
                     textField.§0!j§.text = textXML.toString();
                     this.§+!8§(textField.§0!j§,fontName);
                     if(this.§^!i§(textField.§0!j§))
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
               textXML = xml.language.(@id == §7!b§);
               if(textXML.length() > 0)
               {
                  button = view.getItemByName(xml.@id) as §@!a§;
                  if(button != null)
                  {
                     textfield = button.mClip.text;
                     if(textfield == null)
                     {
                        throw new Error("UIButtonRovio.text not defined!");
                     }
                     textfield.text = textXML.toString();
                     this.§+!8§(textfield,fontName);
                     if(this.§^!i§(textfield))
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
      
      public function §!!>§(param1:String, param2:String) : String
      {
         var xml:String = null;
         var groupId:String = param1;
         var textId:String = param2;
         xml = this.§>?§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §7!b§).toString();
         if(xml != null)
         {
            return xml.toString();
         }
         throw new Error("Manual text was undefinded in (language: " + this.§7!b§ + ", groupID: " + groupId + ", textID: " + textId + ")");
      }
      
      private function §+!8§(param1:TextField, param2:String) : void
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
      
      public function §2l§(param1:§"!n§, param2:String, param3:String, param4:String) : void
      {
         var fontName:String = null;
         var xml:XMLList = null;
         var textField:§?`§ = null;
         var view:§"!n§ = param1;
         var groupId:String = param2;
         var componentId:String = param3;
         var textId:String = param4;
         fontName = this.§>?§.font.language.(@id == §7!b§);
         xml = this.§>?§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §7!b§);
         if(xml.length() > 0)
         {
            textField = view.getItemByName(componentId) as §?`§;
            if(textField == null)
            {
               throw new Error("Text field id: \'" + componentId + "\' was not found in view.");
            }
            textField.§0!j§.text = xml.toString();
            this.§+!8§(textField.§0!j§,fontName);
            if(this.§^!i§(textField.§0!j§))
            {
               throw new Error("Manual Input (id: \'" + textId + "\') is wider than TextField (id: \'" + componentId + "\')");
            }
         }
      }
      
      public function §^!i§(param1:TextField) : Boolean
      {
         var _loc2_:TextLineMetrics = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         if(§2!O§)
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
      
      public function §"Q§(param1:String) : Boolean
      {
         this.§7!b§ = param1;
         if(this.§@!R§)
         {
            if(this.§@!R§.indexOf(param1) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getLanguage() : String
      {
         return this.§7!b§;
      }
      
      public function §^!o§(param1:String) : String
      {
         var i:int = 0;
         var text:String = null;
         var char:String = null;
         var lang:String = param1;
         var chars:String = "";
         for each(text in this.§>?§.group.§*§.§*§.language.(@id == §7!b§))
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
