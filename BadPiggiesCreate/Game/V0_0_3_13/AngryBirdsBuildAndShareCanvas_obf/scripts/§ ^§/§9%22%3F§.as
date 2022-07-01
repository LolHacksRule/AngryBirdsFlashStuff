package § ^§
{
   import § true§.§1H§;
   import § true§.§8K§;
   import §""§.Popup;
   import §%!W§.§9!K§;
   import §-!H§.§0!]§;
   import §0!C§.§,!h§;
   import §1!z§.b2Transform;
   import §1!z§.b2Vec2;
   import §2b§.§"" §;
   import §2b§.§8!m§;
   import §7!g§.§0!q§;
   import §7!g§.§?!i§;
   import §8!E§.§'4§;
   import §8!E§.§?!X§;
   import §;W§.§%!§;
   import §;W§.§,-§;
   import §;W§.Inventory;
   import §=%§.§<A§;
   import §=%§.§?!U§;
   import §>Z§.§5;§;
   import §?"&§.§"!q§;
   import §?"&§.§,!"§;
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
   
   public class §9"?§ extends EventDispatcher implements §-!"§
   {
      
      private static const §+"6§:Number = §?!X§.§57§ / 100;
      
      private static const §^5§:Number = §+"6§ * 30;
      
      private static const §#7§:Number = 1.005;
      
      private static const §=!;§:Number = -0.15;
      
      private static const §4"!§:Number = 360 / 8;
      
      private static const §]"8§:int = 20;
       
      
      private var §4K§:Vector.<§<A§>;
      
      private var §^!2§:Point;
      
      private var §@!u§:Point;
      
      private var §=!d§:Boolean = false;
      
      private var §[!Q§:Dictionary;
      
      private var § !p§:Vector.<§<A§>;
      
      private var §-V§:Number;
      
      private var §8!,§:Number;
      
      private var §`"3§:Number = 0;
      
      private var §[!X§:Number = 0;
      
      private var §7'§:Boolean = false;
      
      private var §^n§:Boolean = false;
      
      private var §4!F§:Boolean = false;
      
      private var §5&§:Point;
      
      private var §-!k§:§%!§;
      
      private var §[!u§:Point;
      
      private var §1x§:Point;
      
      private var §"S§:Point;
      
      private var §<"6§:Boolean = false;
      
      private var §]!#§:§,-§;
      
      private var §2!h§:Inventory;
      
      private var §0!U§:Popup;
      
      private var §`5§:§0c§;
      
      private var §!6§:int = 100;
      
      public function §9"?§(param1:§0c§)
      {
         this.§4K§ = new Vector.<§<A§>();
         this.§@!u§ = new Point();
         this.§[!Q§ = new Dictionary();
         this.§1x§ = new Point();
         this.§"S§ = new Point();
         this.§]!#§ = new §,-§();
         super();
         this.§`5§ = param1;
         addEventListener(Event.CHANGE,this.§&4§);
         addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      public function initialize() : void
      {
         this.§`5§.§!A§.addEventListener(KeyboardEvent.KEY_DOWN,this.§<7§);
         this.§`5§.§!A§.addEventListener(KeyboardEvent.KEY_UP,this.§[0§);
         this.§`5§.§0!Y§.addEventListener(MouseEvent.MOUSE_UP,this.§5r§);
         this.§`5§.§0!Y§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]r§);
         this.§`5§.§0!Y§.addEventListener(MouseEvent.MOUSE_MOVE,this.§;M§);
         this.§`5§.§0!Y§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         this.§`5§.§!A§.addEventListener(§?!i§.ROTATE,this.§4"$§);
         this.§`5§.§!A§.addEventListener(§?!i§.DELETE_OBJECT,this.§%!B§);
         this.§`5§.§!A§.addEventListener(§?!i§.DUPLICATE_OBJECT,this.§<!b§);
         this.§`5§.§!A§.addEventListener("close_popups",this.§;"+§);
         this.§`5§.§6%§.addEventListener(§?!i§.§0"0§,this.§ !E§);
         this.§`5§.§-h§.addEventListener(§0!q§.§]3§,this.§?@§);
         this.§2!h§ = this.§`5§.§!A§.§2!o§().§[y§();
         this.§2!h§.addEventListener(§?!i§.CANCEL,this.§3<§);
         this.§2!h§.addEventListener(§?!i§.§8!G§,this.§8Z§);
      }
      
      private function §?@§(param1:Event) : void
      {
         this.§`5§.§!A§.§2!o§().§[y§().§3!§();
      }
      
      private function §;"+§(param1:Event) : void
      {
         this.§0!U§.close();
         this.§0!U§ = null;
      }
      
      private function §3<§(param1:§?!i§) : void
      {
         this.§[v§(false);
      }
      
      private function §&4§(param1:Event) : void
      {
         if(!this.§<"6§)
         {
            this.§<"6§ = true;
            this.§`5§.§8j§.§8q§();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         if(this.§<"6§)
         {
            this.§<"6§ = false;
            this.§`5§.§6%§.§9!r§();
         }
      }
      
      private function § !E§(param1:Event) : void
      {
         this.§;!_§();
      }
      
      private function §4"$§(param1:Event) : void
      {
         this.§6!q§(-§4"!§);
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc4_:§8!m§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Point = null;
         if(!§@#§.§7!?§.§=9§())
         {
            return;
         }
         var _loc2_:int = param1.delta;
         var _loc3_:Number = §"" §.§>!-§;
         this.§`5§.§[c§.camera.zoom(_loc2_);
         if(_loc2_ > 0)
         {
            _loc5_ = (_loc4_ = this.§`5§.§[c§.camera).§!!+§;
            if(_loc4_)
            {
               _loc6_ = _loc4_.getCenter();
               _loc7_ = new Point();
               if(this.§?-§() == 0)
               {
                  _loc8_ = this.§1!K§.x - _loc6_.x;
                  _loc9_ = this.§1!K§.y - _loc6_.y;
                  _loc7_.x = this.§1!K§.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = this.§1!K§.y - _loc3_ / _loc5_ * _loc9_;
                  this.§`5§.§!A§.§ !<§(this.§=Z§.x,this.§=Z§.y);
               }
               else
               {
                  _loc8_ = ((_loc10_ = this.§=x§()).x - _loc6_.x) / 1.3;
                  _loc9_ = (_loc10_.y - _loc6_.y) / 1.3;
                  _loc7_.x = _loc10_.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = _loc10_.y - _loc3_ / _loc5_ * _loc9_;
                  _loc11_ = this.§`5§.§6%§.§4!c§(_loc10_.x,_loc10_.y);
                  this.§`5§.§!A§.§ !<§(_loc11_.x,_loc11_.y);
               }
               _loc4_.§=!#§(_loc7_);
            }
         }
      }
      
      private function §8Z§(param1:§?!i§) : void
      {
         var _loc3_:Bitmap = null;
         var _loc4_:Bitmap = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Object = null;
         §5;§.playSound("Sound_PlaceBlock");
         var _loc2_:§%!§ = this.§2!h§.§9f§();
         if(_loc2_.§3!r§)
         {
            this.§0!U§ = new Popup(§,!h§.§`C§.Views.PopupView_ItemLocked[0],this.§`5§.§!A§.§2!o§());
            this.§0!U§.open();
            _loc3_ = _loc2_.§>w§() as Bitmap;
            _loc4_ = new Bitmap(_loc3_.bitmapData);
            _loc5_ = this.§0!U§.getItemByName("MovieClip_UnlockItem").mClip;
            _loc4_.x = _loc5_.width / 2 - _loc4_.width / 2;
            _loc4_.y = _loc5_.height / 2 - _loc4_.height / 2 - 45;
            _loc5_.addChild(_loc4_);
         }
         else if(_loc6_ = this.§ !;§(_loc2_))
         {
            this.§`5§.§!A§.§9",§(this.§]!#§);
            this.§]!#§.addEventListener(MouseEvent.MOUSE_UP,this.§5r§);
         }
      }
      
      private function §5r§(param1:Event) : void
      {
         if(this.§^!2§)
         {
            this.§^!2§ = null;
            return;
         }
         if(this.§]!#§.mouseEnabled)
         {
            this.§]&§();
            this.§?!N§();
         }
      }
      
      private function §]r§(param1:MouseEvent) : void
      {
         if(this.§`5§.§!A§.§4Y§)
         {
            return;
         }
         if(this.§^!2§)
         {
            return;
         }
         var _loc2_:§<A§ = §<A§.§5y§(this.§`5§.§6%§.§+8§(this.§=Z§));
         if(this.§4K§.indexOf(_loc2_) > -1)
         {
            if(this.§7'§ || this.§4!F§ || this.§^n§)
            {
               this.§6"0§(_loc2_);
            }
         }
         else if(_loc2_ != null)
         {
            this.§@!f§(_loc2_,this.§7'§);
         }
         if(_loc2_ != null && !(this.§7'§ || this.§4!F§ || this.§^n§))
         {
            this.§2"%§();
         }
         else if(!_loc2_ && (this.§7'§ || this.§4!F§ || this.§^n§))
         {
            this.§2!p§();
         }
         else if(!_loc2_ && !this.§=!d§)
         {
            this.§;!_§();
            this.§[!u§ = this.§1!K§.clone();
         }
      }
      
      private function §;M§(param1:Event) : void
      {
         var _loc2_:Point = null;
         var _loc3_:int = 0;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(this.§^!2§)
         {
            _loc2_ = this.§^!2§.subtract(this.§=Z§);
            if(_loc2_.length > §]"8§)
            {
               dispatchEvent(new Event(Event.CHANGE));
               if(Math.abs(_loc2_.x) > Math.abs(_loc2_.y))
               {
                  _loc3_ = _loc2_.x < 0 ? -1 : 1;
                  if(this.§=Z§.y > this.§0q§().y)
                  {
                     _loc3_ *= -1;
                  }
               }
               else
               {
                  _loc3_ = _loc2_.y < 0 ? 1 : -1;
                  if(this.§=Z§.x > this.§0q§().x)
                  {
                     _loc3_ *= -1;
                  }
               }
               this.§^!2§ = this.§=Z§.clone();
               this.§6!q§(§4"!§ * _loc3_);
            }
         }
         else if(this.§[!u§)
         {
            if(§@#§.§7!?§.§=9§())
            {
               _loc5_ = (_loc4_ = this.§`5§.§[c§.camera.getCenter()).x + (this.§[!u§.x - this.§1!K§.x);
               _loc6_ = _loc4_.y + (this.§[!u§.y - this.§1!K§.y);
               this.§`5§.§[c§.camera.§9K§(_loc5_,_loc6_);
            }
            else
            {
               this.§[!u§ = null;
            }
         }
      }
      
      private function §<7§(param1:KeyboardEvent) : void
      {
         if(this.§?-§() == 0)
         {
            if(param1.keyCode == Keyboard.UP && this.§1x§.y != -1)
            {
               this.§1x§.y = -1;
               this.§"S§.y = 0;
            }
            else if(param1.keyCode == Keyboard.DOWN && this.§1x§.y != 1)
            {
               this.§1x§.y = 1;
               this.§"S§.y = 0;
            }
            else if(param1.keyCode == Keyboard.LEFT && this.§1x§.x != -1)
            {
               this.§1x§.x = -1;
               this.§"S§.x = 0;
            }
            else if(param1.keyCode == Keyboard.RIGHT && this.§1x§.x != 1)
            {
               this.§1x§.x = 1;
               this.§"S§.x = 0;
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§^n§ = true;
               break;
            case Keyboard.SHIFT:
               this.§7'§ = true;
               break;
            case Keyboard.CONTROL:
               this.§4!F§ = true;
               break;
            case Keyboard.UP:
               this.§[!X§ = Math.min(this.§[!X§,-§+"6§);
               break;
            case Keyboard.DOWN:
               this.§[!X§ = Math.max(this.§[!X§,§+"6§);
               break;
            case Keyboard.LEFT:
               this.§`"3§ = Math.min(this.§`"3§,-§+"6§);
               break;
            case Keyboard.RIGHT:
               this.§`"3§ = Math.max(this.§`"3§,§+"6§);
               break;
            case Keyboard.DELETE:
               this.§[v§();
               break;
            case Keyboard.PAGE_UP:
               this.§9w§(1);
               break;
            case Keyboard.PAGE_DOWN:
               this.§9w§(-1);
               break;
            case Keyboard.C:
               this.§&"1§();
               break;
            case Keyboard.V:
               this.§4b§();
               break;
            case Keyboard.D:
               this.§<!b§();
               break;
            case Keyboard.J:
               §?!U§.§3%§(this.§4K§,this.§`5§.§6%§.§9"&§.objects);
               break;
            case Keyboard.E:
               this.§6!q§(§4"!§);
               break;
            case Keyboard.R:
               this.§6!q§(-§4"!§);
         }
      }
      
      private function §9w§(param1:int) : void
      {
         var _loc2_:§<A§ = null;
         var _loc3_:§"!q§ = null;
         for each(_loc2_ in this.§4K§)
         {
            _loc2_.§^i§(param1);
            _loc3_ = this.§`5§.§6%§.§9"&§.§4!1§.getObjectWithID(_loc2_.uniqueID);
            (this.§`5§.§6%§.§9"&§.§4!1§ as §,!"§).§7!"§(_loc3_,param1);
         }
      }
      
      private function §[0§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.UP && this.§1x§.y == -1)
         {
            this.§1x§.y = 0;
         }
         else if(param1.keyCode == Keyboard.DOWN && this.§1x§.y == 1)
         {
            this.§1x§.y = 0;
         }
         else if(param1.keyCode == Keyboard.LEFT && this.§1x§.x == -1)
         {
            this.§1x§.x = 0;
         }
         else if(param1.keyCode == Keyboard.RIGHT && this.§1x§.x == 1)
         {
            this.§1x§.x = 0;
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§^n§ = false;
               break;
            case Keyboard.SHIFT:
               this.§7'§ = false;
               break;
            case Keyboard.CONTROL:
               this.§4!F§ = false;
               break;
            case 38:
               this.§[!X§ = Math.max(0,this.§[!X§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 40:
               this.§[!X§ = Math.min(0,this.§[!X§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 37:
               this.§`"3§ = Math.max(0,this.§`"3§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 39:
               this.§`"3§ = Math.min(0,this.§`"3§);
               dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §%!B§(param1:Event) : void
      {
         this.§[v§();
      }
      
      private function §<!b§(param1:Event = null) : void
      {
         this.§&"1§();
         this.§4b§();
      }
      
      public function get §=Z§() : Point
      {
         return this.§`5§.§0!Y§.§=Z§;
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§>!]§(false);
         var _loc2_:Point = this.§`5§.§6%§.§9"&§.screenToBox2D(this.§`5§.§0!Y§.§=Z§.x,this.§`5§.§0!Y§.§=Z§.y);
         this.§@!u§.x = _loc2_.x;
         this.§@!u§.y = _loc2_.y;
         var _loc3_:int = this.§4K§.length - 1;
         while(_loc3_ >= 0)
         {
            if(!§@#§.§7!?§.§9d§(this.§4K§[_loc3_]))
            {
               this.§6"0§(this.§4K§[_loc3_]);
            }
            _loc3_--;
         }
         if(this.§1x§.length > 0)
         {
            _loc4_ = 0.001;
            _loc5_ = 0.5;
            _loc6_ = this.§`5§.§[c§.camera.getCenter();
            this.§"S§.x = Math.min(_loc5_,this.§"S§.x + _loc4_ * param1);
            this.§"S§.y = Math.min(_loc5_,this.§"S§.y + _loc4_ * param1);
            _loc7_ = _loc6_.x + this.§"S§.x * this.§1x§.x * param1;
            _loc8_ = _loc6_.y + this.§"S§.y * this.§1x§.y * param1;
            this.§`5§.§[c§.camera.§9K§(_loc7_,_loc8_);
         }
         else
         {
            this.§"S§.x = 0;
            this.§"S§.y = 0;
         }
         if(Math.abs(this.§`"3§) > 0 || Math.abs(this.§[!X§) > 0)
         {
            if(Math.abs(this.§`"3§) < §^5§)
            {
               this.§`"3§ *= Math.pow(§#7§,param1);
            }
            if(Math.abs(this.§[!X§) < §^5§)
            {
               this.§[!X§ *= Math.pow(§#7§,param1);
            }
            this.§84§(this.§`"3§ * param1,this.§[!X§ * param1);
         }
         if(this.§=!d§)
         {
            this.§"">§();
         }
         this.§,Q§();
      }
      
      public function activate() : void
      {
         this.§4!F§ = false;
         this.§7'§ = false;
         this.§^n§ = false;
         this.§`5§.§!A§.§2!o§().§[y§().§3!§();
      }
      
      public function §7!D§(param1:Class) : void
      {
      }
      
      public function get §1!K§() : Point
      {
         return this.§@!u§;
      }
      
      public function §#!p§() : Boolean
      {
         return this.§5&§ != null;
      }
      
      public function §3"9§() : Boolean
      {
         return this.§^!2§ != null;
      }
      
      public function §=!>§() : Boolean
      {
         return false;
      }
      
      public function §5,§() : Boolean
      {
         return this.§=!d§;
      }
      
      public function §[v§(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:§<A§ = null;
         if(this.§5!l§().length > 0)
         {
            _loc2_ = !param1;
            for each(_loc3_ in this.§5!l§())
            {
               if(!_loc2_)
               {
                  _loc2_ = true;
                  this.§`5§.§8j§.§8q§();
               }
               if(_loc3_.getObject() is §"!q§)
               {
                  this.§`5§.§6%§.removeObject(_loc3_.getObject() as §"!q§);
               }
               else if(_loc3_.getObject() is §'4§)
               {
                  this.§`5§.§6%§.§-"$§(_loc3_.getObject() as §'4§);
               }
            }
            this.§;!_§();
         }
      }
      
      public function §3" §() : void
      {
         this.§;!_§();
      }
      
      public function §&B§(param1:String) : Boolean
      {
         return false;
      }
      
      public function §>!]§(param1:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:§<A§ = null;
         var _loc8_:Boolean = false;
         var _loc2_:§1H§ = this.§`5§.§!A§.§3?§.getItemByName("ContextMenu") as §1H§;
         if(this.§?-§() == 0 || this.§7'§ || this.§4!F§ || this.§^n§ || this.§5,§() || this.§#!p§() || this.§3"9§())
         {
            if(_loc2_.§@?§)
            {
               _loc2_.setVisibility(false);
            }
         }
         else if(!_loc2_.§@?§)
         {
            _loc2_.setVisibility(true);
         }
         if(this.§?-§() > 0)
         {
            _loc6_ = this.§0q§();
            _loc2_.x = _loc6_.x;
            _loc2_.y = _loc6_.y;
         }
         var _loc3_:§8K§ = this.§`5§.§!A§.§3?§.getItemByName("Rotate") as §8K§;
         var _loc4_:§8K§ = this.§`5§.§!A§.§3?§.getItemByName("Duplicate") as §8K§;
         var _loc5_:§8K§ = this.§`5§.§!A§.§3?§.getItemByName("Delete") as §8K§;
         _loc3_.setVisibility(false);
         _loc4_.setVisibility(false);
         _loc5_.setVisibility(false);
         if(this.§?-§() > 0)
         {
            for each(_loc7_ in this.§5!l§())
            {
               if(!_loc7_.§ !f§())
               {
                  if(§@#§.§7!?§.§9d§(_loc7_))
                  {
                     _loc3_.setVisibility(!_loc7_.§^!u§());
                     _loc8_ = (AngryBirdsFP11.§"!c§ as §0!]§).§<!=§(_loc7_.getName());
                     _loc4_.setVisibility(§@#§.§7!?§.§]Z§(_loc7_.getName()) && !_loc7_.§!!F§() && _loc8_);
                     _loc5_.setVisibility(§@#§.§7!?§.§%v§(_loc7_));
                  }
               }
            }
         }
      }
      
      public function §@!f§(param1:§<A§, param2:Boolean) : void
      {
         if(!§@#§.§7!?§.§9d§(param1))
         {
            return;
         }
         if(!param2)
         {
            this.§;!_§();
         }
         if(this.§4K§.indexOf(param1) > -1)
         {
            return;
         }
         if(param1.isGround())
         {
            return;
         }
         param1.§5!;§(true);
         this.§4K§.push(param1);
      }
      
      public function §6"0§(param1:§<A§) : void
      {
         if(this.§4K§.indexOf(param1) > -1)
         {
            this.§4K§.splice(this.§4K§.indexOf(param1),1);
            param1.§5!;§(false);
         }
      }
      
      public function §;!_§() : void
      {
         var _loc1_:§<A§ = null;
         this.§^!2§ = null;
         for each(_loc1_ in this.§4K§)
         {
            _loc1_.§5!;§(false);
         }
         if(this.§4K§.length > 0)
         {
            this.§`5§.§6%§.§9!r§();
         }
         this.§4K§ = new Vector.<§<A§>();
      }
      
      public function §?-§() : int
      {
         return this.§4K§.length;
      }
      
      public function §0q§() : Point
      {
         var _loc1_:b2Vec2 = this.§=x§();
         return this.§`5§.§6%§.§4!c§(_loc1_.x,_loc1_.y);
      }
      
      public function §=x§() : b2Vec2
      {
         var _loc2_:Rectangle = null;
         var _loc1_:b2Vec2 = new b2Vec2();
         if(this.§4K§.length > 0)
         {
            _loc2_ = this.§1!4§(this.§4K§);
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
      
      public function §5!l§() : Vector.<§<A§>
      {
         return this.§4K§;
      }
      
      protected function §1!4§(param1:Vector.<§<A§>, param2:Number = 0) : Rectangle
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
      
      protected function §&N§(param1:§<A§) : void
      {
         var _loc2_:Rectangle = this.§`5§.§[c§.camera.§+A§();
         _loc2_.y = §=!;§;
         _loc2_.height += §8!m§.§ 3§;
         var _loc3_:Rectangle = param1.§5!3§();
         _loc2_.right -= _loc3_.right;
         _loc2_.bottom -= _loc3_.top;
         _loc2_.left -= _loc3_.left;
         _loc2_.top -= _loc3_.bottom;
         if(param1.isTexture())
         {
            _loc2_.y += _loc3_.height;
         }
         if(param1.§0"1§())
         {
            _loc2_.left = 10;
         }
         if(param1.§^!u§())
         {
            _loc2_.y += 0.1;
            _loc2_.right = 15;
         }
         if(param1.§ !f§())
         {
            _loc2_.right = 0;
            _loc2_.left = 0;
            _loc2_.y += 0.5;
         }
         var _loc4_:b2Vec2 = param1.§@!0§();
         var _loc5_:Number = Math.max(_loc2_.x,Math.min(_loc2_.x + _loc2_.width,_loc4_.x));
         var _loc6_:Number = Math.min(_loc2_.y,Math.max(_loc2_.height + _loc2_.y,_loc4_.y));
         param1.setPosition(new b2Vec2(_loc5_,_loc6_));
      }
      
      private function §2"%§() : void
      {
         var _loc1_:§<A§ = null;
         this.§=!d§ = true;
         this.§-V§ = this.§1!K§.x;
         this.§8!,§ = this.§1!K§.y;
         for each(_loc1_ in this.§4K§)
         {
            this.§9T§(_loc1_);
         }
      }
      
      private function §]&§() : void
      {
         if(this.§-!k§)
         {
            this.§`5§.§!A§.§9",§(null);
            this.§-!k§.§>;§();
            this.§-!k§ = null;
         }
         if(this.§=!d§)
         {
            §5;§.playSound("Sound_PlaceBlock");
         }
         this.§[!u§ = null;
         this.§-!k§ = null;
         this.§=!d§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §2!p§() : void
      {
         this.§5&§ = new Point();
         this.§5&§.x = this.§1!K§.x;
         this.§5&§.y = this.§1!K§.y;
      }
      
      private function §?!N§() : void
      {
         this.§5&§ = null;
         this.§,Q§();
      }
      
      public function §6!q§(param1:Number) : void
      {
         var _loc5_:§<A§ = null;
         var _loc6_:Number = NaN;
         var _loc3_:b2Vec2 = this.§=x§();
         var _loc4_:Point = new Point(_loc3_.x,_loc3_.y);
         for each(_loc5_ in this.§4K§)
         {
            _loc5_.§+0§(param1,_loc4_);
            _loc6_ = _loc5_.§#!q§();
            this.§&N§(_loc5_);
         }
      }
      
      public function § !;§(param1:§%!§) : Object
      {
         var _loc3_:Object = null;
         if(!§@#§.§7!?§.§9d§())
         {
            return null;
         }
         if(this.§-!k§)
         {
            this.§-!k§.§>;§();
            this.§[v§();
         }
         this.§-!k§ = param1;
         dispatchEvent(new Event(Event.CHANGE));
         var _loc2_:String = this.§-!k§.getItemName();
         if(_loc2_.indexOf("BACKGROUND_") == 0)
         {
            §0c§.§7!?§.§6%§.§9"&§.background.resetLevelBackground(_loc2_);
            §0c§.§7!?§.§6%§.§9!r§();
         }
         else
         {
            _loc3_ = this.§`5§.§6%§.§92§(_loc2_,this.§1!K§.x,this.§1!K§.y,false);
         }
         if(_loc3_)
         {
            this.§@!f§(§<A§.§5y§(_loc3_),false);
            this.§-!k§.§]p§();
            this.§2"%§();
         }
         return _loc3_;
      }
      
      public function §,Q§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc12_:§<A§ = null;
         if(this.§5&§ == null)
         {
            this.§`5§.§!A§.§4!i§(null);
            return;
         }
         if(this.§5&§.y <= this.§1!K§.y)
         {
            _loc1_ = this.§5&§.y;
            _loc2_ = this.§1!K§.y;
         }
         else
         {
            _loc1_ = this.§1!K§.y;
            _loc2_ = this.§5&§.y;
         }
         if(this.§5&§.x <= this.§1!K§.x)
         {
            _loc3_ = this.§5&§.x;
            _loc4_ = this.§1!K§.x;
         }
         else
         {
            _loc3_ = this.§1!K§.x;
            _loc4_ = this.§5&§.x;
         }
         var _loc5_:Point = new Point(_loc3_,_loc1_);
         var _loc6_:Point = new Point(_loc4_,_loc2_);
         var _loc7_:Array = (_loc7_ = this.§`5§.§6%§.§9"&§.objects.getObjectsWithinBoundingBox(_loc5_,_loc6_)).concat(this.§`5§.§6%§.§9"&§.slingshot.getObjectsWithinBoundingBox(_loc5_,_loc6_));
         var _loc8_:Number = 0;
         _loc8_ = 0;
         while(_loc8_ < this.§4K§.length)
         {
            if(_loc7_.indexOf(this.§4K§[_loc8_].getObject()) == -1)
            {
               this.§6"0§(this.§4K§[_loc8_]);
            }
            _loc8_++;
         }
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            _loc12_ = §<A§.§5y§(_loc7_[_loc8_]);
            if(this.§4K§.indexOf(_loc12_) == -1 && §@#§.§7!?§.§9d§(_loc12_))
            {
               this.§@!f§(§<A§.§5y§(_loc7_[_loc8_]),true);
            }
            _loc8_++;
         }
         var _loc9_:Point = this.§`5§.§6%§.§9"&§.§6!;§(_loc5_.x,_loc5_.y);
         var _loc10_:Point = this.§`5§.§6%§.§9"&§.§6!;§(_loc6_.x,_loc6_.y);
         var _loc11_:Rectangle = new Rectangle(_loc9_.x,_loc9_.y,_loc10_.x - _loc9_.x,_loc10_.y - _loc9_.y);
         this.§`5§.§!A§.§4!i§(_loc11_);
      }
      
      public function §&"1§() : void
      {
         var _loc1_:§<A§ = null;
         this.§ !p§ = new Vector.<§<A§>();
         for each(_loc1_ in this.§4K§)
         {
            if(!_loc1_.§!!F§())
            {
               this.§ !p§.push(_loc1_);
            }
         }
      }
      
      public function §4b§() : Vector.<§<A§>
      {
         var _loc6_:§<A§ = null;
         var _loc7_:§<A§ = null;
         var _loc1_:Vector.<§<A§> = new Vector.<§<A§>();
         if(!§@#§.§7!?§.§]Z§())
         {
            return _loc1_;
         }
         if(!this.§ !p§ || this.§ !p§.length == 0)
         {
            return _loc1_;
         }
         this.§`5§.§8j§.§8q§();
         var _loc2_:Rectangle = this.§1!4§(this.§ !p§);
         var _loc3_:Point = new Point(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
         var _loc4_:Number = this.§1!K§.x - _loc3_.x;
         var _loc5_:Number = this.§1!K§.y - _loc3_.y;
         this.§;!_§();
         for each(_loc6_ in this.§ !p§)
         {
            if(!(_loc6_.isTexture() && this.§`5§.§6%§.§>!;§() < 1))
            {
               if(!(_loc6_.§^!u§() && this.§`5§.§6%§.§35§() < 1))
               {
                  if(!_loc6_.§ !f§())
                  {
                     if((_loc6_.§-E§() || _loc6_.§0"1§()) && this.§`5§.§6%§.§ W§() < 1)
                     {
                        this.§`5§.§6%§.dispatchEvent(new §?!i§(§?!i§.§&?§));
                        break;
                     }
                     _loc7_ = this.§`5§.§6%§.§3m§(_loc6_,_loc4_,_loc5_);
                     _loc1_.push(_loc7_);
                     this.§@!f§(_loc7_,true);
                  }
               }
            }
         }
         this.§2"%§();
         return _loc1_;
      }
      
      private function §`!N§(param1:§<A§) : b2Transform
      {
         return this.§[!Q§[param1];
      }
      
      private function §9T§(param1:§<A§) : void
      {
         this.§>"<§(param1);
         this.§[!Q§[param1] = param1.§1!U§();
      }
      
      private function §>"<§(param1:§<A§) : void
      {
         var _loc2_:b2Transform = null;
         if(§9!K§.§8!?§().§6E§(§9!K§.§-y§))
         {
            _loc2_ = param1.§1!U§();
            _loc2_.position.x = this.§#<§(_loc2_.position.x);
            _loc2_.position.y = this.§#<§(_loc2_.position.y);
            if(this.§!6§ == 100)
            {
               _loc2_.position.x += param1.§5!3§().width / 2 * 100 % this.§!6§ / 100;
               _loc2_.position.y -= param1.§5!3§().height / 2 * 100 % this.§!6§ / 100;
            }
         }
         param1.§;!b§(_loc2_);
      }
      
      private function §#<§(param1:Number) : Number
      {
         return Math.round(param1 * 100 - param1 * 100 % this.§!6§) / 100;
      }
      
      private function §"">§() : void
      {
         var _loc2_:§<A§ = null;
         var _loc3_:Point = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this.§4K§)
         {
            if(§@#§.§7!?§.§9d§(_loc2_))
            {
               _loc1_ = true;
               break;
            }
         }
         if(!_loc1_)
         {
            this.§]&§();
         }
         else
         {
            _loc3_ = this.§1!K§;
            _loc4_ = _loc3_.x - this.§-V§;
            _loc5_ = _loc3_.y - this.§8!,§;
            if(this.§=!d§)
            {
               this.§4"0§(_loc4_,_loc5_);
            }
         }
      }
      
      public function §84§(param1:Number, param2:Number) : void
      {
         if(this.§=!d§)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§4K§.length)
         {
            _loc3_++;
         }
         param1 = (param1 == 0 ? 0 : param1 / Math.abs(param1)) * this.§!6§;
         param2 = (param2 == 0 ? 0 : param2 / Math.abs(param2)) * this.§!6§;
      }
      
      public function §4"0§(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc7_:int = 0;
         var _loc8_:§<A§ = null;
         var _loc9_:b2Vec2 = null;
         if(this.§4K§.length == 0)
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
         while(_loc7_ < this.§4K§.length)
         {
            _loc8_ = this.§4K§[_loc7_];
            _loc9_ = this.§`!N§(_loc8_).position.Copy();
            _loc9_.x += param1;
            _loc9_.y += param2;
            this.§8%§(_loc8_,_loc9_);
            _loc7_++;
         }
      }
      
      private function §8%§(param1:§<A§, param2:b2Vec2, param3:Boolean = true) : void
      {
         param1.setPosition(param2);
         if(param3)
         {
            this.§>"<§(param1);
         }
         this.§&N§(param1);
         §?!U§.§5!q§(param1.getObject() as §"!q§,this.§`5§.§6%§.§9"&§.objects);
      }
      
      private function §""'§(param1:Object) : Boolean
      {
         var _loc2_:§<A§ = null;
         for each(_loc2_ in this.§4K§)
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
