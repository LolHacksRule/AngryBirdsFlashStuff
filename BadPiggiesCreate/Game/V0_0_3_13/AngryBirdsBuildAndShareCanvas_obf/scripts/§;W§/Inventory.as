package §;W§
{
   import § ^§.§@#§;
   import § true§.§1H§;
   import § true§.§8K§;
   import § true§.§[!h§;
   import §&W§.§3g§;
   import §-!H§.§0!]§;
   import §0!C§.§=!]§;
   import §4!j§.§""3§;
   import §7!g§.§?!i§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class Inventory extends EventDispatcher
   {
      
      protected static var final:Class = §2!4§;
      
      private static const §;!"§:int = 10;
      
      private static const §%"?§:int = 5;
      
      private static const §%! §:int = 25;
      
      private static const §@c§:Number = 1.5;
       
      
      private var §+!@§:§`!o§;
      
      private var §3!&§:int = 2;
      
      private var § r§:Vector.<MovieClip>;
      
      private var §3?§:§=!]§;
      
      private var §&"4§:§1H§ = null;
      
      private var §8"#§:§1H§;
      
      private var §'=§:§[!h§;
      
      private var §`!>§:§1H§;
      
      private var §@!9§:Rectangle;
      
      private var §2e§:int;
      
      private var §-1§:int;
      
      private var §'!M§:int;
      
      private var §'!k§:§%!§;
      
      private var §9v§:Boolean = false;
      
      public function Inventory(param1:§=!]§)
      {
         this.§@!9§ = new Rectangle();
         super();
         this.§3?§ = param1;
         this.§`!>§ = param1.getItemByName("ItemContainer") as §1H§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!>§.mClip.numChildren)
         {
            this.§`!>§.mClip.getChildAt(_loc2_).alpha = 0;
            _loc2_++;
         }
         this.§'!M§ = this.§`!>§.mClip.width;
         this.§@!9§ = new Rectangle(-this.§`!>§.mClip.width,-§;!"§ * 2,this.§`!>§.mClip.width * 3,this.§`!>§.mClip.height);
         this.§`!>§.x -= this.§`!>§.mClip.width;
         this.§`!>§.y -= §;!"§;
         this.§&"4§ = param1.getItemByName("Inventory") as §1H§;
         this.§&"4§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§5r§);
         this.§&"4§.mClip.addEventListener(MouseEvent.ROLL_OUT,this.§4!M§);
         this.§&"4§.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.§]r§);
         this.§+!@§ = new §`!o§(this.§`!>§);
         this.§8"#§ = param1.getItemByName("ScrollBar") as §1H§;
         this.§'=§ = this.§8"#§.getItemByName("Slider") as §[!h§;
         this.§'=§.mClip.gotoAndStop(0);
         this.§'=§.mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§8!O§);
         this.§'=§.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§8F§);
         this.§5!9§(§3g§.§5">§(final));
      }
      
      public static function §[%§(param1:String, param2:String, param3:XML = null, param4:Boolean = false) : Boolean
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
            param3 = §3g§.§5">§(final);
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
            if(_loc6_ = §[%§(param1,param2,_loc5_,param4))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §3!§() : void
      {
         this.§+!@§.§02§();
      }
      
      private function §9!P§() : void
      {
         this.§'=§.mClip.stop();
      }
      
      protected function §8!O§(param1:MouseEvent) : void
      {
         this.§4"5§();
         this.§'=§.mClip.play();
      }
      
      private function §4"5§() : void
      {
         if(this.§'=§.mClip.hasEventListener(Event.ENTER_FRAME))
         {
            this.§'=§.mClip.removeEventListener(Event.ENTER_FRAME,this.§][§);
         }
      }
      
      protected function §][§(param1:Event) : void
      {
         if(this.§'=§.mClip.currentFrame == 1)
         {
            this.§4"5§();
         }
         else
         {
            this.§'=§.mClip.prevFrame();
         }
      }
      
      protected function §8F§(param1:MouseEvent) : void
      {
         this.§'=§.mClip.gotoAndStop(3);
         this.§'=§.mClip.addEventListener(Event.ENTER_FRAME,this.§][§,false,0,true);
      }
      
      private function §]r§(param1:MouseEvent) : void
      {
         this.§9v§ = false;
      }
      
      private function §5r§(param1:MouseEvent) : void
      {
         if(this.§9v§)
         {
            dispatchEvent(new §?!i§(§?!i§.CANCEL));
         }
         this.§9v§ = false;
      }
      
      private function §4!M§(param1:MouseEvent) : void
      {
         this.§9v§ = true;
      }
      
      private function §5!9§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§`!o§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         for each(_loc2_ in param1.category)
         {
            _loc3_ = this.§!!4§(_loc2_.@button,param1.@button);
            for each(_loc4_ in _loc2_.include_category)
            {
               _loc3_.§-!4§(_loc4_.toString());
            }
            for each(_loc5_ in _loc2_.component)
            {
               _loc3_.§[!I§(this.§3?§.getItemByName(_loc5_.toString()));
            }
            for each(_loc6_ in _loc2_.item)
            {
               _loc3_.§92§(_loc6_.toString(),!!_loc6_.hasOwnProperty("@scale") ? Number(_loc6_.@scale) : Number(1),parseInt(_loc6_.@unlockLevel));
            }
            for each(_loc7_ in _loc2_.exclude)
            {
               _loc3_.§9!'§(_loc7_.toString());
            }
            if(_loc2_.@highlight == "true")
            {
               _loc3_.§5!;§(new §,!e§());
            }
            this.§5!9§(_loc2_);
         }
      }
      
      public function update(param1:int) : void
      {
         this.§&"4§.x += param1 * §@c§ * (this.isOpen() && §@#§.§7!?§.§]Z§() ? 1 : -1);
         if(this.§&"4§.x > 5)
         {
            this.§&"4§.x = 5;
         }
         if(this.§&"4§.x < -this.§&"4§.width)
         {
            this.§&"4§.x = -this.§&"4§.width;
         }
         if(this.§2e§ <= this.§@!9§.height)
         {
            this.§8"#§.setVisibility(false);
            this.§@!9§.y = -§;!"§ * 2;
            this.§`!>§.mClip.scrollRect = this.§@!9§;
         }
         else
         {
            this.§8"#§.setVisibility(true);
            this.§@!9§.y = Math.max(0,this.§'=§.§5t§() * (this.§2e§ - this.§@!9§.height)) - §;!"§ * 2;
            this.§`!>§.mClip.scrollRect = this.§@!9§;
         }
      }
      
      private function §!!4§(param1:String, param2:String = null) : §`!o§
      {
         var _loc3_:§8K§ = this.§3?§.getItemByName(param1) as §8K§;
         var _loc4_:§8K§ = null;
         if(param2)
         {
            _loc4_ = this.§3?§.getItemByName(param2) as §8K§;
         }
         var _loc5_:§`!o§;
         if(_loc5_ = this.§+!@§.§&"&§(_loc4_))
         {
            return _loc5_.§0r§(_loc3_);
         }
         return null;
      }
      
      public function §^J§(param1:§8K§, param2:Boolean = true) : void
      {
         if(param1 == null)
         {
            this.§+!@§.§>;§();
         }
         else
         {
            this.§+!@§.§]p§(param1,param2);
            this.§[!y§();
         }
      }
      
      public function §;!!§() : String
      {
         return this.§+!@§.§]l§();
      }
      
      public function §'S§(param1:Boolean = true, param2:int = 1) : void
      {
         this.§+!@§.§'S§(param2,param1);
         this.§[!y§();
      }
      
      public function §'"8§(param1:§8K§) : void
      {
         var _loc2_:§`!o§ = this.§+!@§.§&"&§(param1);
         if(_loc2_)
         {
            _loc2_.§>;§();
         }
      }
      
      public function §[!y§() : void
      {
         var _loc7_:§%!§ = null;
         var _loc8_:§%!§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc1_:Vector.<§%!§> = this.§+!@§.§+c§();
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:Number = this.§'!M§ / 2 - §%"?§ * 2;
         var _loc3_:int = 0;
         var _loc5_:Number = 0;
         var _loc6_:int = 0;
         for each(_loc8_ in _loc1_)
         {
            if((_loc9_ = _loc8_.§7!C§ < 1.6 * _loc2_ ? 1 : 2) == 1)
            {
               _loc8_.y = _loc5_;
               _loc8_.x = (_loc3_ + 0.5) * _loc2_ + (_loc3_ * 3 + 0.5) * §%"?§;
               _loc3_ = (_loc3_ + 1) % 2;
               _loc10_ = _loc2_ + §%"?§ * 0.5;
            }
            else
            {
               if(_loc3_ == 1 && _loc7_)
               {
                  _loc7_.y += _loc7_.height / 2;
                  _loc5_ += _loc7_.height + §;!"§;
                  _loc7_.x = (2 * _loc2_ + 3.5 * §%"?§) / 2;
               }
               _loc8_.y = _loc5_;
               _loc8_.x = (2 * _loc2_ + 3.5 * §%"?§) / 2;
               _loc3_ = 0;
               _loc10_ = _loc2_ * 2 + §%"?§;
               _loc7_ = null;
            }
            _loc11_ = Math.min(1,_loc10_ / _loc8_.§7!C§);
            _loc8_.§`!C§(_loc11_);
            _loc6_ = Math.max(_loc8_.height,_loc6_);
            if(_loc3_ == 0)
            {
               _loc8_.y += _loc6_ / 2;
               if(_loc7_)
               {
                  _loc7_.y += _loc6_ / 2;
               }
               _loc5_ += _loc6_ + §;!"§;
               _loc7_ = null;
               _loc6_ = 0;
            }
            _loc8_.visible = true;
            _loc7_ = _loc8_;
         }
         this.§2e§ = _loc5_;
         for each(_loc8_ in _loc1_)
         {
            _loc8_.visible = true;
            _loc8_.addEventListener(MouseEvent.MOUSE_DOWN,this.§8Z§);
            if((this.§3?§.getItemByName("Objects") as §8K§).§;X§ == §""3§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               if(!(AngryBirdsFP11.§"!c§ as §0!]§).§<!=§(_loc8_.getItemName()))
               {
                  _loc8_.§;V§(0);
                  _loc8_.removeEventListener(MouseEvent.MOUSE_DOWN,this.§8Z§);
               }
               else
               {
                  _loc8_.§;V§(3);
               }
            }
            else if(!(AngryBirdsFP11.§"!c§ as §0!]§).§<!=§(_loc8_.getItemName()))
            {
               _loc8_.lock();
            }
            else
            {
               _loc8_.unlock();
            }
         }
      }
      
      private function §8Z§(param1:MouseEvent) : void
      {
         this.§'!k§ = param1.currentTarget as §%!§;
         dispatchEvent(new §?!i§(§?!i§.§8!G§));
      }
      
      public function §9f§() : §%!§
      {
         return this.§'!k§;
      }
      
      public function isOpen() : Boolean
      {
         return this.§+!@§.§=5§();
      }
      
      public function §'!L§(param1:§8K§) : Boolean
      {
         return this.§+!@§.§&"&§(param1).§=5§();
      }
      
      public function §>!y§(param1:int) : void
      {
         this.§@!9§.height = param1;
      }
      
      public function §]!§(param1:String) : §%!§
      {
         var _loc3_:§%!§ = null;
         var _loc2_:Vector.<§%!§> = this.§+!@§.§2!W§();
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.getItemName() == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §>e§(param1:§%!§) : §8K§
      {
         return this.§+!@§.§3H§(param1.getItemName());
      }
   }
}
