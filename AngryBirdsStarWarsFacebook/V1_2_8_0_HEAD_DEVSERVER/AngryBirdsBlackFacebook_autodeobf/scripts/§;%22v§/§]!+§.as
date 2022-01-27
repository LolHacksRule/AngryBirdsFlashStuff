package §;"v§
{
   import §"!t§.§%x§;
   import §"!t§.§5!e§;
   import §"!t§.§5"U§;
   import §+!J§.§""A§;
   import §,!k§.Assistant;
   import §,0§.§#A§;
   import §-"?§.§+!8§;
   import §-"?§.§4"u§;
   import §1"b§.§7",§;
   import §3j§.§!!l§;
   import §3j§.§0"h§;
   import §3j§.§7e§;
   import §6§.§%I§;
   import §7g§.§,!B§;
   import §87§.§?§;
   import §]"T§.§'"N§;
   import §]"r§.§ k§;
   import §]"r§.§["g§;
   import com.furusystems.dconsole2.DConsole;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.BlurFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §]!+§ extends Sprite implements §5"U§, §%x§
   {
      
      public static const §=!Q§:Number = 0.4;
       
      
      private var §#L§:DConsole;
      
      private var _rect:Rectangle;
      
      private var §;!M§:§7e§;
      
      private var §6"Z§:§!!l§;
      
      private var §-# §:§0"h§;
      
      private var §8"X§:Array;
      
      private var §,!y§:§5!e§;
      
      private var §"#H§:Sprite;
      
      private var §,!I§:Number;
      
      private var §>1§:Boolean;
      
      private var §class§:§#A§;
      
      private var §1"q§:Boolean;
      
      private var §+i§:Shape;
      
      private var §`#Z§:Rectangle;
      
      private var §>!a§:int = -1;
      
      private var §,![§:BitmapData;
      
      private var §+[§:Sprite;
      
      private var §]f§:Boolean = false;
      
      private var §3"^§:§ k§;
      
      private var §;#X§:Rectangle;
      
      private var §^J§:Boolean;
      
      private var §66§:BitmapData;
      
      private var §1v§:Bitmap;
      
      private var § T§:Shape;
      
      private var §2"2§:BitmapData;
      
      private var §##`§:Boolean = false;
      
      public function §]!+§(param1:DConsole = null)
      {
         this.§8"X§ = [];
         this.§+i§ = new Shape();
         this.§`#Z§ = new Rectangle();
         this.§+[§ = new Sprite();
         this.§1v§ = new Bitmap();
         this.§ T§ = new Shape();
         this.§2"2§ = new BitmapData(1,3,true,0);
         super();
         this.§3"^§ = new § k§(param1);
         visible = false;
         this.§#L§ = param1;
         this.§,![§ = new BitmapData(3,3,true,0);
         this.§,![§.setPixel32(0,0,3422552064);
         tabEnabled = tabChildren = false;
         this.§;!M§ = new §7e§(param1);
         this.§6"Z§ = new §!!l§(param1);
         this.§-# § = new §0"h§(param1);
         this.addChild(this.§+[§);
         this.addChild(this.§-# §);
         this.§"#H§ = new Sprite();
         this.§,!y§ = new §5!e§();
         this.§,!y§.§-!A§.addChild(this.§6"Z§);
         this.§,!y§.§9"m§.addChild(this.§;!M§);
         this.§"#H§.alpha = 0;
         this.§,!y§.§`_§ = 0.2;
         this.addChild(this.§,!y§);
         this.addChild(this.§"#H§);
         this.addChild(this.§3"^§);
         this.§"#H§.addEventListener(MouseEvent.MOUSE_DOWN,this.§+s§);
         this.§"#H§.addEventListener(MouseEvent.MOUSE_OVER,this.§9d§);
         this.§"#H§.addEventListener(MouseEvent.MOUSE_OUT,this.§@"s§);
         this.§"#H§.addEventListener(MouseEvent.DOUBLE_CLICK,this.§8"'§);
         this.§"#H§.doubleClickEnabled = true;
         this.§"#H§.buttonMode = true;
         this.§8#R§.addEventListener(MouseEvent.MOUSE_DOWN,this.§[7§);
         this.§8#R§.addEventListener(MouseEvent.DOUBLE_CLICK,this.§%f§);
         addEventListener(Event.ADDED_TO_STAGE,this.§2f§);
         tabEnabled = tabChildren = false;
         this.§#L§.§]"z§.addCallback(§""A§.§1"4§,this.§9#_§);
         this.§#L§.§]"z§.addCallback(§""A§.§&!I§,this.§9#_§);
         this.§#L§.§]"z§.addCallback(§""A§.§+K§,this.§%#[§);
         this.§#L§.§]"z§.addCallback(§""A§.§'#W§,this.§%#[§);
         this.§#L§.§]"z§.addCallback(§""A§.§+#@§,this.§%#[§);
         this.§#L§.§]"z§.addCallback(§""A§.§;"B§,this.§`"C§);
         this.§#L§.§]"z§.addCallback(§""A§.§""C§,this.§`"C§);
         this.§#L§.§]"z§.addCallback(§""A§.§`#D§,this.§`"C§);
         this.§1!z§();
      }
      
      public function get input() : §'"N§
      {
         return this.§;!M§.input;
      }
      
      public function get output() : §?#8§
      {
         return this.§;!M§.output;
      }
      
      public function get §;!v§() : §,!B§
      {
         return this.§;!M§.§9!O§;
      }
      
      public function get assistant() : Assistant
      {
         return this.§;!M§.assistant;
      }
      
      public function get inspector() : §#A§
      {
         return this.§6"Z§.inspector;
      }
      
      public function get §+!h§() : §%I§
      {
         return this.§-# §.dynamic;
      }
      
      public function get §8#R§() : § k§
      {
         return this.§3"^§;
      }
      
      private function §1!z§() : void
      {
         addEventListener(Event.ENTER_FRAME,this.§]",§);
         this.§2"2§.setPixel32(0,0,4286611584);
         this.§2"2§.setPixel32(0,1,4293848814);
      }
      
      public function §#-§() : void
      {
         this.§##`§ = !this.§##`§;
         if(!this.§##`§)
         {
            if(contains(this.§1v§))
            {
               removeChild(this.§1v§);
            }
            if(contains(this.§ T§))
            {
               removeChild(this.§ T§);
            }
         }
      }
      
      private function §`"C§(param1:§7",§) : void
      {
         var _loc2_:Rectangle = null;
         switch(param1.message)
         {
            case §""A§.§;"B§:
               Mouse.cursor = MouseCursor.HAND;
               break;
            case §""A§.§""C§:
               Mouse.cursor = MouseCursor.AUTO;
               break;
            case §""A§.§`#D§:
               this.§`#Z§.height = Math.round(Math.max(§>"!§.§6R§ * 5,Math.min(stage.stageHeight - §>"!§.§6R§,stage.mouseY - this.y)) / §>"!§.§6R§) * §>"!§.§6R§;
               this.§`#Z§.width = stage.mouseX - this.x;
               _loc2_ = this.rect;
               _loc2_.height = this.§`#Z§.height;
               _loc2_.width = this.§`#Z§.width;
               _loc2_.width = Math.ceil(Math.max(150,Math.min(_loc2_.width,stage.stageWidth - this.x)));
               this.rect = _loc2_;
         }
      }
      
      override public function get x() : Number
      {
         return super.x;
      }
      
      override public function set x(param1:Number) : void
      {
         super.x = this.§#L§.persistence.§?"i§ = param1;
      }
      
      override public function get y() : Number
      {
         return super.y;
      }
      
      override public function set y(param1:Number) : void
      {
         super.y = this.§#L§.persistence.§^Q§ = param1;
      }
      
      override public function get height() : Number
      {
         return this.§#L§.persistence.§-1§;
      }
      
      override public function set height(param1:Number) : void
      {
         this.§#L§.persistence.§-1§ = param1;
         this.rect = this.§#L§.persistence.rect;
      }
      
      override public function get width() : Number
      {
         return this.§#L§.persistence.§6#>§;
      }
      
      override public function set width(param1:Number) : void
      {
         this.§#L§.persistence.§6#>§ = param1;
         this.rect = this.§#L§.persistence.rect;
      }
      
      private function §%#[§(param1:§7",§) : void
      {
         switch(param1.message)
         {
            case §""A§.§+K§:
               Mouse.cursor = MouseCursor.HAND;
               break;
            case §""A§.§'#W§:
               Mouse.cursor = MouseCursor.AUTO;
               this.§#L§.§]"z§.§#!"§(§""A§.§<Y§,null,this);
               this.§-!h§();
               break;
            case §""A§.§+#@§:
               this.x += param1.data.x;
               this.y += param1.data.y;
               this.x = int(Math.max(0,Math.min(this.x,stage.stageWidth - this._rect.width)));
               this.y = int(Math.max(0,Math.min(this.y,stage.stageHeight - this._rect.height)));
               this.§8#R§.visible = true;
               if(this.y <= 2)
               {
                  this.§#L§.§]"z§.§#!"§(§""A§.§7" §,§["g§.TOP,this);
                  this.§#L§.persistence.dockState.value = DConsole.§<!g§;
                  this.§3"^§.y = this._rect.height;
               }
               else if(this.y >= stage.stageHeight - this._rect.height - 2)
               {
                  this.§#L§.§]"z§.§#!"§(§""A§.§7" §,§["g§.§var §,this);
                  this.§#L§.persistence.dockState.value = DConsole.§+"j§;
                  this.§3"^§.y = -this.§8#R§.height;
               }
               else
               {
                  this.§#L§.§]"z§.§#!"§(§""A§.§<Y§,null,this);
                  this.§#L§.persistence.dockState.value = DConsole.§!!@§;
                  this.§8#R§.visible = false;
               }
               this.assistant.§,!J§.visible = !this.§8#R§.visible;
         }
      }
      
      private function §9#_§(param1:§7",§) : void
      {
         this.§,!y§.§`_§ = this.§#L§.persistence.verticalSplitRatio.value;
         this.§,!T§();
      }
      
      private function §2f§(param1:Event) : void
      {
         this.§^J§ = true;
         removeEventListener(Event.ADDED_TO_STAGE,this.§2f§);
         this.§2i§();
         switch(this.§^7§)
         {
            case DConsole.§+"j§:
               this.y = stage.stageHeight + 10;
               break;
            case DConsole.§<!g§:
               this.y = -this.height;
         }
         this.onParentUpdate(this._rect);
         this.§^J§ = false;
      }
      
      private function §2i§() : void
      {
         this.§,!y§.§`_§ = this.§#L§.persistence.verticalSplitRatio.value;
         this.inspector.enabled = this.§,!y§.§`_§ > 0;
         this.rect = this.§#L§.persistence.rect;
         this.x = this.§#L§.persistence.§?"i§;
         this.y = this.§#L§.persistence.§^Q§;
      }
      
      public function get §`_§() : Number
      {
         return this.§,!y§.§`_§;
      }
      
      public function set §`_§(param1:Number) : void
      {
         this.§,!y§.§`_§ = param1;
      }
      
      private function §%f§(param1:MouseEvent) : void
      {
         var _loc2_:Rectangle = this.rect;
         if(_loc2_.height < 50)
         {
            _loc2_.height = stage.stageHeight * 0.8;
         }
         else
         {
            _loc2_.height = 0;
         }
         this.rect = _loc2_;
      }
      
      private function §[7§(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.HAND;
         this.§8#R§.§<p§ = true;
         this.§+i§.visible = true;
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<!V§);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§do §);
         this.§<!V§(param1);
      }
      
      private function §do §(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.AUTO;
         this.§8#R§.§<p§ = false;
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<!V§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§do §);
         this.§,!T§();
      }
      
      private function §<!V§(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.HAND;
         var _loc2_:Rectangle = this.rect;
         switch(this.§^7§)
         {
            case DConsole.§+"j§:
               this.§`#Z§.height = Math.round(Math.max(§>"!§.§6R§ * 1,Math.min(stage.stageHeight - §>"!§.§6R§,stage.stageHeight - stage.mouseY - 8)) / §>"!§.§6R§) * §>"!§.§6R§;
               if(_loc2_.height != this.§`#Z§.height)
               {
                  _loc2_.height = this.height = this.§`#Z§.height;
                  this.rect = _loc2_;
                  this.y = stage.stageHeight - _loc2_.height;
                  break;
               }
               break;
            default:
               this.§`#Z§.height = Math.round(Math.max(§>"!§.§6R§ * 1,Math.min(stage.stageHeight - §>"!§.§6R§,stage.mouseY - 8)) / §>"!§.§6R§) * §>"!§.§6R§;
               if(_loc2_.height != this.§`#Z§.height)
               {
                  _loc2_.height = this.height = this.§`#Z§.height;
                  this.rect = _loc2_;
                  break;
               }
         }
      }
      
      private function §]!t§() : void
      {
         if(!this.§]f§ || this.§^J§)
         {
            this.§,!y§.§]!e§(this.§>!a§);
            this.§]f§ = true;
            this.inspector.enabled = this.§>!a§ > 0;
         }
      }
      
      private function §^!^§() : void
      {
         if(this.§]f§ || this.§^J§)
         {
            this.inspector.enabled = false;
            this.§]f§ = false;
            this.§>!a§ = this.§,!y§.§`! §();
            this.§,!y§.§]!e§(0);
         }
      }
      
      public function §%!^§(param1:String) : void
      {
         this.§-# §.dynamic.§>"x§(param1);
      }
      
      private function §,!T§() : void
      {
         var _loc1_:Rectangle = this._rect.clone();
         this.§;#X§ = _loc1_.clone();
         this.§-# §.onParentUpdate(_loc1_);
         if(this.§-# §.visible)
         {
            _loc1_.y = §>"!§.§6R§;
            _loc1_.height -= §>"!§.§6R§;
         }
         this.§,!y§.rect = _loc1_;
         this.§"#H§.graphics.clear();
         if(this.rect.height < 128 || !this.inspector.§3!=§)
         {
            this.§^!^§();
            this.§,!y§.§]!e§(0);
         }
         else
         {
            this.§]!t§();
            this.§"#H§.graphics.beginFill(0,0.1);
            this.§"#H§.graphics.drawRect(0,0,8,_loc1_.height);
            this.§"#H§.x = int(this.§,!y§.§`_§ * _loc1_.width - 4);
            this.§"#H§.y = this.§,!y§.y;
         }
         _loc1_.height = §>"!§.§6R§;
         switch(this.§^7§)
         {
            case DConsole.§+"j§:
               _loc1_.y = -this.§8#R§.height;
               this.§8#R§.onParentUpdate(_loc1_);
               break;
            default:
               _loc1_.y = this._rect.height;
               this.§8#R§.onParentUpdate(_loc1_);
         }
      }
      
      private function §@"s§(param1:MouseEvent) : void
      {
         if(this.§1"q§)
         {
            return;
         }
         this.§"#H§.alpha = 0;
         this.§"#H§.blendMode = BlendMode.NORMAL;
         Mouse.cursor = MouseCursor.AUTO;
      }
      
      private function §9d§(param1:MouseEvent) : void
      {
         if(this.§1"q§)
         {
            return;
         }
         this.§"#H§.alpha = 1;
         this.§"#H§.blendMode = BlendMode.INVERT;
         Mouse.cursor = MouseCursor.HAND;
      }
      
      private function §8"'§(param1:MouseEvent) : void
      {
         if(this.§,!y§.§`! §() > 30)
         {
            this.§]f§ = false;
            this.§>!a§ = this.§,!y§.§`! §();
            this.§,!y§.§]!e§(0);
            this.§^!^§();
         }
         else
         {
            this.§]f§ = true;
            this.§>!a§ = 300;
            this.§,!y§.§]!e§(300);
            this.§]!t§();
         }
         this.§,!T§();
      }
      
      private function §+s§(param1:MouseEvent) : void
      {
         this.§1"q§ = true;
         this.§"#H§.alpha = 1;
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§get §);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.§"!o§);
      }
      
      private function §"!o§(param1:MouseEvent) : void
      {
         this.§1"q§ = false;
         this.§"#H§.alpha = 0;
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§get §);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.§"!o§);
         Mouse.cursor = MouseCursor.AUTO;
      }
      
      private function §get §(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.HAND;
         var _loc2_:int = Math.max(0,Math.min(this._rect.width / 2,mouseX));
         if(_loc2_ < 30)
         {
            _loc2_ = 0;
         }
         this.inspector.enabled = _loc2_ > 0;
         this.§,!y§.§]!e§(_loc2_);
         this.§#L§.persistence.verticalSplitRatio.value = this.§,!y§.§`_§;
         this.§,!T§();
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         this.children.push(param1);
         return super.addChild(param1);
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         param1.height = Math.floor(param1.height);
         param1.width = Math.round(param1.width);
         this.rect = param1;
      }
      
      public function show() : void
      {
         visible = true;
         switch(this.§^7§)
         {
            case DConsole.§!!@§:
               this.§9!L§();
               break;
            case DConsole.§+"j§:
               §4"u§.§#!y§(this,"y",stage.stageHeight - this.height,§=!Q§,this.§9!L§,§+!8§);
               break;
            case DConsole.§<!g§:
            default:
               §4"u§.§#!y§(this,"y",0,§=!Q§,this.§9!L§,§+!8§);
         }
      }
      
      private function §9!L§() : void
      {
         this.§#L§.§]"z§.§#!"§(§""A§.§3#G§,true);
      }
      
      public function hide() : void
      {
         if(!stage)
         {
            this.§ !>§();
            return;
         }
         switch(this.§^7§)
         {
            case DConsole.§!!@§:
               this.§ !>§();
               break;
            case DConsole.§+"j§:
               §4"u§.§#!y§(this,"y",stage.stageHeight + 10,§=!Q§,this.§ !>§,§+!8§);
               break;
            case DConsole.§<!g§:
            default:
               §4"u§.§#!y§(this,"y",-this.height,§=!Q§,this.§ !>§,§+!8§);
         }
      }
      
      public function §'#-§() : void
      {
         var _loc1_:Rectangle = null;
         switch(this.§^7§)
         {
            case DConsole.§!!@§:
               this.§^7§ = DConsole.§<!g§;
               this.§'#-§();
               break;
            default:
               _loc1_ = this._rect;
               _loc1_.height = int(stage.stageHeight - §>"!§.§6R§);
               _loc1_.width = int(stage.stageWidth);
               this.rect = _loc1_;
               this.§-!h§();
               this.output.§["R§();
         }
      }
      
      public function §0"<§() : void
      {
         var _loc1_:Rectangle = this._rect;
         switch(this.§^7§)
         {
            case DConsole.§!!@§:
               _loc1_.height = 5 * §>"!§.§6R§;
               this.rect = _loc1_;
               break;
            default:
               _loc1_.height = §>"!§.§6R§;
               this.§-!h§();
               this.rect = _loc1_;
         }
         this.output.§["R§();
      }
      
      public function §="l§() : void
      {
         var _loc1_:Rectangle = this.§#L§.persistence.rect;
         this.x = _loc1_.x;
         this.y = _loc1_.y;
         this.width = _loc1_.width;
         this.height = _loc1_.height;
         this.§-!h§();
      }
      
      private function § !>§() : void
      {
         visible = false;
         this.§#L§.§]"z§.§#!"§(§""A§.§3#G§,false);
      }
      
      public function get children() : Array
      {
         return this.§8"X§;
      }
      
      public function set rect(param1:Rectangle) : void
      {
         this._rect = param1;
         this._rect.y = 0;
         this._rect.x = 0;
         this._rect.height = Math.floor(Math.max(this.§9#$§,this._rect.height) / §>"!§.§6R§) * §>"!§.§6R§;
         this._rect.width = int(Math.max(this.§>"Z§,this._rect.width));
         this.§+[§.graphics.clear();
         this.§+[§.graphics.lineStyle(0,§?#O§.§0!^§);
         this.§+[§.graphics.drawRect(0,0,this._rect.width,this._rect.height);
         this.§+[§.graphics.endFill();
         this.§#L§.persistence.§6#>§ = this._rect.width;
         this.§#L§.persistence.§-1§ = this._rect.height;
         this.§,!T§();
      }
      
      public function get rect() : Rectangle
      {
         return this.§#L§.persistence.rect;
      }
      
      public function get §9#$§() : Number
      {
         return 32;
      }
      
      public function get §>"Z§() : Number
      {
         return 0;
      }
      
      public function get §]!2§() : §7e§
      {
         return this.§;!M§;
      }
      
      public function get §^7§() : int
      {
         return this.§#L§.persistence.dockState.value;
      }
      
      public function set §^7§(param1:int) : void
      {
         this.§#L§.persistence.dockState.value = param1;
         this.§-!h§();
      }
      
      private function §-!h§() : void
      {
         this.§8#R§.visible = true;
         switch(this.§^7§)
         {
            case DConsole.§<!g§:
               this._rect.width = stage.stageWidth;
               this.rect = this._rect;
               this.x = 0;
               this.y = 0;
               break;
            case DConsole.§+"j§:
               this._rect.width = stage.stageWidth;
               this.§3"^§.y = -this.§8#R§.height;
               this.rect = this._rect;
               this.y = stage.stageHeight - this._rect.height;
               this.x = 0;
               break;
            case DConsole.§!!@§:
               this.rect = this._rect;
               this.§8#R§.visible = false;
         }
         this.assistant.§,!J§.visible = !this.§8#R§.visible;
      }
      
      private function §]",§(param1:Event = null) : void
      {
         if(!this.§##`§)
         {
            return;
         }
         this.§ T§.graphics.clear();
         this.§ T§.graphics.beginBitmapFill(this.§2"2§,null,true,false);
         this.§ T§.graphics.drawRect(0,0,this.output.width,this.output.height);
         this.§ T§.graphics.endFill();
         this.§ T§.blendMode = BlendMode.MULTIPLY;
         if(this.§66§)
         {
            this.§66§.dispose();
         }
         if(contains(this.§1v§))
         {
            removeChild(this.§1v§);
         }
         if(contains(this.§ T§))
         {
            removeChild(this.§ T§);
         }
         this.§1v§.blendMode = BlendMode.ADD;
         this.§66§ = new BitmapData(this.output.width,this.output.height,true,0);
         this.§66§.lock();
         this.§66§.draw(this.output);
         this.§66§.applyFilter(this.§66§,this.§66§.rect,new Point(),new BlurFilter(16,16,1));
         this.§66§.applyFilter(this.§66§,this.§66§.rect,new Point(),new BlurFilter(16,16,1));
         this.§66§.colorTransform(this.§66§.rect,new ColorTransform(1,2,1));
         this.§66§.unlock();
         this.§1v§.bitmapData = this.§66§;
         this.addChild(this.§1v§);
         this.addChild(this.§ T§);
         var _loc2_:Point = new Point(this.output.x,this.output.y);
         _loc2_ = this.output.parent.localToGlobal(_loc2_);
         this.§1v§.x = this.§ T§.x = _loc2_.x - this.x;
         this.§1v§.y = this.§ T§.y = _loc2_.y - this.y;
      }
   }
}
