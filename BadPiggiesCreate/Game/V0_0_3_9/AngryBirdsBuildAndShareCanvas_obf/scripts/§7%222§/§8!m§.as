package §7"2§
{
   import § !%§.§^2§;
   import §%!n§.§7P§;
   import §%%§.§7!O§;
   import §%%§.§=!K§;
   import §-!G§.b2Transform;
   import §-!G§.b2Vec2;
   import §5!k§.§%"§;
   import §5!k§.§6"6§;
   import §8!7§.§'9§;
   import §8!7§.§3d§;
   import §8!7§.Inventory;
   import §<!I§.§="5§;
   import §<!I§.§>"-§;
   import §<Z§.§"!f§;
   import §=b§.§-!K§;
   import §=b§.§8",§;
   import §?""§.§&z§;
   import §@!N§.§2i§;
   import §@!N§.§3E§;
   import §]J§.Popup;
   import §]r§.§0!@§;
   import §]r§.§9!R§;
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
   
   public class §8!m§ extends EventDispatcher implements §!"1§
   {
      
      private static const §5c§:Number = §-!K§.§"!C§ / 100;
      
      private static const §4V§:Number = §5c§ * 30;
      
      private static const §@%§:Number = 1.005;
      
      private static const §>!Z§:Number = -0.15;
      
      private static const §-!E§:Number = 360 / 8;
      
      private static const §%!A§:int = 20;
       
      
      private var §7!Y§:Vector.<§7!O§>;
      
      private var §@s§:Point;
      
      private var §,K§:Point;
      
      private var §2"0§:Boolean = false;
      
      private var §59§:Dictionary;
      
      private var §%7§:Vector.<§7!O§>;
      
      private var §6$§:Number;
      
      private var §?!Q§:Number;
      
      private var §!d§:Number = 0;
      
      private var §8!U§:Number = 0;
      
      private var §1y§:Boolean = false;
      
      private var §"k§:Boolean = false;
      
      private var §catch§:Boolean = false;
      
      private var §81§:Point;
      
      private var §`!T§:§'9§;
      
      private var §!"%§:Point;
      
      private var §^!h§:Point;
      
      private var §``§:Point;
      
      private var §@'§:Boolean = false;
      
      private var §3!I§:§3d§;
      
      private var §=m§:Inventory;
      
      private var §&!u§:Popup;
      
      private var §"Z§:§;!5§;
      
      private var §[!p§:int = 100;
      
      public function §8!m§(param1:§;!5§)
      {
         this.§7!Y§ = new Vector.<§7!O§>();
         this.§,K§ = new Point();
         this.§59§ = new Dictionary();
         this.§^!h§ = new Point();
         this.§``§ = new Point();
         this.§3!I§ = new §3d§();
         super();
         this.§"Z§ = param1;
         addEventListener(Event.CHANGE,this.§?!6§);
         addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      public function initialize() : void
      {
         this.§"Z§.§[U§.addEventListener(KeyboardEvent.KEY_DOWN,this.§`$§);
         this.§"Z§.§[U§.addEventListener(KeyboardEvent.KEY_UP,this.§<u§);
         this.§"Z§.§%&§.addEventListener(MouseEvent.MOUSE_UP,this.§"!I§);
         this.§"Z§.§%&§.addEventListener(MouseEvent.MOUSE_DOWN,this.§+!T§);
         this.§"Z§.§%&§.addEventListener(MouseEvent.MOUSE_MOVE,this.§%!z§);
         this.§"Z§.§%&§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         this.§"Z§.§[U§.addEventListener(§6"6§.START_ROTATE,this.§%J§);
         this.§"Z§.§[U§.addEventListener(§6"6§.DELETE_OBJECT,this.§%Y§);
         this.§"Z§.§[U§.addEventListener(§6"6§.DUPLICATE_OBJECT,this.§["4§);
         this.§"Z§.§[U§.addEventListener("close_popups",this.§^4§);
         this.§"Z§.§94§.addEventListener(§6"6§.§9"+§,this.§ !_§);
         this.§"Z§.§%V§.addEventListener(§%"§.§"!u§,this.§6A§);
         this.§=m§ = this.§"Z§.§[U§.§^A§().§[S§();
         this.§=m§.addEventListener(§6"6§.CANCEL,this.§>!]§);
         this.§=m§.addEventListener(§6"6§.§@!%§,this.§@!-§);
      }
      
      private function §6A§(param1:Event) : void
      {
         this.§"Z§.§[U§.§^A§().§[S§().§7t§();
      }
      
      private function §^4§(param1:Event) : void
      {
         this.§&!u§.close();
         this.§&!u§ = null;
      }
      
      private function §>!]§(param1:§6"6§) : void
      {
         this.§^!2§(false);
      }
      
      private function §?!6§(param1:Event) : void
      {
         if(!this.§@'§)
         {
            this.§@'§ = true;
            this.§"Z§.§=$§.§?"-§();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         if(this.§@'§)
         {
            this.§@'§ = false;
            this.§"Z§.§94§.§"§();
         }
      }
      
      private function § !_§(param1:Event) : void
      {
         this.§^!!§();
      }
      
      private function §%J§(param1:Event) : void
      {
         this.§@s§ = this.§0#§.clone();
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc4_:§3E§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Point = null;
         if(!§7P§.§'!o§.§?`§())
         {
            return;
         }
         var _loc2_:int = param1.delta;
         var _loc3_:Number = §2i§.§0Z§;
         this.§"Z§.§#9§.camera.zoom(_loc2_);
         if(_loc2_ > 0)
         {
            _loc5_ = (_loc4_ = this.§"Z§.§#9§.camera).§[>§;
            if(_loc4_)
            {
               _loc6_ = _loc4_.getCenter();
               _loc7_ = new Point();
               if(this.§6"7§() == 0)
               {
                  _loc8_ = this.§0e§.x - _loc6_.x;
                  _loc9_ = this.§0e§.y - _loc6_.y;
                  _loc7_.x = this.§0e§.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = this.§0e§.y - _loc3_ / _loc5_ * _loc9_;
                  this.§"Z§.§[U§.§>!E§(this.§0#§.x,this.§0#§.y);
               }
               else
               {
                  _loc8_ = ((_loc10_ = this.§[e§()).x - _loc6_.x) / 1.3;
                  _loc9_ = (_loc10_.y - _loc6_.y) / 1.3;
                  _loc7_.x = _loc10_.x - _loc3_ / _loc5_ * _loc8_;
                  _loc7_.y = _loc10_.y - _loc3_ / _loc5_ * _loc9_;
                  _loc11_ = this.§"Z§.§94§.§ ;§(_loc10_.x,_loc10_.y);
                  this.§"Z§.§[U§.§>!E§(_loc11_.x,_loc11_.y);
               }
               _loc4_.§-!u§(_loc7_);
            }
         }
      }
      
      private function §@!-§(param1:§6"6§) : void
      {
         var _loc3_:Bitmap = null;
         var _loc4_:Bitmap = null;
         var _loc5_:MovieClip = null;
         var _loc2_:§'9§ = this.§=m§.§4,§();
         if(_loc2_.§]!9§)
         {
            this.§&!u§ = new Popup(§"!f§.§%!1§.Views.PopupView_ItemLocked[0],this.§"Z§.§[U§.§^A§());
            this.§&!u§.open();
            _loc3_ = _loc2_.§1"7§() as Bitmap;
            _loc4_ = new Bitmap(_loc3_.bitmapData);
            _loc5_ = this.§&!u§.getItemByName("MovieClip_UnlockItem").mClip;
            _loc4_.x = _loc5_.width / 2 - _loc4_.width / 2;
            _loc4_.y = _loc5_.height / 2 - _loc4_.height / 2 - 45;
            _loc5_.addChild(_loc4_);
         }
         else if(this.§"Z§.§94§.§=<§() > 0)
         {
            this.§ !`§(_loc2_);
            this.§"Z§.§[U§.§+S§(this.§3!I§);
            this.§3!I§.addEventListener(MouseEvent.MOUSE_UP,this.§"!I§);
         }
      }
      
      private function §"!I§(param1:Event) : void
      {
         if(this.§@s§)
         {
            this.§@s§ = null;
            return;
         }
         if(this.§3!I§.mouseEnabled)
         {
            this.§<!2§();
            this.§7"§();
         }
      }
      
      private function §+!T§(param1:MouseEvent) : void
      {
         if(this.§@s§)
         {
            return;
         }
         var _loc2_:§7!O§ = §7!O§.§-n§(this.§"Z§.§94§.§7k§(this.§0#§));
         if(this.§7!Y§.indexOf(_loc2_) > -1)
         {
            if(this.§1y§ || this.§catch§ || this.§"k§)
            {
               this.§#"1§(_loc2_);
            }
         }
         else if(_loc2_ != null)
         {
            this.§,",§(_loc2_,this.§1y§);
         }
         if(_loc2_ != null && !(this.§1y§ || this.§catch§ || this.§"k§))
         {
            this.§]G§();
         }
         else if(!_loc2_ && (this.§1y§ || this.§catch§ || this.§"k§))
         {
            this.§<d§();
         }
         else if(!_loc2_ && !this.§2"0§)
         {
            this.§^!!§();
            this.§!"%§ = this.§0e§.clone();
         }
      }
      
      private function §%!z§(param1:Event) : void
      {
         var _loc2_:Point = null;
         var _loc3_:int = 0;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(this.§@s§)
         {
            _loc2_ = this.§@s§.subtract(this.§0#§);
            if(_loc2_.length > §%!A§)
            {
               dispatchEvent(new Event(Event.CHANGE));
               if(Math.abs(_loc2_.x) > Math.abs(_loc2_.y))
               {
                  _loc3_ = _loc2_.x < 0 ? -1 : 1;
                  if(this.§0#§.y > this.§;!]§().y)
                  {
                     _loc3_ *= -1;
                  }
               }
               else
               {
                  _loc3_ = _loc2_.y < 0 ? 1 : -1;
                  if(this.§0#§.x > this.§;!]§().x)
                  {
                     _loc3_ *= -1;
                  }
               }
               this.§@s§ = this.§0#§.clone();
               this.§6[§(§-!E§ * _loc3_);
            }
         }
         else if(this.§!"%§)
         {
            if(§7P§.§'!o§.§?`§())
            {
               _loc5_ = (_loc4_ = this.§"Z§.§#9§.camera.getCenter()).x + (this.§!"%§.x - this.§0e§.x);
               _loc6_ = _loc4_.y + (this.§!"%§.y - this.§0e§.y);
               this.§"Z§.§#9§.camera.§#g§(_loc5_,_loc6_);
            }
            else
            {
               this.§!"%§ = null;
            }
         }
      }
      
      private function §`$§(param1:KeyboardEvent) : void
      {
         if(this.§6"7§() == 0)
         {
            if(param1.keyCode == Keyboard.UP && this.§^!h§.y != -1)
            {
               this.§^!h§.y = -1;
               this.§``§.y = 0;
            }
            else if(param1.keyCode == Keyboard.DOWN && this.§^!h§.y != 1)
            {
               this.§^!h§.y = 1;
               this.§``§.y = 0;
            }
            else if(param1.keyCode == Keyboard.LEFT && this.§^!h§.x != -1)
            {
               this.§^!h§.x = -1;
               this.§``§.x = 0;
            }
            else if(param1.keyCode == Keyboard.RIGHT && this.§^!h§.x != 1)
            {
               this.§^!h§.x = 1;
               this.§``§.x = 0;
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§"k§ = true;
               break;
            case Keyboard.SHIFT:
               this.§1y§ = true;
               break;
            case Keyboard.CONTROL:
               this.§catch§ = true;
               break;
            case Keyboard.UP:
               this.§8!U§ = Math.min(this.§8!U§,-§5c§);
               break;
            case Keyboard.DOWN:
               this.§8!U§ = Math.max(this.§8!U§,§5c§);
               break;
            case Keyboard.LEFT:
               this.§!d§ = Math.min(this.§!d§,-§5c§);
               break;
            case Keyboard.RIGHT:
               this.§!d§ = Math.max(this.§!d§,§5c§);
               break;
            case Keyboard.DELETE:
               this.§^!2§();
               break;
            case Keyboard.PAGE_UP:
               this.§3!X§(1);
               break;
            case Keyboard.PAGE_DOWN:
               this.§3!X§(-1);
               break;
            case Keyboard.C:
               this.§5!§();
               break;
            case Keyboard.V:
               this.§ "+§();
               break;
            case Keyboard.D:
               this.§["4§();
               break;
            case Keyboard.J:
               §=!K§.§3!u§(this.§7!Y§,this.§"Z§.§94§.§'!E§.objects);
               break;
            case Keyboard.E:
               this.§6[§(§-!E§);
               break;
            case Keyboard.R:
               this.§6[§(-§-!E§);
         }
      }
      
      private function §3!X§(param1:int) : void
      {
         var _loc2_:§7!O§ = null;
         var _loc3_:§9!R§ = null;
         for each(_loc2_ in this.§7!Y§)
         {
            _loc2_.§1;§(param1);
            _loc3_ = this.§"Z§.§94§.§'!E§.§00§.getObjectWithID(_loc2_.uniqueID);
            (this.§"Z§.§94§.§'!E§.§00§ as §0!@§).§#!F§(_loc3_,param1);
         }
      }
      
      private function §<u§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.UP && this.§^!h§.y == -1)
         {
            this.§^!h§.y = 0;
         }
         else if(param1.keyCode == Keyboard.DOWN && this.§^!h§.y == 1)
         {
            this.§^!h§.y = 0;
         }
         else if(param1.keyCode == Keyboard.LEFT && this.§^!h§.x == -1)
         {
            this.§^!h§.x = 0;
         }
         else if(param1.keyCode == Keyboard.RIGHT && this.§^!h§.x == 1)
         {
            this.§^!h§.x = 0;
         }
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
               this.§"k§ = false;
               break;
            case Keyboard.SHIFT:
               this.§1y§ = false;
               break;
            case Keyboard.CONTROL:
               this.§catch§ = false;
               break;
            case 38:
               this.§8!U§ = Math.max(0,this.§8!U§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 40:
               this.§8!U§ = Math.min(0,this.§8!U§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 37:
               this.§!d§ = Math.max(0,this.§!d§);
               dispatchEvent(new Event(Event.COMPLETE));
               break;
            case 39:
               this.§!d§ = Math.min(0,this.§!d§);
               dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §%Y§(param1:Event) : void
      {
         this.§^!2§();
      }
      
      private function §["4§(param1:Event = null) : void
      {
         this.§5!§();
         this.§ "+§();
      }
      
      public function get §0#§() : Point
      {
         return this.§"Z§.§%&§.§0#§;
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§["8§(false);
         var _loc2_:Point = this.§"Z§.§94§.§'!E§.screenToBox2D(this.§"Z§.§%&§.§0#§.x,this.§"Z§.§%&§.§0#§.y);
         this.§,K§.x = _loc2_.x;
         this.§,K§.y = _loc2_.y;
         var _loc3_:int = this.§7!Y§.length - 1;
         while(_loc3_ >= 0)
         {
            if(!§7P§.§'!o§.§&$§(this.§7!Y§[_loc3_]))
            {
               this.§#"1§(this.§7!Y§[_loc3_]);
            }
            _loc3_--;
         }
         if(this.§^!h§.length > 0)
         {
            _loc4_ = 0.001;
            _loc5_ = 0.5;
            _loc6_ = this.§"Z§.§#9§.camera.getCenter();
            this.§``§.x = Math.min(_loc5_,this.§``§.x + _loc4_ * param1);
            this.§``§.y = Math.min(_loc5_,this.§``§.y + _loc4_ * param1);
            _loc7_ = _loc6_.x + this.§``§.x * this.§^!h§.x * param1;
            _loc8_ = _loc6_.y + this.§``§.y * this.§^!h§.y * param1;
            this.§"Z§.§#9§.camera.§#g§(_loc7_,_loc8_);
         }
         else
         {
            this.§``§.x = 0;
            this.§``§.y = 0;
         }
         if(Math.abs(this.§!d§) > 0 || Math.abs(this.§8!U§) > 0)
         {
            if(Math.abs(this.§!d§) < §4V§)
            {
               this.§!d§ *= Math.pow(§@%§,param1);
            }
            if(Math.abs(this.§8!U§) < §4V§)
            {
               this.§8!U§ *= Math.pow(§@%§,param1);
            }
            this.§9!,§(this.§!d§ * param1,this.§8!U§ * param1);
         }
         if(this.§2"0§)
         {
            this.§@3§();
         }
         this.§6T§();
      }
      
      public function activate() : void
      {
         this.§catch§ = false;
         this.§1y§ = false;
         this.§"k§ = false;
         this.§"Z§.§[U§.§^A§().§[S§().§7t§();
      }
      
      public function §#?§(param1:Class) : void
      {
      }
      
      public function get §0e§() : Point
      {
         return this.§,K§;
      }
      
      public function §+!c§() : Boolean
      {
         return this.§81§ != null;
      }
      
      public function §`!&§() : Boolean
      {
         return this.§@s§ != null;
      }
      
      public function §`K§() : Boolean
      {
         return false;
      }
      
      public function §9!d§() : Boolean
      {
         return this.§2"0§;
      }
      
      public function §^!2§(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:§7!O§ = null;
         if(this.§;!?§().length > 0)
         {
            _loc2_ = !param1;
            for each(_loc3_ in this.§;!?§())
            {
               if(!_loc2_)
               {
                  _loc2_ = true;
                  this.§"Z§.§=$§.§?"-§();
               }
               if(_loc3_.getObject() is §9!R§)
               {
                  this.§"Z§.§94§.removeObject(_loc3_.getObject() as §9!R§);
               }
               else if(_loc3_.getObject() is §8",§)
               {
                  this.§"Z§.§94§.§ "#§(_loc3_.getObject() as §8",§);
               }
            }
            this.§^!!§();
         }
      }
      
      public function § m§() : void
      {
         this.§^!!§();
      }
      
      public function §=@§(param1:String) : Boolean
      {
         return false;
      }
      
      public function §["8§(param1:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:§7!O§ = null;
         var _loc8_:Boolean = false;
         var _loc2_:§>"-§ = this.§"Z§.§[U§.§;i§.getItemByName("ContextMenu") as §>"-§;
         if(this.§6"7§() == 0 || this.§1y§ || this.§catch§ || this.§"k§ || this.§9!d§() || this.§+!c§() || this.§`!&§())
         {
            if(_loc2_.§-!;§)
            {
               _loc2_.setVisibility(false);
            }
         }
         else if(!_loc2_.§-!;§)
         {
            _loc2_.setVisibility(true);
         }
         if(this.§6"7§() > 0)
         {
            _loc6_ = this.§;!]§();
            _loc2_.x = _loc6_.x;
            _loc2_.y = _loc6_.y;
         }
         var _loc3_:§="5§ = this.§"Z§.§[U§.§;i§.getItemByName("Rotate") as §="5§;
         var _loc4_:§="5§ = this.§"Z§.§[U§.§;i§.getItemByName("Duplicate") as §="5§;
         var _loc5_:§="5§ = this.§"Z§.§[U§.§;i§.getItemByName("Delete") as §="5§;
         _loc3_.setVisibility(false);
         _loc4_.setVisibility(false);
         _loc5_.setVisibility(false);
         if(this.§6"7§() > 0)
         {
            for each(_loc7_ in this.§;!?§())
            {
               if(!_loc7_.§!-§())
               {
                  if(§7P§.§'!o§.§&$§(_loc7_))
                  {
                     _loc3_.setVisibility(!_loc7_.§@!j§());
                     _loc8_ = (AngryBirdsFP11.§5!c§ as §^2§).§`!s§(_loc7_.getName());
                     _loc4_.setVisibility(§7P§.§'!o§.§2!k§(_loc7_.getName()) && !_loc7_.§1!"§() && _loc8_);
                     _loc5_.setVisibility(§7P§.§'!o§.§@"7§(_loc7_));
                  }
               }
            }
         }
      }
      
      public function §,",§(param1:§7!O§, param2:Boolean) : void
      {
         if(!§7P§.§'!o§.§&$§(param1))
         {
            return;
         }
         if(!param2)
         {
            this.§^!!§();
         }
         if(this.§7!Y§.indexOf(param1) > -1)
         {
            return;
         }
         if(param1.isGround())
         {
            return;
         }
         param1.§ !j§(true);
         this.§7!Y§.push(param1);
      }
      
      public function §#"1§(param1:§7!O§) : void
      {
         if(this.§7!Y§.indexOf(param1) > -1)
         {
            this.§7!Y§.splice(this.§7!Y§.indexOf(param1),1);
            param1.§ !j§(false);
         }
      }
      
      public function §^!!§() : void
      {
         var _loc1_:§7!O§ = null;
         this.§@s§ = null;
         for each(_loc1_ in this.§7!Y§)
         {
            _loc1_.§ !j§(false);
         }
         this.§7!Y§ = new Vector.<§7!O§>();
      }
      
      public function §6"7§() : int
      {
         return this.§7!Y§.length;
      }
      
      public function §;!]§() : Point
      {
         var _loc1_:b2Vec2 = this.§[e§();
         return this.§"Z§.§94§.§ ;§(_loc1_.x,_loc1_.y);
      }
      
      public function §[e§() : b2Vec2
      {
         var _loc2_:Rectangle = null;
         var _loc1_:b2Vec2 = new b2Vec2();
         if(this.§7!Y§.length > 0)
         {
            _loc2_ = this.§^!g§(this.§7!Y§);
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
      
      public function §;!?§() : Vector.<§7!O§>
      {
         return this.§7!Y§;
      }
      
      protected function §^!g§(param1:Vector.<§7!O§>, param2:Number = 0) : Rectangle
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
      
      protected function §""2§(param1:§7!O§) : void
      {
         var _loc2_:Rectangle = this.§"Z§.§#9§.camera.§`!y§();
         _loc2_.y = §>!Z§;
         _loc2_.height += §3E§.§[H§;
         var _loc3_:Rectangle = param1.§7n§();
         _loc2_.right -= _loc3_.right;
         _loc2_.bottom -= _loc3_.top;
         _loc2_.left -= _loc3_.left;
         _loc2_.top -= _loc3_.bottom;
         if(param1.isTexture())
         {
            _loc2_.y += _loc3_.height;
         }
         if(param1.§?!s§())
         {
            _loc2_.left = 10;
         }
         if(param1.§@!j§())
         {
            _loc2_.y += 0.1;
            _loc2_.right = 15;
         }
         if(param1.§!-§())
         {
            _loc2_.right = 0;
            _loc2_.left = 0;
            _loc2_.y += 0.5;
         }
         var _loc4_:b2Vec2 = param1.§"B§();
         var _loc5_:Number = Math.max(_loc2_.x,Math.min(_loc2_.x + _loc2_.width,_loc4_.x));
         var _loc6_:Number = Math.min(_loc2_.y,Math.max(_loc2_.height + _loc2_.y,_loc4_.y));
         param1.setPosition(new b2Vec2(_loc5_,_loc6_));
      }
      
      private function §]G§() : void
      {
         var _loc1_:§7!O§ = null;
         this.§2"0§ = true;
         this.§6$§ = this.§0e§.x;
         this.§?!Q§ = this.§0e§.y;
         for each(_loc1_ in this.§7!Y§)
         {
            this.§"!a§(_loc1_);
         }
      }
      
      private function §<!2§() : void
      {
         if(this.§`!T§)
         {
            this.§"Z§.§[U§.§+S§(null);
            this.§`!T§.§?W§();
            this.§`!T§ = null;
         }
         this.§!"%§ = null;
         this.§`!T§ = null;
         this.§2"0§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §<d§() : void
      {
         this.§81§ = new Point();
         this.§81§.x = this.§0e§.x;
         this.§81§.y = this.§0e§.y;
      }
      
      private function §7"§() : void
      {
         this.§81§ = null;
         this.§6T§();
      }
      
      public function §6[§(param1:Number) : void
      {
         var _loc5_:§7!O§ = null;
         var _loc6_:Number = NaN;
         var _loc3_:b2Vec2 = this.§[e§();
         var _loc4_:Point = new Point(_loc3_.x,_loc3_.y);
         for each(_loc5_ in this.§7!Y§)
         {
            _loc5_.§`v§(param1,_loc4_);
            _loc6_ = _loc5_.§@&§();
            this.§""2§(_loc5_);
         }
      }
      
      public function § !`§(param1:§'9§) : void
      {
         if(!§7P§.§'!o§.§&$§())
         {
            return;
         }
         if(this.§`!T§)
         {
            this.§`!T§.§?W§();
            this.§^!2§();
         }
         this.§`!T§ = param1;
         dispatchEvent(new Event(Event.CHANGE));
         var _loc2_:Object = this.§"Z§.§94§.§;!7§(this.§`!T§.getItemName(),this.§0e§.x,this.§0e§.y);
         if(_loc2_)
         {
            this.§,",§(§7!O§.§-n§(_loc2_),false);
            this.§`!T§.§+!_§();
            this.§]G§();
         }
      }
      
      public function §6T§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc12_:§7!O§ = null;
         if(this.§81§ == null)
         {
            this.§"Z§.§[U§.§+J§(null);
            return;
         }
         if(this.§81§.y <= this.§0e§.y)
         {
            _loc1_ = this.§81§.y;
            _loc2_ = this.§0e§.y;
         }
         else
         {
            _loc1_ = this.§0e§.y;
            _loc2_ = this.§81§.y;
         }
         if(this.§81§.x <= this.§0e§.x)
         {
            _loc3_ = this.§81§.x;
            _loc4_ = this.§0e§.x;
         }
         else
         {
            _loc3_ = this.§0e§.x;
            _loc4_ = this.§81§.x;
         }
         var _loc5_:Point = new Point(_loc3_,_loc1_);
         var _loc6_:Point = new Point(_loc4_,_loc2_);
         var _loc7_:Array = (_loc7_ = this.§"Z§.§94§.§'!E§.objects.getObjectsWithinBoundingBox(_loc5_,_loc6_)).concat(this.§"Z§.§94§.§'!E§.slingshot.getObjectsWithinBoundingBox(_loc5_,_loc6_));
         var _loc8_:Number = 0;
         _loc8_ = 0;
         while(_loc8_ < this.§7!Y§.length)
         {
            if(_loc7_.indexOf(this.§7!Y§[_loc8_].getObject()) == -1)
            {
               this.§#"1§(this.§7!Y§[_loc8_]);
            }
            _loc8_++;
         }
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            _loc12_ = §7!O§.§-n§(_loc7_[_loc8_]);
            if(this.§7!Y§.indexOf(_loc12_) == -1 && §7P§.§'!o§.§&$§(_loc12_))
            {
               this.§,",§(§7!O§.§-n§(_loc7_[_loc8_]),true);
            }
            _loc8_++;
         }
         var _loc9_:Point = this.§"Z§.§94§.§'!E§.§,w§(_loc5_.x,_loc5_.y);
         var _loc10_:Point = this.§"Z§.§94§.§'!E§.§,w§(_loc6_.x,_loc6_.y);
         var _loc11_:Rectangle = new Rectangle(_loc9_.x,_loc9_.y,_loc10_.x - _loc9_.x,_loc10_.y - _loc9_.y);
         this.§"Z§.§[U§.§+J§(_loc11_);
      }
      
      public function §5!§() : void
      {
         var _loc1_:§7!O§ = null;
         this.§%7§ = new Vector.<§7!O§>();
         for each(_loc1_ in this.§7!Y§)
         {
            if(!_loc1_.§1!"§())
            {
               this.§%7§.push(_loc1_);
            }
         }
      }
      
      public function § "+§() : Vector.<§7!O§>
      {
         var _loc6_:§7!O§ = null;
         var _loc7_:§7!O§ = null;
         var _loc1_:Vector.<§7!O§> = new Vector.<§7!O§>();
         if(!§7P§.§'!o§.§2!k§())
         {
            return _loc1_;
         }
         if(!this.§%7§ || this.§%7§.length == 0)
         {
            return _loc1_;
         }
         this.§"Z§.§=$§.§?"-§();
         var _loc2_:Rectangle = this.§^!g§(this.§%7§);
         var _loc3_:Point = new Point(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
         var _loc4_:Number = this.§0e§.x - _loc3_.x;
         var _loc5_:Number = this.§0e§.y - _loc3_.y;
         this.§^!!§();
         for each(_loc6_ in this.§%7§)
         {
            if(!(_loc6_.isTexture() && this.§"Z§.§94§.§,V§() < 1))
            {
               if(!(_loc6_.§@!j§() && this.§"Z§.§94§.§]6§() < 1))
               {
                  if(!_loc6_.§!-§())
                  {
                     if(!((_loc6_.§#!y§() || _loc6_.§?!s§()) && this.§"Z§.§94§.§=<§() < 1))
                     {
                        _loc7_ = this.§"Z§.§94§.§2!-§(_loc6_,_loc4_,_loc5_);
                        _loc1_.push(_loc7_);
                        this.§,",§(_loc7_,true);
                     }
                  }
               }
            }
         }
         this.§]G§();
         return _loc1_;
      }
      
      private function §<$§(param1:§7!O§) : b2Transform
      {
         return this.§59§[param1];
      }
      
      private function §"!a§(param1:§7!O§) : void
      {
         this.§@!K§(param1);
         this.§59§[param1] = param1.§#!]§();
      }
      
      private function §@!K§(param1:§7!O§) : void
      {
         var _loc2_:b2Transform = null;
         if(§&z§.§%!w§().§>!M§(§&z§.§ T§))
         {
            _loc2_ = param1.§#!]§();
            _loc2_.position.x = this.§0?§(_loc2_.position.x);
            _loc2_.position.y = this.§0?§(_loc2_.position.y);
            if(this.§[!p§ == 100)
            {
               _loc2_.position.x += param1.§7n§().width / 2 * 100 % this.§[!p§ / 100;
               _loc2_.position.y -= param1.§7n§().height / 2 * 100 % this.§[!p§ / 100;
            }
         }
         param1.§!!l§(_loc2_);
      }
      
      private function §0?§(param1:Number) : Number
      {
         return Math.round(param1 * 100 - param1 * 100 % this.§[!p§) / 100;
      }
      
      private function §@3§() : void
      {
         var _loc2_:§7!O§ = null;
         var _loc3_:Point = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this.§7!Y§)
         {
            if(§7P§.§'!o§.§&$§(_loc2_))
            {
               _loc1_ = true;
               break;
            }
         }
         if(!_loc1_)
         {
            this.§<!2§();
         }
         else
         {
            _loc3_ = this.§0e§;
            _loc4_ = _loc3_.x - this.§6$§;
            _loc5_ = _loc3_.y - this.§?!Q§;
            if(this.§2"0§)
            {
               this.§`"+§(_loc4_,_loc5_);
            }
         }
      }
      
      public function §9!,§(param1:Number, param2:Number) : void
      {
         if(this.§2"0§)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§7!Y§.length)
         {
            _loc3_++;
         }
         param1 = (param1 == 0 ? 0 : param1 / Math.abs(param1)) * this.§[!p§;
         param2 = (param2 == 0 ? 0 : param2 / Math.abs(param2)) * this.§[!p§;
      }
      
      public function §`"+§(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc7_:int = 0;
         var _loc8_:§7!O§ = null;
         var _loc9_:b2Vec2 = null;
         if(this.§7!Y§.length == 0)
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
         while(_loc7_ < this.§7!Y§.length)
         {
            _loc8_ = this.§7!Y§[_loc7_];
            _loc9_ = this.§<$§(_loc8_).position.Copy();
            _loc9_.x += param1;
            _loc9_.y += param2;
            this.§<n§(_loc8_,_loc9_);
            _loc7_++;
         }
      }
      
      private function §<n§(param1:§7!O§, param2:b2Vec2) : void
      {
         param1.setPosition(param2);
         this.§@!K§(param1);
         this.§""2§(param1);
         §=!K§.§'!L§(param1.getObject() as §9!R§,this.§"Z§.§94§.§'!E§.objects);
      }
      
      private function §4!C§(param1:Object) : Boolean
      {
         var _loc2_:§7!O§ = null;
         for each(_loc2_ in this.§7!Y§)
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
