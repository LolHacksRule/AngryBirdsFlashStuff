package §^!k§
{
   import §"_§.§!"8§;
   import §&!<§.§>!V§;
   import §1" §.§!!2§;
   import §6]§.§+!T§;
   import §7!@§.§+`§;
   import §=!7§.§6W§;
   import §=!7§.§8q§;
   import §=!7§.§9"8§;
   import §@y§.§>!D§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class Inventory extends EventDispatcher
   {
      
      protected static var §6-§:Class = §;!W§;
      
      private static const §<! §:int = 10;
      
      private static const §1!g§:int = 5;
      
      private static const §"!>§:int = 25;
      
      private static const §?"%§:Number = 1.5;
       
      
      private var §@6§:§0q§;
      
      private var §9#§:int = 2;
      
      private var §2T§:Vector.<MovieClip>;
      
      private var §`!v§:§>!V§;
      
      private var §2!<§:§6W§ = null;
      
      private var §=! §:§6W§;
      
      private var §8T§:§8q§;
      
      private var § !y§:§6W§;
      
      private var §2D§:Rectangle;
      
      private var §`"§:int;
      
      private var §"6§:int;
      
      private var § [§:int;
      
      private var §""§:§;!T§;
      
      private var §6!"§:Boolean = false;
      
      public function Inventory(param1:§>!V§)
      {
         this.§2D§ = new Rectangle();
         super();
         this.§`!v§ = param1;
         this.§ !y§ = param1.getItemByName("ItemContainer") as §6W§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !y§.mClip.numChildren)
         {
            this.§ !y§.mClip.getChildAt(_loc2_).alpha = 0;
            _loc2_++;
         }
         this.§ [§ = this.§ !y§.mClip.width;
         this.§2D§ = new Rectangle(-this.§ !y§.mClip.width,-§<! § * 2,this.§ !y§.mClip.width * 3,this.§ !y§.mClip.height);
         this.§ !y§.x -= this.§ !y§.mClip.width;
         this.§2!<§ = param1.getItemByName("Inventory") as §6W§;
         this.§2!<§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§8!R§);
         this.§2!<§.mClip.addEventListener(MouseEvent.ROLL_OUT,this.§+!h§);
         this.§2!<§.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.§=c§);
         this.§@6§ = new §0q§(this.§ !y§);
         this.§=! § = param1.getItemByName("ScrollBar") as §6W§;
         this.§8T§ = this.§=! §.getItemByName("Slider") as §8q§;
         this.§8T§.mClip.gotoAndStop(0);
         this.§8T§.mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§;!s§);
         this.§8T§.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§5!f§);
         this.§?!9§(§+!T§.§`x§(§6-§));
      }
      
      public static function §^!D§(param1:String, param2:String, param3:XML = null, param4:Boolean = false) : Boolean
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
            param3 = §+!T§.§`x§(§6-§);
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
            if(_loc6_ = §^!D§(param1,param2,_loc5_,param4))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §2!W§() : void
      {
         this.§@6§.§#k§();
      }
      
      private function §5W§() : void
      {
         this.§8T§.mClip.stop();
      }
      
      protected function §;!s§(param1:MouseEvent) : void
      {
         this.§]!m§();
         this.§8T§.mClip.play();
      }
      
      private function §]!m§() : void
      {
         if(this.§8T§.mClip.hasEventListener(Event.ENTER_FRAME))
         {
            this.§8T§.mClip.removeEventListener(Event.ENTER_FRAME,this.§"!F§);
         }
      }
      
      protected function §"!F§(param1:Event) : void
      {
         if(this.§8T§.mClip.currentFrame == 1)
         {
            this.§]!m§();
         }
         else
         {
            this.§8T§.mClip.prevFrame();
         }
      }
      
      protected function §5!f§(param1:MouseEvent) : void
      {
         this.§8T§.mClip.gotoAndStop(3);
         this.§8T§.mClip.addEventListener(Event.ENTER_FRAME,this.§"!F§,false,0,true);
      }
      
      private function §=c§(param1:MouseEvent) : void
      {
         this.§6!"§ = false;
      }
      
      private function §8!R§(param1:MouseEvent) : void
      {
         if(this.§6!"§)
         {
            dispatchEvent(new §!"8§(§!"8§.CANCEL));
         }
         this.§6!"§ = false;
      }
      
      private function §+!h§(param1:MouseEvent) : void
      {
         this.§6!"§ = true;
      }
      
      private function §?!9§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§0q§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         for each(_loc2_ in param1.category)
         {
            _loc3_ = this.§!!q§(_loc2_.@button,param1.@button);
            for each(_loc4_ in _loc2_.include_category)
            {
               _loc3_.§-!<§(_loc4_.toString());
            }
            for each(_loc5_ in _loc2_.component)
            {
               _loc3_.§#i§(this.§`!v§.getItemByName(_loc5_.toString()));
            }
            for each(_loc6_ in _loc2_.item)
            {
               _loc8_ = !!_loc6_.hasOwnProperty("unlockLevel") ? int(parseInt(_loc6_.@unlockLevel)) : 1;
               _loc9_ = !!_loc6_.hasOwnProperty("@scale") ? Number(_loc6_.@scale) : Number(1);
               _loc3_.§,!D§(_loc6_.toString(),_loc9_,_loc8_);
            }
            for each(_loc7_ in _loc2_.exclude)
            {
               _loc3_.§"!8§(_loc7_.toString());
            }
            if(_loc2_.@highlight == "true")
            {
               _loc3_.§,"=§(new §1",§());
            }
            this.§?!9§(_loc2_);
         }
      }
      
      public function update(param1:int) : void
      {
         this.§2!<§.x += param1 * §?"%§ * (this.isOpen() && §!!2§.§[E§.§]"7§() ? 1 : -1);
         if(this.§2!<§.x > 5)
         {
            this.§2!<§.x = 5;
         }
         if(this.§2!<§.x < -this.§2!<§.width)
         {
            this.§2!<§.x = -this.§2!<§.width;
         }
         if(this.§`"§ + §<! § <= this.§2D§.height)
         {
            this.§=! §.setVisibility(false);
            this.§2D§.y = -§<! § * 2;
            this.§ !y§.mClip.scrollRect = this.§2D§;
         }
         else
         {
            this.§=! §.setVisibility(true);
            this.§2D§.y = Math.max(0,this.§8T§.§&!#§() * (this.§`"§ + §<! § * 2 - this.§2D§.height)) - §<! § * 2;
            this.§ !y§.mClip.scrollRect = this.§2D§;
         }
      }
      
      private function §!!q§(param1:String, param2:String = null) : §0q§
      {
         var _loc3_:§9"8§ = this.§`!v§.getItemByName(param1) as §9"8§;
         var _loc4_:§9"8§ = null;
         if(param2)
         {
            _loc4_ = this.§`!v§.getItemByName(param2) as §9"8§;
         }
         var _loc5_:§0q§;
         if(_loc5_ = this.§@6§.§7Q§(_loc4_))
         {
            return _loc5_.§@!#§(_loc3_);
         }
         return null;
      }
      
      public function § !c§(param1:§9"8§, param2:Boolean = true) : void
      {
         if(param1 == null)
         {
            this.§@6§.§%z§();
         }
         else
         {
            this.§@6§.§%q§(param1,param2);
            this.§+!!§();
         }
      }
      
      public function §4!X§() : String
      {
         return this.§@6§.§`!x§();
      }
      
      public function §+!R§(param1:Boolean = true, param2:int = 1) : void
      {
         this.§@6§.§+!R§(param2,param1);
         this.§+!!§();
      }
      
      public function §'!k§(param1:§9"8§) : void
      {
         var _loc2_:§0q§ = this.§@6§.§7Q§(param1);
         if(_loc2_)
         {
            _loc2_.§%z§();
         }
      }
      
      public function §+!!§() : void
      {
         var _loc7_:§;!T§ = null;
         var _loc8_:§;!T§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc1_:Vector.<§;!T§> = this.§@6§.§'!%§();
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:Number = this.§ [§ / 2 - §1!g§ * 2;
         var _loc3_:int = 0;
         var _loc5_:Number = 0;
         var _loc6_:int = 0;
         for each(_loc8_ in _loc1_)
         {
            if((_loc9_ = _loc8_.§89§ < 1.6 * _loc2_ ? 1 : 2) == 1)
            {
               _loc8_.y = _loc5_;
               _loc8_.x = (_loc3_ + 0.5) * _loc2_ + (_loc3_ * 3 + 0.5) * §1!g§;
               _loc3_ = (_loc3_ + 1) % 2;
               _loc10_ = _loc2_ + §1!g§ * 0.5;
            }
            else
            {
               if(_loc3_ == 1 && _loc7_)
               {
                  _loc7_.y += _loc7_.height / 2;
                  _loc5_ += _loc7_.height + §<! §;
                  _loc7_.x = (2 * _loc2_ + 3.5 * §1!g§) / 2;
               }
               _loc8_.y = _loc5_;
               _loc8_.x = (2 * _loc2_ + 3.5 * §1!g§) / 2;
               _loc3_ = 0;
               _loc10_ = _loc2_ * 2 + §1!g§;
               _loc7_ = null;
            }
            _loc11_ = Math.min(1,_loc10_ / _loc8_.§89§);
            _loc8_.§@V§(_loc11_);
            _loc6_ = Math.max(_loc8_.height,_loc6_);
            if(_loc3_ == 0)
            {
               _loc8_.y += _loc6_ / 2;
               if(_loc7_)
               {
                  _loc7_.y += _loc6_ / 2;
               }
               _loc5_ += _loc6_ + §<! §;
               _loc7_ = null;
               _loc6_ = 0;
            }
            _loc8_.visible = true;
            _loc7_ = _loc8_;
         }
         this.§`"§ = _loc5_;
         for each(_loc8_ in _loc1_)
         {
            _loc8_.visible = true;
            _loc8_.addEventListener(MouseEvent.MOUSE_DOWN,this.§;!S§);
            if((this.§`!v§.getItemByName("Objects") as §9"8§).§-!2§ == §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               if(!(AngryBirdsFP11.§>!7§ as §+`§).§&"4§(_loc8_.getItemName()))
               {
                  _loc8_.§9B§(0);
                  _loc8_.removeEventListener(MouseEvent.MOUSE_DOWN,this.§;!S§);
               }
               else
               {
                  _loc8_.§9B§(3);
               }
            }
            else if(!(AngryBirdsFP11.§>!7§ as §+`§).§&"4§(_loc8_.getItemName()))
            {
               _loc8_.lock();
            }
            else
            {
               _loc8_.unlock();
            }
         }
      }
      
      private function §;!S§(param1:MouseEvent) : void
      {
         this.§""§ = param1.currentTarget as §;!T§;
         dispatchEvent(new §!"8§(§!"8§.§9!`§));
      }
      
      public function §="§() : §;!T§
      {
         return this.§""§;
      }
      
      public function isOpen() : Boolean
      {
         return this.§@6§.§2S§();
      }
      
      public function §03§(param1:§9"8§) : Boolean
      {
         return this.§@6§.§7Q§(param1).§2S§();
      }
      
      public function §'![§(param1:int) : void
      {
         this.§2D§.height = param1;
      }
      
      public function §9"=§(param1:String) : §;!T§
      {
         var _loc3_:§;!T§ = null;
         var _loc2_:Vector.<§;!T§> = this.§@6§.§&X§();
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.getItemName() == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §7>§(param1:§;!T§) : §9"8§
      {
         return this.§@6§.§!V§(param1.getItemName());
      }
   }
}
