package §#!1§
{
   import §,!C§.§3!&§;
   import §,!C§.§?!C§;
   import §7p§.§%g§;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §!!X§
   {
      
      public static const § _§:String = "en";
      
      public static var §'!K§:Boolean = true;
      
      private static var §[![§:§!!X§;
       
      
      private var §"!&§:Vector.<String>;
      
      private var §^X§:String = "en";
      
      private var §>?§:XML;
      
      public function §!!X§()
      {
         super();
      }
      
      public static function get §5!!§() : §!!X§
      {
         if(§[![§ == null)
         {
            §[![§ = new §!!X§();
         }
         return §[![§;
      }
      
      public function §%!X§(param1:XML) : void
      {
         var _loc2_:XML = null;
         this.§>?§ = param1;
         this.§"!&§ = new Vector.<String>();
         for each(_loc2_ in this.§>?§.language)
         {
            if(_loc2_.@id != "")
            {
               this.§"!&§.push(_loc2_.@id);
            }
         }
      }
      
      public function updateTextFields(param1:§%g§, param2:String) : void
      {
         var group:XMLList = null;
         var xml:XML = null;
         var isPopup:Boolean = false;
         var textXML:XMLList = null;
         var fontName:String = null;
         var textField:§3!&§ = null;
         var button:§?!C§ = null;
         var textfield:TextField = null;
         var view:§%g§ = param1;
         var groupId:String = param2;
         group = this.§>?§.group.(@name == groupId);
         if(group.automatic != undefined)
         {
            fontName = this.§>?§.font.language.(@id == §^X§);
            for each(xml in group.automatic.text)
            {
               isPopup = String(xml.@popup).toUpperCase() == "TRUE";
               textXML = xml.language.(@id == §^X§);
               if(textXML.length() > 0)
               {
                  textField = view.getItemByName(xml.@id) as §3!&§;
                  if(textField != null)
                  {
                     textField.§>!3§.text = textXML.toString();
                     this.§,!3§(textField.§>!3§,fontName);
                     if(this.§ !"§(textField.§>!3§))
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
               textXML = xml.language.(@id == §^X§);
               if(textXML.length() > 0)
               {
                  button = view.getItemByName(xml.@id) as §?!C§;
                  if(button != null)
                  {
                     textfield = button.mClip.text;
                     if(textfield == null)
                     {
                        throw new Error("UIButtonRovio.text not defined!");
                     }
                     textfield.text = textXML.toString();
                     this.§,!3§(textfield,fontName);
                     if(this.§ !"§(textfield))
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
      
      public function §"9§(param1:String, param2:String) : String
      {
         var xml:String = null;
         var groupId:String = param1;
         var textId:String = param2;
         xml = this.§>?§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §^X§).toString();
         if(xml != null)
         {
            return xml.toString();
         }
         throw new Error("Manual text was undefinded in (language: " + this.§^X§ + ", groupID: " + groupId + ", textID: " + textId + ")");
      }
      
      private function §,!3§(param1:TextField, param2:String) : void
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
      
      public function §1!"§(param1:§%g§, param2:String, param3:String, param4:String) : void
      {
         var fontName:String = null;
         var xml:XMLList = null;
         var textField:§3!&§ = null;
         var view:§%g§ = param1;
         var groupId:String = param2;
         var componentId:String = param3;
         var textId:String = param4;
         fontName = this.§>?§.font.language.(@id == §^X§);
         xml = this.§>?§.group.(@name == groupId).manual.text.(@id == textId).language.(@id == §^X§);
         if(xml.length() > 0)
         {
            textField = view.getItemByName(componentId) as §3!&§;
            if(textField == null)
            {
               throw new Error("Text field id: \'" + componentId + "\' was not found in view.");
            }
            textField.§>!3§.text = xml.toString();
            this.§,!3§(textField.§>!3§,fontName);
            if(this.§ !"§(textField.§>!3§))
            {
               throw new Error("Manual Input (id: \'" + textId + "\') is wider than TextField (id: \'" + componentId + "\')");
            }
         }
      }
      
      public function § !"§(param1:TextField) : Boolean
      {
         var _loc2_:TextLineMetrics = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         if(§'!K§)
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
      
      public function §[R§(param1:String) : Boolean
      {
         this.§^X§ = param1;
         if(this.§"!&§)
         {
            if(this.§"!&§.indexOf(param1) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getLanguage() : String
      {
         return this.§^X§;
      }
      
      public function §&V§(param1:String) : String
      {
         var i:int = 0;
         var text:String = null;
         var char:String = null;
         var lang:String = param1;
         var chars:String = "";
         for each(text in this.§>?§.group.§*§.§*§.language.(@id == §^X§))
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
