package §'#§
{
   import §!i§.§1s§;
   import §!i§.§3!A§;
   import §!i§.§?"%§;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §^4§
   {
      
      public static const §0!w§:String = "en";
      
      public static var §]!k§:Boolean = true;
      
      private static var §8!n§:§^4§;
       
      
      private var §#!o§:Vector.<String>;
      
      private var §&`§:String = "en";
      
      private var §6"0§:XML;
      
      public function §^4§()
      {
         super();
      }
      
      public static function get §<"B§() : §^4§
      {
         if(§8!n§ == null)
         {
            §8!n§ = new §^4§();
         }
         return §8!n§;
      }
      
      public function §]1§(param1:XML) : void
      {
         var _loc2_:XML = null;
         this.§6"0§ = param1;
         this.§#!o§ = new Vector.<String>();
         for each(_loc2_ in this.§6"0§.language)
         {
            if(_loc2_.@id != "")
            {
               this.§#!o§.push(_loc2_.@id);
            }
         }
      }
      
      public function updateTextFields(param1:§1s§, param2:String) : void
      {
         var group:XMLList = null;
         var xml:XML = null;
         var isPopup:Boolean = false;
         var textXML:XMLList = null;
         var fontName:String = null;
         var textField:§?"%§ = null;
         var button:§3!A§ = null;
         var textfield:TextField = null;
         var view:§1s§ = param1;
         var groupId:String = param2;
         group = this.§6"0§.group.(@name == groupId);
         if(group.automatic != undefined)
         {
            fontName = this.§6"0§.font.language.(@id == §&`§);
            for each(xml in group.automatic.text)
            {
               isPopup = String(xml.@popup).toUpperCase() == "TRUE";
               textXML = xml.language.(@id == §&`§);
               if(textXML.length() > 0)
               {
                  textField = view.getItemByName(xml.@id) as §?"%§;
                  if(textField != null)
                  {
                     textField.§8!o§.text = textXML.toString();
                     this.§>0§(textField.§8!o§,fontName);
                     if(this.§"y§(textField.§8!o§))
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
               textXML = xml.language.(@id == §&`§);
               if(textXML.length() > 0)
               {
                  button = view.getItemByName(xml.@id) as §3!A§;
                  if(button != null)
                  {
                     textfield = button.mClip.text;
                     if(textfield == null)
                     {
                        throw new Error("UIButtonRovio.text not defined!");
                     }
                     textfield.text = textXML.toString();
                     this.§>0§(textfield,fontName);
                     if(this.§"y§(textfield))
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
      
      public function §3",§(param1:String, param2:String) : String
      {
         var xml:String = null;
         var groupId:String = param1;
         var textId:String = param2;
         xml = this.§6"0§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §&`§).toString();
         if(xml != null)
         {
            return xml.toString();
         }
         throw new Error("Manual text was undefinded in (language: " + this.§&`§ + ", groupID: " + groupId + ", textID: " + textId + ")");
      }
      
      private function §>0§(param1:TextField, param2:String) : void
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
      
      public function §,P§(param1:§1s§, param2:String, param3:String, param4:String) : void
      {
         var fontName:String = null;
         var xml:XMLList = null;
         var textField:§?"%§ = null;
         var view:§1s§ = param1;
         var groupId:String = param2;
         var componentId:String = param3;
         var textId:String = param4;
         fontName = this.§6"0§.font.language.(@id == §&`§);
         xml = this.§6"0§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §&`§);
         if(xml.length() > 0)
         {
            textField = view.getItemByName(componentId) as §?"%§;
            if(textField == null)
            {
               throw new Error("Text field id: \'" + componentId + "\' was not found in view.");
            }
            textField.§8!o§.text = xml.toString();
            this.§>0§(textField.§8!o§,fontName);
            if(this.§"y§(textField.§8!o§))
            {
               throw new Error("Manual Input (id: \'" + textId + "\') is wider than TextField (id: \'" + componentId + "\')");
            }
         }
      }
      
      public function §"y§(param1:TextField) : Boolean
      {
         var _loc2_:TextLineMetrics = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         if(§]!k§)
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
         this.§&`§ = param1;
         if(this.§#!o§)
         {
            if(this.§#!o§.indexOf(param1) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §+!P§() : String
      {
         return this.§&`§;
      }
      
      public function §use§(param1:String) : String
      {
         var i:int = 0;
         var text:String = null;
         var char:String = null;
         var lang:String = param1;
         var chars:String = "";
         for each(text in this.§6"0§.group.§*§.§*§.language.(@id == §&`§))
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
