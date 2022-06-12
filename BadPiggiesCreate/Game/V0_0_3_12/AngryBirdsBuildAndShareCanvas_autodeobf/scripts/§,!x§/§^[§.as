package §,!x§
{
   import §%B§.§^k§;
   import §-!@§.Popup;
   import §-=§.§0"9§;
   import §-=§.§8"1§;
   import §1!"§.§[f§;
   import §1!N§.§"!k§;
   import §1!N§.§+!2§;
   import §3!t§.b2Transform;
   import §3!t§.b2Vec2;
   import §4!#§.§ a§;
   import §4!#§.§60§;
   import §5!8§.§+!?§;
   import §5!8§.§;!Z§;
   import §>";§.§#§;
   import §@">§.§#! §;
   import §@r§.§3!+§;
   import §@r§.§[i§;
   import §[B§.§"d§;
   import §[B§.§,!f§;
   import §^H§.§"!i§;
   import §^H§.Inventory;
   import §^H§.§^!e§;
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
   
   public class §^[§ extends EventDispatcher implements §]!'§
   {
      
      private static const §`!=§:Number = §"d§.§2!]§ / 100;
      
      private static const §0c§:Number = §`!=§ * 30;
      
      private static const §@!§:Number = 1.005;
      
      private static const §8g§:Number = -0.15;
      
      private static const §>>§:Number = 360 / 8;
      
      private static const §7!C§:int = 20;
       
      
      private var §!0§:Vector.<§"!k§>;
      
      private var §=k§:Point;
      
      private var §[h§:Point;
      
      private var §<p§:Boolean = false;
      
      private var §;C§:Dictionary;
      
      private var §4A§:Vector.<§"!k§>;
      
      private var §?"8§:Number;
      
      private var §]1§:Number;
      
      private var §;q§:Number = 0;
      
      private var §``§:Number = 0;
      
      private var §-!i§:Boolean = false;
      
      private var §!!c§:Boolean = false;
      
      private var §5!+§:Boolean = false;
      
      private var §0C§:Point;
      
      private var §?!h§:§"!i§;
      
      private var §2!z§:Point;
      
      private var §>?§:Point;
      
      private var §%"<§:Point;
      
      private var §`!o§:Boolean = false;
      
      private var §<!>§:§^!e§;
      
      private var §!" §:Inventory;
      
      private var §7!#§:Popup;
      
      private var §[",§:§]S§;
      
      private var §,"§:int = 100;
      
      public function §^[§(param1:§]S§)
      {
         this.§!0§ = new Vector.<§"!k§>();
         this.§[h§ = new Point();
         this.§;C§ = new Dictionary();
         this.§>?§ = new Point();
         this.§%"<§ = new Point();
         this.§<!>§ = new §^!e§();
         super();
         this.§[",§ = param1;
         addEventListener(Event.CHANGE,this.§ !r§);
         addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      public function initialize() : void
      {
         this.§[",§.§]!c§.addEventListener(KeyboardEvent.KEY_DOWN,this.§;4§);
         this.§[",§.§]!c§.addEventListener(KeyboardEvent.KEY_UP,this.§9!5§);
         this.§[",§.§7I§.addEventListener(MouseEvent.MOUSE_UP,this.§9!H§);
         this.§[",§.§7I§.addEventListener(MouseEvent.MOUSE_DOWN,this.§?!J§);
         this.§[",§.§7I§.addEventListener(MouseEvent.MOUSE_MOVE,this.§;"#§);
         this.§[",§.§7I§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         this.§[",§.§]!c§.addEventListener(§8"1§.ROTATE,this.§3!C§);
         this.§[",§.§]!c§.addEventListener(§8"1§.DELETE_OBJECT,this.§6a§);
         this.§[",§.§]!c§.addEventListener(§8"1§.DUPLICATE_OBJECT,this.§'!I§);
         this.§[",§.§]!c§.addEventListener("close_popups",this.§1!V§);
         this.§[",§.§<" §.addEventListener(§8"1§.§["<§,this.§[!o§);
         this.§[",§.§^"9§.addEventListener(§0"9§.§[!M§,this.§var §);
         this.§!" § = this.§[",§.§]!c§.§!!=§().§8!`§();
         this.§!" §.addEventListener(§8"1§.CANCEL,this.§>!d§);
         this.§!" §.addEventListener(§8"1§.§--§,this.§[!$§);
      }
      
      private function §var §(param1:Event) : void
      {
         this.§[",§.§]!c§.§!!=§().§8!`§().§,!1§();
      }
      
      private function §1!V§(param1:Event) : void
      {
         this.§7!#§.close();
         this.§7!#§ = null;
      }
      
      private function §>!d§(param1:§8"1§) : void
      {
         this.§]!`§(false);
      }
      
      private function § !r§(param1:Event) : void
      {
         if(!this.§`!o§)
         {
            this.§`!o§ = true;
            this.§[",§.§=!P§.§3O§();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         if(this.§`!o§)
         {
            this.§`!o§ = false;
            this.§[",§.§<" §.§"!§();
         }
      }
      
      private function §[!o§(param1:Event) : void
      {
         this.§,!'§();
      }
      
      private function §3!C§(param1:Event) : void
      {
         this.§2`§(-§>>§);
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc4_:§[i§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Point = null;
         if(!§0!s§.§ "!§.§ p§())
         {
            return;
         }
         var _loc2_:int = param1.delta;
         var _loc3_:Number = §3!+§.§2"8§;
         this.§[",§.§;o§.camera.zoom(_loc2_);
         if(_loc2_ > 0)
         {
            _loc5_ = (_loc4_ = this.§[",§.§;o§.camera).§<!W§;
            if(_loc4_)
            {
               _loc6_ = _loc4_.getCenter();
               _loc7_ = new Point();
               if(this.§51§() == 0)
               {
                  _loc8_ = this.§!!d§.x - _loc6_.x;
                  _loc9_ = this.§!!d§.y - _loc6_.y;
                  _loc7_.x = this.§!!d§.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = this.§!!d§.y - _loc3_ / _loc5_ * _loc9_;
                  this.§[",§.§]!c§.§8"-§(this.§>1§.x,this.§>1§.y);
               }
               else
               {
                  _loc8_ = ((_loc10_ = this.§<"&§()).x - _loc6_.x) / 1.3;
                  _loc9_ = (_loc10_.y - _loc6_.y) / 1.3;
                  _loc7_.x = _loc10_.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = _loc10_.y - _loc3_ / _loc5_ * _loc9_;
                  _loc11_ = this.§[",§.§<" §.§`"<§(_loc10_.x,_loc10_.y);
                  this.§[",§.§]!c§.§8"-§(_loc11_.x,_loc11_.y);
               }
               _loc4_.§';§(_loc7_);
            }
         }
      }
      
      private function §[!$§(param1:§8"1§) : void
      {
         var _loc3_:Bitmap = null;
         var _loc4_:Bitmap = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Object = null;
         §^k§.playSound("Sound_PlaceBlock");
         var _loc2_:§"!i§ = this.§!" §.§"8§();
         if(_loc2_.§=" §)
         {
            this.§7!#§ = new Popup(§#! §.§5!;§.Views.PopupView_ItemLocked[0],this.§[",§.§]!c§.§!!=§());
            this.§7!#§.open();
            _loc3_ = _loc2_.§1N§() as Bitmap;
            _loc4_ = new Bitmap(_loc3_.bitmapData);
            _loc5_ = this.§7!#§.getItemByName("MovieClip_UnlockItem").mClip;
            _loc4_.x = _loc5_.width / 2 - _loc4_.width / 2;
            _loc4_.y = _loc5_.height / 2 - _loc4_.height / 2 - 45;
            _loc5_.addChild(_loc4_);
         }
         else if(_loc6_ = this.§?o§(_loc2_))
         {
            this.§[",§.§]!c§.§<^§(this.§<!>§);
            this.§<!>§.addEventListener(MouseEvent.MOUSE_UP,this.§9!H§);
         }
      }
      
      private function §9!H§(param1:Event) : void
      {
         if(this.§=k§)
         {
            this.§=k§ = null;
            return;
         }
         if(this.§<!>§.mouseEnabled)
         {
            this.§7p§();
            this.§5!B§();
         }
      }
      
      private function §?!J§(param1:MouseEvent) : void
      {
         if(this.§[",§.§]!c§.§0&§)
         {
            return;
         }
         if(this.§=k§)
         {
            return;
         }
         var _loc2_:§"!k§ = §"!k§.§2"5§(this.§[",§.§<" §.§2!f§(this.§>1§));
         if(this.§!0§.indexOf(_loc2_) > -1)
         {
            if(this.§-!i§ || this.§5!+§ || this.§!!c§)
            {
               this.§6",§(_loc2_);
            }
         }
         else if(_loc2_ != null)
         {
            this.§3`§(_loc2_,this.§-!i§);
         }
         if(_loc2_ != null && !(this.§-!i§ || this.§5!+§ || this.§!!c§))
         {
            this.§-Z§();
         }
         else if(!_loc2_ && (this.§-!i§ || this.§5!+§ || this.§!!c§))
         {
            this.§#!S§();
         }
         else if(!_loc2_ && !this.§<p§)
         {
            this.§,!'§();
            this.§2!z§ = this.§!!d§.clone();
         }
      }
      
      private function §;"#§(param1:Event) : void
      {
         var _loc2_:Point = null;
         var _loc3_:int = 0;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(this.§=k§)
         {
            _loc2_ = this.§=k§.subtract(this.§>1§);
            if(_loc2_.length > §7!C§)
            {
               dispatchEvent(new Event(Event.CHANGE));
               if(Math.abs(_loc2_.x) > Math.abs(_loc2_.y))
               {
                  _loc3_ = _loc2_.x < 0 ? -1 : 1;
                  if(this.§>1§.y > this.§+!"§().y)
                  {
                     _loc3_ *= -1;
                  }
               }
               else
               {
                  _loc3_ = _loc2_.y < 0 ? 1 : -1;
                  if(this.§>1§.x > this.§+!"§().x)
                  {
                     _loc3_ *= -1;
                  }
               }
               this.§=k§ = this.§>1§.clone();
               this.§2`§(§>>§ * _loc3_);
            }
         }
         else if(this.§2!z§)
         {
            if(§0!s§.§ "!§.§ p§())
            {
               _loc5_ = (_loc4_ = this.§[",§.§;o§.camera.getCenter()).x + (this.§2!z§.x - this.§!!d§.x);
               _loc6_ = _loc4_.y + (this.§2!z§.y - this.§!!d§.y);
               this.§[",§.§;o§.camera.§0M§(_loc5_,_loc6_);
            }
            else
            {
               this.§2!z§ = null;
            }
         }
      }
      
      private function §;4§(param1:KeyboardEvent) : void
      {
         if(this.§51§() == 0)
         {
            if(param1.keyCode == Keyboard.UP && this.§>?§.y != -1)
            {
               this.§>?§.y = -1;
               this.§%"<§.y = 0;
            }
            else if(param1.keyCode == Keyboard.DOWN && this.§>?§.y != 1)
            {
               this.§>?§.y = 1;
               this.§%"<§.y = 0;
            }
            else if(param1.keyCode == Keyboard.LEFT && this.§>?§.x != -1)
            {
               this.§>?§.x = -1;
               this.§%"<§.x = 0;
            }
            else if(param1.keyCode == Keyboard.RIGHT && this.§>?§.x != 1)
            {
               this.§>?§.x = 1;
               this.§%"<§.x = 0;
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§!!c§ = true;
               break;
            case Keyboard.SHIFT:
               this.§-!i§ = true;
               break;
            case Keyboard.CONTROL:
               this.§5!+§ = true;
               break;
            case Keyboard.UP:
               this.§``§ = Math.min(this.§``§,-§`!=§);
               break;
            case Keyboard.DOWN:
               this.§``§ = Math.max(this.§``§,§`!=§);
               break;
            case Keyboard.LEFT:
               this.§;q§ = Math.min(this.§;q§,-§`!=§);
               break;
            case Keyboard.RIGHT:
               this.§;q§ = Math.max(this.§;q§,§`!=§);
               break;
            case Keyboard.DELETE:
               this.§]!`§();
               break;
            case Keyboard.PAGE_UP:
               this.§#",§(1);
               break;
            case Keyboard.PAGE_DOWN:
               this.§#",§(-1);
               break;
            case Keyboard.C:
               this.§[9§();
               break;
            case Keyboard.V:
               this.§`!4§();
               break;
            case Keyboard.D:
               this.§'!I§();
               break;
            case Keyboard.J:
               §+!2§.§"D§(this.§!0§,this.§[",§.§<" §.§9!8§.objects);
               break;
            case Keyboard.E:
               this.§2`§(§>>§);
               break;
            case Keyboard.R:
               this.§2`§(-§>>§);
         }
      }
      
      private function §#",§(param1:int) : void
      {
         var _loc2_:§"!k§ = null;
         var _loc3_:§60§ = null;
         for each(_loc2_ in this.§!0§)
         {
            _loc2_.§-+§(param1);
            _loc3_ = this.§[",§.§<" §.§9!8§.§2![§.getObjectWithID(_loc2_.uniqueID);
            (this.§[",§.§<" §.§9!8§.§2![§ as § a§).§%!L§(_loc3_,param1);
         }
      }
      
      private function §9!5§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.UP && this.§>?§.y == -1)
         {
            this.§>?§.y = 0;
         }
         else if(param1.keyCode == Keyboard.DOWN && this.§>?§.y == 1)
         {
            this.§>?§.y = 0;
         }
         else if(param1.keyCode == Keyboard.LEFT && this.§>?§.x == -1)
         {
            this.§>?§.x = 0;
         }
         else if(param1.keyCode == Keyboard.RIGHT && this.§>?§.x == 1)
         {
            this.§>?§.x = 0;
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§!!c§ = false;
               break;
            case Keyboard.SHIFT:
               this.§-!i§ = false;
               break;
            case Keyboard.CONTROL:
               this.§5!+§ = false;
               break;
            case 38:
               this.§``§ = Math.max(0,this.§``§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 40:
               this.§``§ = Math.min(0,this.§``§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 37:
               this.§;q§ = Math.max(0,this.§;q§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 39:
               this.§;q§ = Math.min(0,this.§;q§);
               dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §6a§(param1:Event) : void
      {
         this.§]!`§();
      }
      
      private function §'!I§(param1:Event = null) : void
      {
         this.§[9§();
         this.§`!4§();
      }
      
      public function get §>1§() : Point
      {
         return this.§[",§.§7I§.§>1§;
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§&"'§(false);
         var _loc2_:Point = this.§[",§.§<" §.§9!8§.screenToBox2D(this.§[",§.§7I§.§>1§.x,this.§[",§.§7I§.§>1§.y);
         this.§[h§.x = _loc2_.x;
         this.§[h§.y = _loc2_.y;
         var _loc3_:int = this.§!0§.length - 1;
         while(_loc3_ >= 0)
         {
            if(!§0!s§.§ "!§.§in§(this.§!0§[_loc3_]))
            {
               this.§6",§(this.§!0§[_loc3_]);
            }
            _loc3_--;
         }
         if(this.§>?§.length > 0)
         {
            _loc4_ = 0.001;
            _loc5_ = 0.5;
            _loc6_ = this.§[",§.§;o§.camera.getCenter();
            this.§%"<§.x = Math.min(_loc5_,this.§%"<§.x + _loc4_ * param1);
            this.§%"<§.y = Math.min(_loc5_,this.§%"<§.y + _loc4_ * param1);
            _loc7_ = _loc6_.x + this.§%"<§.x * this.§>?§.x * param1;
            _loc8_ = _loc6_.y + this.§%"<§.y * this.§>?§.y * param1;
            this.§[",§.§;o§.camera.§0M§(_loc7_,_loc8_);
         }
         else
         {
            this.§%"<§.x = 0;
            this.§%"<§.y = 0;
         }
         if(Math.abs(this.§;q§) > 0 || Math.abs(this.§``§) > 0)
         {
            if(Math.abs(this.§;q§) < §0c§)
            {
               this.§;q§ *= Math.pow(§@!§,param1);
            }
            if(Math.abs(this.§``§) < §0c§)
            {
               this.§``§ *= Math.pow(§@!§,param1);
            }
            this.§,!0§(this.§;q§ * param1,this.§``§ * param1);
         }
         if(this.§<p§)
         {
            this.§&6§();
         }
         this.§?!V§();
      }
      
      public function activate() : void
      {
         this.§5!+§ = false;
         this.§-!i§ = false;
         this.§!!c§ = false;
         this.§[",§.§]!c§.§!!=§().§8!`§().§,!1§();
      }
      
      public function §2N§(param1:Class) : void
      {
      }
      
      public function get §!!d§() : Point
      {
         return this.§[h§;
      }
      
      public function §^"'§() : Boolean
      {
         return this.§0C§ != null;
      }
      
      public function §94§() : Boolean
      {
         return this.§=k§ != null;
      }
      
      public function §#_§() : Boolean
      {
         return false;
      }
      
      public function §^!J§() : Boolean
      {
         return this.§<p§;
      }
      
      public function §]!`§(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:§"!k§ = null;
         if(this.§?"$§().length > 0)
         {
            _loc2_ = !param1;
            for each(_loc3_ in this.§?"$§())
            {
               if(!_loc2_)
               {
                  _loc2_ = true;
                  this.§[",§.§=!P§.§3O§();
               }
               if(_loc3_.getObject() is §60§)
               {
                  this.§[",§.§<" §.removeObject(_loc3_.getObject() as §60§);
               }
               else if(_loc3_.getObject() is §,!f§)
               {
                  this.§[",§.§<" §.§2W§(_loc3_.getObject() as §,!f§);
               }
            }
            this.§,!'§();
         }
      }
      
      public function §>!x§() : void
      {
         this.§,!'§();
      }
      
      public function §`!9§(param1:String) : Boolean
      {
         return false;
      }
      
      public function §&"'§(param1:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:§"!k§ = null;
         var _loc8_:Boolean = false;
         var _loc2_:§+!?§ = this.§[",§.§]!c§.§?F§.getItemByName("ContextMenu") as §+!?§;
         if(this.§51§() == 0 || this.§-!i§ || this.§5!+§ || this.§!!c§ || this.§^!J§() || this.§^"'§() || this.§94§())
         {
            if(_loc2_.§;!c§)
            {
               _loc2_.setVisibility(false);
            }
         }
         else if(!_loc2_.§;!c§)
         {
            _loc2_.setVisibility(true);
         }
         if(this.§51§() > 0)
         {
            _loc6_ = this.§+!"§();
            _loc2_.x = _loc6_.x;
            _loc2_.y = _loc6_.y;
         }
         var _loc3_:§;!Z§ = this.§[",§.§]!c§.§?F§.getItemByName("Rotate") as §;!Z§;
         var _loc4_:§;!Z§ = this.§[",§.§]!c§.§?F§.getItemByName("Duplicate") as §;!Z§;
         var _loc5_:§;!Z§ = this.§[",§.§]!c§.§?F§.getItemByName("Delete") as §;!Z§;
         _loc3_.setVisibility(false);
         _loc4_.setVisibility(false);
         _loc5_.setVisibility(false);
         if(this.§51§() > 0)
         {
            for each(_loc7_ in this.§?"$§())
            {
               if(!_loc7_.§?"9§())
               {
                  if(§0!s§.§ "!§.§in§(_loc7_))
                  {
                     _loc3_.setVisibility(!_loc7_.§&!d§());
                     _loc8_ = (AngryBirdsFP11.§`!j§ as §#§).§ "1§(_loc7_.getName());
                     _loc4_.setVisibility(§0!s§.§ "!§.§7!F§(_loc7_.getName()) && !_loc7_.§1"&§() && _loc8_);
                     _loc5_.setVisibility(§0!s§.§ "!§.§]!I§(_loc7_));
                  }
               }
            }
         }
      }
      
      public function §3`§(param1:§"!k§, param2:Boolean) : void
      {
         if(!§0!s§.§ "!§.§in§(param1))
         {
            return;
         }
         if(!param2)
         {
            this.§,!'§();
         }
         if(this.§!0§.indexOf(param1) > -1)
         {
            return;
         }
         if(param1.isGround())
         {
            return;
         }
         param1.§>l§(true);
         this.§!0§.push(param1);
      }
      
      public function §6",§(param1:§"!k§) : void
      {
         if(this.§!0§.indexOf(param1) > -1)
         {
            this.§!0§.splice(this.§!0§.indexOf(param1),1);
            param1.§>l§(false);
         }
      }
      
      public function §,!'§() : void
      {
         var _loc1_:§"!k§ = null;
         this.§=k§ = null;
         for each(_loc1_ in this.§!0§)
         {
            _loc1_.§>l§(false);
         }
         if(this.§!0§.length > 0)
         {
            this.§[",§.§<" §.§"!§();
         }
         this.§!0§ = new Vector.<§"!k§>();
      }
      
      public function §51§() : int
      {
         return this.§!0§.length;
      }
      
      public function §+!"§() : Point
      {
         var _loc1_:b2Vec2 = this.§<"&§();
         return this.§[",§.§<" §.§`"<§(_loc1_.x,_loc1_.y);
      }
      
      public function §<"&§() : b2Vec2
      {
         var _loc2_:Rectangle = null;
         var _loc1_:b2Vec2 = new b2Vec2();
         if(this.§!0§.length > 0)
         {
            _loc2_ = this.§6!&§(this.§!0§);
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
      
      public function §?"$§() : Vector.<§"!k§>
      {
         return this.§!0§;
      }
      
      protected function §6!&§(param1:Vector.<§"!k§>, param2:Number = 0) : Rectangle
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
      
      protected function §6!#§(param1:§"!k§) : void
      {
         var _loc2_:Rectangle = this.§[",§.§;o§.camera.§3!Y§();
         _loc2_.y = §8g§;
         _loc2_.height += §[i§.§6!>§;
         var _loc3_:Rectangle = param1.§#1§();
         _loc2_.right -= _loc3_.right;
         _loc2_.bottom -= _loc3_.top;
         _loc2_.left -= _loc3_.left;
         _loc2_.top -= _loc3_.bottom;
         if(param1.isTexture())
         {
            _loc2_.y += _loc3_.height;
         }
         if(param1.§&d§())
         {
            _loc2_.left = 10;
         }
         if(param1.§&!d§())
         {
            _loc2_.y += 0.1;
            _loc2_.right = 15;
         }
         if(param1.§?"9§())
         {
            _loc2_.right = 0;
            _loc2_.left = 0;
            _loc2_.y += 0.5;
         }
         var _loc4_:b2Vec2 = param1.§2d§();
         var _loc5_:Number = Math.max(_loc2_.x,Math.min(_loc2_.x + _loc2_.width,_loc4_.x));
         var _loc6_:Number = Math.min(_loc2_.y,Math.max(_loc2_.height + _loc2_.y,_loc4_.y));
         param1.setPosition(new b2Vec2(_loc5_,_loc6_));
      }
      
      private function §-Z§() : void
      {
         var _loc1_:§"!k§ = null;
         this.§<p§ = true;
         this.§?"8§ = this.§!!d§.x;
         this.§]1§ = this.§!!d§.y;
         for each(_loc1_ in this.§!0§)
         {
            this.§^A§(_loc1_);
         }
      }
      
      private function §7p§() : void
      {
         if(this.§?!h§)
         {
            this.§[",§.§]!c§.§<^§(null);
            this.§?!h§.§;!L§();
            this.§?!h§ = null;
         }
         if(this.§<p§)
         {
            §^k§.playSound("Sound_PlaceBlock");
         }
         this.§2!z§ = null;
         this.§?!h§ = null;
         this.§<p§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §#!S§() : void
      {
         this.§0C§ = new Point();
         this.§0C§.x = this.§!!d§.x;
         this.§0C§.y = this.§!!d§.y;
      }
      
      private function §5!B§() : void
      {
         this.§0C§ = null;
         this.§?!V§();
      }
      
      public function §2`§(param1:Number) : void
      {
         var _loc5_:§"!k§ = null;
         var _loc6_:Number = NaN;
         var _loc3_:b2Vec2 = this.§<"&§();
         var _loc4_:Point = new Point(_loc3_.x,_loc3_.y);
         for each(_loc5_ in this.§!0§)
         {
            _loc5_.§?<§(param1,_loc4_);
            _loc6_ = _loc5_.§1o§();
            this.§6!#§(_loc5_);
         }
      }
      
      public function §?o§(param1:§"!i§) : Object
      {
         var _loc3_:Object = null;
         if(!§0!s§.§ "!§.§in§())
         {
            return null;
         }
         if(this.§?!h§)
         {
            this.§?!h§.§;!L§();
            this.§]!`§();
         }
         this.§?!h§ = param1;
         dispatchEvent(new Event(Event.CHANGE));
         var _loc2_:String = this.§?!h§.getItemName();
         if(_loc2_.indexOf("BACKGROUND_") == 0)
         {
            §]S§.§ "!§.§<" §.§9!8§.background.resetLevelBackground(_loc2_);
            §]S§.§ "!§.§<" §.§"!§();
         }
         else
         {
            _loc3_ = this.§[",§.§<" §.§@"§(_loc2_,this.§!!d§.x,this.§!!d§.y,false);
         }
         if(_loc3_)
         {
            this.§3`§(§"!k§.§2"5§(_loc3_),false);
            this.§?!h§.§'!;§();
            this.§-Z§();
         }
         return _loc3_;
      }
      
      public function §?!V§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc12_:§"!k§ = null;
         if(this.§0C§ == null)
         {
            this.§[",§.§]!c§.§#!a§(null);
            return;
         }
         if(this.§0C§.y <= this.§!!d§.y)
         {
            _loc1_ = this.§0C§.y;
            _loc2_ = this.§!!d§.y;
         }
         else
         {
            _loc1_ = this.§!!d§.y;
            _loc2_ = this.§0C§.y;
         }
         if(this.§0C§.x <= this.§!!d§.x)
         {
            _loc3_ = this.§0C§.x;
            _loc4_ = this.§!!d§.x;
         }
         else
         {
            _loc3_ = this.§!!d§.x;
            _loc4_ = this.§0C§.x;
         }
         var _loc5_:Point = new Point(_loc3_,_loc1_);
         var _loc6_:Point = new Point(_loc4_,_loc2_);
         var _loc7_:Array = (_loc7_ = this.§[",§.§<" §.§9!8§.objects.getObjectsWithinBoundingBox(_loc5_,_loc6_)).concat(this.§[",§.§<" §.§9!8§.slingshot.getObjectsWithinBoundingBox(_loc5_,_loc6_));
         var _loc8_:Number = 0;
         _loc8_ = 0;
         while(_loc8_ < this.§!0§.length)
         {
            if(_loc7_.indexOf(this.§!0§[_loc8_].getObject()) == -1)
            {
               this.§6",§(this.§!0§[_loc8_]);
            }
            _loc8_++;
         }
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            _loc12_ = §"!k§.§2"5§(_loc7_[_loc8_]);
            if(this.§!0§.indexOf(_loc12_) == -1 && §0!s§.§ "!§.§in§(_loc12_))
            {
               this.§3`§(§"!k§.§2"5§(_loc7_[_loc8_]),true);
            }
            _loc8_++;
         }
         var _loc9_:Point = this.§[",§.§<" §.§9!8§.§!C§(_loc5_.x,_loc5_.y);
         var _loc10_:Point = this.§[",§.§<" §.§9!8§.§!C§(_loc6_.x,_loc6_.y);
         var _loc11_:Rectangle = new Rectangle(_loc9_.x,_loc9_.y,_loc10_.x - _loc9_.x,_loc10_.y - _loc9_.y);
         this.§[",§.§]!c§.§#!a§(_loc11_);
      }
      
      public function §[9§() : void
      {
         var _loc1_:§"!k§ = null;
         this.§4A§ = new Vector.<§"!k§>();
         for each(_loc1_ in this.§!0§)
         {
            if(!_loc1_.§1"&§())
            {
               this.§4A§.push(_loc1_);
            }
         }
      }
      
      public function §`!4§() : Vector.<§"!k§>
      {
         var _loc6_:§"!k§ = null;
         var _loc7_:§"!k§ = null;
         var _loc1_:Vector.<§"!k§> = new Vector.<§"!k§>();
         if(!§0!s§.§ "!§.§7!F§())
         {
            return _loc1_;
         }
         if(!this.§4A§ || this.§4A§.length == 0)
         {
            return _loc1_;
         }
         this.§[",§.§=!P§.§3O§();
         var _loc2_:Rectangle = this.§6!&§(this.§4A§);
         var _loc3_:Point = new Point(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
         var _loc4_:Number = this.§!!d§.x - _loc3_.x;
         var _loc5_:Number = this.§!!d§.y - _loc3_.y;
         this.§,!'§();
         for each(_loc6_ in this.§4A§)
         {
            if(!(_loc6_.isTexture() && this.§[",§.§<" §.§,3§() < 1))
            {
               if(!(_loc6_.§&!d§() && this.§[",§.§<" §.§>"7§() < 1))
               {
                  if(!_loc6_.§?"9§())
                  {
                     if((_loc6_.§2!A§() || _loc6_.§&d§()) && this.§[",§.§<" §.§"3§() < 1)
                     {
                        this.§[",§.§<" §.dispatchEvent(new §8"1§(§8"1§.§-!Z§));
                        break;
                     }
                     _loc7_ = this.§[",§.§<" §.§[#§(_loc6_,_loc4_,_loc5_);
                     _loc1_.push(_loc7_);
                     this.§3`§(_loc7_,true);
                  }
               }
            }
         }
         this.§-Z§();
         return _loc1_;
      }
      
      private function §,d§(param1:§"!k§) : b2Transform
      {
         return this.§;C§[param1];
      }
      
      private function §^A§(param1:§"!k§) : void
      {
         this.§5"&§(param1);
         this.§;C§[param1] = param1.§#!p§();
      }
      
      private function §5"&§(param1:§"!k§) : void
      {
         var _loc2_:b2Transform = null;
         if(§[f§.§@"3§().§ ",§(§[f§.§9!k§))
         {
            _loc2_ = param1.§#!p§();
            _loc2_.position.x = this.§!&§(_loc2_.position.x);
            _loc2_.position.y = this.§!&§(_loc2_.position.y);
            if(this.§,"§ == 100)
            {
               _loc2_.position.x += param1.§#1§().width / 2 * 100 % this.§,"§ / 100;
               _loc2_.position.y -= param1.§#1§().height / 2 * 100 % this.§,"§ / 100;
            }
         }
         param1.§%!x§(_loc2_);
      }
      
      private function §!&§(param1:Number) : Number
      {
         return Math.round(param1 * 100 - param1 * 100 % this.§,"§) / 100;
      }
      
      private function §&6§() : void
      {
         var _loc2_:§"!k§ = null;
         var _loc3_:Point = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this.§!0§)
         {
            if(§0!s§.§ "!§.§in§(_loc2_))
            {
               _loc1_ = true;
               break;
            }
         }
         if(!_loc1_)
         {
            this.§7p§();
         }
         else
         {
            _loc3_ = this.§!!d§;
            _loc4_ = _loc3_.x - this.§?"8§;
            _loc5_ = _loc3_.y - this.§]1§;
            if(this.§<p§)
            {
               this.§>w§(_loc4_,_loc5_);
            }
         }
      }
      
      public function §,!0§(param1:Number, param2:Number) : void
      {
         if(this.§<p§)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§!0§.length)
         {
            _loc3_++;
         }
         param1 = (param1 == 0 ? 0 : param1 / Math.abs(param1)) * this.§,"§;
         param2 = (param2 == 0 ? 0 : param2 / Math.abs(param2)) * this.§,"§;
      }
      
      public function §>w§(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc7_:int = 0;
         var _loc8_:§"!k§ = null;
         var _loc9_:b2Vec2 = null;
         if(this.§!0§.length == 0)
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
         while(_loc7_ < this.§!0§.length)
         {
            _loc8_ = this.§!0§[_loc7_];
            _loc9_ = this.§,d§(_loc8_).position.Copy();
            _loc9_.x += param1;
            _loc9_.y += param2;
            this.§'"8§(_loc8_,_loc9_);
            _loc7_++;
         }
      }
      
      private function §'"8§(param1:§"!k§, param2:b2Vec2, param3:Boolean = true) : void
      {
         param1.setPosition(param2);
         if(param3)
         {
            this.§5"&§(param1);
         }
         this.§6!#§(param1);
         §+!2§.§#!C§(param1.getObject() as §60§,this.§[",§.§<" §.§9!8§.objects);
      }
      
      private function § !§(param1:Object) : Boolean
      {
         var _loc2_:§"!k§ = null;
         for each(_loc2_ in this.§!0§)
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
