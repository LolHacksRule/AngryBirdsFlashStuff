package §87§
{
   import §!!c§.§]# §;
   import §"!t§.§5"U§;
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import §6=§.§+!,§;
   import §6=§.§@"c§;
   import §>!$§.§6"§;
   import §>"%§.§ "R§;
   import §>"%§.§"!5§;
   import §]"r§.§[O§;
   import com.furusystems.dconsole2.DConsole;
   import com.furusystems.dconsole2.core.style.§0#C§;
   import com.furusystems.dconsole2.core.style.§6!x§;
   import com.furusystems.dconsole2.core.style.§7"h§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §?#8§ extends Sprite implements §5"U§, §]# §
   {
       
      
      private var §2"9§:TextField;
      
      private var § X§:§[O§;
      
      private var §!"v§:Boolean = false;
      
      private var § !u§:int = 0;
      
      private var §=#$§:int = 0;
      
      private var §#!@§:§ "R§;
      
      private var §<#E§:Boolean = true;
      
      private var §#a§:TextLineMetrics;
      
      private var §<!q§:Rectangle;
      
      public var § ;§:Boolean = true;
      
      public var §`"c§:Boolean = true;
      
      public var §0"8§:Boolean = true;
      
      public var §#!n§:Boolean = false;
      
      public var §%#C§:Boolean = true;
      
      private var §>"F§:Boolean = false;
      
      private const §4"`§:Boolean = false;
      
      private var §#L§:DConsole;
      
      public function §?#8§(param1:DConsole)
      {
         super();
         this.§#L§ = param1;
         this.§2"9§ = new TextField();
         this.§2"9§.defaultTextFormat = §6!x§.§9#J§;
         this.§2"9§.embedFonts = §6!x§.§1"j§.charAt(0) != "_";
         this.§2"9§.text = "#";
         this.§#a§ = this.§2"9§.getLineMetrics(0);
         addChild(this.§2"9§);
         this.§ X§ = new §[O§(§[O§.§;# §);
         this.§ X§.addEventListener(Event.CHANGE,this.§="x§);
         this.§ X§.§`!S§ = 10;
         addChild(this.§ X§);
         this.§2"9§.mouseWheelEnabled = false;
         this.§2"9§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         param1.§]"z§.addCallback(§""A§.§4#I§,this.§-!B§);
         param1.§]"z§.addCallback(§""A§.§5!q§,this.§2#§);
         param1.§]"z§.addCallback(§""A§.§9"u§,this.§4R§);
         if(this.§4"`§)
         {
            this.§2"9§.addEventListener(MouseEvent.CLICK,this.§@9§);
         }
      }
      
      private function §4R§() : void
      {
         if(this.§!"v§)
         {
            return;
         }
         if(this.§#!@§.§>t§ || this.§>"F§)
         {
            this.§["R§();
            this.§#!@§.§>j§();
            this.§>"F§ = false;
         }
      }
      
      private function §2#§(param1:§7",§) : void
      {
         var _loc2_:§"!5§ = §"!5§(param1.§@Z§);
         this.§^"%§ = _loc2_.§^"%§;
         this.§>"F§ = true;
      }
      
      private function §@9§(param1:MouseEvent) : void
      {
         var _loc2_:int = this.§2"9§.getLineIndexAtPoint(this.§2"9§.mouseX,this.§2"9§.mouseY);
         var _loc3_:§@"c§ = this.§9<§(_loc2_);
         if(!_loc3_.§ p§)
         {
         }
      }
      
      private function §="x§(param1:Event) : void
      {
         this.scrollIndex = this.§ X§.§[-§ * this.§1"x§;
      }
      
      public function get numLines() : int
      {
         return Math.max(1,Math.floor((this.§2"9§.height - 4) / this.§#a§.height));
      }
      
      public function set text(param1:String) : void
      {
         this.§2"9§.text = param1;
      }
      
      public function get text() : String
      {
         return this.§2"9§.text;
      }
      
      public function setText(param1:String) : void
      {
         this.§2"9§.text = param1;
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc2_:Number = NaN;
         this.§<!q§ = param1;
         y = param1.y;
         x = param1.x;
         _loc2_ = this.§2"9§.height;
         this.§2"9§.width = param1.width - this.§ X§.§`!S§;
         this.§2"9§.height = param1.height;
         this.§ X§.x = param1.width - this.§ X§.§`!S§;
         this.§9! §();
         var _loc3_:Rectangle = param1.clone();
         this.§ X§.draw(_loc3_.height,this.§=#$§,this.§1"x§);
         if(_loc2_ != this.§2"9§.height)
         {
            this.§>"F§ = true;
         }
      }
      
      private function §9! §() : void
      {
         if(!this.§<!q§)
         {
            return;
         }
         graphics.clear();
         graphics.beginFill(§?#O§.§;"q§,§0#C§.§@@§);
         graphics.drawRect(0,0,this.§<!q§.width,this.§<!q§.height);
      }
      
      public function get §9#$§() : Number
      {
         return 0;
      }
      
      public function get §>"Z§() : Number
      {
         return 0;
      }
      
      public function get rect() : Rectangle
      {
         return this.§<!q§;
      }
      
      public function get §2L§() : TextField
      {
         return this.§2"9§;
      }
      
      public function get locked() : Boolean
      {
         return this.§!"v§;
      }
      
      public function §`#N§(param1:int) : void
      {
         this.§"#[§(param1 - 1);
      }
      
      public function §"#[§(param1:int) : void
      {
         var _loc2_:int = this.scrollIndex - param1;
         this.scroll(_loc2_);
      }
      
      public function §0&§() : void
      {
         this.§!"v§ = true;
      }
      
      public function §7"+§() : void
      {
         this.§!"v§ = false;
      }
      
      public function §@"!§(param1:String = null) : void
      {
         if(param1 == null)
         {
            this.§#!n§ = !this.§#!n§;
         }
         else
         {
            this.§#!n§ = §6"§.§^p§(param1);
         }
         if(this.§#!n§)
         {
            this.§#L§.§""W§("Timestamp on",§+!,§.§>y§);
         }
         else
         {
            this.§#L§.§""W§("Timestamp off",§+!,§.§>y§);
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         this.scroll(param1.delta);
      }
      
      public function §@#'§(param1:String = null) : void
      {
         if(param1 == null)
         {
            this.§ ;§ = !this.§ ;§;
         }
         else
         {
            this.§ ;§ = §6"§.§^p§(param1);
         }
         if(this.§ ;§)
         {
            this.§#L§.§""W§("Line numbers: on",§+!,§.§>y§);
         }
         else
         {
            this.§#L§.§""W§("Line numbers: off",§+!,§.§>y§);
         }
         this.§>"F§ = true;
      }
      
      public function scroll(param1:int = 0, param2:int = 0) : void
      {
         this.§2"9§.scrollH += param2;
         if(param1 != 0)
         {
            if(this.§^"%§.length < this.numLines)
            {
               return;
            }
            this.scrollIndex -= param1;
         }
      }
      
      public function set scrollIndex(param1:int) : void
      {
         var _loc2_:int = this.§=#$§;
         this.§=#$§ = Math.max(0,Math.min(param1,this.§1"x§));
         this.§<#E§ = this.§=#$§ == this.§1"x§;
         if(_loc2_ != this.§=#$§)
         {
            this.§>"F§ = true;
         }
      }
      
      public function get scrollIndex() : int
      {
         return this.§=#$§;
      }
      
      public function get §1"x§() : int
      {
         if(!this.§^"%§)
         {
            return 0;
         }
         return Math.max(0,this.§^"%§.§0!G§.length - this.numLines);
      }
      
      public function update() : void
      {
         this.§4R§();
      }
      
      public function set §^"%§(param1:§ "R§) : void
      {
         this.§#!@§ = param1;
         this.§%#C§ = this.§#!@§.§8a§.§["2§ == this.§#!@§;
         this.update();
      }
      
      public function get §^"%§() : § "R§
      {
         return this.§#!@§;
      }
      
      public function §9<§(param1:int) : §@"c§
      {
         var _loc2_:Vector.<§@"c§> = this.§^"%§.§0!G§;
         param1 += this.§=#$§;
         return this.§^"%§.§0!G§[param1];
      }
      
      public function §["R§() : void
      {
         var currentLogVector:Vector.<§@"c§> = null;
         var i:int = 0;
         var msg:§@"c§ = null;
         var lineLength:int = 0;
         var lineNum:int = 0;
         var visible:Boolean = false;
         var fmt:TextFormat = null;
         var lineNumStr:String = null;
         var _hooray:Boolean = false;
         var idx:int = 0;
         var str:String = null;
         var dateStr:String = null;
         var str2:String = null;
         var diff:int = 0;
         var sindex:int = 0;
         if(!visible || this.§!"v§ || !this.§^"%§)
         {
            return;
         }
         if(this.§<#E§)
         {
            this.§=#$§ = this.§1"x§;
         }
         currentLogVector = this.§^"%§.§0!G§;
         var date:Date = new Date();
         this.clear();
         this.§ !u§ = Math.min(currentLogVector.length,this.scrollIndex + this.numLines);
         if(this.numLines > this.§ !u§ - this.scrollIndex)
         {
            this.§=#$§ = this.§1"x§;
            this.§<#E§ = true;
            this.§ !u§ = Math.min(currentLogVector.length,this.scrollIndex + this.numLines);
         }
         this.§ X§.visible = this.numLines < currentLogVector.length;
         if(this.§ X§.visible)
         {
            this.§2"9§.width = this.§<!q§.width - this.§ X§.§`!S§;
         }
         else
         {
            this.§2"9§.width = this.§<!q§.width;
         }
         i = this.scrollIndex;
         for(; i < this.§ !u§; i++)
         {
            msg = currentLogVector[i];
            lineLength = 0;
            lineNum = i + 1;
            if(!(msg.type == §+!,§.§9D§ && !this.§0"8§))
            {
               visible = msg.visible;
               this.§2L§.defaultTextFormat = fmt = §6!x§.§8W§;
               lineNumStr = lineNum.toString();
               if(lineNum < 100)
               {
                  lineNumStr = "0" + lineNumStr;
               }
               if(lineNum < 10)
               {
                  lineNumStr = "0" + lineNumStr;
               }
               if(this.§ ;§)
               {
                  lineLength += lineNumStr.length + 2;
                  this.§]#Y§("[" + lineNumStr + "]",§6!x§.§9T§);
               }
               if(this.§#!n§)
               {
                  fmt = !!visible ? §6!x§.§0!V§ : §6!x§.§6$§;
                  date.setTime(msg.timestamp);
                  dateStr = " " + date.toLocaleDateString() + " " + date.toLocaleTimeString() + " ";
                  lineLength += dateStr.length;
                  this.§]#Y§(dateStr,fmt);
               }
               if(this.§%#C§ && msg.tag != "" && msg.tag != DConsole.§["w§ && visible)
               {
                  fmt = !!visible ? §6!x§.§[!L§ : §6!x§.§6$§;
                  lineLength += 1 + msg.tag.length;
                  this.§]#Y§(" " + msg.tag,fmt);
               }
               if(msg.type == §+!,§.§-!J§)
               {
                  this.§]#Y§(" < ",§6!x§.§#;§);
               }
               else
               {
                  this.§]#Y§(" > ",§6!x§.§#;§);
               }
               lineLength += 3;
               _hooray = false;
               if(visible || msg.type == §+!,§.§-!J§)
               {
                  switch(msg.type)
                  {
                     case §+!,§.§-!J§:
                        fmt = §6!x§.§!$§;
                        break;
                     case §+!,§.§>y§:
                        fmt = §6!x§.§6!>§;
                        break;
                     case §+!,§.ERROR:
                        fmt = §6!x§.§;!+§;
                        break;
                     case §+!,§.§',§:
                        fmt = §6!x§.§`!h§;
                        break;
                     case §+!,§.FATAL:
                        fmt = §6!x§.§[#N§;
                        break;
                     case §+!,§.§4"'§:
                        _hooray = true;
                        fmt = §6!x§.§[q§;
                        break;
                     case §+!,§.INFO:
                        fmt = §6!x§.§,!G§;
                        break;
                     case §+!,§.§9D§:
                     case §+!,§.DEBUG:
                     default:
                        if(i == currentLogVector.length - 1)
                        {
                           fmt = §6!x§.§,!O§;
                           break;
                        }
                        fmt = §6!x§.§9#J§;
                        break;
                  }
               }
               else
               {
                  fmt = §6!x§.§6$§;
               }
               idx = this.text.length;
               str = msg.text;
               if(msg.§%"T§ > 0)
               {
                  str2 = " x" + (msg.§%"T§ + 1);
                  str += str2;
               }
               lineLength += str.length;
               msg.§ p§ = false;
               if(this.§4"`§)
               {
                  if(lineLength * this.§#a§.width > width)
                  {
                     diff = lineLength - width / this.§#a§.width;
                     str = str.substr(0,Math.max(1,str.length - diff - 4));
                     str += "...";
                     msg.§ p§ = true;
                  }
               }
               if(i != this.§ !u§ - 1)
               {
                  this.§]#Y§(str + "\n",fmt);
               }
               else
               {
                  this.§]#Y§(str,fmt);
               }
               try
               {
                  if(_hooray)
                  {
                     sindex = 0;
                     while(sindex < str.length)
                     {
                        fmt.color = Math.random() * 16777215;
                        this.§2L§.setTextFormat(fmt,idx + sindex,idx + sindex + str.length - sindex);
                        sindex++;
                     }
                  }
                  else if(str.length > 0)
                  {
                     this.§2L§.setTextFormat(fmt,idx,idx + str.length);
                  }
               }
               catch(e:Error)
               {
                  currentLogVector.splice(i,1);
                  §#L§.§""W§(e.message,§+!,§.ERROR);
                  §#L§.§""W§("The console encountered a message draw error. Did you attempt to log a ByteArray?",§+!,§.ERROR);
                  §["R§();
                  continue;
               }
            }
         }
         this.§ X§.draw(this.§2"9§.height,this.§=#$§,this.§1"x§);
      }
      
      private function §]#Y§(param1:String, param2:TextFormat) : void
      {
         var _loc3_:int = this.§2L§.length;
         this.§2L§.appendText(param1);
         this.§2L§.setTextFormat(param2,_loc3_,this.§2L§.length);
      }
      
      public function clear() : void
      {
         this.§2"9§.text = "";
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         var _loc2_:§7"h§ = §7"h§(param1.§@Z§);
         this.§9! §();
         this.§ X§.draw(this.§2"9§.height,this.§=#$§,this.§1"x§);
         this.§["R§();
      }
      
      public function §6!P§() : void
      {
         this.§"#[§(int.MAX_VALUE);
      }
   }
}
