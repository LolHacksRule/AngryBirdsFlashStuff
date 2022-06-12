package §8!7§
{
   import § !%§.§^2§;
   import §%!n§.§7P§;
   import §&!&§.§+!A§;
   import §5!k§.§6"6§;
   import §<!I§.§5!j§;
   import §<!I§.§="5§;
   import §<!I§.§>"-§;
   import §<Z§.§7!!§;
   import §@!;§.§+b§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class Inventory extends EventDispatcher
   {
      
      protected static var §#"!§:Class = §^!E§;
      
      private static const §]c§:int = 10;
      
      private static const § i§:int = 5;
      
      private static const §9A§:int = 25;
      
      private static const §0!%§:Number = 1.5;
       
      
      private var §,!@§:§1C§;
      
      private var §>!%§:int = 2;
      
      private var § !k§:Vector.<MovieClip>;
      
      private var §;i§:§7!!§;
      
      private var §[",§:§>"-§ = null;
      
      private var §6"§:§>"-§;
      
      private var §5!N§:§5!j§;
      
      private var §[+§:§>"-§;
      
      private var §#!G§:Rectangle;
      
      private var §6!%§:int;
      
      private var §6g§:int;
      
      private var §`X§:int;
      
      private var §=n§:§'9§;
      
      private var §%p§:Boolean = false;
      
      public function Inventory(param1:§7!!§)
      {
         this.§#!G§ = new Rectangle();
         super();
         this.§;i§ = param1;
         this.§[+§ = param1.getItemByName("ItemContainer") as §>"-§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[+§.mClip.numChildren)
         {
            this.§[+§.mClip.getChildAt(_loc2_).alpha = 0;
            _loc2_++;
         }
         this.§`X§ = this.§[+§.mClip.width;
         this.§#!G§ = new Rectangle(-this.§[+§.mClip.width,-§]c§ * 2,this.§[+§.mClip.width * 3,this.§[+§.mClip.height);
         this.§[+§.x -= this.§[+§.mClip.width;
         this.§[+§.y -= §]c§;
         this.§[",§ = param1.getItemByName("Inventory") as §>"-§;
         this.§[",§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§"!I§);
         this.§[",§.mClip.addEventListener(MouseEvent.ROLL_OUT,this.§,"4§);
         this.§[",§.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.§+!T§);
         this.§,!@§ = new §1C§(this.§[+§);
         this.§6"§ = param1.getItemByName("ScrollBar") as §>"-§;
         this.§5!N§ = this.§6"§.getItemByName("Slider") as §5!j§;
         this.§5!N§.mClip.gotoAndStop(0);
         this.§5!N§.mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§1u§);
         this.§5!N§.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§4`§);
         this.§4"2§(§+b§.§0x§(§#"!§));
      }
      
      public static function §;j§(param1:String, param2:String, param3:XML = null, param4:Boolean = false) : Boolean
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
            param3 = §+b§.§0x§(§#"!§);
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
            if(_loc6_ = §;j§(param1,param2,_loc5_,param4))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §7t§() : void
      {
         this.§,!@§.§5!8§();
      }
      
      private function §]!@§() : void
      {
         this.§5!N§.mClip.stop();
      }
      
      protected function §1u§(param1:MouseEvent) : void
      {
         this.§'_§();
         this.§5!N§.mClip.play();
      }
      
      private function §'_§() : void
      {
         if(this.§5!N§.mClip.hasEventListener(Event.ENTER_FRAME))
         {
            this.§5!N§.mClip.removeEventListener(Event.ENTER_FRAME,this.§-q§);
         }
      }
      
      protected function §-q§(param1:Event) : void
      {
         if(this.§5!N§.mClip.currentFrame == 1)
         {
            this.§'_§();
         }
         else
         {
            this.§5!N§.mClip.prevFrame();
         }
      }
      
      protected function §4`§(param1:MouseEvent) : void
      {
         this.§5!N§.mClip.gotoAndStop(3);
         this.§5!N§.mClip.addEventListener(Event.ENTER_FRAME,this.§-q§,false,0,true);
      }
      
      private function §+!T§(param1:MouseEvent) : void
      {
         this.§%p§ = false;
      }
      
      private function §"!I§(param1:MouseEvent) : void
      {
         if(this.§%p§)
         {
            dispatchEvent(new §6"6§(§6"6§.CANCEL));
         }
         this.§%p§ = false;
      }
      
      private function §,"4§(param1:MouseEvent) : void
      {
         this.§%p§ = true;
      }
      
      private function §4"2§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§1C§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         for each(_loc2_ in param1.category)
         {
            _loc3_ = this.§+!;§(_loc2_.@button,param1.@button);
            for each(_loc4_ in _loc2_.include_category)
            {
               _loc3_.§&e§(_loc4_.toString());
            }
            for each(_loc5_ in _loc2_.component)
            {
               _loc3_.§?!;§(this.§;i§.getItemByName(_loc5_.toString()));
            }
            for each(_loc6_ in _loc2_.item)
            {
               _loc3_.§;!7§(_loc6_.toString(),!!_loc6_.hasOwnProperty("@scale") ? Number(_loc6_.@scale) : Number(1));
            }
            for each(_loc7_ in _loc2_.exclude)
            {
               _loc3_.§]"-§(_loc7_.toString());
            }
            if(_loc2_.@highlight == "true")
            {
               _loc3_.§ !j§(new §`!#§());
            }
            this.§4"2§(_loc2_);
         }
      }
      
      public function update(param1:int) : void
      {
         this.§[",§.x += param1 * §0!%§ * (this.isOpen() && §7P§.§'!o§.§2!k§() ? 1 : -1);
         if(this.§[",§.x > 5)
         {
            this.§[",§.x = 5;
         }
         if(this.§[",§.x < -this.§[",§.width)
         {
            this.§[",§.x = -this.§[",§.width;
         }
         if(this.§6!%§ <= this.§#!G§.height)
         {
            this.§6"§.setVisibility(false);
            this.§#!G§.y = -§]c§ * 2;
            this.§[+§.mClip.scrollRect = this.§#!G§;
         }
         else
         {
            this.§6"§.setVisibility(true);
            this.§#!G§.y = Math.max(0,this.§5!N§.§!!g§() * (this.§6!%§ - this.§#!G§.height)) - §]c§ * 2;
            this.§[+§.mClip.scrollRect = this.§#!G§;
         }
      }
      
      private function §+!;§(param1:String, param2:String = null) : §1C§
      {
         var _loc3_:§="5§ = this.§;i§.getItemByName(param1) as §="5§;
         var _loc4_:§="5§ = null;
         if(param2)
         {
            _loc4_ = this.§;i§.getItemByName(param2) as §="5§;
         }
         var _loc5_:§1C§;
         if(_loc5_ = this.§,!@§.§'[§(_loc4_))
         {
            return _loc5_.§@"1§(_loc3_);
         }
         return null;
      }
      
      public function §]!e§(param1:§="5§, param2:Boolean = true) : void
      {
         if(param1 == null)
         {
            this.§,!@§.§?W§();
         }
         else
         {
            this.§,!@§.§+!_§(param1,param2);
            this.§1!!§();
         }
      }
      
      public function §8!0§() : String
      {
         return this.§,!@§.§6!I§();
      }
      
      public function §5!;§(param1:Boolean = true, param2:int = 1) : void
      {
         this.§,!@§.§5!;§(param2,param1);
         this.§1!!§();
      }
      
      public function §'<§(param1:§="5§) : void
      {
         var _loc2_:§1C§ = this.§,!@§.§'[§(param1);
         if(_loc2_)
         {
            _loc2_.§?W§();
         }
      }
      
      public function §1!!§() : void
      {
         var _loc7_:§'9§ = null;
         var _loc8_:§'9§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc1_:Vector.<§'9§> = this.§,!@§.§%'§();
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:Number = this.§`X§ / 2 - § i§ * 2;
         var _loc3_:int = 0;
         var _loc5_:Number = 0;
         var _loc6_:int = 0;
         for each(_loc8_ in _loc1_)
         {
            if((_loc9_ = _loc8_.§7>§ < 1.6 * _loc2_ ? 1 : 2) == 1)
            {
               _loc8_.y = _loc5_;
               _loc8_.x = (_loc3_ + 0.5) * _loc2_ + (_loc3_ * 3 + 0.5) * § i§;
               _loc3_ = (_loc3_ + 1) % 2;
               _loc10_ = _loc2_ + § i§ * 0.5;
            }
            else
            {
               if(_loc3_ == 1 && _loc7_)
               {
                  _loc7_.y += _loc7_.height / 2;
                  _loc5_ += _loc7_.height + §]c§;
                  _loc7_.x = (2 * _loc2_ + 3.5 * § i§) / 2;
               }
               _loc8_.y = _loc5_;
               _loc8_.x = (2 * _loc2_ + 3.5 * § i§) / 2;
               _loc3_ = 0;
               _loc10_ = _loc2_ * 2 + § i§;
               _loc7_ = null;
            }
            _loc11_ = Math.min(1,_loc10_ / _loc8_.§7>§);
            _loc8_.§4!w§(_loc11_);
            _loc6_ = Math.max(_loc8_.height,_loc6_);
            if(_loc3_ == 0)
            {
               _loc8_.y += _loc6_ / 2;
               if(_loc7_)
               {
                  _loc7_.y += _loc6_ / 2;
               }
               _loc5_ += _loc6_ + §]c§;
               _loc7_ = null;
               _loc6_ = 0;
            }
            _loc8_.visible = true;
            _loc7_ = _loc8_;
         }
         this.§6!%§ = _loc5_;
         for each(_loc8_ in _loc1_)
         {
            _loc8_.visible = true;
            _loc8_.addEventListener(MouseEvent.MOUSE_DOWN,this.§@!-§);
            if((this.§;i§.getItemByName("Objects") as §="5§).§]p§ == §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               if(!(AngryBirdsFP11.§5!c§ as §^2§).§`!s§(_loc8_.getItemName()))
               {
                  _loc8_.§`3§(0);
                  _loc8_.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@!-§);
               }
               else
               {
                  _loc8_.§`3§(3);
               }
            }
            else if(!(AngryBirdsFP11.§5!c§ as §^2§).§`!s§(_loc8_.getItemName()))
            {
               _loc8_.lock();
            }
            else
            {
               _loc8_.unlock();
            }
         }
      }
      
      private function §@!-§(param1:MouseEvent) : void
      {
         this.§=n§ = param1.currentTarget as §'9§;
         dispatchEvent(new §6"6§(§6"6§.§@!%§));
      }
      
      public function §4,§() : §'9§
      {
         return this.§=n§;
      }
      
      public function isOpen() : Boolean
      {
         return this.§,!@§.§7R§();
      }
      
      public function §0m§(param1:§="5§) : Boolean
      {
         return this.§,!@§.§'[§(param1).§7R§();
      }
      
      public function §;!&§(param1:int) : void
      {
         this.§#!G§.height = param1;
      }
      
      public function §+!!§(param1:String) : §'9§
      {
         var _loc3_:§'9§ = null;
         var _loc2_:Vector.<§'9§> = this.§,!@§.§9V§();
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.getItemName() == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §,W§(param1:§'9§) : §="5§
      {
         return this.§,!@§.§^!A§(param1.getItemName());
      }
   }
}
