package §2!5§
{
   import § ""§.§%,§;
   import § ""§.§>"3§;
   import §"!2§.§>9§;
   import §&!!§.Popup;
   import §+L§.b2Transform;
   import §+L§.b2Vec2;
   import §1!v§.§!,§;
   import §1!v§.§@%§;
   import §1"3§.§6!W§;
   import §1"3§.§`"0§;
   import §9!l§.§@O§;
   import §9!l§.Inventory;
   import §9!l§.§`%§;
   import §;!§.§8V§;
   import §;!§.§?!]§;
   import §;!A§.§2v§;
   import §;!A§.§;!u§;
   import §;"$§.§8!O§;
   import §<!p§.§]"7§;
   import §@!P§.§#!§;
   import §@!P§.§?"%§;
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
   
   public class §-!c§ extends EventDispatcher implements §4!]§
   {
      
      private static const §>u§:Number = §@%§.§?k§ / 100;
      
      private static const §;"#§:Number = §>u§ * 30;
      
      private static const §`n§:Number = 1.005;
      
      private static const §%!z§:Number = -0.15;
      
      private static const §%Q§:Number = 360 / 8;
      
      private static const §@L§:int = 20;
       
      
      private var §,!K§:Vector.<§?"%§>;
      
      private var §>!^§:Point;
      
      private var §-!N§:Point;
      
      private var §5"§:Boolean = false;
      
      private var §8h§:Dictionary;
      
      private var § "8§:Vector.<§?"%§>;
      
      private var §#!k§:Number;
      
      private var §]+§:Number;
      
      private var §<!f§:Number = 0;
      
      private var §%U§:Number = 0;
      
      private var §@^§:Boolean = false;
      
      private var §<R§:Boolean = false;
      
      private var §=!k§:Boolean = false;
      
      private var §86§:Point;
      
      private var §"!x§:§@O§;
      
      private var §>[§:Point;
      
      private var §#!L§:Point;
      
      private var §%!2§:Point;
      
      private var §!$§:Boolean = false;
      
      private var §9!M§:§`%§;
      
      private var §#g§:Inventory;
      
      private var §0S§:Popup;
      
      private var §!^§:§0!X§;
      
      private var §6!e§:int = 100;
      
      public function §-!c§(param1:§0!X§)
      {
         this.§,!K§ = new Vector.<§?"%§>();
         this.§-!N§ = new Point();
         this.§8h§ = new Dictionary();
         this.§#!L§ = new Point();
         this.§%!2§ = new Point();
         this.§9!M§ = new §`%§();
         super();
         this.§!^§ = param1;
         addEventListener(Event.CHANGE,this.§!!U§);
         addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      public function initialize() : void
      {
         this.§!^§.§!e§.addEventListener(KeyboardEvent.KEY_DOWN,this.§1!r§);
         this.§!^§.§!e§.addEventListener(KeyboardEvent.KEY_UP,this.§ ]§);
         this.§!^§.§&8§.addEventListener(MouseEvent.MOUSE_UP,this.§`Q§);
         this.§!^§.§&8§.addEventListener(MouseEvent.MOUSE_DOWN,this.§;!z§);
         this.§!^§.§&8§.addEventListener(MouseEvent.MOUSE_MOVE,this.§-!e§);
         this.§!^§.§&8§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         this.§!^§.§!e§.addEventListener(§8V§.START_ROTATE,this.§]!@§);
         this.§!^§.§!e§.addEventListener(§8V§.DELETE_OBJECT,this.§;Q§);
         this.§!^§.§!e§.addEventListener(§8V§.DUPLICATE_OBJECT,this.§"K§);
         this.§!^§.§!e§.addEventListener("close_popups",this.§1;§);
         this.§!^§.§@s§.addEventListener(§8V§.§["0§,this.§^!_§);
         this.§!^§.§="'§.addEventListener(§?!]§.§;"!§,this.§>C§);
         this.§#g§ = this.§!^§.§!e§.§<8§().§2!?§();
         this.§#g§.addEventListener(§8V§.CANCEL,this.§3!,§);
         this.§#g§.addEventListener(§8V§.§9t§,this.§5F§);
      }
      
      private function §>C§(param1:Event) : void
      {
         this.§!^§.§!e§.§<8§().§2!?§().§4"§();
      }
      
      private function §1;§(param1:Event) : void
      {
         this.§0S§.close();
         this.§0S§ = null;
      }
      
      private function §3!,§(param1:§8V§) : void
      {
         this.§ V§(false);
      }
      
      private function §!!U§(param1:Event) : void
      {
         if(!this.§!$§)
         {
            this.§!$§ = true;
            this.§!^§.§;d§.§^3§();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         if(this.§!$§)
         {
            this.§!$§ = false;
            this.§!^§.§@s§.§3!%§();
         }
      }
      
      private function §^!_§(param1:Event) : void
      {
         this.§?!,§();
      }
      
      private function §]!@§(param1:Event) : void
      {
         this.§>!^§ = this.§'!g§.clone();
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc4_:§6!W§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Point = null;
         if(!§=,§.§if §.§=o§())
         {
            return;
         }
         var _loc2_:int = param1.delta;
         var _loc3_:Number = §`"0§.§;!G§;
         this.§!^§.§,A§.camera.zoom(_loc2_);
         if(_loc2_ > 0)
         {
            _loc5_ = (_loc4_ = this.§!^§.§,A§.camera).§^!C§;
            if(_loc4_)
            {
               _loc6_ = _loc4_.getCenter();
               _loc7_ = new Point();
               if(this.§"L§() == 0)
               {
                  _loc8_ = this.§`!l§.x - _loc6_.x;
                  _loc9_ = this.§`!l§.y - _loc6_.y;
                  _loc7_.x = this.§`!l§.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = this.§`!l§.y - _loc3_ / _loc5_ * _loc9_;
                  this.§!^§.§!e§.§%!&§(this.§'!g§.x,this.§'!g§.y);
               }
               else
               {
                  _loc8_ = ((_loc10_ = this.§4!`§()).x - _loc6_.x) / 1.3;
                  _loc9_ = (_loc10_.y - _loc6_.y) / 1.3;
                  _loc7_.x = _loc10_.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = _loc10_.y - _loc3_ / _loc5_ * _loc9_;
                  _loc11_ = this.§!^§.§@s§.§<!I§(_loc10_.x,_loc10_.y);
                  this.§!^§.§!e§.§%!&§(_loc11_.x,_loc11_.y);
               }
               _loc4_.§;!_§(_loc7_);
            }
         }
      }
      
      private function §5F§(param1:§8V§) : void
      {
         var _loc3_:Bitmap = null;
         var _loc4_:Bitmap = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Object = null;
         var _loc2_:§@O§ = this.§#g§.§1!#§();
         if(_loc2_.§[!?§)
         {
            this.§0S§ = new Popup(§8!O§.§'!J§.Views.PopupView_ItemLocked[0],this.§!^§.§!e§.§<8§());
            this.§0S§.open();
            _loc3_ = _loc2_.§^G§() as Bitmap;
            _loc4_ = new Bitmap(_loc3_.bitmapData);
            _loc5_ = this.§0S§.getItemByName("MovieClip_UnlockItem").mClip;
            _loc4_.x = _loc5_.width / 2 - _loc4_.width / 2;
            _loc4_.y = _loc5_.height / 2 - _loc4_.height / 2 - 45;
            _loc5_.addChild(_loc4_);
         }
         else if(_loc6_ = this.§@,§(_loc2_))
         {
            this.§!^§.§!e§.§0!n§(this.§9!M§);
            this.§9!M§.addEventListener(MouseEvent.MOUSE_UP,this.§`Q§);
         }
      }
      
      private function §`Q§(param1:Event) : void
      {
         if(this.§>!^§)
         {
            this.§>!^§ = null;
            return;
         }
         if(this.§9!M§.mouseEnabled)
         {
            this.§<D§();
            this.§0!7§();
         }
      }
      
      private function §;!z§(param1:MouseEvent) : void
      {
         if(this.§>!^§)
         {
            return;
         }
         var _loc2_:§?"%§ = §?"%§.§3! §(this.§!^§.§@s§.§1!l§(this.§'!g§));
         if(this.§,!K§.indexOf(_loc2_) > -1)
         {
            if(this.§@^§ || this.§=!k§ || this.§<R§)
            {
               this.§@M§(_loc2_);
            }
         }
         else if(_loc2_ != null)
         {
            this.§;?§(_loc2_,this.§@^§);
         }
         if(_loc2_ != null && !(this.§@^§ || this.§=!k§ || this.§<R§))
         {
            this.§"!w§();
         }
         else if(!_loc2_ && (this.§@^§ || this.§=!k§ || this.§<R§))
         {
            this.§2! §();
         }
         else if(!_loc2_ && !this.§5"§)
         {
            this.§?!,§();
            this.§>[§ = this.§`!l§.clone();
         }
      }
      
      private function §-!e§(param1:Event) : void
      {
         var _loc2_:Point = null;
         var _loc3_:int = 0;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(this.§>!^§)
         {
            _loc2_ = this.§>!^§.subtract(this.§'!g§);
            if(_loc2_.length > §@L§)
            {
               dispatchEvent(new Event(Event.CHANGE));
               if(Math.abs(_loc2_.x) > Math.abs(_loc2_.y))
               {
                  _loc3_ = _loc2_.x < 0 ? -1 : 1;
                  if(this.§'!g§.y > this.§93§().y)
                  {
                     _loc3_ *= -1;
                  }
               }
               else
               {
                  _loc3_ = _loc2_.y < 0 ? 1 : -1;
                  if(this.§'!g§.x > this.§93§().x)
                  {
                     _loc3_ *= -1;
                  }
               }
               this.§>!^§ = this.§'!g§.clone();
               this.§=9§(§%Q§ * _loc3_);
            }
         }
         else if(this.§>[§)
         {
            if(§=,§.§if §.§=o§())
            {
               _loc5_ = (_loc4_ = this.§!^§.§,A§.camera.getCenter()).x + (this.§>[§.x - this.§`!l§.x);
               _loc6_ = _loc4_.y + (this.§>[§.y - this.§`!l§.y);
               this.§!^§.§,A§.camera.§["-§(_loc5_,_loc6_);
            }
            else
            {
               this.§>[§ = null;
            }
         }
      }
      
      private function §1!r§(param1:KeyboardEvent) : void
      {
         if(this.§"L§() == 0)
         {
            if(param1.keyCode == Keyboard.UP && this.§#!L§.y != -1)
            {
               this.§#!L§.y = -1;
               this.§%!2§.y = 0;
            }
            else if(param1.keyCode == Keyboard.DOWN && this.§#!L§.y != 1)
            {
               this.§#!L§.y = 1;
               this.§%!2§.y = 0;
            }
            else if(param1.keyCode == Keyboard.LEFT && this.§#!L§.x != -1)
            {
               this.§#!L§.x = -1;
               this.§%!2§.x = 0;
            }
            else if(param1.keyCode == Keyboard.RIGHT && this.§#!L§.x != 1)
            {
               this.§#!L§.x = 1;
               this.§%!2§.x = 0;
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§<R§ = true;
               break;
            case Keyboard.SHIFT:
               this.§@^§ = true;
               break;
            case Keyboard.CONTROL:
               this.§=!k§ = true;
               break;
            case Keyboard.UP:
               this.§%U§ = Math.min(this.§%U§,-§>u§);
               break;
            case Keyboard.DOWN:
               this.§%U§ = Math.max(this.§%U§,§>u§);
               break;
            case Keyboard.LEFT:
               this.§<!f§ = Math.min(this.§<!f§,-§>u§);
               break;
            case Keyboard.RIGHT:
               this.§<!f§ = Math.max(this.§<!f§,§>u§);
               break;
            case Keyboard.DELETE:
               this.§ V§();
               break;
            case Keyboard.PAGE_UP:
               this.§ !#§(1);
               break;
            case Keyboard.PAGE_DOWN:
               this.§ !#§(-1);
               break;
            case Keyboard.C:
               this.§2T§();
               break;
            case Keyboard.V:
               this.§,!c§();
               break;
            case Keyboard.D:
               this.§"K§();
               break;
            case Keyboard.J:
               §#!§.§@!0§(this.§,!K§,this.§!^§.§@s§.§'4§.objects);
               break;
            case Keyboard.E:
               this.§=9§(§%Q§);
               break;
            case Keyboard.R:
               this.§=9§(-§%Q§);
         }
      }
      
      private function § !#§(param1:int) : void
      {
         var _loc2_:§?"%§ = null;
         var _loc3_:§%,§ = null;
         for each(_loc2_ in this.§,!K§)
         {
            _loc2_.§`!Q§(param1);
            _loc3_ = this.§!^§.§@s§.§'4§.§>"9§.getObjectWithID(_loc2_.uniqueID);
            (this.§!^§.§@s§.§'4§.§>"9§ as §>"3§).§5!$§(_loc3_,param1);
         }
      }
      
      private function § ]§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.UP && this.§#!L§.y == -1)
         {
            this.§#!L§.y = 0;
         }
         else if(param1.keyCode == Keyboard.DOWN && this.§#!L§.y == 1)
         {
            this.§#!L§.y = 0;
         }
         else if(param1.keyCode == Keyboard.LEFT && this.§#!L§.x == -1)
         {
            this.§#!L§.x = 0;
         }
         else if(param1.keyCode == Keyboard.RIGHT && this.§#!L§.x == 1)
         {
            this.§#!L§.x = 0;
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§<R§ = false;
               break;
            case Keyboard.SHIFT:
               this.§@^§ = false;
               break;
            case Keyboard.CONTROL:
               this.§=!k§ = false;
               break;
            case 38:
               this.§%U§ = Math.max(0,this.§%U§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 40:
               this.§%U§ = Math.min(0,this.§%U§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 37:
               this.§<!f§ = Math.max(0,this.§<!f§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 39:
               this.§<!f§ = Math.min(0,this.§<!f§);
               dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §;Q§(param1:Event) : void
      {
         this.§ V§();
      }
      
      private function §"K§(param1:Event = null) : void
      {
         this.§2T§();
         this.§,!c§();
      }
      
      public function get §'!g§() : Point
      {
         return this.§!^§.§&8§.§'!g§;
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§[r§(false);
         var _loc2_:Point = this.§!^§.§@s§.§'4§.screenToBox2D(this.§!^§.§&8§.§'!g§.x,this.§!^§.§&8§.§'!g§.y);
         this.§-!N§.x = _loc2_.x;
         this.§-!N§.y = _loc2_.y;
         var _loc3_:int = this.§,!K§.length - 1;
         while(_loc3_ >= 0)
         {
            if(!§=,§.§if §.§9'§(this.§,!K§[_loc3_]))
            {
               this.§@M§(this.§,!K§[_loc3_]);
            }
            _loc3_--;
         }
         if(this.§#!L§.length > 0)
         {
            _loc4_ = 0.001;
            _loc5_ = 0.5;
            _loc6_ = this.§!^§.§,A§.camera.getCenter();
            this.§%!2§.x = Math.min(_loc5_,this.§%!2§.x + _loc4_ * param1);
            this.§%!2§.y = Math.min(_loc5_,this.§%!2§.y + _loc4_ * param1);
            _loc7_ = _loc6_.x + this.§%!2§.x * this.§#!L§.x * param1;
            _loc8_ = _loc6_.y + this.§%!2§.y * this.§#!L§.y * param1;
            this.§!^§.§,A§.camera.§["-§(_loc7_,_loc8_);
         }
         else
         {
            this.§%!2§.x = 0;
            this.§%!2§.y = 0;
         }
         if(Math.abs(this.§<!f§) > 0 || Math.abs(this.§%U§) > 0)
         {
            if(Math.abs(this.§<!f§) < §;"#§)
            {
               this.§<!f§ *= Math.pow(§`n§,param1);
            }
            if(Math.abs(this.§%U§) < §;"#§)
            {
               this.§%U§ *= Math.pow(§`n§,param1);
            }
            this.§ !N§(this.§<!f§ * param1,this.§%U§ * param1);
         }
         if(this.§5"§)
         {
            this.§4I§();
         }
         this.§#!Y§();
      }
      
      public function activate() : void
      {
         this.§=!k§ = false;
         this.§@^§ = false;
         this.§<R§ = false;
         this.§!^§.§!e§.§<8§().§2!?§().§4"§();
      }
      
      public function §["'§(param1:Class) : void
      {
      }
      
      public function get §`!l§() : Point
      {
         return this.§-!N§;
      }
      
      public function §]D§() : Boolean
      {
         return this.§86§ != null;
      }
      
      public function §%!l§() : Boolean
      {
         return this.§>!^§ != null;
      }
      
      public function §9z§() : Boolean
      {
         return false;
      }
      
      public function §6!z§() : Boolean
      {
         return this.§5"§;
      }
      
      public function § V§(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:§?"%§ = null;
         if(this.§0x§().length > 0)
         {
            _loc2_ = !param1;
            for each(_loc3_ in this.§0x§())
            {
               if(!_loc2_)
               {
                  _loc2_ = true;
                  this.§!^§.§;d§.§^3§();
               }
               if(_loc3_.getObject() is §%,§)
               {
                  this.§!^§.§@s§.removeObject(_loc3_.getObject() as §%,§);
               }
               else if(_loc3_.getObject() is §!,§)
               {
                  this.§!^§.§@s§.§1!e§(_loc3_.getObject() as §!,§);
               }
            }
            this.§?!,§();
         }
      }
      
      public function §`-§() : void
      {
         this.§?!,§();
      }
      
      public function §4!>§(param1:String) : Boolean
      {
         return false;
      }
      
      public function §[r§(param1:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:§?"%§ = null;
         var _loc8_:Boolean = false;
         var _loc2_:§;!u§ = this.§!^§.§!e§.§%""§.getItemByName("ContextMenu") as §;!u§;
         if(this.§"L§() == 0 || this.§@^§ || this.§=!k§ || this.§<R§ || this.§6!z§() || this.§]D§() || this.§%!l§())
         {
            if(_loc2_.§<!&§)
            {
               _loc2_.setVisibility(false);
            }
         }
         else if(!_loc2_.§<!&§)
         {
            _loc2_.setVisibility(true);
         }
         if(this.§"L§() > 0)
         {
            _loc6_ = this.§93§();
            _loc2_.x = _loc6_.x;
            _loc2_.y = _loc6_.y;
         }
         var _loc3_:§2v§ = this.§!^§.§!e§.§%""§.getItemByName("Rotate") as §2v§;
         var _loc4_:§2v§ = this.§!^§.§!e§.§%""§.getItemByName("Duplicate") as §2v§;
         var _loc5_:§2v§ = this.§!^§.§!e§.§%""§.getItemByName("Delete") as §2v§;
         _loc3_.setVisibility(false);
         _loc4_.setVisibility(false);
         _loc5_.setVisibility(false);
         if(this.§"L§() > 0)
         {
            for each(_loc7_ in this.§0x§())
            {
               if(!_loc7_.§!"0§())
               {
                  if(§=,§.§if §.§9'§(_loc7_))
                  {
                     _loc3_.setVisibility(!_loc7_.§^!!§());
                     _loc8_ = (AngryBirdsFP11.§8!I§ as §>9§).§5j§(_loc7_.getName());
                     _loc4_.setVisibility(§=,§.§if §.§?!W§(_loc7_.getName()) && !_loc7_.§@g§() && _loc8_);
                     _loc5_.setVisibility(§=,§.§if §.§[h§(_loc7_));
                  }
               }
            }
         }
      }
      
      public function §;?§(param1:§?"%§, param2:Boolean) : void
      {
         if(!§=,§.§if §.§9'§(param1))
         {
            return;
         }
         if(!param2)
         {
            this.§?!,§();
         }
         if(this.§,!K§.indexOf(param1) > -1)
         {
            return;
         }
         if(param1.isGround())
         {
            return;
         }
         param1.§'_§(true);
         this.§,!K§.push(param1);
      }
      
      public function §@M§(param1:§?"%§) : void
      {
         if(this.§,!K§.indexOf(param1) > -1)
         {
            this.§,!K§.splice(this.§,!K§.indexOf(param1),1);
            param1.§'_§(false);
         }
      }
      
      public function §?!,§() : void
      {
         var _loc1_:§?"%§ = null;
         this.§>!^§ = null;
         for each(_loc1_ in this.§,!K§)
         {
            _loc1_.§'_§(false);
         }
         this.§,!K§ = new Vector.<§?"%§>();
      }
      
      public function §"L§() : int
      {
         return this.§,!K§.length;
      }
      
      public function §93§() : Point
      {
         var _loc1_:b2Vec2 = this.§4!`§();
         return this.§!^§.§@s§.§<!I§(_loc1_.x,_loc1_.y);
      }
      
      public function §4!`§() : b2Vec2
      {
         var _loc2_:Rectangle = null;
         var _loc1_:b2Vec2 = new b2Vec2();
         if(this.§,!K§.length > 0)
         {
            _loc2_ = this.§[!f§(this.§,!K§);
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
      
      public function §0x§() : Vector.<§?"%§>
      {
         return this.§,!K§;
      }
      
      protected function §[!f§(param1:Vector.<§?"%§>, param2:Number = 0) : Rectangle
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
      
      protected function §8!+§(param1:§?"%§) : void
      {
         var _loc2_:Rectangle = this.§!^§.§,A§.camera.§<!z§();
         _loc2_.y = §%!z§;
         _loc2_.height += §6!W§.§6%§;
         var _loc3_:Rectangle = param1.§[!V§();
         _loc2_.right -= _loc3_.right;
         _loc2_.bottom -= _loc3_.top;
         _loc2_.left -= _loc3_.left;
         _loc2_.top -= _loc3_.bottom;
         if(param1.isTexture())
         {
            _loc2_.y += _loc3_.height;
         }
         if(param1.§@!e§())
         {
            _loc2_.left = 10;
         }
         if(param1.§^!!§())
         {
            _loc2_.y += 0.1;
            _loc2_.right = 15;
         }
         if(param1.§!"0§())
         {
            _loc2_.right = 0;
            _loc2_.left = 0;
            _loc2_.y += 0.5;
         }
         var _loc4_:b2Vec2 = param1.§]>§();
         var _loc5_:Number = Math.max(_loc2_.x,Math.min(_loc2_.x + _loc2_.width,_loc4_.x));
         var _loc6_:Number = Math.min(_loc2_.y,Math.max(_loc2_.height + _loc2_.y,_loc4_.y));
         param1.setPosition(new b2Vec2(_loc5_,_loc6_));
      }
      
      private function §"!w§() : void
      {
         var _loc1_:§?"%§ = null;
         this.§5"§ = true;
         this.§#!k§ = this.§`!l§.x;
         this.§]+§ = this.§`!l§.y;
         for each(_loc1_ in this.§,!K§)
         {
            this.§71§(_loc1_);
         }
      }
      
      private function §<D§() : void
      {
         if(this.§"!x§)
         {
            this.§!^§.§!e§.§0!n§(null);
            this.§"!x§.§6"&§();
            this.§"!x§ = null;
         }
         this.§>[§ = null;
         this.§"!x§ = null;
         this.§5"§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §2! §() : void
      {
         this.§86§ = new Point();
         this.§86§.x = this.§`!l§.x;
         this.§86§.y = this.§`!l§.y;
      }
      
      private function §0!7§() : void
      {
         this.§86§ = null;
         this.§#!Y§();
      }
      
      public function §=9§(param1:Number) : void
      {
         var _loc5_:§?"%§ = null;
         var _loc6_:Number = NaN;
         var _loc3_:b2Vec2 = this.§4!`§();
         var _loc4_:Point = new Point(_loc3_.x,_loc3_.y);
         for each(_loc5_ in this.§,!K§)
         {
            _loc5_.§2_§(param1,_loc4_);
            _loc6_ = _loc5_.§;!k§();
            this.§8!+§(_loc5_);
         }
      }
      
      public function §@,§(param1:§@O§) : Object
      {
         var _loc3_:Object = null;
         if(!§=,§.§if §.§9'§())
         {
            return null;
         }
         if(this.§"!x§)
         {
            this.§"!x§.§6"&§();
            this.§ V§();
         }
         this.§"!x§ = param1;
         dispatchEvent(new Event(Event.CHANGE));
         var _loc2_:String = this.§"!x§.getItemName();
         if(_loc2_.indexOf("BACKGROUND_") == 0)
         {
            §0!X§.§if §.§@s§.§'4§.background.resetLevelBackground(_loc2_);
            §0!X§.§if §.§@s§.§3!%§();
         }
         else
         {
            _loc3_ = this.§!^§.§@s§.§""9§(_loc2_,this.§`!l§.x,this.§`!l§.y);
         }
         if(_loc3_)
         {
            this.§;?§(§?"%§.§3! §(_loc3_),false);
            this.§"!x§.§ !A§();
            this.§"!w§();
         }
         return _loc3_;
      }
      
      public function §#!Y§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc12_:§?"%§ = null;
         if(this.§86§ == null)
         {
            this.§!^§.§!e§.§^§(null);
            return;
         }
         if(this.§86§.y <= this.§`!l§.y)
         {
            _loc1_ = this.§86§.y;
            _loc2_ = this.§`!l§.y;
         }
         else
         {
            _loc1_ = this.§`!l§.y;
            _loc2_ = this.§86§.y;
         }
         if(this.§86§.x <= this.§`!l§.x)
         {
            _loc3_ = this.§86§.x;
            _loc4_ = this.§`!l§.x;
         }
         else
         {
            _loc3_ = this.§`!l§.x;
            _loc4_ = this.§86§.x;
         }
         var _loc5_:Point = new Point(_loc3_,_loc1_);
         var _loc6_:Point = new Point(_loc4_,_loc2_);
         var _loc7_:Array = (_loc7_ = this.§!^§.§@s§.§'4§.objects.getObjectsWithinBoundingBox(_loc5_,_loc6_)).concat(this.§!^§.§@s§.§'4§.slingshot.getObjectsWithinBoundingBox(_loc5_,_loc6_));
         var _loc8_:Number = 0;
         _loc8_ = 0;
         while(_loc8_ < this.§,!K§.length)
         {
            if(_loc7_.indexOf(this.§,!K§[_loc8_].getObject()) == -1)
            {
               this.§@M§(this.§,!K§[_loc8_]);
            }
            _loc8_++;
         }
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            _loc12_ = §?"%§.§3! §(_loc7_[_loc8_]);
            if(this.§,!K§.indexOf(_loc12_) == -1 && §=,§.§if §.§9'§(_loc12_))
            {
               this.§;?§(§?"%§.§3! §(_loc7_[_loc8_]),true);
            }
            _loc8_++;
         }
         var _loc9_:Point = this.§!^§.§@s§.§'4§.§for§(_loc5_.x,_loc5_.y);
         var _loc10_:Point = this.§!^§.§@s§.§'4§.§for§(_loc6_.x,_loc6_.y);
         var _loc11_:Rectangle = new Rectangle(_loc9_.x,_loc9_.y,_loc10_.x - _loc9_.x,_loc10_.y - _loc9_.y);
         this.§!^§.§!e§.§^§(_loc11_);
      }
      
      public function §2T§() : void
      {
         var _loc1_:§?"%§ = null;
         this.§ "8§ = new Vector.<§?"%§>();
         for each(_loc1_ in this.§,!K§)
         {
            if(!_loc1_.§@g§())
            {
               this.§ "8§.push(_loc1_);
            }
         }
      }
      
      public function §,!c§() : Vector.<§?"%§>
      {
         var _loc6_:§?"%§ = null;
         var _loc7_:§?"%§ = null;
         var _loc1_:Vector.<§?"%§> = new Vector.<§?"%§>();
         if(!§=,§.§if §.§?!W§())
         {
            return _loc1_;
         }
         if(!this.§ "8§ || this.§ "8§.length == 0)
         {
            return _loc1_;
         }
         this.§!^§.§;d§.§^3§();
         var _loc2_:Rectangle = this.§[!f§(this.§ "8§);
         var _loc3_:Point = new Point(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
         var _loc4_:Number = this.§`!l§.x - _loc3_.x;
         var _loc5_:Number = this.§`!l§.y - _loc3_.y;
         this.§?!,§();
         for each(_loc6_ in this.§ "8§)
         {
            if(!(_loc6_.isTexture() && this.§!^§.§@s§.§-!X§() < 1))
            {
               if(!(_loc6_.§^!!§() && this.§!^§.§@s§.§+h§() < 1))
               {
                  if(!_loc6_.§!"0§())
                  {
                     if((_loc6_.§^6§() || _loc6_.§@!e§()) && this.§!^§.§@s§.§>!§() < 1)
                     {
                        this.§!^§.§@s§.dispatchEvent(new §8V§(§8V§.§3!w§));
                        break;
                     }
                     _loc7_ = this.§!^§.§@s§.§5!-§(_loc6_,_loc4_,_loc5_);
                     _loc1_.push(_loc7_);
                     this.§;?§(_loc7_,true);
                  }
               }
            }
         }
         this.§"!w§();
         return _loc1_;
      }
      
      private function §+X§(param1:§?"%§) : b2Transform
      {
         return this.§8h§[param1];
      }
      
      private function §71§(param1:§?"%§) : void
      {
         this.§&"$§(param1);
         this.§8h§[param1] = param1.§'f§();
      }
      
      private function §&"$§(param1:§?"%§) : void
      {
         var _loc2_:b2Transform = null;
         if(§]"7§.§7U§().§ "1§(§]"7§.§+B§))
         {
            _loc2_ = param1.§'f§();
            _loc2_.position.x = this.§>!%§(_loc2_.position.x);
            _loc2_.position.y = this.§>!%§(_loc2_.position.y);
            if(this.§6!e§ == 100)
            {
               _loc2_.position.x += param1.§[!V§().width / 2 * 100 % this.§6!e§ / 100;
               _loc2_.position.y -= param1.§[!V§().height / 2 * 100 % this.§6!e§ / 100;
            }
         }
         param1.§[P§(_loc2_);
      }
      
      private function §>!%§(param1:Number) : Number
      {
         return Math.round(param1 * 100 - param1 * 100 % this.§6!e§) / 100;
      }
      
      private function §4I§() : void
      {
         var _loc2_:§?"%§ = null;
         var _loc3_:Point = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this.§,!K§)
         {
            if(§=,§.§if §.§9'§(_loc2_))
            {
               _loc1_ = true;
               break;
            }
         }
         if(!_loc1_)
         {
            this.§<D§();
         }
         else
         {
            _loc3_ = this.§`!l§;
            _loc4_ = _loc3_.x - this.§#!k§;
            _loc5_ = _loc3_.y - this.§]+§;
            if(this.§5"§)
            {
               this.§1!y§(_loc4_,_loc5_);
            }
         }
      }
      
      public function § !N§(param1:Number, param2:Number) : void
      {
         if(this.§5"§)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§,!K§.length)
         {
            _loc3_++;
         }
         param1 = (param1 == 0 ? 0 : param1 / Math.abs(param1)) * this.§6!e§;
         param2 = (param2 == 0 ? 0 : param2 / Math.abs(param2)) * this.§6!e§;
      }
      
      public function §1!y§(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc7_:int = 0;
         var _loc8_:§?"%§ = null;
         var _loc9_:b2Vec2 = null;
         if(this.§,!K§.length == 0)
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
         while(_loc7_ < this.§,!K§.length)
         {
            _loc8_ = this.§,!K§[_loc7_];
            _loc9_ = this.§+X§(_loc8_).position.Copy();
            _loc9_.x += param1;
            _loc9_.y += param2;
            this.§;!y§(_loc8_,_loc9_);
            _loc7_++;
         }
      }
      
      private function §;!y§(param1:§?"%§, param2:b2Vec2, param3:Boolean = true) : void
      {
         param1.setPosition(param2);
         if(param3)
         {
            this.§&"$§(param1);
         }
         this.§8!+§(param1);
         §#!§.§<!'§(param1.getObject() as §%,§,this.§!^§.§@s§.§'4§.objects);
      }
      
      private function §&o§(param1:Object) : Boolean
      {
         var _loc2_:§?"%§ = null;
         for each(_loc2_ in this.§,!K§)
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
