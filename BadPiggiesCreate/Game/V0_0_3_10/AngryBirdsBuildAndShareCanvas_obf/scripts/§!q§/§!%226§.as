package §!q§
{
   import §,"$§.Popup;
   import §0!d§.§7!a§;
   import §0!d§.§8!r§;
   import §1!p§.§`!#§;
   import §2!§.§1!n§;
   import §2!§.§>B§;
   import §3;§.§#!C§;
   import §3;§.§7!k§;
   import §4!s§.§%I§;
   import §4!s§.§`!7§;
   import §4!t§.§1!=§;
   import §7!&§.§!!k§;
   import §9!z§.§'!`§;
   import §9!z§.§5"!§;
   import §9!z§.Inventory;
   import §="§.§<x§;
   import §="§.§`T§;
   import §?!h§.b2Transform;
   import §?!h§.b2Vec2;
   import §?^§.§0Q§;
   import §?^§.§8"$§;
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
   
   public class §!"6§ extends EventDispatcher implements §2j§
   {
      
      private static const §87§:Number = §%I§.§9"4§ / 100;
      
      private static const §6-§:Number = §87§ * 30;
      
      private static const §"E§:Number = 1.005;
      
      private static const §&!G§:Number = -0.15;
      
      private static const §#M§:Number = 360 / 8;
      
      private static const §1&§:int = 20;
       
      
      private var §<!r§:Vector.<§0Q§>;
      
      private var §2,§:Point;
      
      private var §9"5§:Point;
      
      private var §[H§:Boolean = false;
      
      private var §;"3§:Dictionary;
      
      private var §?!U§:Vector.<§0Q§>;
      
      private var §1;§:Number;
      
      private var §1" §:Number;
      
      private var §?n§:Number = 0;
      
      private var §]^§:Number = 0;
      
      private var §]!o§:Boolean = false;
      
      private var §""!§:Boolean = false;
      
      private var §0%§:Boolean = false;
      
      private var §0!l§:Point;
      
      private var §>?§:§5"!§;
      
      private var §[N§:Point;
      
      private var §?T§:Point;
      
      private var §<!h§:Point;
      
      private var §'t§:Boolean = false;
      
      private var §<i§:§'!`§;
      
      private var §9!g§:Inventory;
      
      private var §%"4§:Popup;
      
      private var §5!V§:§84§;
      
      private var §32§:int = 100;
      
      public function §!"6§(param1:§84§)
      {
         this.§<!r§ = new Vector.<§0Q§>();
         this.§9"5§ = new Point();
         this.§;"3§ = new Dictionary();
         this.§?T§ = new Point();
         this.§<!h§ = new Point();
         this.§<i§ = new §'!`§();
         super();
         this.§5!V§ = param1;
         addEventListener(Event.CHANGE,this.§%!T§);
         addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      public function initialize() : void
      {
         this.§5!V§.§<B§.addEventListener(KeyboardEvent.KEY_DOWN,this.§^"5§);
         this.§5!V§.§<B§.addEventListener(KeyboardEvent.KEY_UP,this.§#!M§);
         this.§5!V§.§>s§.addEventListener(MouseEvent.MOUSE_UP,this.§<!9§);
         this.§5!V§.§>s§.addEventListener(MouseEvent.MOUSE_DOWN,this.§+!q§);
         this.§5!V§.§>s§.addEventListener(MouseEvent.MOUSE_MOVE,this.§^!V§);
         this.§5!V§.§>s§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         this.§5!V§.§<B§.addEventListener(§#!C§.START_ROTATE,this.static);
         this.§5!V§.§<B§.addEventListener(§#!C§.DELETE_OBJECT,this.§5!x§);
         this.§5!V§.§<B§.addEventListener(§#!C§.DUPLICATE_OBJECT,this.§9!9§);
         this.§5!V§.§<B§.addEventListener("close_popups",this.§%=§);
         this.§5!V§.§"j§.addEventListener(§#!C§.§&!J§,this.§2!]§);
         this.§5!V§.§!"1§.addEventListener(§7!k§.§6!^§,this.§90§);
         this.§9!g§ = this.§5!V§.§<B§.§#Y§().§6!w§();
         this.§9!g§.addEventListener(§#!C§.CANCEL,this.§?J§);
         this.§9!g§.addEventListener(§#!C§.§@1§,this.§>'§);
      }
      
      private function §90§(param1:Event) : void
      {
         this.§5!V§.§<B§.§#Y§().§6!w§().§2",§();
      }
      
      private function §%=§(param1:Event) : void
      {
         this.§%"4§.close();
         this.§%"4§ = null;
      }
      
      private function §?J§(param1:§#!C§) : void
      {
         this.§catch§(false);
      }
      
      private function §%!T§(param1:Event) : void
      {
         if(!this.§'t§)
         {
            this.§'t§ = true;
            this.§5!V§.§05§.§#l§();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         if(this.§'t§)
         {
            this.§'t§ = false;
            this.§5!V§.§"j§.§=Q§();
         }
      }
      
      private function §2!]§(param1:Event) : void
      {
         this.§;!6§();
      }
      
      private function static(param1:Event) : void
      {
         this.§2,§ = this.§'!T§.clone();
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc4_:§>B§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Point = null;
         if(!§ %§.§,l§.§@i§())
         {
            return;
         }
         var _loc2_:int = param1.delta;
         var _loc3_:Number = §1!n§.§#!%§;
         this.§5!V§.§9"3§.camera.zoom(_loc2_);
         if(_loc2_ > 0)
         {
            _loc5_ = (_loc4_ = this.§5!V§.§9"3§.camera).§<!>§;
            if(_loc4_)
            {
               _loc6_ = _loc4_.getCenter();
               _loc7_ = new Point();
               if(this.§7!P§() == 0)
               {
                  _loc8_ = this.§1!j§.x - _loc6_.x;
                  _loc9_ = this.§1!j§.y - _loc6_.y;
                  _loc7_.x = this.§1!j§.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = this.§1!j§.y - _loc3_ / _loc5_ * _loc9_;
                  this.§5!V§.§<B§.§1O§(this.§'!T§.x,this.§'!T§.y);
               }
               else
               {
                  _loc8_ = ((_loc10_ = this.§2[§()).x - _loc6_.x) / 1.3;
                  _loc9_ = (_loc10_.y - _loc6_.y) / 1.3;
                  _loc7_.x = _loc10_.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = _loc10_.y - _loc3_ / _loc5_ * _loc9_;
                  _loc11_ = this.§5!V§.§"j§.§>!<§(_loc10_.x,_loc10_.y);
                  this.§5!V§.§<B§.§1O§(_loc11_.x,_loc11_.y);
               }
               _loc4_.§<T§(_loc7_);
            }
         }
      }
      
      private function §>'§(param1:§#!C§) : void
      {
         var _loc3_:Bitmap = null;
         var _loc4_:Bitmap = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Object = null;
         var _loc2_:§5"!§ = this.§9!g§.§<5§();
         if(_loc2_.§2r§)
         {
            this.§%"4§ = new Popup(§1!=§.§8X§.Views.PopupView_ItemLocked[0],this.§5!V§.§<B§.§#Y§());
            this.§%"4§.open();
            _loc3_ = _loc2_.§"!h§() as Bitmap;
            _loc4_ = new Bitmap(_loc3_.bitmapData);
            _loc5_ = this.§%"4§.getItemByName("MovieClip_UnlockItem").mClip;
            _loc4_.x = _loc5_.width / 2 - _loc4_.width / 2;
            _loc4_.y = _loc5_.height / 2 - _loc4_.height / 2 - 45;
            _loc5_.addChild(_loc4_);
         }
         else if(_loc6_ = this.§;!M§(_loc2_))
         {
            this.§5!V§.§<B§.§&!$§(this.§<i§);
            this.§<i§.addEventListener(MouseEvent.MOUSE_UP,this.§<!9§);
         }
      }
      
      private function §<!9§(param1:Event) : void
      {
         if(this.§2,§)
         {
            this.§2,§ = null;
            return;
         }
         if(this.§<i§.mouseEnabled)
         {
            this.§"_§();
            this.§@!u§();
         }
      }
      
      private function §+!q§(param1:MouseEvent) : void
      {
         if(this.§2,§)
         {
            return;
         }
         var _loc2_:§0Q§ = §0Q§.§super§(this.§5!V§.§"j§.§,!_§(this.§'!T§));
         if(this.§<!r§.indexOf(_loc2_) > -1)
         {
            if(this.§]!o§ || this.§0%§ || this.§""!§)
            {
               this.§3!'§(_loc2_);
            }
         }
         else if(_loc2_ != null)
         {
            this.§&B§(_loc2_,this.§]!o§);
         }
         if(_loc2_ != null && !(this.§]!o§ || this.§0%§ || this.§""!§))
         {
            this.§]!a§();
         }
         else if(!_loc2_ && (this.§]!o§ || this.§0%§ || this.§""!§))
         {
            this.§2!S§();
         }
         else if(!_loc2_ && !this.§[H§)
         {
            this.§;!6§();
            this.§[N§ = this.§1!j§.clone();
         }
      }
      
      private function §^!V§(param1:Event) : void
      {
         var _loc2_:Point = null;
         var _loc3_:int = 0;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(this.§2,§)
         {
            _loc2_ = this.§2,§.subtract(this.§'!T§);
            if(_loc2_.length > §1&§)
            {
               dispatchEvent(new Event(Event.CHANGE));
               if(Math.abs(_loc2_.x) > Math.abs(_loc2_.y))
               {
                  _loc3_ = _loc2_.x < 0 ? -1 : 1;
                  if(this.§'!T§.y > this.§@-§().y)
                  {
                     _loc3_ *= -1;
                  }
               }
               else
               {
                  _loc3_ = _loc2_.y < 0 ? 1 : -1;
                  if(this.§'!T§.x > this.§@-§().x)
                  {
                     _loc3_ *= -1;
                  }
               }
               this.§2,§ = this.§'!T§.clone();
               this.§!!I§(§#M§ * _loc3_);
            }
         }
         else if(this.§[N§)
         {
            if(§ %§.§,l§.§@i§())
            {
               _loc5_ = (_loc4_ = this.§5!V§.§9"3§.camera.getCenter()).x + (this.§[N§.x - this.§1!j§.x);
               _loc6_ = _loc4_.y + (this.§[N§.y - this.§1!j§.y);
               this.§5!V§.§9"3§.camera.§2!1§(_loc5_,_loc6_);
            }
            else
            {
               this.§[N§ = null;
            }
         }
      }
      
      private function §^"5§(param1:KeyboardEvent) : void
      {
         if(this.§7!P§() == 0)
         {
            if(param1.keyCode == Keyboard.UP && this.§?T§.y != -1)
            {
               this.§?T§.y = -1;
               this.§<!h§.y = 0;
            }
            else if(param1.keyCode == Keyboard.DOWN && this.§?T§.y != 1)
            {
               this.§?T§.y = 1;
               this.§<!h§.y = 0;
            }
            else if(param1.keyCode == Keyboard.LEFT && this.§?T§.x != -1)
            {
               this.§?T§.x = -1;
               this.§<!h§.x = 0;
            }
            else if(param1.keyCode == Keyboard.RIGHT && this.§?T§.x != 1)
            {
               this.§?T§.x = 1;
               this.§<!h§.x = 0;
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§""!§ = true;
               break;
            case Keyboard.SHIFT:
               this.§]!o§ = true;
               break;
            case Keyboard.CONTROL:
               this.§0%§ = true;
               break;
            case Keyboard.UP:
               this.§]^§ = Math.min(this.§]^§,-§87§);
               break;
            case Keyboard.DOWN:
               this.§]^§ = Math.max(this.§]^§,§87§);
               break;
            case Keyboard.LEFT:
               this.§?n§ = Math.min(this.§?n§,-§87§);
               break;
            case Keyboard.RIGHT:
               this.§?n§ = Math.max(this.§?n§,§87§);
               break;
            case Keyboard.DELETE:
               this.§catch§();
               break;
            case Keyboard.PAGE_UP:
               this.§%M§(1);
               break;
            case Keyboard.PAGE_DOWN:
               this.§%M§(-1);
               break;
            case Keyboard.C:
               this.§@O§();
               break;
            case Keyboard.V:
               this.§5j§();
               break;
            case Keyboard.D:
               this.§9!9§();
               break;
            case Keyboard.J:
               §8"$§.§@g§(this.§<!r§,this.§5!V§.§"j§.§^"'§.objects);
               break;
            case Keyboard.E:
               this.§!!I§(§#M§);
               break;
            case Keyboard.R:
               this.§!!I§(-§#M§);
         }
      }
      
      private function §%M§(param1:int) : void
      {
         var _loc2_:§0Q§ = null;
         var _loc3_:§`T§ = null;
         for each(_loc2_ in this.§<!r§)
         {
            _loc2_.§,!I§(param1);
            _loc3_ = this.§5!V§.§"j§.§^"'§.§6!"§.getObjectWithID(_loc2_.uniqueID);
            (this.§5!V§.§"j§.§^"'§.§6!"§ as §<x§).§=!O§(_loc3_,param1);
         }
      }
      
      private function §#!M§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.UP && this.§?T§.y == -1)
         {
            this.§?T§.y = 0;
         }
         else if(param1.keyCode == Keyboard.DOWN && this.§?T§.y == 1)
         {
            this.§?T§.y = 0;
         }
         else if(param1.keyCode == Keyboard.LEFT && this.§?T§.x == -1)
         {
            this.§?T§.x = 0;
         }
         else if(param1.keyCode == Keyboard.RIGHT && this.§?T§.x == 1)
         {
            this.§?T§.x = 0;
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§""!§ = false;
               break;
            case Keyboard.SHIFT:
               this.§]!o§ = false;
               break;
            case Keyboard.CONTROL:
               this.§0%§ = false;
               break;
            case 38:
               this.§]^§ = Math.max(0,this.§]^§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 40:
               this.§]^§ = Math.min(0,this.§]^§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 37:
               this.§?n§ = Math.max(0,this.§?n§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 39:
               this.§?n§ = Math.min(0,this.§?n§);
               dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §5!x§(param1:Event) : void
      {
         this.§catch§();
      }
      
      private function §9!9§(param1:Event = null) : void
      {
         this.§@O§();
         this.§5j§();
      }
      
      public function get §'!T§() : Point
      {
         return this.§5!V§.§>s§.§'!T§;
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§25§(false);
         var _loc2_:Point = this.§5!V§.§"j§.§^"'§.screenToBox2D(this.§5!V§.§>s§.§'!T§.x,this.§5!V§.§>s§.§'!T§.y);
         this.§9"5§.x = _loc2_.x;
         this.§9"5§.y = _loc2_.y;
         var _loc3_:int = this.§<!r§.length - 1;
         while(_loc3_ >= 0)
         {
            if(!§ %§.§,l§.§?!7§(this.§<!r§[_loc3_]))
            {
               this.§3!'§(this.§<!r§[_loc3_]);
            }
            _loc3_--;
         }
         if(this.§?T§.length > 0)
         {
            _loc4_ = 0.001;
            _loc5_ = 0.5;
            _loc6_ = this.§5!V§.§9"3§.camera.getCenter();
            this.§<!h§.x = Math.min(_loc5_,this.§<!h§.x + _loc4_ * param1);
            this.§<!h§.y = Math.min(_loc5_,this.§<!h§.y + _loc4_ * param1);
            _loc7_ = _loc6_.x + this.§<!h§.x * this.§?T§.x * param1;
            _loc8_ = _loc6_.y + this.§<!h§.y * this.§?T§.y * param1;
            this.§5!V§.§9"3§.camera.§2!1§(_loc7_,_loc8_);
         }
         else
         {
            this.§<!h§.x = 0;
            this.§<!h§.y = 0;
         }
         if(Math.abs(this.§?n§) > 0 || Math.abs(this.§]^§) > 0)
         {
            if(Math.abs(this.§?n§) < §6-§)
            {
               this.§?n§ *= Math.pow(§"E§,param1);
            }
            if(Math.abs(this.§]^§) < §6-§)
            {
               this.§]^§ *= Math.pow(§"E§,param1);
            }
            this.§0+§(this.§?n§ * param1,this.§]^§ * param1);
         }
         if(this.§[H§)
         {
            this.§"'§();
         }
         this.§3>§();
      }
      
      public function activate() : void
      {
         this.§0%§ = false;
         this.§]!o§ = false;
         this.§""!§ = false;
         this.§5!V§.§<B§.§#Y§().§6!w§().§2",§();
      }
      
      public function §??§(param1:Class) : void
      {
      }
      
      public function get §1!j§() : Point
      {
         return this.§9"5§;
      }
      
      public function §@A§() : Boolean
      {
         return this.§0!l§ != null;
      }
      
      public function §[!7§() : Boolean
      {
         return this.§2,§ != null;
      }
      
      public function §;!-§() : Boolean
      {
         return false;
      }
      
      public function §?m§() : Boolean
      {
         return this.§[H§;
      }
      
      public function §catch§(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:§0Q§ = null;
         if(this.§#A§().length > 0)
         {
            _loc2_ = !param1;
            for each(_loc3_ in this.§#A§())
            {
               if(!_loc2_)
               {
                  _loc2_ = true;
                  this.§5!V§.§05§.§#l§();
               }
               if(_loc3_.getObject() is §`T§)
               {
                  this.§5!V§.§"j§.removeObject(_loc3_.getObject() as §`T§);
               }
               else if(_loc3_.getObject() is §`!7§)
               {
                  this.§5!V§.§"j§.§,!E§(_loc3_.getObject() as §`!7§);
               }
            }
            this.§;!6§();
         }
      }
      
      public function §%#§() : void
      {
         this.§;!6§();
      }
      
      public function §08§(param1:String) : Boolean
      {
         return false;
      }
      
      public function §25§(param1:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:§0Q§ = null;
         var _loc8_:Boolean = false;
         var _loc2_:§7!a§ = this.§5!V§.§<B§.§'K§.getItemByName("ContextMenu") as §7!a§;
         if(this.§7!P§() == 0 || this.§]!o§ || this.§0%§ || this.§""!§ || this.§?m§() || this.§@A§() || this.§[!7§())
         {
            if(_loc2_.§>!L§)
            {
               _loc2_.setVisibility(false);
            }
         }
         else if(!_loc2_.§>!L§)
         {
            _loc2_.setVisibility(true);
         }
         if(this.§7!P§() > 0)
         {
            _loc6_ = this.§@-§();
            _loc2_.x = _loc6_.x;
            _loc2_.y = _loc6_.y;
         }
         var _loc3_:§8!r§ = this.§5!V§.§<B§.§'K§.getItemByName("Rotate") as §8!r§;
         var _loc4_:§8!r§ = this.§5!V§.§<B§.§'K§.getItemByName("Duplicate") as §8!r§;
         var _loc5_:§8!r§ = this.§5!V§.§<B§.§'K§.getItemByName("Delete") as §8!r§;
         _loc3_.setVisibility(false);
         _loc4_.setVisibility(false);
         _loc5_.setVisibility(false);
         if(this.§7!P§() > 0)
         {
            for each(_loc7_ in this.§#A§())
            {
               if(!_loc7_.§8t§())
               {
                  if(§ %§.§,l§.§?!7§(_loc7_))
                  {
                     _loc3_.setVisibility(!_loc7_.§>R§());
                     _loc8_ = (AngryBirdsFP11.§<U§ as §`!#§).§^S§(_loc7_.getName());
                     _loc4_.setVisibility(§ %§.§,l§.§=d§(_loc7_.getName()) && !_loc7_.§ !b§() && _loc8_);
                     _loc5_.setVisibility(§ %§.§,l§.§&!!§(_loc7_));
                  }
               }
            }
         }
      }
      
      public function §&B§(param1:§0Q§, param2:Boolean) : void
      {
         if(!§ %§.§,l§.§?!7§(param1))
         {
            return;
         }
         if(!param2)
         {
            this.§;!6§();
         }
         if(this.§<!r§.indexOf(param1) > -1)
         {
            return;
         }
         if(param1.isGround())
         {
            return;
         }
         param1.§4"1§(true);
         this.§<!r§.push(param1);
      }
      
      public function §3!'§(param1:§0Q§) : void
      {
         if(this.§<!r§.indexOf(param1) > -1)
         {
            this.§<!r§.splice(this.§<!r§.indexOf(param1),1);
            param1.§4"1§(false);
         }
      }
      
      public function §;!6§() : void
      {
         var _loc1_:§0Q§ = null;
         this.§2,§ = null;
         for each(_loc1_ in this.§<!r§)
         {
            _loc1_.§4"1§(false);
         }
         this.§<!r§ = new Vector.<§0Q§>();
      }
      
      public function §7!P§() : int
      {
         return this.§<!r§.length;
      }
      
      public function §@-§() : Point
      {
         var _loc1_:b2Vec2 = this.§2[§();
         return this.§5!V§.§"j§.§>!<§(_loc1_.x,_loc1_.y);
      }
      
      public function §2[§() : b2Vec2
      {
         var _loc2_:Rectangle = null;
         var _loc1_:b2Vec2 = new b2Vec2();
         if(this.§<!r§.length > 0)
         {
            _loc2_ = this.§'!H§(this.§<!r§);
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
      
      public function §#A§() : Vector.<§0Q§>
      {
         return this.§<!r§;
      }
      
      protected function §'!H§(param1:Vector.<§0Q§>, param2:Number = 0) : Rectangle
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
      
      protected function §<!M§(param1:§0Q§) : void
      {
         var _loc2_:Rectangle = this.§5!V§.§9"3§.camera.§9N§();
         _loc2_.y = §&!G§;
         _loc2_.height += §>B§.§3I§;
         var _loc3_:Rectangle = param1.§^g§();
         _loc2_.right -= _loc3_.right;
         _loc2_.bottom -= _loc3_.top;
         _loc2_.left -= _loc3_.left;
         _loc2_.top -= _loc3_.bottom;
         if(param1.isTexture())
         {
            _loc2_.y += _loc3_.height;
         }
         if(param1.§3!^§())
         {
            _loc2_.left = 10;
         }
         if(param1.§>R§())
         {
            _loc2_.y += 0.1;
            _loc2_.right = 15;
         }
         if(param1.§8t§())
         {
            _loc2_.right = 0;
            _loc2_.left = 0;
            _loc2_.y += 0.5;
         }
         var _loc4_:b2Vec2 = param1.§9b§();
         var _loc5_:Number = Math.max(_loc2_.x,Math.min(_loc2_.x + _loc2_.width,_loc4_.x));
         var _loc6_:Number = Math.min(_loc2_.y,Math.max(_loc2_.height + _loc2_.y,_loc4_.y));
         param1.setPosition(new b2Vec2(_loc5_,_loc6_));
      }
      
      private function §]!a§() : void
      {
         var _loc1_:§0Q§ = null;
         this.§[H§ = true;
         this.§1;§ = this.§1!j§.x;
         this.§1" § = this.§1!j§.y;
         for each(_loc1_ in this.§<!r§)
         {
            this.§3T§(_loc1_);
         }
      }
      
      private function §"_§() : void
      {
         if(this.§>?§)
         {
            this.§5!V§.§<B§.§&!$§(null);
            this.§>?§.§ U§();
            this.§>?§ = null;
         }
         this.§[N§ = null;
         this.§>?§ = null;
         this.§[H§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §2!S§() : void
      {
         this.§0!l§ = new Point();
         this.§0!l§.x = this.§1!j§.x;
         this.§0!l§.y = this.§1!j§.y;
      }
      
      private function §@!u§() : void
      {
         this.§0!l§ = null;
         this.§3>§();
      }
      
      public function §!!I§(param1:Number) : void
      {
         var _loc5_:§0Q§ = null;
         var _loc6_:Number = NaN;
         var _loc3_:b2Vec2 = this.§2[§();
         var _loc4_:Point = new Point(_loc3_.x,_loc3_.y);
         for each(_loc5_ in this.§<!r§)
         {
            _loc5_.§?!z§(param1,_loc4_);
            _loc6_ = _loc5_.§'k§();
            this.§<!M§(_loc5_);
         }
      }
      
      public function §;!M§(param1:§5"!§) : Object
      {
         var _loc3_:Object = null;
         if(!§ %§.§,l§.§?!7§())
         {
            return null;
         }
         if(this.§>?§)
         {
            this.§>?§.§ U§();
            this.§catch§();
         }
         this.§>?§ = param1;
         dispatchEvent(new Event(Event.CHANGE));
         var _loc2_:String = this.§>?§.getItemName();
         if(_loc2_.indexOf("BACKGROUND_") == 0)
         {
            §84§.§,l§.§"j§.§^"'§.background.resetLevelBackground(_loc2_);
            §84§.§,l§.§"j§.§=Q§();
         }
         else
         {
            _loc3_ = this.§5!V§.§"j§.§!!S§(_loc2_,this.§1!j§.x,this.§1!j§.y);
         }
         if(_loc3_)
         {
            this.§&B§(§0Q§.§super§(_loc3_),false);
            this.§>?§.§;§();
            this.§]!a§();
         }
         return _loc3_;
      }
      
      public function §3>§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc12_:§0Q§ = null;
         if(this.§0!l§ == null)
         {
            this.§5!V§.§<B§.§0"1§(null);
            return;
         }
         if(this.§0!l§.y <= this.§1!j§.y)
         {
            _loc1_ = this.§0!l§.y;
            _loc2_ = this.§1!j§.y;
         }
         else
         {
            _loc1_ = this.§1!j§.y;
            _loc2_ = this.§0!l§.y;
         }
         if(this.§0!l§.x <= this.§1!j§.x)
         {
            _loc3_ = this.§0!l§.x;
            _loc4_ = this.§1!j§.x;
         }
         else
         {
            _loc3_ = this.§1!j§.x;
            _loc4_ = this.§0!l§.x;
         }
         var _loc5_:Point = new Point(_loc3_,_loc1_);
         var _loc6_:Point = new Point(_loc4_,_loc2_);
         var _loc7_:Array = (_loc7_ = this.§5!V§.§"j§.§^"'§.objects.getObjectsWithinBoundingBox(_loc5_,_loc6_)).concat(this.§5!V§.§"j§.§^"'§.slingshot.getObjectsWithinBoundingBox(_loc5_,_loc6_));
         var _loc8_:Number = 0;
         _loc8_ = 0;
         while(_loc8_ < this.§<!r§.length)
         {
            if(_loc7_.indexOf(this.§<!r§[_loc8_].getObject()) == -1)
            {
               this.§3!'§(this.§<!r§[_loc8_]);
            }
            _loc8_++;
         }
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            _loc12_ = §0Q§.§super§(_loc7_[_loc8_]);
            if(this.§<!r§.indexOf(_loc12_) == -1 && § %§.§,l§.§?!7§(_loc12_))
            {
               this.§&B§(§0Q§.§super§(_loc7_[_loc8_]),true);
            }
            _loc8_++;
         }
         var _loc9_:Point = this.§5!V§.§"j§.§^"'§.§?!+§(_loc5_.x,_loc5_.y);
         var _loc10_:Point = this.§5!V§.§"j§.§^"'§.§?!+§(_loc6_.x,_loc6_.y);
         var _loc11_:Rectangle = new Rectangle(_loc9_.x,_loc9_.y,_loc10_.x - _loc9_.x,_loc10_.y - _loc9_.y);
         this.§5!V§.§<B§.§0"1§(_loc11_);
      }
      
      public function §@O§() : void
      {
         var _loc1_:§0Q§ = null;
         this.§?!U§ = new Vector.<§0Q§>();
         for each(_loc1_ in this.§<!r§)
         {
            if(!_loc1_.§ !b§())
            {
               this.§?!U§.push(_loc1_);
            }
         }
      }
      
      public function §5j§() : Vector.<§0Q§>
      {
         var _loc6_:§0Q§ = null;
         var _loc7_:§0Q§ = null;
         var _loc1_:Vector.<§0Q§> = new Vector.<§0Q§>();
         if(!§ %§.§,l§.§=d§())
         {
            return _loc1_;
         }
         if(!this.§?!U§ || this.§?!U§.length == 0)
         {
            return _loc1_;
         }
         this.§5!V§.§05§.§#l§();
         var _loc2_:Rectangle = this.§'!H§(this.§?!U§);
         var _loc3_:Point = new Point(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
         var _loc4_:Number = this.§1!j§.x - _loc3_.x;
         var _loc5_:Number = this.§1!j§.y - _loc3_.y;
         this.§;!6§();
         for each(_loc6_ in this.§?!U§)
         {
            if(!(_loc6_.isTexture() && this.§5!V§.§"j§.§7!`§() < 1))
            {
               if(!(_loc6_.§>R§() && this.§5!V§.§"j§.§1!R§() < 1))
               {
                  if(!_loc6_.§8t§())
                  {
                     if((_loc6_.§[!Z§() || _loc6_.§3!^§()) && this.§5!V§.§"j§.§7@§() < 1)
                     {
                        this.§5!V§.§"j§.dispatchEvent(new §#!C§(§#!C§.§`k§));
                        break;
                     }
                     _loc7_ = this.§5!V§.§"j§.§<p§(_loc6_,_loc4_,_loc5_);
                     _loc1_.push(_loc7_);
                     this.§&B§(_loc7_,true);
                  }
               }
            }
         }
         this.§]!a§();
         return _loc1_;
      }
      
      private function §7w§(param1:§0Q§) : b2Transform
      {
         return this.§;"3§[param1];
      }
      
      private function §3T§(param1:§0Q§) : void
      {
         this.§[6§(param1);
         this.§;"3§[param1] = param1.§8y§();
      }
      
      private function §[6§(param1:§0Q§) : void
      {
         var _loc2_:b2Transform = null;
         if(§!!k§.§4Z§().§;K§(§!!k§.§'!S§))
         {
            _loc2_ = param1.§8y§();
            _loc2_.position.x = this.§var §(_loc2_.position.x);
            _loc2_.position.y = this.§var §(_loc2_.position.y);
            if(this.§32§ == 100)
            {
               _loc2_.position.x += param1.§^g§().width / 2 * 100 % this.§32§ / 100;
               _loc2_.position.y -= param1.§^g§().height / 2 * 100 % this.§32§ / 100;
            }
         }
         param1.§&"2§(_loc2_);
      }
      
      private function §var §(param1:Number) : Number
      {
         return Math.round(param1 * 100 - param1 * 100 % this.§32§) / 100;
      }
      
      private function §"'§() : void
      {
         var _loc2_:§0Q§ = null;
         var _loc3_:Point = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this.§<!r§)
         {
            if(§ %§.§,l§.§?!7§(_loc2_))
            {
               _loc1_ = true;
               break;
            }
         }
         if(!_loc1_)
         {
            this.§"_§();
         }
         else
         {
            _loc3_ = this.§1!j§;
            _loc4_ = _loc3_.x - this.§1;§;
            _loc5_ = _loc3_.y - this.§1" §;
            if(this.§[H§)
            {
               this.§,!-§(_loc4_,_loc5_);
            }
         }
      }
      
      public function §0+§(param1:Number, param2:Number) : void
      {
         if(this.§[H§)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§<!r§.length)
         {
            _loc3_++;
         }
         param1 = (param1 == 0 ? 0 : param1 / Math.abs(param1)) * this.§32§;
         param2 = (param2 == 0 ? 0 : param2 / Math.abs(param2)) * this.§32§;
      }
      
      public function §,!-§(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc7_:int = 0;
         var _loc8_:§0Q§ = null;
         var _loc9_:b2Vec2 = null;
         if(this.§<!r§.length == 0)
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
         while(_loc7_ < this.§<!r§.length)
         {
            _loc8_ = this.§<!r§[_loc7_];
            _loc9_ = this.§7w§(_loc8_).position.Copy();
            _loc9_.x += param1;
            _loc9_.y += param2;
            this.§@!T§(_loc8_,_loc9_);
            _loc7_++;
         }
      }
      
      private function §@!T§(param1:§0Q§, param2:b2Vec2, param3:Boolean = true) : void
      {
         param1.setPosition(param2);
         if(param3)
         {
            this.§[6§(param1);
         }
         this.§<!M§(param1);
         §8"$§.§'=§(param1.getObject() as §`T§,this.§5!V§.§"j§.§^"'§.objects);
      }
      
      private function §[0§(param1:Object) : Boolean
      {
         var _loc2_:§0Q§ = null;
         for each(_loc2_ in this.§<!r§)
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
