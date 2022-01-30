package §9!z§
{
   import §!q§.§ %§;
   import §0!d§.§'!_§;
   import §0!d§.§7!a§;
   import §0!d§.§8!r§;
   import §1!p§.§`!#§;
   import §3;§.§#!C§;
   import §4!t§.§=p§;
   import §9!G§.§<$§;
   import §<8§.§"h§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class Inventory extends EventDispatcher
   {
      
      protected static var §0!?§:Class = §?!V§;
      
      private static const §^"7§:int = 10;
      
      private static const §9@§:int = 5;
      
      private static const §35§:int = 25;
      
      private static const §4!H§:Number = 1.5;
       
      
      private var §0!S§:§#!>§;
      
      private var §+N§:int = 2;
      
      private var §8!l§:Vector.<MovieClip>;
      
      private var §'K§:§=p§;
      
      private var §;"§:§7!a§ = null;
      
      private var §0!8§:§7!a§;
      
      private var §#!k§:§'!_§;
      
      private var §5>§:§7!a§;
      
      private var §9!x§:Rectangle;
      
      private var §4"+§:int;
      
      private var §'!&§:int;
      
      private var §>N§:int;
      
      private var §9F§:§5"!§;
      
      private var §'!G§:Boolean = false;
      
      public function Inventory(param1:§=p§)
      {
         this.§9!x§ = new Rectangle();
         super();
         this.§'K§ = param1;
         this.§5>§ = param1.getItemByName("ItemContainer") as §7!a§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5>§.mClip.numChildren)
         {
            this.§5>§.mClip.getChildAt(_loc2_).alpha = 0;
            _loc2_++;
         }
         this.§>N§ = this.§5>§.mClip.width;
         this.§9!x§ = new Rectangle(-this.§5>§.mClip.width,-§^"7§ * 2,this.§5>§.mClip.width * 3,this.§5>§.mClip.height);
         this.§5>§.x -= this.§5>§.mClip.width;
         this.§5>§.y -= §^"7§;
         this.§;"§ = param1.getItemByName("Inventory") as §7!a§;
         this.§;"§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§<!9§);
         this.§;"§.mClip.addEventListener(MouseEvent.ROLL_OUT,this.§1J§);
         this.§;"§.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.§+!q§);
         this.§0!S§ = new §#!>§(this.§5>§);
         this.§0!8§ = param1.getItemByName("ScrollBar") as §7!a§;
         this.§#!k§ = this.§0!8§.getItemByName("Slider") as §'!_§;
         this.§#!k§.mClip.gotoAndStop(0);
         this.§#!k§.mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§4!^§);
         this.§#!k§.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§3C§);
         this.§2z§(§<$§.§ "7§(§0!?§));
      }
      
      public static function §[`§(param1:String, param2:String, param3:XML = null, param4:Boolean = false) : Boolean
      {
         var _loc5_:XML = null;
         var _loc6_:Boolean = false;
         var _loc7_:XML = null;
         if(param1 == "Pigs" && param2.indexOf("PIG_") != -1)
         {
            return true;
         }
         if(param1 == "Snow" && param2.indexOf("SNOW_") != -1)
         {
            return true;
         }
         if(param1 == "Birds" && param2.indexOf("BIRD_") != -1)
         {
            return true;
         }
         if(param1 == "Objects" && param2.indexOf("FOOD_") != -1)
         {
            return true;
         }
         if(param1 == "Food" && param2.indexOf("FOOD_") != -1)
         {
            return true;
         }
         if(param3 == null)
         {
            param3 = §<$§.§ "7§(§0!?§);
         }
         for each(_loc5_ in param3.category)
         {
            if(param1 == _loc5_.@button || param4)
            {
               for each(_loc7_ in _loc5_.item)
               {
                  if(_loc7_.toString() == param2)
                  {
                     return true;
                  }
               }
            }
            param4 = param4 || _loc5_.@button == param1;
            if(_loc6_ = §[`§(param1,param2,_loc5_,param4))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §2",§() : void
      {
         this.§0!S§.§1^§();
      }
      
      private function §0a§() : void
      {
         this.§#!k§.mClip.stop();
      }
      
      protected function §4!^§(param1:MouseEvent) : void
      {
         this.§48§();
         this.§#!k§.mClip.play();
      }
      
      private function §48§() : void
      {
         if(this.§#!k§.mClip.hasEventListener(Event.ENTER_FRAME))
         {
            this.§#!k§.mClip.removeEventListener(Event.ENTER_FRAME,this.§!!2§);
         }
      }
      
      protected function §!!2§(param1:Event) : void
      {
         if(this.§#!k§.mClip.currentFrame == 1)
         {
            this.§48§();
         }
         else
         {
            this.§#!k§.mClip.prevFrame();
         }
      }
      
      protected function §3C§(param1:MouseEvent) : void
      {
         this.§#!k§.mClip.gotoAndStop(3);
         this.§#!k§.mClip.addEventListener(Event.ENTER_FRAME,this.§!!2§,false,0,true);
      }
      
      private function §+!q§(param1:MouseEvent) : void
      {
         this.§'!G§ = false;
      }
      
      private function §<!9§(param1:MouseEvent) : void
      {
         if(this.§'!G§)
         {
            dispatchEvent(new §#!C§(§#!C§.CANCEL));
         }
         this.§'!G§ = false;
      }
      
      private function §1J§(param1:MouseEvent) : void
      {
         this.§'!G§ = true;
      }
      
      private function §2z§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§#!>§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         for each(_loc2_ in param1.category)
         {
            _loc3_ = this.§5h§(_loc2_.@button,param1.@button);
            for each(_loc4_ in _loc2_.include_category)
            {
               _loc3_.§3!5§(_loc4_.toString());
            }
            for each(_loc5_ in _loc2_.component)
            {
               _loc3_.§2!%§(this.§'K§.getItemByName(_loc5_.toString()));
            }
            for each(_loc6_ in _loc2_.item)
            {
               _loc3_.§!!S§(_loc6_.toString(),!!_loc6_.hasOwnProperty("@scale") ? Number(_loc6_.@scale) : Number(1));
            }
            for each(_loc7_ in _loc2_.exclude)
            {
               _loc3_.§?!5§(_loc7_.toString());
            }
            if(_loc2_.@highlight == "true")
            {
               _loc3_.§4"1§(new §>!w§());
            }
            this.§2z§(_loc2_);
         }
      }
      
      public function update(param1:int) : void
      {
         this.§;"§.x += param1 * §4!H§ * (this.isOpen() && § %§.§,l§.§=d§() ? 1 : -1);
         if(this.§;"§.x > 5)
         {
            this.§;"§.x = 5;
         }
         if(this.§;"§.x < -this.§;"§.width)
         {
            this.§;"§.x = -this.§;"§.width;
         }
         if(this.§4"+§ <= this.§9!x§.height)
         {
            this.§0!8§.setVisibility(false);
            this.§9!x§.y = -§^"7§ * 2;
            this.§5>§.mClip.scrollRect = this.§9!x§;
         }
         else
         {
            this.§0!8§.setVisibility(true);
            this.§9!x§.y = Math.max(0,this.§#!k§.§?![§() * (this.§4"+§ - this.§9!x§.height)) - §^"7§ * 2;
            this.§5>§.mClip.scrollRect = this.§9!x§;
         }
      }
      
      private function §5h§(param1:String, param2:String = null) : §#!>§
      {
         var _loc3_:§8!r§ = this.§'K§.getItemByName(param1) as §8!r§;
         var _loc4_:§8!r§ = null;
         if(param2)
         {
            _loc4_ = this.§'K§.getItemByName(param2) as §8!r§;
         }
         var _loc5_:§#!>§;
         if(_loc5_ = this.§0!S§.§7Z§(_loc4_))
         {
            return _loc5_.§5!l§(_loc3_);
         }
         return null;
      }
      
      public function §7!%§(param1:§8!r§, param2:Boolean = true) : void
      {
         if(param1 == null)
         {
            this.§0!S§.§ U§();
         }
         else
         {
            this.§0!S§.§;§(param1,param2);
            this.§,"%§();
         }
      }
      
      public function §0"'§() : String
      {
         return this.§0!S§.§?!c§();
      }
      
      public function §]!2§(param1:Boolean = true, param2:int = 1) : void
      {
         this.§0!S§.§]!2§(param2,param1);
         this.§,"%§();
      }
      
      public function §@t§(param1:§8!r§) : void
      {
         var _loc2_:§#!>§ = this.§0!S§.§7Z§(param1);
         if(_loc2_)
         {
            _loc2_.§ U§();
         }
      }
      
      public function §,"%§() : void
      {
         var _loc7_:§5"!§ = null;
         var _loc8_:§5"!§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc1_:Vector.<§5"!§> = this.§0!S§.§[!R§();
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:Number = this.§>N§ / 2 - §9@§ * 2;
         var _loc3_:int = 0;
         var _loc5_:Number = 0;
         var _loc6_:int = 0;
         for each(_loc8_ in _loc1_)
         {
            if((_loc9_ = _loc8_.§1-§ < 1.6 * _loc2_ ? 1 : 2) == 1)
            {
               _loc8_.y = _loc5_;
               _loc8_.x = (_loc3_ + 0.5) * _loc2_ + (_loc3_ * 3 + 0.5) * §9@§;
               _loc3_ = (_loc3_ + 1) % 2;
               _loc10_ = _loc2_ + §9@§ * 0.5;
            }
            else
            {
               if(_loc3_ == 1 && _loc7_)
               {
                  _loc7_.y += _loc7_.height / 2;
                  _loc5_ += _loc7_.height + §^"7§;
                  _loc7_.x = (2 * _loc2_ + 3.5 * §9@§) / 2;
               }
               _loc8_.y = _loc5_;
               _loc8_.x = (2 * _loc2_ + 3.5 * §9@§) / 2;
               _loc3_ = 0;
               _loc10_ = _loc2_ * 2 + §9@§;
               _loc7_ = null;
            }
            _loc11_ = Math.min(1,_loc10_ / _loc8_.§1-§);
            _loc8_.§0!&§(_loc11_);
            _loc6_ = Math.max(_loc8_.height,_loc6_);
            if(_loc3_ == 0)
            {
               _loc8_.y += _loc6_ / 2;
               if(_loc7_)
               {
                  _loc7_.y += _loc6_ / 2;
               }
               _loc5_ += _loc6_ + §^"7§;
               _loc7_ = null;
               _loc6_ = 0;
            }
            _loc8_.visible = true;
            _loc7_ = _loc8_;
         }
         this.§4"+§ = _loc5_;
         for each(_loc8_ in _loc1_)
         {
            _loc8_.visible = true;
            _loc8_.addEventListener(MouseEvent.MOUSE_DOWN,this.§>'§);
            if((this.§'K§.getItemByName("Objects") as §8!r§).§@!K§ == §"h§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               if(!(AngryBirdsFP11.§<U§ as §`!#§).§^S§(_loc8_.getItemName()))
               {
                  _loc8_.§0!7§(0);
                  _loc8_.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>'§);
               }
               else
               {
                  _loc8_.§0!7§(3);
               }
            }
            else if(!(AngryBirdsFP11.§<U§ as §`!#§).§^S§(_loc8_.getItemName()))
            {
               _loc8_.lock();
            }
            else
            {
               _loc8_.unlock();
            }
         }
      }
      
      private function §>'§(param1:MouseEvent) : void
      {
         this.§9F§ = param1.currentTarget as §5"!§;
         dispatchEvent(new §#!C§(§#!C§.§@1§));
      }
      
      public function §<5§() : §5"!§
      {
         return this.§9F§;
      }
      
      public function isOpen() : Boolean
      {
         return this.§0!S§.§]!Y§();
      }
      
      public function §,C§(param1:§8!r§) : Boolean
      {
         return this.§0!S§.§7Z§(param1).§]!Y§();
      }
      
      public function §+"!§(param1:int) : void
      {
         this.§9!x§.height = param1;
      }
      
      public function §;m§(param1:String) : §5"!§
      {
         var _loc3_:§5"!§ = null;
         var _loc2_:Vector.<§5"!§> = this.§0!S§.§^!+§();
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.getItemName() == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function § k§(param1:§5"!§) : §8!r§
      {
         return this.§0!S§.§&q§(param1.getItemName());
      }
   }
}
