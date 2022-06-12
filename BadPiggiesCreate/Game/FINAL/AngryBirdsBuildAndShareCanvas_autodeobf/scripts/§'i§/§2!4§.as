package §'i§
{
   import §'p§.§="#§;
   import §'p§.§`!T§;
   import §+!o§.§]"5§;
   import §+!o§.§^!Q§;
   import §+h§.Popup;
   import §-!n§.§5!U§;
   import §1"2§.§`7§;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import §5!V§.§>n§;
   import §6" §.§<8§;
   import §62§.§0!t§;
   import §62§.§9o§;
   import §7r§.§,"!§;
   import §7r§.§=q§;
   import §=!#§.§2"-§;
   import §=!#§.§`"=§;
   import §^!y§.§'"#§;
   import §^[§.§!$§;
   import §^[§.§-[§;
   import §^[§.Inventory;
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
   
   public class §2!4§ extends EventDispatcher implements §8p§
   {
      
      private static const §'!g§:Number = §!w§.§4!-§ / 100;
      
      private static const §1!c§:Number = §'!g§ * 30;
      
      private static const §7"7§:Number = 1.005;
      
      private static const §[]§:Number = -0.15;
      
      private static const §?q§:Number = 360 / 8;
      
      private static const §@2§:int = 20;
       
      
      private var §'Y§:Vector.<§=q§>;
      
      private var §2!z§:Point;
      
      private var §#!Y§:Point;
      
      private var §-"+§:Boolean = false;
      
      private var §[!1§:Dictionary;
      
      private var §;"-§:Vector.<§=q§>;
      
      private var §,H§:Number;
      
      private var §<u§:Number;
      
      private var §`c§:Number = 0;
      
      private var §,=§:Number = 0;
      
      private var §+!W§:Boolean = false;
      
      private var §<2§:Boolean = false;
      
      private var §0!J§:Boolean = false;
      
      private var §8"%§:Point;
      
      private var §=!m§:§!$§;
      
      private var §2!W§:Point;
      
      private var §<!t§:Point;
      
      private var §;!u§:Point;
      
      private var §"$§:Boolean = false;
      
      private var §6!§:§-[§;
      
      private var §"#§:Inventory;
      
      private var §-?§:Popup;
      
      private var §6!^§:§'!;§;
      
      private var §'!6§:int = 100;
      
      public function §2!4§(param1:§'!;§)
      {
         this.§'Y§ = new Vector.<§=q§>();
         this.§#!Y§ = new Point();
         this.§[!1§ = new Dictionary();
         this.§<!t§ = new Point();
         this.§;!u§ = new Point();
         this.§6!§ = new §-[§();
         super();
         this.§6!^§ = param1;
         addEventListener(Event.CHANGE,this.§8!9§);
         addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      public function initialize() : void
      {
         this.§6!^§.§+"2§.addEventListener(KeyboardEvent.KEY_DOWN,this.§8!l§);
         this.§6!^§.§+"2§.addEventListener(KeyboardEvent.KEY_UP,this.§ y§);
         this.§6!^§.§?!W§.addEventListener(MouseEvent.MOUSE_UP,this.§#!d§);
         this.§6!^§.§?!W§.addEventListener(MouseEvent.MOUSE_DOWN,this.§,!k§);
         this.§6!^§.§?!W§.addEventListener(MouseEvent.MOUSE_MOVE,this.§2<§);
         this.§6!^§.§?!W§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         this.§6!^§.§+"2§.addEventListener(§0!t§.ROTATE,this.§?$§);
         this.§6!^§.§+"2§.addEventListener(§0!t§.DELETE_OBJECT,this.§9!n§);
         this.§6!^§.§+"2§.addEventListener(§0!t§.DUPLICATE_OBJECT,this.§<S§);
         this.§6!^§.§+"2§.addEventListener("close_popups",this.§>!=§);
         this.§6!^§.§8#§.addEventListener(§0!t§.§4T§,this.§]d§);
         this.§6!^§.§<J§.addEventListener(§9o§.§,0§,this.§^j§);
         this.§"#§ = this.§6!^§.§+"2§.§9B§().§'!Q§();
         this.§"#§.addEventListener(§0!t§.CANCEL,this.§>N§);
         this.§"#§.addEventListener(§0!t§.§]!x§,this.§;B§);
      }
      
      private function §^j§(param1:Event) : void
      {
         this.§6!^§.§+"2§.§9B§().§'!Q§().§?-§();
      }
      
      private function §>!=§(param1:Event) : void
      {
         this.§-?§.close();
         this.§-?§ = null;
      }
      
      private function §>N§(param1:§0!t§) : void
      {
         this.§@!B§(false);
      }
      
      private function §8!9§(param1:Event) : void
      {
         if(!this.§"$§)
         {
            this.§"$§ = true;
            this.§6!^§.§4p§.§5R§();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         if(this.§"$§)
         {
            this.§"$§ = false;
            this.§6!^§.§8#§.§ f§();
         }
      }
      
      private function §]d§(param1:Event) : void
      {
         this.§%1§();
      }
      
      private function §?$§(param1:Event) : void
      {
         this.§<!M§(-§?q§);
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc4_:§2"-§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Point = null;
         if(!§,!1§.§2=§.§1!?§())
         {
            return;
         }
         var _loc2_:int = param1.delta;
         var _loc3_:Number = §`"=§.§;!0§;
         this.§6!^§.§>k§.camera.zoom(_loc2_);
         if(_loc2_ > 0)
         {
            _loc5_ = (_loc4_ = this.§6!^§.§>k§.camera).§6!w§;
            if(_loc4_)
            {
               _loc6_ = _loc4_.getCenter();
               _loc7_ = new Point();
               if(this.§?"4§() == 0)
               {
                  _loc8_ = this.§=!u§.x - _loc6_.x;
                  _loc9_ = this.§=!u§.y - _loc6_.y;
                  _loc7_.x = this.§=!u§.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = this.§=!u§.y - _loc3_ / _loc5_ * _loc9_;
                  this.§6!^§.§+"2§.§ !i§(this.§;o§.x,this.§;o§.y);
               }
               else
               {
                  _loc8_ = ((_loc10_ = this.§4'§()).x - _loc6_.x) / 1.3;
                  _loc9_ = (_loc10_.y - _loc6_.y) / 1.3;
                  _loc7_.x = _loc10_.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = _loc10_.y - _loc3_ / _loc5_ * _loc9_;
                  _loc11_ = this.§6!^§.§8#§.§!!3§(_loc10_.x,_loc10_.y);
                  this.§6!^§.§+"2§.§ !i§(_loc11_.x,_loc11_.y);
               }
               _loc4_.§0'§(_loc7_);
            }
         }
      }
      
      private function §;B§(param1:§0!t§) : void
      {
         var _loc3_:Bitmap = null;
         var _loc4_:Bitmap = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Object = null;
         §5!U§.playSound("Sound_PlaceBlock");
         var _loc2_:§!$§ = this.§"#§.§-!G§();
         if(_loc2_.§7!w§)
         {
            this.§-?§ = new Popup(§`7§.§>"?§.Views.PopupView_ItemLocked[0],this.§6!^§.§+"2§.§9B§());
            this.§-?§.open();
            _loc3_ = _loc2_.§8!n§() as Bitmap;
            _loc4_ = new Bitmap(_loc3_.bitmapData);
            _loc5_ = this.§-?§.getItemByName("MovieClip_UnlockItem").mClip;
            _loc4_.x = _loc5_.width / 2 - _loc4_.width / 2;
            _loc4_.y = _loc5_.height / 2 - _loc4_.height / 2 - 45;
            _loc5_.addChild(_loc4_);
         }
         else if(_loc6_ = this.§<r§(_loc2_))
         {
            this.§6!^§.§+"2§.§^!+§(this.§6!§);
            this.§6!§.addEventListener(MouseEvent.MOUSE_UP,this.§#!d§);
         }
      }
      
      private function §#!d§(param1:Event) : void
      {
         if(this.§2!z§)
         {
            this.§2!z§ = null;
            return;
         }
         if(this.§6!§.mouseEnabled)
         {
            this.§-!'§();
            this.§"t§();
         }
      }
      
      private function §,!k§(param1:MouseEvent) : void
      {
         if(this.§6!^§.§+"2§.§7"+§)
         {
            return;
         }
         if(this.§2!z§)
         {
            return;
         }
         var _loc2_:§=q§ = §=q§.§0"§(this.§6!^§.§8#§.§]!l§(this.§;o§));
         if(this.§'Y§.indexOf(_loc2_) > -1)
         {
            if(this.§+!W§ || this.§0!J§ || this.§<2§)
            {
               this.§&-§(_loc2_);
            }
         }
         else if(_loc2_ != null)
         {
            this.§@!z§(_loc2_,this.§+!W§);
         }
         if(_loc2_ != null && !(this.§+!W§ || this.§0!J§ || this.§<2§))
         {
            this.§%O§();
         }
         else if(!_loc2_ && (this.§+!W§ || this.§0!J§ || this.§<2§))
         {
            this.§8!#§();
         }
         else if(!_loc2_ && !this.§-"+§)
         {
            this.§%1§();
            this.§2!W§ = this.§=!u§.clone();
         }
      }
      
      private function §2<§(param1:Event) : void
      {
         var _loc2_:Point = null;
         var _loc3_:int = 0;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(this.§2!z§)
         {
            _loc2_ = this.§2!z§.subtract(this.§;o§);
            if(_loc2_.length > §@2§)
            {
               dispatchEvent(new Event(Event.CHANGE));
               if(Math.abs(_loc2_.x) > Math.abs(_loc2_.y))
               {
                  _loc3_ = _loc2_.x < 0 ? -1 : 1;
                  if(this.§;o§.y > this.§]C§().y)
                  {
                     _loc3_ *= -1;
                  }
               }
               else
               {
                  _loc3_ = _loc2_.y < 0 ? 1 : -1;
                  if(this.§;o§.x > this.§]C§().x)
                  {
                     _loc3_ *= -1;
                  }
               }
               this.§2!z§ = this.§;o§.clone();
               this.§<!M§(§?q§ * _loc3_);
            }
         }
         else if(this.§2!W§)
         {
            if(§,!1§.§2=§.§1!?§())
            {
               _loc5_ = (_loc4_ = this.§6!^§.§>k§.camera.getCenter()).x + (this.§2!W§.x - this.§=!u§.x);
               _loc6_ = _loc4_.y + (this.§2!W§.y - this.§=!u§.y);
               this.§6!^§.§>k§.camera.§@!D§(_loc5_,_loc6_);
            }
            else
            {
               this.§2!W§ = null;
            }
         }
      }
      
      private function §8!l§(param1:KeyboardEvent) : void
      {
         if(this.§?"4§() == 0)
         {
            if(param1.keyCode == Keyboard.UP && this.§<!t§.y != -1)
            {
               this.§<!t§.y = -1;
               this.§;!u§.y = 0;
            }
            else if(param1.keyCode == Keyboard.DOWN && this.§<!t§.y != 1)
            {
               this.§<!t§.y = 1;
               this.§;!u§.y = 0;
            }
            else if(param1.keyCode == Keyboard.LEFT && this.§<!t§.x != -1)
            {
               this.§<!t§.x = -1;
               this.§;!u§.x = 0;
            }
            else if(param1.keyCode == Keyboard.RIGHT && this.§<!t§.x != 1)
            {
               this.§<!t§.x = 1;
               this.§;!u§.x = 0;
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§<2§ = true;
               break;
            case Keyboard.SHIFT:
               this.§+!W§ = true;
               break;
            case Keyboard.CONTROL:
               this.§0!J§ = true;
               break;
            case Keyboard.UP:
               this.§,=§ = Math.min(this.§,=§,-§'!g§);
               break;
            case Keyboard.DOWN:
               this.§,=§ = Math.max(this.§,=§,§'!g§);
               break;
            case Keyboard.LEFT:
               this.§`c§ = Math.min(this.§`c§,-§'!g§);
               break;
            case Keyboard.RIGHT:
               this.§`c§ = Math.max(this.§`c§,§'!g§);
               break;
            case Keyboard.DELETE:
               this.§@!B§();
               break;
            case Keyboard.PAGE_UP:
               this.§3!&§(1);
               break;
            case Keyboard.PAGE_DOWN:
               this.§3!&§(-1);
               break;
            case Keyboard.C:
               this.§]!P§();
               break;
            case Keyboard.V:
               this.§`z§();
               break;
            case Keyboard.D:
               this.§<S§();
               break;
            case Keyboard.J:
               §,"!§.§@!u§(this.§'Y§,this.§6!^§.§8#§.§4+§.objects);
               break;
            case Keyboard.E:
               this.§<!M§(§?q§);
               break;
            case Keyboard.R:
               this.§<!M§(-§?q§);
         }
      }
      
      private function §3!&§(param1:int) : void
      {
         var _loc2_:§=q§ = null;
         var _loc3_:§]"5§ = null;
         for each(_loc2_ in this.§'Y§)
         {
            _loc2_.§0q§(param1);
            _loc3_ = this.§6!^§.§8#§.§4+§.§1!V§.getObjectWithID(_loc2_.uniqueID);
            (this.§6!^§.§8#§.§4+§.§1!V§ as §^!Q§).§!x§(_loc3_,param1);
         }
      }
      
      private function § y§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.UP && this.§<!t§.y == -1)
         {
            this.§<!t§.y = 0;
         }
         else if(param1.keyCode == Keyboard.DOWN && this.§<!t§.y == 1)
         {
            this.§<!t§.y = 0;
         }
         else if(param1.keyCode == Keyboard.LEFT && this.§<!t§.x == -1)
         {
            this.§<!t§.x = 0;
         }
         else if(param1.keyCode == Keyboard.RIGHT && this.§<!t§.x == 1)
         {
            this.§<!t§.x = 0;
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§<2§ = false;
               break;
            case Keyboard.SHIFT:
               this.§+!W§ = false;
               break;
            case Keyboard.CONTROL:
               this.§0!J§ = false;
               break;
            case 38:
               this.§,=§ = Math.max(0,this.§,=§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 40:
               this.§,=§ = Math.min(0,this.§,=§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 37:
               this.§`c§ = Math.max(0,this.§`c§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 39:
               this.§`c§ = Math.min(0,this.§`c§);
               dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §9!n§(param1:Event) : void
      {
         this.§@!B§();
      }
      
      private function §<S§(param1:Event = null) : void
      {
         this.§]!P§();
         this.§`z§();
      }
      
      public function get §;o§() : Point
      {
         return this.§6!^§.§?!W§.§;o§;
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§75§(false);
         var _loc2_:Point = this.§6!^§.§8#§.§4+§.screenToBox2D(this.§6!^§.§?!W§.§;o§.x,this.§6!^§.§?!W§.§;o§.y);
         this.§#!Y§.x = _loc2_.x;
         this.§#!Y§.y = _loc2_.y;
         var _loc3_:int = this.§'Y§.length - 1;
         while(_loc3_ >= 0)
         {
            if(!§,!1§.§2=§.§>L§(this.§'Y§[_loc3_]))
            {
               this.§&-§(this.§'Y§[_loc3_]);
            }
            _loc3_--;
         }
         if(this.§<!t§.length > 0)
         {
            _loc4_ = 0.001;
            _loc5_ = 0.5;
            _loc6_ = this.§6!^§.§>k§.camera.getCenter();
            this.§;!u§.x = Math.min(_loc5_,this.§;!u§.x + _loc4_ * param1);
            this.§;!u§.y = Math.min(_loc5_,this.§;!u§.y + _loc4_ * param1);
            _loc7_ = _loc6_.x + this.§;!u§.x * this.§<!t§.x * param1;
            _loc8_ = _loc6_.y + this.§;!u§.y * this.§<!t§.y * param1;
            this.§6!^§.§>k§.camera.§@!D§(_loc7_,_loc8_);
         }
         else
         {
            this.§;!u§.x = 0;
            this.§;!u§.y = 0;
         }
         if(Math.abs(this.§`c§) > 0 || Math.abs(this.§,=§) > 0)
         {
            if(Math.abs(this.§`c§) < §1!c§)
            {
               this.§`c§ *= Math.pow(§7"7§,param1);
            }
            if(Math.abs(this.§,=§) < §1!c§)
            {
               this.§,=§ *= Math.pow(§7"7§,param1);
            }
            this.§[R§(this.§`c§ * param1,this.§,=§ * param1);
         }
         if(this.§-"+§)
         {
            this.§77§();
         }
         this.§3D§();
      }
      
      public function activate() : void
      {
         this.§0!J§ = false;
         this.§+!W§ = false;
         this.§<2§ = false;
         this.§6!^§.§+"2§.§9B§().§'!Q§().§?-§();
      }
      
      public function §?!r§(param1:Class) : void
      {
      }
      
      public function get §=!u§() : Point
      {
         return this.§#!Y§;
      }
      
      public function §&!B§() : Boolean
      {
         return this.§8"%§ != null;
      }
      
      public function §""9§() : Boolean
      {
         return this.§2!z§ != null;
      }
      
      public function §3S§() : Boolean
      {
         return false;
      }
      
      public function §#%§() : Boolean
      {
         return this.§-"+§;
      }
      
      public function §@!B§(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:§=q§ = null;
         if(this.§#_§().length > 0)
         {
            _loc2_ = !param1;
            for each(_loc3_ in this.§#_§())
            {
               if(!_loc2_)
               {
                  _loc2_ = true;
                  this.§6!^§.§4p§.§5R§();
               }
               if(_loc3_.getObject() is §]"5§)
               {
                  this.§6!^§.§8#§.removeObject(_loc3_.getObject() as §]"5§);
               }
               else if(_loc3_.getObject() is §>n§)
               {
                  this.§6!^§.§8#§.§5,§(_loc3_.getObject() as §>n§);
               }
            }
            this.§%1§();
         }
      }
      
      public function §@!^§() : void
      {
         this.§%1§();
      }
      
      public function §>"5§(param1:String) : Boolean
      {
         return false;
      }
      
      public function §75§(param1:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:§=q§ = null;
         var _loc8_:Boolean = false;
         var _loc2_:§`!T§ = this.§6!^§.§+"2§.§?E§.getItemByName("ContextMenu") as §`!T§;
         if(this.§?"4§() == 0 || this.§+!W§ || this.§0!J§ || this.§<2§ || this.§#%§() || this.§&!B§() || this.§""9§())
         {
            if(_loc2_.§-j§)
            {
               _loc2_.setVisibility(false);
            }
         }
         else if(!_loc2_.§-j§)
         {
            _loc2_.setVisibility(true);
         }
         if(this.§?"4§() > 0)
         {
            _loc6_ = this.§]C§();
            _loc2_.x = _loc6_.x;
            _loc2_.y = _loc6_.y;
         }
         var _loc3_:§="#§ = this.§6!^§.§+"2§.§?E§.getItemByName("Rotate") as §="#§;
         var _loc4_:§="#§ = this.§6!^§.§+"2§.§?E§.getItemByName("Duplicate") as §="#§;
         var _loc5_:§="#§ = this.§6!^§.§+"2§.§?E§.getItemByName("Delete") as §="#§;
         _loc3_.setVisibility(false);
         _loc4_.setVisibility(false);
         _loc5_.setVisibility(false);
         if(this.§?"4§() > 0)
         {
            for each(_loc7_ in this.§#_§())
            {
               if(!_loc7_.§ j§())
               {
                  if(§,!1§.§2=§.§>L§(_loc7_))
                  {
                     _loc3_.setVisibility(!_loc7_.§9!^§());
                     _loc8_ = (AngryBirdsFP11.§>" § as §'"#§).§?Z§(_loc7_.getName());
                     _loc4_.setVisibility(§,!1§.§2=§.§[!e§(_loc7_.getName()) && !_loc7_.§8!w§() && _loc8_);
                     _loc5_.setVisibility(§,!1§.§2=§.§,h§(_loc7_));
                  }
               }
            }
         }
      }
      
      public function §@!z§(param1:§=q§, param2:Boolean) : void
      {
         if(!§,!1§.§2=§.§>L§(param1))
         {
            return;
         }
         if(!param2)
         {
            this.§%1§();
         }
         if(this.§'Y§.indexOf(param1) > -1)
         {
            return;
         }
         if(param1.isGround())
         {
            return;
         }
         param1.§&!c§(true);
         this.§'Y§.push(param1);
      }
      
      public function §&-§(param1:§=q§) : void
      {
         if(this.§'Y§.indexOf(param1) > -1)
         {
            this.§'Y§.splice(this.§'Y§.indexOf(param1),1);
            param1.§&!c§(false);
         }
      }
      
      public function §%1§() : void
      {
         var _loc1_:§=q§ = null;
         this.§2!z§ = null;
         for each(_loc1_ in this.§'Y§)
         {
            _loc1_.§&!c§(false);
         }
         if(this.§'Y§.length > 0)
         {
            this.§6!^§.§8#§.§ f§();
         }
         this.§'Y§ = new Vector.<§=q§>();
      }
      
      public function §?"4§() : int
      {
         return this.§'Y§.length;
      }
      
      public function §]C§() : Point
      {
         var _loc1_:b2Vec2 = this.§4'§();
         return this.§6!^§.§8#§.§!!3§(_loc1_.x,_loc1_.y);
      }
      
      public function §4'§() : b2Vec2
      {
         var _loc2_:Rectangle = null;
         var _loc1_:b2Vec2 = new b2Vec2();
         if(this.§'Y§.length > 0)
         {
            _loc2_ = this.§-#§(this.§'Y§);
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
      
      public function §#_§() : Vector.<§=q§>
      {
         return this.§'Y§;
      }
      
      protected function §-#§(param1:Vector.<§=q§>, param2:Number = 0) : Rectangle
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
      
      protected function §%!N§(param1:§=q§) : void
      {
         var _loc2_:Rectangle = this.§6!^§.§>k§.camera.§!!u§();
         _loc2_.y = §[]§;
         _loc2_.height += §2"-§.§^"#§;
         var _loc3_:Rectangle = param1.§]!&§();
         _loc2_.right -= _loc3_.right;
         _loc2_.bottom -= _loc3_.top;
         _loc2_.left -= _loc3_.left;
         _loc2_.top -= _loc3_.bottom;
         if(param1.isTexture())
         {
            _loc2_.y += _loc3_.height;
         }
         if(param1.§]F§())
         {
            _loc2_.left = 10;
         }
         if(param1.§9!^§())
         {
            _loc2_.y += 0.1;
            _loc2_.right = 15;
         }
         if(param1.§ j§())
         {
            _loc2_.right = 0;
            _loc2_.left = 0;
            _loc2_.y += 0.5;
         }
         var _loc4_:b2Vec2 = param1.§9!l§();
         var _loc5_:Number = Math.max(_loc2_.x,Math.min(_loc2_.x + _loc2_.width,_loc4_.x));
         var _loc6_:Number = Math.min(_loc2_.y,Math.max(_loc2_.height + _loc2_.y,_loc4_.y));
         param1.setPosition(new b2Vec2(_loc5_,_loc6_));
      }
      
      private function §%O§() : void
      {
         var _loc1_:§=q§ = null;
         this.§-"+§ = true;
         this.§,H§ = this.§=!u§.x;
         this.§<u§ = this.§=!u§.y;
         for each(_loc1_ in this.§'Y§)
         {
            this.§38§(_loc1_);
         }
      }
      
      private function §-!'§() : void
      {
         if(this.§=!m§)
         {
            this.§6!^§.§+"2§.§^!+§(null);
            this.§=!m§.§9!%§();
            this.§=!m§ = null;
         }
         if(this.§-"+§)
         {
            §5!U§.playSound("Sound_PlaceBlock");
         }
         this.§2!W§ = null;
         this.§=!m§ = null;
         this.§-"+§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §8!#§() : void
      {
         this.§8"%§ = new Point();
         this.§8"%§.x = this.§=!u§.x;
         this.§8"%§.y = this.§=!u§.y;
      }
      
      private function §"t§() : void
      {
         this.§8"%§ = null;
         this.§3D§();
      }
      
      public function §<!M§(param1:Number) : void
      {
         var _loc5_:§=q§ = null;
         var _loc6_:Number = NaN;
         var _loc3_:b2Vec2 = this.§4'§();
         var _loc4_:Point = new Point(_loc3_.x,_loc3_.y);
         for each(_loc5_ in this.§'Y§)
         {
            _loc5_.§;"+§(param1,_loc4_);
            _loc6_ = _loc5_.§+!1§();
            this.§%!N§(_loc5_);
         }
      }
      
      public function §<r§(param1:§!$§) : Object
      {
         var _loc3_:Object = null;
         if(!§,!1§.§2=§.§>L§())
         {
            return null;
         }
         if(this.§=!m§)
         {
            this.§=!m§.§9!%§();
            this.§@!B§();
         }
         this.§=!m§ = param1;
         dispatchEvent(new Event(Event.CHANGE));
         var _loc2_:String = this.§=!m§.getItemName();
         if(_loc2_.indexOf("BACKGROUND_") == 0)
         {
            §'!;§.§2=§.§8#§.§4+§.background.resetLevelBackground(_loc2_);
            §'!;§.§2=§.§8#§.§ f§();
         }
         else
         {
            _loc3_ = this.§6!^§.§8#§.§9%§(_loc2_,this.§=!u§.x,this.§=!u§.y,false);
         }
         if(_loc3_)
         {
            this.§@!z§(§=q§.§0"§(_loc3_),false);
            this.§=!m§.§4Y§();
            this.§%O§();
         }
         return _loc3_;
      }
      
      public function §3D§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc12_:§=q§ = null;
         if(this.§8"%§ == null)
         {
            this.§6!^§.§+"2§.§8o§(null);
            return;
         }
         if(this.§8"%§.y <= this.§=!u§.y)
         {
            _loc1_ = this.§8"%§.y;
            _loc2_ = this.§=!u§.y;
         }
         else
         {
            _loc1_ = this.§=!u§.y;
            _loc2_ = this.§8"%§.y;
         }
         if(this.§8"%§.x <= this.§=!u§.x)
         {
            _loc3_ = this.§8"%§.x;
            _loc4_ = this.§=!u§.x;
         }
         else
         {
            _loc3_ = this.§=!u§.x;
            _loc4_ = this.§8"%§.x;
         }
         var _loc5_:Point = new Point(_loc3_,_loc1_);
         var _loc6_:Point = new Point(_loc4_,_loc2_);
         var _loc7_:Array = (_loc7_ = this.§6!^§.§8#§.§4+§.objects.getObjectsWithinBoundingBox(_loc5_,_loc6_)).concat(this.§6!^§.§8#§.§4+§.slingshot.getObjectsWithinBoundingBox(_loc5_,_loc6_));
         var _loc8_:Number = 0;
         _loc8_ = 0;
         while(_loc8_ < this.§'Y§.length)
         {
            if(_loc7_.indexOf(this.§'Y§[_loc8_].getObject()) == -1)
            {
               this.§&-§(this.§'Y§[_loc8_]);
            }
            _loc8_++;
         }
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            _loc12_ = §=q§.§0"§(_loc7_[_loc8_]);
            if(this.§'Y§.indexOf(_loc12_) == -1 && §,!1§.§2=§.§>L§(_loc12_))
            {
               this.§@!z§(§=q§.§0"§(_loc7_[_loc8_]),true);
            }
            _loc8_++;
         }
         var _loc9_:Point = this.§6!^§.§8#§.§4+§.§&g§(_loc5_.x,_loc5_.y);
         var _loc10_:Point = this.§6!^§.§8#§.§4+§.§&g§(_loc6_.x,_loc6_.y);
         var _loc11_:Rectangle = new Rectangle(_loc9_.x,_loc9_.y,_loc10_.x - _loc9_.x,_loc10_.y - _loc9_.y);
         this.§6!^§.§+"2§.§8o§(_loc11_);
      }
      
      public function §]!P§() : void
      {
         var _loc1_:§=q§ = null;
         this.§;"-§ = new Vector.<§=q§>();
         for each(_loc1_ in this.§'Y§)
         {
            if(!_loc1_.§8!w§())
            {
               this.§;"-§.push(_loc1_);
            }
         }
      }
      
      public function §`z§() : Vector.<§=q§>
      {
         var _loc6_:§=q§ = null;
         var _loc7_:§=q§ = null;
         var _loc1_:Vector.<§=q§> = new Vector.<§=q§>();
         if(!§,!1§.§2=§.§[!e§())
         {
            return _loc1_;
         }
         if(!this.§;"-§ || this.§;"-§.length == 0)
         {
            return _loc1_;
         }
         this.§6!^§.§4p§.§5R§();
         var _loc2_:Rectangle = this.§-#§(this.§;"-§);
         var _loc3_:Point = new Point(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
         var _loc4_:Number = this.§=!u§.x - _loc3_.x;
         var _loc5_:Number = this.§=!u§.y - _loc3_.y;
         this.§%1§();
         for each(_loc6_ in this.§;"-§)
         {
            if(!(_loc6_.isTexture() && this.§6!^§.§8#§.§#=§() < 1))
            {
               if(!(_loc6_.§9!^§() && this.§6!^§.§8#§.§4!m§() < 1))
               {
                  if(!_loc6_.§ j§())
                  {
                     if((_loc6_.§@!i§() || _loc6_.§]F§()) && this.§6!^§.§8#§.§4!3§() < 1)
                     {
                        this.§6!^§.§8#§.dispatchEvent(new §0!t§(§0!t§.§ 6§));
                        break;
                     }
                     _loc7_ = this.§6!^§.§8#§.§&!%§(_loc6_,_loc4_,_loc5_);
                     _loc1_.push(_loc7_);
                     this.§@!z§(_loc7_,true);
                  }
               }
            }
         }
         this.§%O§();
         return _loc1_;
      }
      
      private function §@1§(param1:§=q§) : b2Transform
      {
         return this.§[!1§[param1];
      }
      
      private function §38§(param1:§=q§) : void
      {
         this.§[!1§[param1] = param1.§[!M§();
      }
      
      private function §99§(param1:§=q§) : void
      {
         var _loc2_:b2Transform = null;
         if(§<8§.§5!i§().§&!h§(§<8§.§,!4§))
         {
            _loc2_ = param1.§[!M§();
            _loc2_.position.x = this.§]<§(_loc2_.position.x);
            _loc2_.position.y = this.§]<§(_loc2_.position.y);
            if(this.§'!6§ == 100)
            {
               _loc2_.position.x += param1.§]!&§().width / 2 * 100 % this.§'!6§ / 100;
               _loc2_.position.y -= param1.§]!&§().height / 2 * 100 % this.§'!6§ / 100;
            }
         }
         param1.§=!J§(_loc2_);
      }
      
      private function §]<§(param1:Number) : Number
      {
         return Math.round(param1 * 100 - param1 * 100 % this.§'!6§) / 100;
      }
      
      private function §77§() : void
      {
         var _loc2_:§=q§ = null;
         var _loc3_:Point = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this.§'Y§)
         {
            if(§,!1§.§2=§.§>L§(_loc2_))
            {
               _loc1_ = true;
               break;
            }
         }
         if(!_loc1_)
         {
            this.§-!'§();
         }
         else
         {
            _loc3_ = this.§=!u§;
            _loc4_ = _loc3_.x - this.§,H§;
            _loc5_ = _loc3_.y - this.§<u§;
            if(this.§-"+§)
            {
               this.§ m§(_loc4_,_loc5_);
            }
         }
      }
      
      public function §[R§(param1:Number, param2:Number) : void
      {
         if(this.§-"+§)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§'Y§.length)
         {
            _loc3_++;
         }
         param1 = (param1 == 0 ? 0 : param1 / Math.abs(param1)) * this.§'!6§;
         param2 = (param2 == 0 ? 0 : param2 / Math.abs(param2)) * this.§'!6§;
      }
      
      public function § m§(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc7_:int = 0;
         var _loc8_:§=q§ = null;
         var _loc9_:b2Vec2 = null;
         if(this.§'Y§.length == 0)
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
         while(_loc7_ < this.§'Y§.length)
         {
            _loc8_ = this.§'Y§[_loc7_];
            _loc9_ = this.§@1§(_loc8_).position.Copy();
            _loc9_.x += param1;
            _loc9_.y += param2;
            this.§#!;§(_loc8_,_loc9_);
            _loc7_++;
         }
      }
      
      private function §#!;§(param1:§=q§, param2:b2Vec2, param3:Boolean = true) : void
      {
         param1.setPosition(param2);
         if(param3)
         {
            this.§99§(param1);
         }
         this.§%!N§(param1);
         §,"!§.§<c§(param1.getObject() as §]"5§,this.§6!^§.§8#§.§4+§.objects);
      }
      
      private function §!u§(param1:Object) : Boolean
      {
         var _loc2_:§=q§ = null;
         for each(_loc2_ in this.§'Y§)
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
