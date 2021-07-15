package §"n§
{
   import §0"$§.§"!a§;
   import §0"$§.§+!@§;
   import §0"$§.§;§;
   import fl.text.TLFTextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §!!G§
   {
      
      public static const §-!N§:String = "en";
      
      public static var §8!M§:Boolean = true;
      
      private static var §0!§:§!!G§;
       
      
      private var §#!;§:Vector.<String>;
      
      private var §-m§:String = "en";
      
      private var §'Q§:String;
      
      private var §]t§:XML;
      
      public function §!!G§()
      {
         super();
      }
      
      public static function get §2Z§() : §!!G§
      {
         if(§0!§ == null)
         {
            §0!§ = new §!!G§();
         }
         return §0!§;
      }
      
      public function §+3§(param1:XML) : void
      {
         var _loc2_:XML = null;
         this.§]t§ = param1;
         this.§#!;§ = new Vector.<String>();
         for each(_loc2_ in this.§]t§.language)
         {
            if(_loc2_.@id != "")
            {
               this.§#!;§.push(_loc2_.@id);
            }
         }
      }
      
      public function updateTextFields(param1:§"!a§, param2:String) : void
      {
         var group:XMLList = null;
         var xml:XML = null;
         var isPopup:Boolean = false;
         var textXML:XMLList = null;
         var fontName:String = null;
         var textField:§+!@§ = null;
         var button:§;§ = null;
         var textfield:TLFTextField = null;
         var view:§"!a§ = param1;
         var groupId:String = param2;
         group = this.§]t§.group.(@name == groupId);
         if(group.automatic != undefined)
         {
            fontName = this.§]t§.font.language.(@id == §-m§);
            for each(xml in group.automatic.text)
            {
               isPopup = String(xml.@popup).toUpperCase() == "TRUE";
               textXML = xml.language.(@id == §-m§);
               if(textXML.length() > 0)
               {
                  textField = view.getItemByName(xml.@id) as §+!@§;
                  if(textField != null)
                  {
                     textField.§"v§.text = textXML.toString();
                     this.§3!g§(textField.§"v§,fontName);
                     if(this.§@!1§(textField.§"v§))
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
               textXML = xml.language.(@id == §-m§);
               if(textXML.length() > 0)
               {
                  button = view.getItemByName(xml.@id) as §;§;
                  if(button != null)
                  {
                     textfield = button.mClip.text;
                     if(textfield == null)
                     {
                        throw new Error("UIButtonRovio.text not defined!");
                     }
                     textfield.text = textXML.toString();
                     this.§3!g§(textfield,fontName);
                     if(this.§@!1§(textfield))
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
      
      public function §`!_§(param1:String, param2:String) : String
      {
         var xml:String = null;
         var groupId:String = param1;
         var textId:String = param2;
         xml = this.§]t§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §-m§).toString();
         if(xml != null)
         {
            return xml.toString();
         }
         throw new Error("Manual text was undefinded in (language: " + this.§-m§ + ", groupID: " + groupId + ", textID: " + textId + ")");
      }
      
      private function §3!g§(param1:Object, param2:String) : void
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
      
      public function §2!_§(param1:§"!a§, param2:String, param3:String, param4:String) : void
      {
         var fontName:String = null;
         var xml:XMLList = null;
         var textField:§+!@§ = null;
         var view:§"!a§ = param1;
         var groupId:String = param2;
         var componentId:String = param3;
         var textId:String = param4;
         fontName = this.§]t§.font.language.(@id == §-m§);
         xml = this.§]t§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §-m§);
         if(xml.length() > 0)
         {
            textField = view.getItemByName(componentId) as §+!@§;
            if(textField == null)
            {
               throw new Error("Text field id: \'" + componentId + "\' was not found in view.");
            }
            textField.§"v§.text = xml.toString();
            this.§3!g§(textField.§"v§,fontName);
            if(this.§@!1§(textField.§"v§))
            {
               throw new Error("Manual Input (id: \'" + textId + "\') is wider than TextField (id: \'" + componentId + "\')");
            }
         }
      }
      
      public function §@!1§(param1:Object) : Boolean
      {
         var _loc2_:TextLineMetrics = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         if(§8!M§)
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
         this.§-m§ = param1;
         if(this.§#!;§)
         {
            if(this.§#!;§.indexOf(param1) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §-`§() : String
      {
         return this.§-m§;
      }
      
      public function §#!9§(param1:String) : void
      {
         this.§'Q§ = param1;
      }
      
      public function §%"!§() : String
      {
         return this.§'Q§;
      }
      
      public function §2!=§(param1:String) : String
      {
         var i:int = 0;
         var text:String = null;
         var char:String = null;
         var lang:String = param1;
         var chars:String = "";
         for each(text in this.§]t§.group.§*§.§*§.language.(@id == §-m§))
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
