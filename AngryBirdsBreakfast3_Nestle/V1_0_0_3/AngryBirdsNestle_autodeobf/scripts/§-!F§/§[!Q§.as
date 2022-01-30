package §-!F§
{
   import §3!!§.§5" §;
   import §3!!§.§?v§;
   import §3!!§.native;
   import fl.text.TLFTextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §[!Q§
   {
      
      public static const §@8§:String = "en";
      
      public static var §+"0§:Boolean = true;
      
      private static var §9",§:§[!Q§;
       
      
      private var §&#§:Vector.<String>;
      
      private var §8T§:String = "en";
      
      private var §0]§:String;
      
      private var §]y§:XML;
      
      public function §[!Q§()
      {
         super();
      }
      
      public static function get §=J§() : §[!Q§
      {
         if(§9",§ == null)
         {
            §9",§ = new §[!Q§();
         }
         return §9",§;
      }
      
      public function §,!3§(param1:XML) : void
      {
         var _loc2_:XML = null;
         this.§]y§ = param1;
         this.§&#§ = new Vector.<String>();
         for each(_loc2_ in this.§]y§.language)
         {
            if(_loc2_.@id != "")
            {
               this.§&#§.push(_loc2_.@id);
            }
         }
      }
      
      public function updateTextFields(param1:§5" §, param2:String) : void
      {
         var group:XMLList = null;
         var xml:XML = null;
         var isPopup:Boolean = false;
         var textXML:XMLList = null;
         var fontName:String = null;
         var textField:native = null;
         var button:§?v§ = null;
         var textfield:TLFTextField = null;
         var view:§5" § = param1;
         var groupId:String = param2;
         group = this.§]y§.group.(@name == groupId);
         if(group.automatic != undefined)
         {
            fontName = this.§]y§.font.language.(@id == §8T§);
            for each(xml in group.automatic.text)
            {
               isPopup = String(xml.@popup).toUpperCase() == "TRUE";
               textXML = xml.language.(@id == §8T§);
               if(textXML.length() > 0)
               {
                  textField = view.getItemByName(xml.@id) as native;
                  if(textField != null)
                  {
                     textField.§&!K§.text = textXML.toString();
                     this.§=!_§(textField.§&!K§,fontName);
                     if(this.§!]§(textField.§&!K§))
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
               textXML = xml.language.(@id == §8T§);
               if(textXML.length() > 0)
               {
                  button = view.getItemByName(xml.@id) as §?v§;
                  if(button != null)
                  {
                     textfield = button.mClip.text;
                     if(textfield == null)
                     {
                        throw new Error("UIButtonRovio.text not defined!");
                     }
                     textfield.text = textXML.toString();
                     this.§=!_§(textfield,fontName);
                     if(this.§!]§(textfield))
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
      
      public function §,!=§(param1:String, param2:String) : String
      {
         var xml:String = null;
         var groupId:String = param1;
         var textId:String = param2;
         xml = this.§]y§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §8T§).toString();
         if(xml != null)
         {
            return xml.toString();
         }
         throw new Error("Manual text was undefinded in (language: " + this.§8T§ + ", groupID: " + groupId + ", textID: " + textId + ")");
      }
      
      private function §=!_§(param1:Object, param2:String) : void
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
      
      public function §]-§(param1:§5" §, param2:String, param3:String, param4:String) : void
      {
         var fontName:String = null;
         var xml:XMLList = null;
         var textField:native = null;
         var view:§5" § = param1;
         var groupId:String = param2;
         var componentId:String = param3;
         var textId:String = param4;
         fontName = this.§]y§.font.language.(@id == §8T§);
         xml = this.§]y§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §8T§);
         if(xml.length() > 0)
         {
            textField = view.getItemByName(componentId) as native;
            if(textField == null)
            {
               throw new Error("Text field id: \'" + componentId + "\' was not found in view.");
            }
            textField.§&!K§.text = xml.toString();
            this.§=!_§(textField.§&!K§,fontName);
            if(this.§!]§(textField.§&!K§))
            {
               throw new Error("Manual Input (id: \'" + textId + "\') is wider than TextField (id: \'" + componentId + "\')");
            }
         }
      }
      
      public function §!]§(param1:Object) : Boolean
      {
         var _loc2_:TextLineMetrics = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         if(§+"0§)
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
         this.§8T§ = param1;
         if(this.§&#§)
         {
            if(this.§&#§.indexOf(param1) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §"" §() : String
      {
         return this.§8T§;
      }
      
      public function §#!5§(param1:String) : void
      {
         this.§0]§ = param1;
      }
      
      public function §%w§() : String
      {
         return this.§0]§;
      }
      
      public function §"!m§(param1:String) : String
      {
         var i:int = 0;
         var text:String = null;
         var char:String = null;
         var lang:String = param1;
         var chars:String = "";
         for each(text in this.§]y§.group.§*§.§*§.language.(@id == §8T§))
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
