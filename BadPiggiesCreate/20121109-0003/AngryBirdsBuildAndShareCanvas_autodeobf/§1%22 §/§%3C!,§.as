package §1" §
{
   import §"_§.§!"8§;
   import §"_§.§^!J§;
   import §#";§.§0"#§;
   import §%!0§.§,4§;
   import §&!<§.§]!M§;
   import §&!P§.§`>§;
   import §&!P§.§``§;
   import §,!g§.§"!P§;
   import §,!g§.§>7§;
   import §6!A§.§4!%§;
   import §7!@§.§+`§;
   import §7t§.§7a§;
   import §7t§.§9!l§;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §?!'§.Popup;
   import §^!k§.§30§;
   import §^!k§.§;!T§;
   import §^!k§.Inventory;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class §<!,§ extends EventDispatcher implements §4!x§
   {
      
      private static const §+Y§:Number = §,4§.§,^§ / 100;
      
      private static const §3!_§:Number = §+Y§ * 30;
      
      private static const §6!m§:Number = 1.005;
      
      private static const §4!v§:Number = -0.15;
      
      private static const §;!Q§:Number = 360 / 8;
      
      private static const §!!@§:int = 20;
      
      private static const §<!o§:int = 200;
       
      
      private var §>!§:Vector.<§7a§>;
      
      private var §>%§:Point;
      
      private var §3i§:Point;
      
      private var §2%§:Boolean = false;
      
      private var §5Q§:Dictionary;
      
      private var §75§:Vector.<§7a§>;
      
      private var §[!o§:Number;
      
      private var §^5§:Number;
      
      private var §1^§:Number = 0;
      
      private var §]"'§:Number = 0;
      
      private var §<0§:Boolean = false;
      
      private var §4N§:Boolean = false;
      
      private var §1!_§:Boolean = false;
      
      private var §=!6§:Point;
      
      private var §8@§:§;!T§;
      
      private var §9!u§:Point;
      
      private var §]a§:Point;
      
      private var §]!=§:Point;
      
      private var §1!D§:Boolean = false;
      
      private var §'""§:§30§;
      
      private var §,!7§:Inventory;
      
      private var §@!W§:Popup;
      
      private var §9J§:§#!j§;
      
      private var §%!S§:int = 100;
      
      private var §8Q§:int;
      
      public function §<!,§(param1:§#!j§)
      {
         this.§>!§ = new Vector.<§7a§>();
         this.§3i§ = new Point();
         this.§5Q§ = new Dictionary();
         this.§]a§ = new Point();
         this.§]!=§ = new Point();
         this.§'""§ = new §30§();
         super();
         this.§9J§ = param1;
         addEventListener(Event.CHANGE,this.§&!X§);
         addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      public function initialize() : void
      {
         this.§9J§.§<!_§.addEventListener(KeyboardEvent.KEY_DOWN,this.§[H§);
         this.§9J§.§<!_§.addEventListener(KeyboardEvent.KEY_UP,this.§1!&§);
         this.§9J§.§"L§.addEventListener(MouseEvent.MOUSE_UP,this.§8!R§);
         this.§9J§.§"L§.addEventListener(MouseEvent.MOUSE_DOWN,this.§=c§);
         this.§9J§.§"L§.addEventListener(MouseEvent.MOUSE_MOVE,this.§8x§);
         this.§9J§.§"L§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         this.§9J§.§<!_§.addEventListener(§!"8§.ROTATE,this.§+"9§);
         this.§9J§.§<!_§.addEventListener(§!"8§.DELETE_OBJECT,this.§<!y§);
         this.§9J§.§<!_§.addEventListener(§!"8§.DUPLICATE_OBJECT,this.§]k§);
         this.§9J§.§<!_§.addEventListener("close_popups",this.§9!f§);
         this.§9J§.§0"!§.addEventListener(§!"8§.§"`§,this.§?!&§);
         this.§9J§.§0!;§.addEventListener(§^!J§.§[!H§,this.§#" §);
         this.§,!7§ = this.§9J§.§<!_§.§"p§().§+!m§();
         this.§,!7§.addEventListener(§!"8§.CANCEL,this.§?§);
         this.§,!7§.addEventListener(§!"8§.§9!`§,this.§;!S§);
      }
      
      private function §#" §(param1:Event) : void
      {
         this.§9J§.§<!_§.§"p§().§+!m§().§2!W§();
      }
      
      private function §9!f§(param1:Event) : void
      {
         this.§@!W§.close();
         this.§@!W§ = null;
      }
      
      private function §?§(param1:§!"8§) : void
      {
         this.§2"$§(false);
      }
      
      private function §&!X§(param1:Event) : void
      {
         if(!this.§1!D§)
         {
            this.§1!D§ = true;
            this.§9J§.§&!F§.§1!E§();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         if(this.§1!D§)
         {
            this.§1!D§ = false;
            this.§9J§.§0"!§.§-v§();
         }
      }
      
      private function §?!&§(param1:Event) : void
      {
         this.§^N§();
      }
      
      private function §+"9§(param1:Event) : void
      {
         this.§@X§(-§;!Q§);
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc4_:§>7§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Point = null;
         if(!§!!2§.§[E§.§-"6§())
         {
            return;
         }
         var _loc2_:int = param1.delta;
         var _loc3_:Number = §"!P§.§#X§;
         this.§9J§.§^!b§.camera.zoom(_loc2_);
         if(_loc2_ > 0)
         {
            _loc5_ = (_loc4_ = this.§9J§.§^!b§.camera).§+!x§;
            if(_loc4_)
            {
               _loc6_ = _loc4_.getCenter();
               _loc7_ = new Point();
               if(this.§4I§() == 0)
               {
                  _loc8_ = this.§]"0§.x - _loc6_.x;
                  _loc9_ = this.§]"0§.y - _loc6_.y;
                  _loc7_.x = this.§]"0§.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = this.§]"0§.y - _loc3_ / _loc5_ * _loc9_;
                  this.§9J§.§<!_§.§5V§(this.§%-§.x,this.§%-§.y);
               }
               else
               {
                  _loc8_ = ((_loc10_ = this.§4"5§()).x - _loc6_.x) / 1.3;
                  _loc9_ = (_loc10_.y - _loc6_.y) / 1.3;
                  _loc7_.x = _loc10_.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = _loc10_.y - _loc3_ / _loc5_ * _loc9_;
                  _loc11_ = this.§9J§.§0"!§.§2!f§(_loc10_.x,_loc10_.y);
                  this.§9J§.§<!_§.§5V§(_loc11_.x,_loc11_.y);
               }
               _loc4_.§ !!§(_loc7_);
            }
         }
      }
      
      private function §;!S§(param1:§!"8§) : void
      {
         var _loc3_:Bitmap = null;
         var _loc4_:Bitmap = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Object = null;
         this.§8Q§ = getTimer();
         §0"#§.§9"2§("Sound_PlaceBlock");
         var _loc2_:§;!T§ = this.§,!7§.§="§();
         if(_loc2_.§`F§)
         {
            this.§@!W§ = new Popup(§]!M§.§"!V§.Views.PopupView_ItemLocked[0],this.§9J§.§<!_§.§"p§());
            this.§@!W§.open();
            _loc3_ = _loc2_.§4"7§() as Bitmap;
            _loc4_ = new Bitmap(_loc3_.bitmapData);
            _loc5_ = this.§@!W§.getItemByName("MovieClip_UnlockItem").mClip;
            _loc4_.x = _loc5_.width / 2 - _loc4_.width / 2;
            _loc4_.y = _loc5_.height / 2 - _loc4_.height / 2 - 45;
            _loc5_.addChild(_loc4_);
         }
         else if(_loc6_ = this.§,B§(_loc2_))
         {
            this.§9J§.§<!_§.§9i§(this.§'""§);
            this.§'""§.addEventListener(MouseEvent.MOUSE_UP,this.§8!R§);
         }
      }
      
      private function §8!R§(param1:Event) : void
      {
         if(this.§>%§)
         {
            this.§>%§ = null;
            return;
         }
         if(this.§'""§.mouseEnabled && getTimer() > this.§8Q§ + §<!o§)
         {
            this.§]!S§();
            this.§ u§();
         }
      }
      
      private function §=c§(param1:MouseEvent) : void
      {
         if(this.§9J§.§<!_§.§?F§)
         {
            return;
         }
         if(this.§>%§)
         {
            return;
         }
         var _loc2_:§7a§ = §7a§.§^!g§(this.§9J§.§0"!§.§'!3§(this.§%-§));
         if(this.§>!§.indexOf(_loc2_) > -1)
         {
            if(this.§<0§ || this.§1!_§ || this.§4N§)
            {
               this.§`"-§(_loc2_);
            }
         }
         else if(_loc2_ != null)
         {
            this.§!S§(_loc2_,this.§<0§);
         }
         if(_loc2_ != null && !(this.§<0§ || this.§1!_§ || this.§4N§))
         {
            this.§6!V§();
         }
         else if(!_loc2_ && (this.§<0§ || this.§1!_§ || this.§4N§))
         {
            this.§]E§();
         }
         else if(!_loc2_ && !this.§2%§)
         {
            this.§^N§();
            this.§9!u§ = this.§]"0§.clone();
         }
      }
      
      private function §8x§(param1:Event) : void
      {
         var _loc2_:Point = null;
         var _loc3_:int = 0;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(this.§>%§)
         {
            _loc2_ = this.§>%§.subtract(this.§%-§);
            if(_loc2_.length > §!!@§)
            {
               dispatchEvent(new Event(Event.CHANGE));
               if(Math.abs(_loc2_.x) > Math.abs(_loc2_.y))
               {
                  _loc3_ = _loc2_.x < 0 ? -1 : 1;
                  if(this.§%-§.y > this.§^M§().y)
                  {
                     _loc3_ *= -1;
                  }
               }
               else
               {
                  _loc3_ = _loc2_.y < 0 ? 1 : -1;
                  if(this.§%-§.x > this.§^M§().x)
                  {
                     _loc3_ *= -1;
                  }
               }
               this.§>%§ = this.§%-§.clone();
               this.§@X§(§;!Q§ * _loc3_);
            }
         }
         else if(this.§9!u§)
         {
            if(§!!2§.§[E§.§-"6§())
            {
               _loc5_ = (_loc4_ = this.§9J§.§^!b§.camera.getCenter()).x + (this.§9!u§.x - this.§]"0§.x);
               _loc6_ = _loc4_.y + (this.§9!u§.y - this.§]"0§.y);
               this.§9J§.§^!b§.camera.§ in§(_loc5_,_loc6_);
            }
            else
            {
               this.§9!u§ = null;
            }
         }
      }
      
      private function §[H§(param1:KeyboardEvent) : void
      {
         if(this.§4I§() == 0)
         {
            if(param1.keyCode == Keyboard.UP && this.§]a§.y != -1)
            {
               this.§]a§.y = -1;
               this.§]!=§.y = 0;
            }
            else if(param1.keyCode == Keyboard.DOWN && this.§]a§.y != 1)
            {
               this.§]a§.y = 1;
               this.§]!=§.y = 0;
            }
            else if(param1.keyCode == Keyboard.LEFT && this.§]a§.x != -1)
            {
               this.§]a§.x = -1;
               this.§]!=§.x = 0;
            }
            else if(param1.keyCode == Keyboard.RIGHT && this.§]a§.x != 1)
            {
               this.§]a§.x = 1;
               this.§]!=§.x = 0;
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§4N§ = true;
               break;
            case Keyboard.SHIFT:
               this.§<0§ = true;
               break;
            case Keyboard.CONTROL:
               this.§1!_§ = true;
               break;
            case Keyboard.UP:
               this.§]"'§ = Math.min(this.§]"'§,-§+Y§);
               break;
            case Keyboard.DOWN:
               this.§]"'§ = Math.max(this.§]"'§,§+Y§);
               break;
            case Keyboard.LEFT:
               this.§1^§ = Math.min(this.§1^§,-§+Y§);
               break;
            case Keyboard.RIGHT:
               this.§1^§ = Math.max(this.§1^§,§+Y§);
               break;
            case Keyboard.DELETE:
               this.§2"$§();
               break;
            case Keyboard.PAGE_UP:
               this.§@q§(1);
               break;
            case Keyboard.PAGE_DOWN:
               this.§@q§(-1);
               break;
            case Keyboard.C:
               this.§5";§();
               break;
            case Keyboard.V:
               this.§=§();
               break;
            case Keyboard.D:
               this.§]k§();
               break;
            case Keyboard.J:
               §9!l§.§6""§(this.§>!§,this.§9J§.§0"!§.§0z§.objects);
               break;
            case Keyboard.E:
               this.§@X§(§;!Q§);
               break;
            case Keyboard.R:
               this.§@X§(-§;!Q§);
         }
      }
      
      private function §@q§(param1:int) : void
      {
         var _loc2_:§7a§ = null;
         var _loc3_:§``§ = null;
         for each(_loc2_ in this.§>!§)
         {
            _loc2_.§#!1§(param1);
            _loc3_ = this.§9J§.§0"!§.§0z§.§0n§.getObjectWithID(_loc2_.uniqueID);
            (this.§9J§.§0"!§.§0z§.§0n§ as §`>§).§,x§(_loc3_,param1);
         }
      }
      
      private function §1!&§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.UP && this.§]a§.y == -1)
         {
            this.§]a§.y = 0;
         }
         else if(param1.keyCode == Keyboard.DOWN && this.§]a§.y == 1)
         {
            this.§]a§.y = 0;
         }
         else if(param1.keyCode == Keyboard.LEFT && this.§]a§.x == -1)
         {
            this.§]a§.x = 0;
         }
         else if(param1.keyCode == Keyboard.RIGHT && this.§]a§.x == 1)
         {
            this.§]a§.x = 0;
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§4N§ = false;
               break;
            case Keyboard.SHIFT:
               this.§<0§ = false;
               break;
            case Keyboard.CONTROL:
               this.§1!_§ = false;
               break;
            case 38:
               this.§]"'§ = Math.max(0,this.§]"'§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 40:
               this.§]"'§ = Math.min(0,this.§]"'§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 37:
               this.§1^§ = Math.max(0,this.§1^§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 39:
               this.§1^§ = Math.min(0,this.§1^§);
               dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §<!y§(param1:Event) : void
      {
         this.§2"$§();
      }
      
      private function §]k§(param1:Event = null) : void
      {
         this.§5";§();
         this.§=§();
      }
      
      public function get §%-§() : Point
      {
         return this.§9J§.§"L§.§%-§;
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§!!f§(false);
         var _loc2_:Point = this.§9J§.§0"!§.§0z§.screenToBox2D(this.§9J§.§"L§.§%-§.x,this.§9J§.§"L§.§%-§.y);
         this.§3i§.x = _loc2_.x;
         this.§3i§.y = _loc2_.y;
         var _loc3_:int = this.§>!§.length - 1;
         while(_loc3_ >= 0)
         {
            if(!§!!2§.§[E§.§'%§(this.§>!§[_loc3_]))
            {
               this.§`"-§(this.§>!§[_loc3_]);
            }
            _loc3_--;
         }
         if(this.§]a§.length > 0)
         {
            _loc4_ = 0.001;
            _loc5_ = 0.5;
            _loc6_ = this.§9J§.§^!b§.camera.getCenter();
            this.§]!=§.x = Math.min(_loc5_,this.§]!=§.x + _loc4_ * param1);
            this.§]!=§.y = Math.min(_loc5_,this.§]!=§.y + _loc4_ * param1);
            _loc7_ = _loc6_.x + this.§]!=§.x * this.§]a§.x * param1;
            _loc8_ = _loc6_.y + this.§]!=§.y * this.§]a§.y * param1;
            this.§9J§.§^!b§.camera.§ in§(_loc7_,_loc8_);
         }
         else
         {
            this.§]!=§.x = 0;
            this.§]!=§.y = 0;
         }
         if(Math.abs(this.§1^§) > 0 || Math.abs(this.§]"'§) > 0)
         {
            if(Math.abs(this.§1^§) < §3!_§)
            {
               this.§1^§ *= Math.pow(§6!m§,param1);
            }
            if(Math.abs(this.§]"'§) < §3!_§)
            {
               this.§]"'§ *= Math.pow(§6!m§,param1);
            }
            this.§ 7§(this.§1^§ * param1,this.§]"'§ * param1);
         }
         if(this.§2%§)
         {
            this.§5!]§();
         }
         this.§,"3§();
      }
      
      public function activate() : void
      {
         this.§1!_§ = false;
         this.§<0§ = false;
         this.§4N§ = false;
         this.§9J§.§<!_§.§"p§().§+!m§().§2!W§();
      }
      
      public function §&P§(param1:Class) : void
      {
      }
      
      public function get §]"0§() : Point
      {
         return this.§3i§;
      }
      
      public function § U§() : Boolean
      {
         return this.§=!6§ != null;
      }
      
      public function §4%§() : Boolean
      {
         return this.§>%§ != null;
      }
      
      public function §?!#§() : Boolean
      {
         return false;
      }
      
      public function §<J§() : Boolean
      {
         return this.§2%§;
      }
      
      public function §2"$§(param1:Boolean = true) : void
      {
         if(this.§>!§.length > 0)
         {
            if(param1)
            {
               this.§9J§.§&!F§.§1!E§();
            }
            this.§9J§.§0"!§.§<!8§(this.§>!§);
            this.§^N§();
         }
      }
      
      public function §@,§() : void
      {
         this.§^N§();
      }
      
      public function §3'§(param1:String) : Boolean
      {
         return false;
      }
      
      public function §!!f§(param1:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:§7a§ = null;
         var _loc8_:Boolean = false;
         var _loc2_:§6W§ = this.§9J§.§<!_§.§`!v§.getItemByName("ContextMenu") as §6W§;
         if(this.§4I§() == 0 || this.§<0§ || this.§1!_§ || this.§4N§ || this.§<J§() || this.§ U§() || this.§4%§())
         {
            if(_loc2_.§'">§)
            {
               _loc2_.setVisibility(false);
            }
         }
         else if(!_loc2_.§'">§)
         {
            _loc2_.setVisibility(true);
         }
         if(this.§4I§() > 0)
         {
            _loc6_ = this.§^M§();
            _loc2_.x = _loc6_.x;
            _loc2_.y = _loc6_.y;
         }
         var _loc3_:§9"8§ = this.§9J§.§<!_§.§`!v§.getItemByName("Rotate") as §9"8§;
         var _loc4_:§9"8§ = this.§9J§.§<!_§.§`!v§.getItemByName("Duplicate") as §9"8§;
         var _loc5_:§9"8§ = this.§9J§.§<!_§.§`!v§.getItemByName("Delete") as §9"8§;
         _loc3_.setVisibility(false);
         _loc4_.setVisibility(false);
         _loc5_.setVisibility(false);
         if(this.§4I§() > 0)
         {
            for each(_loc7_ in this.§3!^§())
            {
               if(!_loc7_.§"!C§())
               {
                  if(§!!2§.§[E§.§'%§(_loc7_))
                  {
                     _loc3_.setVisibility(!_loc7_.§'5§());
                     _loc8_ = (AngryBirdsFP11.§>!7§ as §+`§).§&"4§(_loc7_.getName());
                     _loc4_.setVisibility(§!!2§.§[E§.§]"7§(_loc7_.getName()) && !_loc7_.§0"&§() && _loc8_);
                     _loc5_.setVisibility(§!!2§.§[E§.§#§(_loc7_));
                  }
               }
            }
         }
      }
      
      public function §!S§(param1:§7a§, param2:Boolean) : void
      {
         if(!§!!2§.§[E§.§'%§(param1))
         {
            return;
         }
         if(!param2)
         {
            this.§^N§();
         }
         if(this.§>!§.indexOf(param1) > -1)
         {
            return;
         }
         if(param1.isGround())
         {
            return;
         }
         param1.§,"=§(true);
         this.§>!§.push(param1);
      }
      
      public function §`"-§(param1:§7a§) : void
      {
         if(this.§>!§.indexOf(param1) > -1)
         {
            this.§>!§.splice(this.§>!§.indexOf(param1),1);
            param1.§,"=§(false);
         }
      }
      
      public function §^N§() : void
      {
         var _loc1_:§7a§ = null;
         this.§>%§ = null;
         for each(_loc1_ in this.§>!§)
         {
            _loc1_.§,"=§(false);
         }
         if(this.§2%§ && this.§>!§.length > 0)
         {
            this.§9J§.§0"!§.§-v§();
         }
         this.§>!§ = new Vector.<§7a§>();
      }
      
      public function §4I§() : int
      {
         return this.§>!§.length;
      }
      
      public function §^M§() : Point
      {
         var _loc1_:b2Vec2 = this.§4"5§();
         return this.§9J§.§0"!§.§2!f§(_loc1_.x,_loc1_.y);
      }
      
      public function §4"5§() : b2Vec2
      {
         var _loc2_:Rectangle = null;
         var _loc1_:b2Vec2 = new b2Vec2();
         if(this.§>!§.length > 0)
         {
            _loc2_ = this.§,""§(this.§>!§);
            _loc1_.x = _loc2_.x + _loc2_.width / 2;
            _loc1_.y = _loc2_.y + _loc2_.height / 2;
         }
         else
         {
            _loc1_.x = 0;
            _loc1_.y = 0;
         }
         return _loc1_;
      }
      
      public function §3!^§() : Vector.<§7a§>
      {
         return this.§>!§;
      }
      
      protected function §,""§(param1:Vector.<§7a§>, param2:Number = 0) : Rectangle
      {
         var _loc8_:b2Vec2 = null;
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:Number = -Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         var _loc7_:int = 0;
         while(_loc7_ < param1.length)
         {
            _loc8_ = param1[_loc7_].getCenter();
            _loc3_ = Math.min(_loc3_,_loc8_.x);
            _loc5_ = Math.max(_loc5_,_loc8_.x);
            _loc4_ = Math.min(_loc4_,_loc8_.y);
            _loc6_ = Math.max(_loc6_,_loc8_.y);
            _loc7_++;
         }
         return new Rectangle(_loc3_ - param2,_loc4_ - param2,_loc5_ - _loc3_ + param2,_loc6_ - _loc4_ + param2);
      }
      
      protected function §+!W§(param1:§7a§) : void
      {
         var _loc2_:Rectangle = this.§9J§.§^!b§.camera.§?$§();
         _loc2_.y = §4!v§;
         _loc2_.height += §>7§.§'!]§;
         var _loc3_:Rectangle = param1.§&8§();
         _loc2_.right -= _loc3_.right;
         _loc2_.bottom -= _loc3_.top;
         _loc2_.left -= _loc3_.left;
         _loc2_.top -= _loc3_.bottom;
         if(param1.isTexture())
         {
            _loc2_.y += _loc3_.height;
         }
         if(param1.§>!r§())
         {
            _loc2_.left = 10;
         }
         if(param1.§'5§())
         {
            _loc2_.y += 0.1;
            _loc2_.right = 15;
         }
         if(param1.§"!C§())
         {
            _loc2_.right = 0;
            _loc2_.left = 0;
            _loc2_.y += 0.5;
         }
         var _loc4_:b2Vec2 = param1.§]5§();
         var _loc5_:Number = Math.max(_loc2_.x,Math.min(_loc2_.x + _loc2_.width,_loc4_.x));
         var _loc6_:Number = Math.min(_loc2_.y,Math.max(_loc2_.height + _loc2_.y,_loc4_.y));
         param1.setPosition(new b2Vec2(_loc5_,_loc6_));
      }
      
      private function §6!V§() : void
      {
         var _loc1_:§7a§ = null;
         this.§2%§ = true;
         this.§[!o§ = this.§]"0§.x;
         this.§^5§ = this.§]"0§.y;
         for each(_loc1_ in this.§>!§)
         {
            this.§&!L§(_loc1_);
         }
      }
      
      private function §]!S§() : void
      {
         if(this.§8@§)
         {
            this.§9J§.§<!_§.§9i§(null);
            this.§8@§.§%z§();
            this.§8@§ = null;
         }
         if(this.§2%§)
         {
            §0"#§.§9"2§("Sound_PlaceBlock");
         }
         this.§9!u§ = null;
         this.§8@§ = null;
         this.§2%§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §]E§() : void
      {
         this.§=!6§ = new Point();
         this.§=!6§.x = this.§]"0§.x;
         this.§=!6§.y = this.§]"0§.y;
      }
      
      private function § u§() : void
      {
         this.§=!6§ = null;
         this.§,"3§();
      }
      
      public function §@X§(param1:Number) : void
      {
         var _loc5_:§7a§ = null;
         var _loc6_:Number = NaN;
         var _loc3_:b2Vec2 = this.§4"5§();
         var _loc4_:Point = new Point(_loc3_.x,_loc3_.y);
         for each(_loc5_ in this.§>!§)
         {
            _loc5_.§>"?§(param1,_loc4_);
            _loc6_ = _loc5_.§?"1§();
            this.§+!W§(_loc5_);
         }
      }
      
      public function §,B§(param1:§;!T§) : Object
      {
         var _loc3_:Object = null;
         if(!§!!2§.§[E§.§'%§())
         {
            return null;
         }
         if(this.§8@§)
         {
            this.§8@§.§%z§();
            this.§2"$§();
         }
         this.§8@§ = param1;
         dispatchEvent(new Event(Event.CHANGE));
         var _loc2_:String = this.§8@§.getItemName();
         if(_loc2_.indexOf("BACKGROUND_") == 0)
         {
            §#!j§.§[E§.§0"!§.§0z§.background.resetLevelBackground(_loc2_);
            §#!j§.§[E§.§0"!§.§-v§();
         }
         else
         {
            _loc3_ = this.§9J§.§0"!§.§,!D§(_loc2_,this.§]"0§.x,this.§]"0§.y,false);
         }
         if(_loc3_)
         {
            this.§!S§(§7a§.§^!g§(_loc3_),false);
            this.§8@§.§%q§();
            this.§6!V§();
         }
         return _loc3_;
      }
      
      public function §,"3§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc12_:§7a§ = null;
         if(this.§=!6§ == null)
         {
            this.§9J§.§<!_§.§[!9§(null);
            return;
         }
         if(this.§=!6§.y <= this.§]"0§.y)
         {
            _loc1_ = this.§=!6§.y;
            _loc2_ = this.§]"0§.y;
         }
         else
         {
            _loc1_ = this.§]"0§.y;
            _loc2_ = this.§=!6§.y;
         }
         if(this.§=!6§.x <= this.§]"0§.x)
         {
            _loc3_ = this.§=!6§.x;
            _loc4_ = this.§]"0§.x;
         }
         else
         {
            _loc3_ = this.§]"0§.x;
            _loc4_ = this.§=!6§.x;
         }
         var _loc5_:Point = new Point(_loc3_,_loc1_);
         var _loc6_:Point = new Point(_loc4_,_loc2_);
         var _loc7_:Array = (_loc7_ = this.§9J§.§0"!§.§0z§.objects.getObjectsWithinBoundingBox(_loc5_,_loc6_)).concat(this.§9J§.§0"!§.§0z§.slingshot.getObjectsWithinBoundingBox(_loc5_,_loc6_));
         var _loc8_:Number = 0;
         _loc8_ = 0;
         while(_loc8_ < this.§>!§.length)
         {
            if(_loc7_.indexOf(this.§>!§[_loc8_].getObject()) == -1)
            {
               this.§`"-§(this.§>!§[_loc8_]);
            }
            _loc8_++;
         }
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            _loc12_ = §7a§.§^!g§(_loc7_[_loc8_]);
            if(this.§>!§.indexOf(_loc12_) == -1 && §!!2§.§[E§.§'%§(_loc12_))
            {
               this.§!S§(§7a§.§^!g§(_loc7_[_loc8_]),true);
            }
            _loc8_++;
         }
         var _loc9_:Point = this.§9J§.§0"!§.§0z§.§4!5§(_loc5_.x,_loc5_.y);
         var _loc10_:Point = this.§9J§.§0"!§.§0z§.§4!5§(_loc6_.x,_loc6_.y);
         var _loc11_:Rectangle = new Rectangle(_loc9_.x,_loc9_.y,_loc10_.x - _loc9_.x,_loc10_.y - _loc9_.y);
         this.§9J§.§<!_§.§[!9§(_loc11_);
      }
      
      public function §5";§() : void
      {
         var _loc1_:§7a§ = null;
         this.§75§ = new Vector.<§7a§>();
         for each(_loc1_ in this.§>!§)
         {
            if(!_loc1_.§0"&§())
            {
               this.§75§.push(_loc1_);
            }
         }
      }
      
      public function §=§() : Vector.<§7a§>
      {
         var _loc6_:§7a§ = null;
         var _loc7_:§7a§ = null;
         var _loc1_:Vector.<§7a§> = new Vector.<§7a§>();
         if(!§!!2§.§[E§.§]"7§())
         {
            return _loc1_;
         }
         if(!this.§75§ || this.§75§.length == 0)
         {
            return _loc1_;
         }
         this.§9J§.§&!F§.§1!E§();
         var _loc2_:Rectangle = this.§,""§(this.§75§);
         var _loc3_:Point = new Point(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
         var _loc4_:Number = this.§]"0§.x - _loc3_.x;
         var _loc5_:Number = this.§]"0§.y - _loc3_.y;
         this.§^N§();
         for each(_loc6_ in this.§75§)
         {
            if(!(_loc6_.isTexture() && this.§9J§.§0"!§.§0J§() < 1))
            {
               if(!(_loc6_.§'5§() && this.§9J§.§0"!§.§<!%§() < 1))
               {
                  if(!_loc6_.§"!C§())
                  {
                     if((_loc6_.§^_§() || _loc6_.§>!r§()) && this.§9J§.§0"!§.§=!I§() < 1)
                     {
                        this.§9J§.§0"!§.dispatchEvent(new §!"8§(§!"8§.§%"-§));
                        break;
                     }
                     _loc7_ = this.§9J§.§0"!§.§=j§(_loc6_,_loc4_,_loc5_);
                     _loc1_.push(_loc7_);
                     this.§'@§(_loc7_);
                     this.§+!W§(_loc7_);
                     this.§!S§(_loc7_,true);
                  }
               }
            }
         }
         this.§6!V§();
         return _loc1_;
      }
      
      private function §2"<§(param1:§7a§) : b2Transform
      {
         return this.§5Q§[param1];
      }
      
      private function §&!L§(param1:§7a§) : void
      {
         this.§5Q§[param1] = param1.§3z§();
      }
      
      private function §'@§(param1:§7a§) : void
      {
         var _loc2_:b2Transform = null;
         if(§4!%§.§`-§().§9y§(§4!%§.§!$§))
         {
            _loc2_ = param1.§3z§();
            _loc2_.position.x = this.§;!>§(_loc2_.position.x);
            _loc2_.position.y = this.§;!>§(_loc2_.position.y);
            if(this.§%!S§ == 100)
            {
               _loc2_.position.x += param1.§&8§().width / 2 * 100 % this.§%!S§ / 100;
               _loc2_.position.y -= param1.§&8§().height / 2 * 100 % this.§%!S§ / 100;
            }
         }
         param1.§9!c§(_loc2_);
      }
      
      private function §;!>§(param1:Number) : Number
      {
         return Math.round(param1 * 100 - param1 * 100 % this.§%!S§) / 100;
      }
      
      private function §5!]§() : void
      {
         var _loc2_:§7a§ = null;
         var _loc3_:Point = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this.§>!§)
         {
            if(§!!2§.§[E§.§'%§(_loc2_))
            {
               _loc1_ = true;
               break;
            }
         }
         if(!_loc1_)
         {
            this.§]!S§();
         }
         else
         {
            _loc3_ = this.§]"0§;
            _loc4_ = _loc3_.x - this.§[!o§;
            _loc5_ = _loc3_.y - this.§^5§;
            if(this.§2%§)
            {
               this.§5O§(_loc4_,_loc5_);
            }
         }
      }
      
      public function § 7§(param1:Number, param2:Number) : void
      {
         if(this.§2%§)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§>!§.length)
         {
            _loc3_++;
         }
         param1 = (param1 == 0 ? 0 : param1 / Math.abs(param1)) * this.§%!S§;
         param2 = (param2 == 0 ? 0 : param2 / Math.abs(param2)) * this.§%!S§;
      }
      
      public function §5O§(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc7_:int = 0;
         var _loc8_:§7a§ = null;
         var _loc9_:b2Vec2 = null;
         if(this.§>!§.length == 0)
         {
            return;
         }
         if(param1 == 0 && param2 == 0)
         {
            return;
         }
         dispatchEvent(new Event(Event.CHANGE));
         var _loc3_:Boolean = true;
         _loc7_ = 0;
         while(_loc7_ < this.§>!§.length)
         {
            _loc8_ = this.§>!§[_loc7_];
            _loc9_ = this.§2"<§(_loc8_).position.Copy();
            _loc9_.x += param1;
            _loc9_.y += param2;
            this.§>!T§(_loc8_,_loc9_);
            _loc7_++;
         }
      }
      
      private function §>!T§(param1:§7a§, param2:b2Vec2, param3:Boolean = true) : void
      {
         param1.setPosition(param2);
         if(param3)
         {
            this.§'@§(param1);
         }
         this.§+!W§(param1);
         §9!l§.§5D§(param1.getObject() as §``§,this.§9J§.§0"!§.§0z§.objects);
      }
      
      private function §^!W§(param1:Object) : Boolean
      {
         var _loc2_:§7a§ = null;
         for each(_loc2_ in this.§>!§)
         {
            if(_loc2_.getObject() == param1)
            {
               return true;
            }
         }
         return false;
      }
   }
}
