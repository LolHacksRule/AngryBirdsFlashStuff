package §^[§
{
   import §'!A§.§9!!§;
   import §'i§.§,!1§;
   import §'p§.§="#§;
   import §'p§.§`!T§;
   import §'p§.§`!w§;
   import §1"2§.§'s§;
   import §62§.§0!t§;
   import §=!M§.§?!1§;
   import §^!y§.§'"#§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class Inventory extends EventDispatcher
   {
      
      protected static var §!#§:Class = §'!I§;
      
      private static const §6";§:int = 10;
      
      private static const §0?§:int = 5;
      
      private static const §2%§:int = 25;
      
      private static const §6P§:Number = 1.5;
       
      
      private var §=!p§:§7;§;
      
      private var §6!7§:int = 2;
      
      private var §%L§:Vector.<MovieClip>;
      
      private var §?E§:§'s§;
      
      private var §1^§:§`!T§ = null;
      
      private var § !8§:§`!T§;
      
      private var §`1§:§`!w§;
      
      private var §[!D§:§`!T§;
      
      private var §;!G§:Rectangle;
      
      private var §2!0§:int;
      
      private var §#!]§:int;
      
      private var §1!E§:int;
      
      private var §>W§:§!$§;
      
      private var §2!c§:Boolean = false;
      
      public function Inventory(param1:§'s§)
      {
         this.§;!G§ = new Rectangle();
         super();
         this.§?E§ = param1;
         this.§[!D§ = param1.getItemByName("ItemContainer") as §`!T§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[!D§.mClip.numChildren)
         {
            this.§[!D§.mClip.getChildAt(_loc2_).alpha = 0;
            _loc2_++;
         }
         this.§1!E§ = this.§[!D§.mClip.width;
         this.§;!G§ = new Rectangle(-this.§[!D§.mClip.width,-§6";§ * 2,this.§[!D§.mClip.width * 3,this.§[!D§.mClip.height);
         this.§[!D§.x -= this.§[!D§.mClip.width;
         this.§[!D§.y -= §6";§;
         this.§1^§ = param1.getItemByName("Inventory") as §`!T§;
         this.§1^§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§#!d§);
         this.§1^§.mClip.addEventListener(MouseEvent.ROLL_OUT,this.§`F§);
         this.§1^§.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.§,!k§);
         this.§=!p§ = new §7;§(this.§[!D§);
         this.§ !8§ = param1.getItemByName("ScrollBar") as §`!T§;
         this.§`1§ = this.§ !8§.getItemByName("Slider") as §`!w§;
         this.§`1§.mClip.gotoAndStop(0);
         this.§`1§.mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§#!J§);
         this.§`1§.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§1!#§);
         this.§"9§(§?!1§.§ !?§(§!#§));
      }
      
      public static function §1!>§(param1:String, param2:String, param3:XML = null, param4:Boolean = false) : Boolean
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
            param3 = §?!1§.§ !?§(§!#§);
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
            if(_loc6_ = §1!>§(param1,param2,_loc5_,param4))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §?-§() : void
      {
         this.§=!p§.§!l§();
      }
      
      private function §7!§() : void
      {
         this.§`1§.mClip.stop();
      }
      
      protected function §#!J§(param1:MouseEvent) : void
      {
         this.§,9§();
         this.§`1§.mClip.play();
      }
      
      private function §,9§() : void
      {
         if(this.§`1§.mClip.hasEventListener(Event.ENTER_FRAME))
         {
            this.§`1§.mClip.removeEventListener(Event.ENTER_FRAME,this.§9!]§);
         }
      }
      
      protected function §9!]§(param1:Event) : void
      {
         if(this.§`1§.mClip.currentFrame == 1)
         {
            this.§,9§();
         }
         else
         {
            this.§`1§.mClip.prevFrame();
         }
      }
      
      protected function §1!#§(param1:MouseEvent) : void
      {
         this.§`1§.mClip.gotoAndStop(3);
         this.§`1§.mClip.addEventListener(Event.ENTER_FRAME,this.§9!]§,false,0,true);
      }
      
      private function §,!k§(param1:MouseEvent) : void
      {
         this.§2!c§ = false;
      }
      
      private function §#!d§(param1:MouseEvent) : void
      {
         if(this.§2!c§)
         {
            dispatchEvent(new §0!t§(§0!t§.CANCEL));
         }
         this.§2!c§ = false;
      }
      
      private function §`F§(param1:MouseEvent) : void
      {
         this.§2!c§ = true;
      }
      
      private function §"9§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§7;§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         for each(_loc2_ in param1.category)
         {
            _loc3_ = this.§&s§(_loc2_.@button,param1.@button);
            for each(_loc4_ in _loc2_.include_category)
            {
               _loc3_.§@q§(_loc4_.toString());
            }
            for each(_loc5_ in _loc2_.component)
            {
               _loc3_.§;!R§(this.§?E§.getItemByName(_loc5_.toString()));
            }
            for each(_loc6_ in _loc2_.item)
            {
               _loc3_.§9%§(_loc6_.toString(),!!_loc6_.hasOwnProperty("@scale") ? Number(_loc6_.@scale) : Number(1),parseInt(_loc6_.@unlockLevel));
            }
            for each(_loc7_ in _loc2_.exclude)
            {
               _loc3_.§9K§(_loc7_.toString());
            }
            if(_loc2_.@highlight == "true")
            {
               _loc3_.§&!c§(new §[@§());
            }
            this.§"9§(_loc2_);
         }
      }
      
      public function update(param1:int) : void
      {
         this.§1^§.x += param1 * §6P§ * (this.isOpen() && §,!1§.§2=§.§[!e§() ? 1 : -1);
         if(this.§1^§.x > 5)
         {
            this.§1^§.x = 5;
         }
         if(this.§1^§.x < -this.§1^§.width)
         {
            this.§1^§.x = -this.§1^§.width;
         }
         if(this.§2!0§ <= this.§;!G§.height)
         {
            this.§ !8§.setVisibility(false);
            this.§;!G§.y = -§6";§ * 2;
            this.§[!D§.mClip.scrollRect = this.§;!G§;
         }
         else
         {
            this.§ !8§.setVisibility(true);
            this.§;!G§.y = Math.max(0,this.§`1§.§#!l§() * (this.§2!0§ - this.§;!G§.height)) - §6";§ * 2;
            this.§[!D§.mClip.scrollRect = this.§;!G§;
         }
      }
      
      private function §&s§(param1:String, param2:String = null) : §7;§
      {
         var _loc3_:§="#§ = this.§?E§.getItemByName(param1) as §="#§;
         var _loc4_:§="#§ = null;
         if(param2)
         {
            _loc4_ = this.§?E§.getItemByName(param2) as §="#§;
         }
         var _loc5_:§7;§;
         if(_loc5_ = this.§=!p§.§>"4§(_loc4_))
         {
            return _loc5_.§3!%§(_loc3_);
         }
         return null;
      }
      
      public function §%w§(param1:§="#§, param2:Boolean = true) : void
      {
         if(param1 == null)
         {
            this.§=!p§.§9!%§();
         }
         else
         {
            this.§=!p§.§4Y§(param1,param2);
            this.§-!g§();
         }
      }
      
      public function §#!K§() : String
      {
         return this.§=!p§.§&"6§();
      }
      
      public function §6!p§(param1:Boolean = true, param2:int = 1) : void
      {
         this.§=!p§.§6!p§(param2,param1);
         this.§-!g§();
      }
      
      public function §+K§(param1:§="#§) : void
      {
         var _loc2_:§7;§ = this.§=!p§.§>"4§(param1);
         if(_loc2_)
         {
            _loc2_.§9!%§();
         }
      }
      
      public function §-!g§() : void
      {
         var _loc7_:§!$§ = null;
         var _loc8_:§!$§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc1_:Vector.<§!$§> = this.§=!p§.§?1§();
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:Number = this.§1!E§ / 2 - §0?§ * 2;
         var _loc3_:int = 0;
         var _loc5_:Number = 0;
         var _loc6_:int = 0;
         for each(_loc8_ in _loc1_)
         {
            if((_loc9_ = _loc8_.§?5§ < 1.6 * _loc2_ ? 1 : 2) == 1)
            {
               _loc8_.y = _loc5_;
               _loc8_.x = (_loc3_ + 0.5) * _loc2_ + (_loc3_ * 3 + 0.5) * §0?§;
               _loc3_ = (_loc3_ + 1) % 2;
               _loc10_ = _loc2_ + §0?§ * 0.5;
            }
            else
            {
               if(_loc3_ == 1 && _loc7_)
               {
                  _loc7_.y += _loc7_.height / 2;
                  _loc5_ += _loc7_.height + §6";§;
                  _loc7_.x = (2 * _loc2_ + 3.5 * §0?§) / 2;
               }
               _loc8_.y = _loc5_;
               _loc8_.x = (2 * _loc2_ + 3.5 * §0?§) / 2;
               _loc3_ = 0;
               _loc10_ = _loc2_ * 2 + §0?§;
               _loc7_ = null;
            }
            _loc11_ = Math.min(1,_loc10_ / _loc8_.§?5§);
            _loc8_.§&"4§(_loc11_);
            _loc6_ = Math.max(_loc8_.height,_loc6_);
            if(_loc3_ == 0)
            {
               _loc8_.y += _loc6_ / 2;
               if(_loc7_)
               {
                  _loc7_.y += _loc6_ / 2;
               }
               _loc5_ += _loc6_ + §6";§;
               _loc7_ = null;
               _loc6_ = 0;
            }
            _loc8_.visible = true;
            _loc7_ = _loc8_;
         }
         this.§2!0§ = _loc5_;
         for each(_loc8_ in _loc1_)
         {
            _loc8_.visible = true;
            _loc8_.addEventListener(MouseEvent.MOUSE_DOWN,this.§;B§);
            if((this.§?E§.getItemByName("Objects") as §="#§).§%!v§ == §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               if(!(AngryBirdsFP11.§>" § as §'"#§).§?Z§(_loc8_.getItemName()))
               {
                  _loc8_.§,"$§(0);
                  _loc8_.removeEventListener(MouseEvent.MOUSE_DOWN,this.§;B§);
               }
               else
               {
                  _loc8_.§,"$§(3);
               }
            }
            else if(!(AngryBirdsFP11.§>" § as §'"#§).§?Z§(_loc8_.getItemName()))
            {
               _loc8_.lock();
            }
            else
            {
               _loc8_.unlock();
            }
         }
      }
      
      private function §;B§(param1:MouseEvent) : void
      {
         this.§>W§ = param1.currentTarget as §!$§;
         dispatchEvent(new §0!t§(§0!t§.§]!x§));
      }
      
      public function §-!G§() : §!$§
      {
         return this.§>W§;
      }
      
      public function isOpen() : Boolean
      {
         return this.§=!p§.§&H§();
      }
      
      public function §1!&§(param1:§="#§) : Boolean
      {
         return this.§=!p§.§>"4§(param1).§&H§();
      }
      
      public function §1!J§(param1:int) : void
      {
         this.§;!G§.height = param1;
      }
      
      public function §+!I§(param1:String) : §!$§
      {
         var _loc3_:§!$§ = null;
         var _loc2_:Vector.<§!$§> = this.§=!p§.§#h§();
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.getItemName() == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §7!r§(param1:§!$§) : §="#§
      {
         return this.§=!p§.§>x§(param1.getItemName());
      }
   }
}
