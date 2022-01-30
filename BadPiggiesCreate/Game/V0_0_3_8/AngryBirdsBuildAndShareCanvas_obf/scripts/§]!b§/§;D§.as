package §]!b§
{
   import §!D§.§ use§;
   import §!D§.§3!6§;
   import §%!&§.§;!x§;
   import §%!&§.§^M§;
   import §%h§.§5!K§;
   import §%h§.§5X§;
   import §,m§.§?"%§;
   import §,m§.§[n§;
   import §-D§.Popup;
   import §4!7§.§]!1§;
   import §9e§.§"!e§;
   import §9v§.b2Transform;
   import §9v§.b2Vec2;
   import §>0§.§'L§;
   import §>0§.§=D§;
   import §?!V§.§"a§;
   import §@!H§.§&"2§;
   import §@!H§.§;!L§;
   import §@!H§.Inventory;
   import §]!l§.§-"&§;
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
   import §true§.§5!f§;
   import §true§.§>"-§;
   
   public class §;D§ extends EventDispatcher implements §9h§
   {
      
      private static const §6b§:Number = §5X§.§,!m§ / 100;
      
      private static const §&!,§:Number = §6b§ * 30;
      
      private static const §9q§:Number = 1.005;
      
      private static const §2q§:Number = -0.15;
      
      private static const §+7§:Number = 360 / 8;
      
      private static const §?`§:int = 20;
       
      
      private var §^!Z§:Vector.<§>"-§>;
      
      private var §<&§:Point;
      
      private var §5""§:Point;
      
      private var §"`§:Boolean = false;
      
      private var §`"§:Dictionary;
      
      private var §0+§:Vector.<§>"-§>;
      
      private var §0!§:Number;
      
      private var §0"1§:Number;
      
      private var §]D§:Number = 0;
      
      private var §48§:Number = 0;
      
      private var §+!d§:Boolean = false;
      
      private var §@"1§:Boolean = false;
      
      private var §<!Q§:Boolean = false;
      
      private var §&7§:Point;
      
      private var §7!R§:§;!L§;
      
      private var §-E§:Point;
      
      private var § !O§:Point;
      
      private var §1!R§:Point;
      
      private var §7T§:Boolean = false;
      
      private var §0!s§:§&"2§;
      
      private var §8![§:Inventory;
      
      private var §7+§:Popup;
      
      private var §8O§:§]?§;
      
      private var §,!l§:int = 50;
      
      public function §;D§(param1:§]?§)
      {
         this.§^!Z§ = new Vector.<§>"-§>();
         this.§5""§ = new Point();
         this.§`"§ = new Dictionary();
         this.§ !O§ = new Point();
         this.§1!R§ = new Point();
         this.§0!s§ = new §&"2§();
         super();
         this.§8O§ = param1;
         addEventListener(Event.CHANGE,this.§]Z§);
         addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      public function initialize() : void
      {
         this.§8O§.§%H§.addEventListener(KeyboardEvent.KEY_DOWN,this.§6!c§);
         this.§8O§.§%H§.addEventListener(KeyboardEvent.KEY_UP,this.§^"'§);
         this.§8O§.§!!@§.addEventListener(MouseEvent.MOUSE_UP,this.§6"#§);
         this.§8O§.§!!@§.addEventListener(MouseEvent.MOUSE_DOWN,this.§7"5§);
         this.§8O§.§!!@§.addEventListener(MouseEvent.MOUSE_MOVE,this.§4R§);
         this.§8O§.§!!@§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         this.§8O§.§%H§.addEventListener(§?"%§.START_ROTATE,this.§^!"§);
         this.§8O§.§%H§.addEventListener(§?"%§.DELETE_OBJECT,this.§+!D§);
         this.§8O§.§%H§.addEventListener(§?"%§.DUPLICATE_OBJECT,this.§"0§);
         this.§8O§.§%H§.addEventListener("close_popups",this.§@3§);
         this.§8O§.§4+§.addEventListener(§?"%§.§]"-§,this.§ !d§);
         this.§8O§.§7!>§.addEventListener(§[n§.§&V§,this.§&!e§);
         this.§8![§ = this.§8O§.§%H§.§<!9§().§1!u§();
         this.§8![§.addEventListener(§?"%§.CANCEL,this.§8>§);
         this.§8![§.addEventListener(§?"%§.§"!H§,this.§"",§);
      }
      
      private function §&!e§(param1:Event) : void
      {
         this.§8O§.§%H§.§<!9§().§1!u§().§"!j§();
      }
      
      private function §@3§(param1:Event) : void
      {
         this.§7+§.close();
         this.§7+§ = null;
      }
      
      private function §8>§(param1:§?"%§) : void
      {
         this.§,!H§(false);
      }
      
      private function §]Z§(param1:Event) : void
      {
         if(!this.§7T§)
         {
            this.§7T§ = true;
            this.§8O§.§&!m§.§^!=§();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         if(this.§7T§)
         {
            this.§7T§ = false;
            this.§8O§.§4+§.§#u§();
         }
      }
      
      private function § !d§(param1:Event) : void
      {
         this.§while§();
      }
      
      private function §^!"§(param1:Event) : void
      {
         this.§<&§ = this.§=!t§.clone();
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc4_:§=D§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Point = null;
         var _loc2_:int = param1.delta;
         var _loc3_:Number = §'L§.§9K§;
         this.§8O§.§6!A§.camera.zoom(_loc2_);
         if(_loc2_ > 0)
         {
            _loc5_ = (_loc4_ = this.§8O§.§6!A§.camera).§,!V§;
            if(_loc4_)
            {
               _loc6_ = _loc4_.getCenter();
               _loc7_ = new Point();
               if(this.§=m§() == 0)
               {
                  _loc8_ = this.§9!S§.x - _loc6_.x;
                  _loc9_ = this.§9!S§.y - _loc6_.y;
                  _loc7_.x = this.§9!S§.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = this.§9!S§.y - _loc3_ / _loc5_ * _loc9_;
                  this.§8O§.§%H§.§#"1§(this.§=!t§.x,this.§=!t§.y);
               }
               else
               {
                  _loc8_ = ((_loc10_ = this.§9!b§()).x - _loc6_.x) / 1.3;
                  _loc9_ = (_loc10_.y - _loc6_.y) / 1.3;
                  _loc7_.x = _loc10_.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = _loc10_.y - _loc3_ / _loc5_ * _loc9_;
                  _loc11_ = this.§8O§.§4+§.§&#§(_loc10_.x,_loc10_.y);
                  this.§8O§.§%H§.§#"1§(_loc11_.x,_loc11_.y);
               }
               _loc4_.§[!'§(_loc7_);
            }
         }
      }
      
      private function §"",§(param1:§?"%§) : void
      {
         var _loc3_:Bitmap = null;
         var _loc4_:Bitmap = null;
         var _loc5_:MovieClip = null;
         var _loc2_:§;!L§ = this.§8![§.§case §();
         if(_loc2_.§'z§)
         {
            this.§7+§ = new Popup(§"a§.§-!g§.Views.PopupView_ItemLocked[0],this.§8O§.§%H§.§<!9§());
            this.§7+§.open();
            _loc3_ = _loc2_.§;!-§() as Bitmap;
            _loc4_ = new Bitmap(_loc3_.bitmapData);
            _loc5_ = this.§7+§.getItemByName("MovieClip_UnlockItem").mClip;
            _loc4_.x = _loc5_.width / 2 - _loc4_.width / 2;
            _loc4_.y = _loc5_.height / 2 - _loc4_.height / 2 - 45;
            _loc5_.addChild(_loc4_);
         }
         else if(this.§8O§.§4+§.§!J§() > 0)
         {
            this.§9"%§(_loc2_);
            this.§8O§.§%H§.§^y§(this.§0!s§);
            this.§0!s§.addEventListener(MouseEvent.MOUSE_UP,this.§6"#§);
         }
      }
      
      private function §6"#§(param1:Event) : void
      {
         if(this.§<&§)
         {
            this.§<&§ = null;
            return;
         }
         if(this.§0!s§.mouseEnabled)
         {
            this.§&""§();
            this.§5!V§();
         }
      }
      
      private function §7"5§(param1:MouseEvent) : void
      {
         if(this.§<&§)
         {
            return;
         }
         var _loc2_:§>"-§ = §>"-§.§0V§(this.§8O§.§4+§.§5m§(this.§=!t§));
         if(!§]!1§.§9j§.§5]§(_loc2_))
         {
            _loc2_ = null;
         }
         if(this.§^!Z§.indexOf(_loc2_) > -1)
         {
            if(this.§+!d§ || this.§<!Q§ || this.§@"1§)
            {
               this.§[_§(_loc2_);
            }
         }
         else if(_loc2_ != null)
         {
            this.§50§(_loc2_,this.§+!d§);
         }
         if(_loc2_ != null && !(this.§+!d§ || this.§<!Q§ || this.§@"1§))
         {
            this.§5<§();
         }
         else
         {
            §§push(!_loc2_);
            if(!_loc2_)
            {
               §§pop();
               if(this.§+!d§ || this.§<!Q§ || this.§@"1§)
               {
                  this.§9@§();
               }
               else if(!_loc2_ && !this.§"`§)
               {
                  this.§while§();
                  this.§-E§ = this.§9!S§.clone();
               }
               §§goto(addr49);
            }
            §§goto(addr121);
         }
         addr49:
      }
      
      private function §4R§(param1:Event) : void
      {
         var _loc2_:Point = null;
         var _loc3_:int = 0;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(this.§<&§)
         {
            _loc2_ = this.§<&§.subtract(this.§=!t§);
            if(_loc2_.length > §?`§)
            {
               dispatchEvent(new Event(Event.CHANGE));
               if(Math.abs(_loc2_.x) > Math.abs(_loc2_.y))
               {
                  _loc3_ = _loc2_.x < 0 ? -1 : 1;
                  if(this.§=!t§.y > this.§'8§().y)
                  {
                     _loc3_ *= -1;
                  }
               }
               else
               {
                  _loc3_ = _loc2_.y < 0 ? 1 : -1;
                  if(this.§=!t§.x > this.§'8§().x)
                  {
                     _loc3_ *= -1;
                  }
               }
               this.§<&§ = this.§=!t§.clone();
               this.§"#§(§+7§ * _loc3_);
            }
         }
         else if(this.§-E§)
         {
            if(§]!1§.§9j§.canPan())
            {
               _loc5_ = (_loc4_ = this.§8O§.§6!A§.camera.getCenter()).x + (this.§-E§.x - this.§9!S§.x);
               _loc6_ = _loc4_.y + (this.§-E§.y - this.§9!S§.y);
               this.§8O§.§6!A§.camera.§4"#§(_loc5_,_loc6_);
            }
            else
            {
               this.§-E§ = null;
            }
         }
      }
      
      private function §6!c§(param1:KeyboardEvent) : void
      {
         if(this.§=m§() == 0)
         {
            if(param1.keyCode == Keyboard.UP && this.§ !O§.y != -1)
            {
               this.§ !O§.y = -1;
               this.§1!R§.y = 0;
            }
            else if(param1.keyCode == Keyboard.DOWN && this.§ !O§.y != 1)
            {
               this.§ !O§.y = 1;
               this.§1!R§.y = 0;
            }
            else if(param1.keyCode == Keyboard.LEFT && this.§ !O§.x != -1)
            {
               this.§ !O§.x = -1;
               this.§1!R§.x = 0;
            }
            else if(param1.keyCode == Keyboard.RIGHT && this.§ !O§.x != 1)
            {
               this.§ !O§.x = 1;
               this.§1!R§.x = 0;
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§@"1§ = true;
               break;
            case Keyboard.SHIFT:
               this.§+!d§ = true;
               break;
            case Keyboard.CONTROL:
               this.§<!Q§ = true;
               break;
            case Keyboard.UP:
               this.§48§ = Math.min(this.§48§,-§6b§);
               break;
            case Keyboard.DOWN:
               this.§48§ = Math.max(this.§48§,§6b§);
               break;
            case Keyboard.LEFT:
               this.§]D§ = Math.min(this.§]D§,-§6b§);
               break;
            case Keyboard.RIGHT:
               this.§]D§ = Math.max(this.§]D§,§6b§);
               break;
            case Keyboard.DELETE:
               this.§,!H§();
               break;
            case Keyboard.PAGE_UP:
               this.§1;§(1);
               break;
            case Keyboard.PAGE_DOWN:
               this.§1;§(-1);
               break;
            case Keyboard.C:
               this.§>`§();
               break;
            case Keyboard.V:
               this.§+!x§();
               break;
            case Keyboard.D:
               this.§"0§();
               break;
            case Keyboard.J:
               §5!f§.§#!6§(this.§^!Z§,this.§8O§.§4+§.§]!D§.objects);
               break;
            case Keyboard.E:
               this.§"#§(§+7§);
               break;
            case Keyboard.R:
               this.§"#§(-§+7§);
         }
      }
      
      private function §1;§(param1:int) : void
      {
         var _loc2_:§>"-§ = null;
         var _loc3_:§;!x§ = null;
         for each(_loc2_ in this.§^!Z§)
         {
            _loc2_.§2"'§(param1);
            _loc3_ = this.§8O§.§4+§.§]!D§.§2!H§.getObjectWithID(_loc2_.uniqueID);
            (this.§8O§.§4+§.§]!D§.§2!H§ as §^M§).§7!a§(_loc3_,param1);
         }
      }
      
      private function §^"'§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.UP && this.§ !O§.y == -1)
         {
            this.§ !O§.y = 0;
         }
         else if(param1.keyCode == Keyboard.DOWN && this.§ !O§.y == 1)
         {
            this.§ !O§.y = 0;
         }
         else if(param1.keyCode == Keyboard.LEFT && this.§ !O§.x == -1)
         {
            this.§ !O§.x = 0;
         }
         else if(param1.keyCode == Keyboard.RIGHT && this.§ !O§.x == 1)
         {
            this.§ !O§.x = 0;
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§@"1§ = false;
               break;
            case Keyboard.SHIFT:
               this.§+!d§ = false;
               break;
            case Keyboard.CONTROL:
               this.§<!Q§ = false;
               break;
            case 38:
               this.§48§ = Math.max(0,this.§48§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 40:
               this.§48§ = Math.min(0,this.§48§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 37:
               this.§]D§ = Math.max(0,this.§]D§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 39:
               this.§]D§ = Math.min(0,this.§]D§);
               dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §+!D§(param1:Event) : void
      {
         this.§,!H§();
      }
      
      private function §"0§(param1:Event = null) : void
      {
         this.§>`§();
         this.§+!x§();
      }
      
      public function get §=!t§() : Point
      {
         return this.§8O§.§!!@§.§=!t§;
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§9!F§(false);
         var _loc2_:Point = this.§8O§.§4+§.§]!D§.screenToBox2D(this.§8O§.§!!@§.§=!t§.x,this.§8O§.§!!@§.§=!t§.y);
         this.§5""§.x = _loc2_.x;
         this.§5""§.y = _loc2_.y;
         var _loc3_:int = this.§^!Z§.length - 1;
         while(_loc3_ >= 0)
         {
            if(!§]!1§.§9j§.§5]§(this.§^!Z§[_loc3_]))
            {
               this.§[_§(this.§^!Z§[_loc3_]);
            }
            _loc3_--;
         }
         if(this.§ !O§.length > 0)
         {
            _loc4_ = 0.001;
            _loc5_ = 0.5;
            _loc6_ = this.§8O§.§6!A§.camera.getCenter();
            this.§1!R§.x = Math.min(_loc5_,this.§1!R§.x + _loc4_ * param1);
            this.§1!R§.y = Math.min(_loc5_,this.§1!R§.y + _loc4_ * param1);
            _loc7_ = _loc6_.x + this.§1!R§.x * this.§ !O§.x * param1;
            _loc8_ = _loc6_.y + this.§1!R§.y * this.§ !O§.y * param1;
            this.§8O§.§6!A§.camera.§4"#§(_loc7_,_loc8_);
         }
         else
         {
            this.§1!R§.x = 0;
            this.§1!R§.y = 0;
         }
         if(Math.abs(this.§]D§) > 0 || Math.abs(this.§48§) > 0)
         {
            if(Math.abs(this.§]D§) < §&!,§)
            {
               this.§]D§ *= Math.pow(§9q§,param1);
            }
            if(Math.abs(this.§48§) < §&!,§)
            {
               this.§48§ *= Math.pow(§9q§,param1);
            }
            this.§3!T§(this.§]D§ * param1,this.§48§ * param1);
         }
         if(this.§"`§)
         {
            this.§6!6§();
         }
         this.§'!r§();
      }
      
      public function activate() : void
      {
         this.§<!Q§ = false;
         this.§+!d§ = false;
         this.§@"1§ = false;
         this.§8O§.§%H§.§<!9§().§1!u§().§"!j§();
      }
      
      public function §#a§(param1:Class) : void
      {
      }
      
      public function get §9!S§() : Point
      {
         return this.§5""§;
      }
      
      public function § "0§() : Boolean
      {
         return this.§&7§ != null;
      }
      
      public function §2r§() : Boolean
      {
         return this.§<&§ != null;
      }
      
      public function §?!!§() : Boolean
      {
         return false;
      }
      
      public function § i§() : Boolean
      {
         return this.§"`§;
      }
      
      public function §,!H§(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:§>"-§ = null;
         if(this.§=p§().length > 0)
         {
            _loc2_ = !param1;
            for each(_loc3_ in this.§=p§())
            {
               if(!_loc2_)
               {
                  _loc2_ = true;
                  this.§8O§.§&!m§.§^!=§();
               }
               if(_loc3_.getObject() is §;!x§)
               {
                  this.§8O§.§4+§.removeObject(_loc3_.getObject() as §;!x§);
               }
               else if(_loc3_.getObject() is §5!K§)
               {
                  this.§8O§.§4+§.§=!9§(_loc3_.getObject() as §5!K§);
               }
            }
            this.§while§();
         }
      }
      
      public function §5!9§() : void
      {
         this.§while§();
      }
      
      public function §%G§(param1:String) : Boolean
      {
         return false;
      }
      
      public function §9!F§(param1:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:§>"-§ = null;
         var _loc8_:Boolean = false;
         var _loc2_:§ use§ = this.§8O§.§%H§.§1!j§.getItemByName("ContextMenu") as § use§;
         if(this.§=m§() == 0 || this.§+!d§ || this.§<!Q§ || this.§@"1§ || this.§ i§() || this.§ "0§() || this.§2r§())
         {
            if(_loc2_.§-s§)
            {
               _loc2_.setVisibility(false);
            }
         }
         else if(!_loc2_.§-s§)
         {
            _loc2_.setVisibility(true);
         }
         if(this.§=m§() > 0)
         {
            _loc6_ = this.§'8§();
            _loc2_.x = _loc6_.x;
            _loc2_.y = _loc6_.y;
         }
         var _loc3_:§3!6§ = this.§8O§.§%H§.§1!j§.getItemByName("Rotate") as §3!6§;
         var _loc4_:§3!6§ = this.§8O§.§%H§.§1!j§.getItemByName("Duplicate") as §3!6§;
         var _loc5_:§3!6§ = this.§8O§.§%H§.§1!j§.getItemByName("Delete") as §3!6§;
         _loc3_.setVisibility(false);
         _loc4_.setVisibility(false);
         _loc5_.setVisibility(false);
         if(this.§=m§() > 0)
         {
            for each(_loc7_ in this.§=p§())
            {
               if(!_loc7_.§,!-§())
               {
                  if(§]!1§.§9j§.§5]§(_loc7_))
                  {
                     _loc3_.setVisibility(!_loc7_.§6!p§());
                     _loc8_ = (AngryBirdsFP11.§8!v§ as §"!e§).§`B§(_loc7_.getName());
                     _loc4_.setVisibility(§]!1§.§9j§.§]=§(_loc7_.getName()) && !_loc7_.§[!,§() && _loc8_);
                     _loc5_.setVisibility(§]!1§.§9j§.§%k§(_loc7_));
                  }
               }
            }
         }
      }
      
      public function §50§(param1:§>"-§, param2:Boolean) : void
      {
         if(!§]!1§.§9j§.§5]§(param1))
         {
            return;
         }
         if(!param2)
         {
            this.§while§();
         }
         if(this.§^!Z§.indexOf(param1) > -1)
         {
            return;
         }
         if(param1.isGround())
         {
            return;
         }
         param1.§2"+§(true);
         this.§^!Z§.push(param1);
      }
      
      public function §[_§(param1:§>"-§) : void
      {
         if(this.§^!Z§.indexOf(param1) > -1)
         {
            this.§^!Z§.splice(this.§^!Z§.indexOf(param1),1);
            param1.§2"+§(false);
         }
      }
      
      public function §while§() : void
      {
         var _loc1_:§>"-§ = null;
         this.§<&§ = null;
         for each(_loc1_ in this.§^!Z§)
         {
            _loc1_.§2"+§(false);
         }
         this.§^!Z§ = new Vector.<§>"-§>();
      }
      
      public function §=m§() : int
      {
         return this.§^!Z§.length;
      }
      
      public function §'8§() : Point
      {
         var _loc1_:b2Vec2 = this.§9!b§();
         return this.§8O§.§4+§.§&#§(_loc1_.x,_loc1_.y);
      }
      
      public function §9!b§() : b2Vec2
      {
         var _loc2_:Rectangle = null;
         var _loc1_:b2Vec2 = new b2Vec2();
         if(this.§^!Z§.length > 0)
         {
            _loc2_ = this.§+!Y§(this.§^!Z§);
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
      
      public function §=p§() : Vector.<§>"-§>
      {
         return this.§^!Z§;
      }
      
      protected function §+!Y§(param1:Vector.<§>"-§>, param2:Number = 0) : Rectangle
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
      
      protected function §47§(param1:§>"-§) : void
      {
         var _loc2_:Rectangle = this.§8O§.§6!A§.camera.§7;§();
         _loc2_.y = §2q§;
         _loc2_.height += §=D§.§2!N§;
         var _loc3_:Rectangle = param1.§>!Q§();
         _loc2_.right -= _loc3_.right;
         _loc2_.bottom -= _loc3_.top;
         _loc2_.left -= _loc3_.left;
         _loc2_.top -= _loc3_.bottom;
         if(param1.isTexture())
         {
            _loc2_.y += _loc3_.height;
         }
         if(param1.§+q§())
         {
            _loc2_.left = 10;
         }
         if(param1.§6!p§())
         {
            _loc2_.y += 0.1;
            _loc2_.right = 15;
         }
         if(param1.§,!-§())
         {
            _loc2_.right = 0;
            _loc2_.left = 0;
            _loc2_.y += 0.5;
         }
         var _loc4_:b2Vec2 = param1.§8K§();
         var _loc5_:Number = Math.max(_loc2_.x,Math.min(_loc2_.x + _loc2_.width,_loc4_.x));
         var _loc6_:Number = Math.min(_loc2_.y,Math.max(_loc2_.height + _loc2_.y,_loc4_.y));
         param1.setPosition(new b2Vec2(_loc5_,_loc6_));
      }
      
      private function §5<§() : void
      {
         var _loc1_:§>"-§ = null;
         this.§"`§ = true;
         this.§0!§ = this.§9!S§.x;
         this.§0"1§ = this.§9!S§.y;
         for each(_loc1_ in this.§^!Z§)
         {
            this.§,C§(_loc1_);
         }
      }
      
      private function §&""§() : void
      {
         if(this.§7!R§)
         {
            this.§8O§.§%H§.§^y§(null);
            this.§7!R§.§,i§();
            this.§7!R§ = null;
         }
         this.§-E§ = null;
         this.§7!R§ = null;
         this.§"`§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §9@§() : void
      {
         this.§&7§ = new Point();
         this.§&7§.x = this.§9!S§.x;
         this.§&7§.y = this.§9!S§.y;
      }
      
      private function §5!V§() : void
      {
         this.§&7§ = null;
         this.§'!r§();
      }
      
      public function §"#§(param1:Number) : void
      {
         var _loc5_:§>"-§ = null;
         var _loc6_:Number = NaN;
         var _loc3_:b2Vec2 = this.§9!b§();
         var _loc4_:Point = new Point(_loc3_.x,_loc3_.y);
         for each(_loc5_ in this.§^!Z§)
         {
            _loc5_.§7!L§(param1,_loc4_);
            _loc6_ = _loc5_.§8!1§();
            this.§47§(_loc5_);
         }
      }
      
      public function §9"%§(param1:§;!L§) : void
      {
         if(!§]!1§.§9j§.§5]§())
         {
            return;
         }
         if(this.§7!R§)
         {
            this.§7!R§.§,i§();
            this.§,!H§();
         }
         this.§7!R§ = param1;
         dispatchEvent(new Event(Event.CHANGE));
         var _loc2_:Object = this.§8O§.§4+§.§?"-§(this.§7!R§.getItemName(),this.§9!S§.x,this.§9!S§.y);
         if(_loc2_)
         {
            this.§50§(§>"-§.§0V§(_loc2_),false);
            this.§7!R§.§&5§();
            this.§5<§();
         }
      }
      
      public function §'!r§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc12_:§>"-§ = null;
         if(this.§&7§ == null)
         {
            this.§8O§.§%H§.§6!§(null);
            return;
         }
         if(this.§&7§.y <= this.§9!S§.y)
         {
            _loc1_ = this.§&7§.y;
            _loc2_ = this.§9!S§.y;
         }
         else
         {
            _loc1_ = this.§9!S§.y;
            _loc2_ = this.§&7§.y;
         }
         if(this.§&7§.x <= this.§9!S§.x)
         {
            _loc3_ = this.§&7§.x;
            _loc4_ = this.§9!S§.x;
         }
         else
         {
            _loc3_ = this.§9!S§.x;
            _loc4_ = this.§&7§.x;
         }
         var _loc5_:Point = new Point(_loc3_,_loc1_);
         var _loc6_:Point = new Point(_loc4_,_loc2_);
         var _loc7_:Array = (_loc7_ = this.§8O§.§4+§.§]!D§.objects.getObjectsWithinBoundingBox(_loc5_,_loc6_)).concat(this.§8O§.§4+§.§]!D§.slingshot.getObjectsWithinBoundingBox(_loc5_,_loc6_));
         var _loc8_:Number = 0;
         _loc8_ = 0;
         while(_loc8_ < this.§^!Z§.length)
         {
            if(_loc7_.indexOf(this.§^!Z§[_loc8_].getObject()) == -1)
            {
               this.§[_§(this.§^!Z§[_loc8_]);
            }
            _loc8_++;
         }
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            _loc12_ = §>"-§.§0V§(_loc7_[_loc8_]);
            if(this.§^!Z§.indexOf(_loc12_) == -1 && §]!1§.§9j§.§5]§(_loc12_))
            {
               this.§50§(§>"-§.§0V§(_loc7_[_loc8_]),true);
            }
            _loc8_++;
         }
         var _loc9_:Point = this.§8O§.§4+§.§]!D§.§'W§(_loc5_.x,_loc5_.y);
         var _loc10_:Point = this.§8O§.§4+§.§]!D§.§'W§(_loc6_.x,_loc6_.y);
         var _loc11_:Rectangle = new Rectangle(_loc9_.x,_loc9_.y,_loc10_.x - _loc9_.x,_loc10_.y - _loc9_.y);
         this.§8O§.§%H§.§6!§(_loc11_);
      }
      
      public function §>`§() : void
      {
         var _loc1_:§>"-§ = null;
         this.§0+§ = new Vector.<§>"-§>();
         for each(_loc1_ in this.§^!Z§)
         {
            if(!_loc1_.§[!,§())
            {
               this.§0+§.push(_loc1_);
            }
         }
      }
      
      public function §+!x§() : Vector.<§>"-§>
      {
         var _loc6_:§>"-§ = null;
         var _loc7_:§>"-§ = null;
         var _loc1_:Vector.<§>"-§> = new Vector.<§>"-§>();
         if(!§]!1§.§9j§.§]=§())
         {
            return _loc1_;
         }
         if(!this.§0+§ || this.§0+§.length == 0)
         {
            return _loc1_;
         }
         this.§8O§.§&!m§.§^!=§();
         var _loc2_:Rectangle = this.§+!Y§(this.§0+§);
         var _loc3_:Point = new Point(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
         var _loc4_:Number = this.§9!S§.x - _loc3_.x;
         var _loc5_:Number = this.§9!S§.y - _loc3_.y;
         this.§while§();
         for each(_loc6_ in this.§0+§)
         {
            if(!(_loc6_.isTexture() && this.§8O§.§4+§.§-Y§() < 1))
            {
               if(!(_loc6_.§6!p§() && this.§8O§.§4+§.§>1§() < 1))
               {
                  if(!_loc6_.§,!-§())
                  {
                     if(!((_loc6_.§;!M§() || _loc6_.§+q§()) && this.§8O§.§4+§.§!J§() < 1))
                     {
                        _loc7_ = this.§8O§.§4+§.§+!y§(_loc6_,_loc4_,_loc5_);
                        _loc1_.push(_loc7_);
                        this.§50§(_loc7_,true);
                     }
                  }
               }
            }
         }
         this.§5<§();
         return _loc1_;
      }
      
      private function §+!?§(param1:§>"-§) : b2Transform
      {
         return this.§`"§[param1];
      }
      
      private function §,C§(param1:§>"-§) : void
      {
         this.§"!n§(param1);
         this.§`"§[param1] = param1.§;w§();
      }
      
      private function §"!n§(param1:§>"-§) : void
      {
         var _loc2_:b2Transform = null;
         if(§-"&§.§?!Q§().§3"#§(§-"&§.§ !A§))
         {
            _loc2_ = param1.§;w§();
            _loc2_.position.x = this.§<0§(_loc2_.position.x);
            _loc2_.position.y = this.§<0§(_loc2_.position.y);
         }
         param1.§4U§(_loc2_);
      }
      
      private function §<0§(param1:Number) : Number
      {
         return Math.round(param1 * 100 - param1 * 100 % this.§,!l§) / 100;
      }
      
      private function §6!6§() : void
      {
         var _loc1_:Point = this.§9!S§;
         var _loc2_:Number = _loc1_.x - this.§0!§;
         var _loc3_:Number = _loc1_.y - this.§0"1§;
         if(this.§"`§)
         {
            this.§7!X§(_loc2_,_loc3_);
         }
      }
      
      public function §3!T§(param1:Number, param2:Number) : void
      {
         if(this.§"`§)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§^!Z§.length)
         {
            _loc3_++;
         }
      }
      
      public function §7!X§(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc7_:int = 0;
         var _loc8_:§>"-§ = null;
         var _loc9_:b2Vec2 = null;
         if(this.§^!Z§.length == 0)
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
         while(_loc7_ < this.§^!Z§.length)
         {
            _loc8_ = this.§^!Z§[_loc7_];
            _loc9_ = this.§+!?§(_loc8_).position.Copy();
            _loc9_.x += param1;
            _loc9_.y += param2;
            this.§#7§(_loc8_,_loc9_);
            _loc7_++;
         }
      }
      
      private function §#7§(param1:§>"-§, param2:b2Vec2) : void
      {
         param1.setPosition(param2);
         this.§"!n§(param1);
         this.§47§(param1);
         §5!f§.§>=§(param1.getObject() as §;!x§,this.§8O§.§4+§.§]!D§.objects);
      }
      
      private function §+v§(param1:Object) : Boolean
      {
         var _loc2_:§>"-§ = null;
         for each(_loc2_ in this.§^!Z§)
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
