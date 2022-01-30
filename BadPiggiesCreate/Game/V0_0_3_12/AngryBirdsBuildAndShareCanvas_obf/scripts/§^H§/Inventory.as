package §^H§
{
   import §"p§.§@=§;
   import §,!x§.§0!s§;
   import §-=§.§8"1§;
   import §5!8§.§+!?§;
   import §5!8§.§1!Y§;
   import §5!8§.§;!Z§;
   import §>";§.§#§;
   import §@">§.§%!u§;
   import §^x§.§;_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class Inventory extends EventDispatcher
   {
      
      protected static var §5_§:Class = §`!g§;
      
      private static const §>s§:int = 10;
      
      private static const §>t§:int = 5;
      
      private static const §7!H§:int = 25;
      
      private static const §4f§:Number = 1.5;
       
      
      private var §7!J§:§!a§;
      
      private var §^"%§:int = 2;
      
      private var §2M§:Vector.<MovieClip>;
      
      private var §?F§:§%!u§;
      
      private var §8!w§:§+!?§ = null;
      
      private var §&!G§:§+!?§;
      
      private var §?V§:§1!Y§;
      
      private var §]v§:§+!?§;
      
      private var §#!H§:Rectangle;
      
      private var §;&§:int;
      
      private var §;=§:int;
      
      private var §;O§:int;
      
      private var §8R§:§"!i§;
      
      private var §4!r§:Boolean = false;
      
      public function Inventory(param1:§%!u§)
      {
         this.§#!H§ = new Rectangle();
         super();
         this.§?F§ = param1;
         this.§]v§ = param1.getItemByName("ItemContainer") as §+!?§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]v§.mClip.numChildren)
         {
            this.§]v§.mClip.getChildAt(_loc2_).alpha = 0;
            _loc2_++;
         }
         this.§;O§ = this.§]v§.mClip.width;
         this.§#!H§ = new Rectangle(-this.§]v§.mClip.width,-§>s§ * 2,this.§]v§.mClip.width * 3,this.§]v§.mClip.height);
         this.§]v§.x -= this.§]v§.mClip.width;
         this.§]v§.y -= §>s§;
         this.§8!w§ = param1.getItemByName("Inventory") as §+!?§;
         this.§8!w§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§9!H§);
         this.§8!w§.mClip.addEventListener(MouseEvent.ROLL_OUT,this.§>c§);
         this.§8!w§.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.§?!J§);
         this.§7!J§ = new §!a§(this.§]v§);
         this.§&!G§ = param1.getItemByName("ScrollBar") as §+!?§;
         this.§?V§ = this.§&!G§.getItemByName("Slider") as §1!Y§;
         this.§?V§.mClip.gotoAndStop(0);
         this.§?V§.mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§`Z§);
         this.§?V§.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§!g§);
         this.§&"?§(§@=§.§="#§(§5_§));
      }
      
      public static function §]h§(param1:String, param2:String, param3:XML = null, param4:Boolean = false) : Boolean
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
            param3 = §@=§.§="#§(§5_§);
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
            if(_loc6_ = §]h§(param1,param2,_loc5_,param4))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §,!1§() : void
      {
         this.§7!J§.§4!u§();
      }
      
      private function §""0§() : void
      {
         this.§?V§.mClip.stop();
      }
      
      protected function §`Z§(param1:MouseEvent) : void
      {
         this.§^L§();
         this.§?V§.mClip.play();
      }
      
      private function §^L§() : void
      {
         if(this.§?V§.mClip.hasEventListener(Event.ENTER_FRAME))
         {
            this.§?V§.mClip.removeEventListener(Event.ENTER_FRAME,this.§+§);
         }
      }
      
      protected function §+§(param1:Event) : void
      {
         if(this.§?V§.mClip.currentFrame == 1)
         {
            this.§^L§();
         }
         else
         {
            this.§?V§.mClip.prevFrame();
         }
      }
      
      protected function §!g§(param1:MouseEvent) : void
      {
         this.§?V§.mClip.gotoAndStop(3);
         this.§?V§.mClip.addEventListener(Event.ENTER_FRAME,this.§+§,false,0,true);
      }
      
      private function §?!J§(param1:MouseEvent) : void
      {
         this.§4!r§ = false;
      }
      
      private function §9!H§(param1:MouseEvent) : void
      {
         if(this.§4!r§)
         {
            dispatchEvent(new §8"1§(§8"1§.CANCEL));
         }
         this.§4!r§ = false;
      }
      
      private function §>c§(param1:MouseEvent) : void
      {
         this.§4!r§ = true;
      }
      
      private function §&"?§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§!a§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         for each(_loc2_ in param1.category)
         {
            _loc3_ = this.§ !3§(_loc2_.@button,param1.@button);
            for each(_loc4_ in _loc2_.include_category)
            {
               _loc3_.§ h§(_loc4_.toString());
            }
            for each(_loc5_ in _loc2_.component)
            {
               _loc3_.§`!Y§(this.§?F§.getItemByName(_loc5_.toString()));
            }
            for each(_loc6_ in _loc2_.item)
            {
               _loc3_.§@"§(_loc6_.toString(),!!_loc6_.hasOwnProperty("@scale") ? Number(_loc6_.@scale) : Number(1),parseInt(_loc6_.@unlockLevel));
            }
            for each(_loc7_ in _loc2_.exclude)
            {
               _loc3_.§7!o§(_loc7_.toString());
            }
            if(_loc2_.@highlight == "true")
            {
               _loc3_.§>l§(new §8=§());
            }
            this.§&"?§(_loc2_);
         }
      }
      
      public function update(param1:int) : void
      {
         this.§8!w§.x += param1 * §4f§ * (this.isOpen() && §0!s§.§ "!§.§7!F§() ? 1 : -1);
         if(this.§8!w§.x > 5)
         {
            this.§8!w§.x = 5;
         }
         if(this.§8!w§.x < -this.§8!w§.width)
         {
            this.§8!w§.x = -this.§8!w§.width;
         }
         if(this.§;&§ <= this.§#!H§.height)
         {
            this.§&!G§.setVisibility(false);
            this.§#!H§.y = -§>s§ * 2;
            this.§]v§.mClip.scrollRect = this.§#!H§;
         }
         else
         {
            this.§&!G§.setVisibility(true);
            this.§#!H§.y = Math.max(0,this.§?V§.§;!X§() * (this.§;&§ - this.§#!H§.height)) - §>s§ * 2;
            this.§]v§.mClip.scrollRect = this.§#!H§;
         }
      }
      
      private function § !3§(param1:String, param2:String = null) : §!a§
      {
         var _loc3_:§;!Z§ = this.§?F§.getItemByName(param1) as §;!Z§;
         var _loc4_:§;!Z§ = null;
         if(param2)
         {
            _loc4_ = this.§?F§.getItemByName(param2) as §;!Z§;
         }
         var _loc5_:§!a§;
         if(_loc5_ = this.§7!J§.§@"6§(_loc4_))
         {
            return _loc5_.§9!d§(_loc3_);
         }
         return null;
      }
      
      public function §8"=§(param1:§;!Z§, param2:Boolean = true) : void
      {
         if(param1 == null)
         {
            this.§7!J§.§;!L§();
         }
         else
         {
            this.§7!J§.§'!;§(param1,param2);
            this.§=!e§();
         }
      }
      
      public function §?" §() : String
      {
         return this.§7!J§.§=i§();
      }
      
      public function §0"8§(param1:Boolean = true, param2:int = 1) : void
      {
         this.§7!J§.§0"8§(param2,param1);
         this.§=!e§();
      }
      
      public function §,M§(param1:§;!Z§) : void
      {
         var _loc2_:§!a§ = this.§7!J§.§@"6§(param1);
         if(_loc2_)
         {
            _loc2_.§;!L§();
         }
      }
      
      public function §=!e§() : void
      {
         var _loc7_:§"!i§ = null;
         var _loc8_:§"!i§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc1_:Vector.<§"!i§> = this.§7!J§.§=G§();
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:Number = this.§;O§ / 2 - §>t§ * 2;
         var _loc3_:int = 0;
         var _loc5_:Number = 0;
         var _loc6_:int = 0;
         for each(_loc8_ in _loc1_)
         {
            if((_loc9_ = _loc8_.§&!E§ < 1.6 * _loc2_ ? 1 : 2) == 1)
            {
               _loc8_.y = _loc5_;
               _loc8_.x = (_loc3_ + 0.5) * _loc2_ + (_loc3_ * 3 + 0.5) * §>t§;
               _loc3_ = (_loc3_ + 1) % 2;
               _loc10_ = _loc2_ + §>t§ * 0.5;
            }
            else
            {
               if(_loc3_ == 1 && _loc7_)
               {
                  _loc7_.y += _loc7_.height / 2;
                  _loc5_ += _loc7_.height + §>s§;
                  _loc7_.x = (2 * _loc2_ + 3.5 * §>t§) / 2;
               }
               _loc8_.y = _loc5_;
               _loc8_.x = (2 * _loc2_ + 3.5 * §>t§) / 2;
               _loc3_ = 0;
               _loc10_ = _loc2_ * 2 + §>t§;
               _loc7_ = null;
            }
            _loc11_ = Math.min(1,_loc10_ / _loc8_.§&!E§);
            _loc8_.§;f§(_loc11_);
            _loc6_ = Math.max(_loc8_.height,_loc6_);
            if(_loc3_ == 0)
            {
               _loc8_.y += _loc6_ / 2;
               if(_loc7_)
               {
                  _loc7_.y += _loc6_ / 2;
               }
               _loc5_ += _loc6_ + §>s§;
               _loc7_ = null;
               _loc6_ = 0;
            }
            _loc8_.visible = true;
            _loc7_ = _loc8_;
         }
         this.§;&§ = _loc5_;
         for each(_loc8_ in _loc1_)
         {
            _loc8_.visible = true;
            _loc8_.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!$§);
            if((this.§?F§.getItemByName("Objects") as §;!Z§).§8"!§ == §;_§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               if(!(AngryBirdsFP11.§`!j§ as §#§).§ "1§(_loc8_.getItemName()))
               {
                  _loc8_.§]"-§(0);
                  _loc8_.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!$§);
               }
               else
               {
                  _loc8_.§]"-§(3);
               }
            }
            else if(!(AngryBirdsFP11.§`!j§ as §#§).§ "1§(_loc8_.getItemName()))
            {
               _loc8_.lock();
            }
            else
            {
               _loc8_.unlock();
            }
         }
      }
      
      private function §[!$§(param1:MouseEvent) : void
      {
         this.§8R§ = param1.currentTarget as §"!i§;
         dispatchEvent(new §8"1§(§8"1§.§--§));
      }
      
      public function §"8§() : §"!i§
      {
         return this.§8R§;
      }
      
      public function isOpen() : Boolean
      {
         return this.§7!J§.§[!x§();
      }
      
      public function §2#§(param1:§;!Z§) : Boolean
      {
         return this.§7!J§.§@"6§(param1).§[!x§();
      }
      
      public function §8"$§(param1:int) : void
      {
         this.§#!H§.height = param1;
      }
      
      public function §3"5§(param1:String) : §"!i§
      {
         var _loc3_:§"!i§ = null;
         var _loc2_:Vector.<§"!i§> = this.§7!J§.§&!1§();
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.getItemName() == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §%!o§(param1:§"!i§) : §;!Z§
      {
         return this.§7!J§.§0!8§(param1.getItemName());
      }
   }
}
