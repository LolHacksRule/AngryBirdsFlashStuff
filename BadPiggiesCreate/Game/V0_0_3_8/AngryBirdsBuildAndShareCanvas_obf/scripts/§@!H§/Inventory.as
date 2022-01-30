package §@!H§
{
   import §!D§.§ use§;
   import §!D§.§3!6§;
   import §!D§.§@!M§;
   import §,m§.§?"%§;
   import §4!7§.§]!1§;
   import §4u§.§<!>§;
   import §9!7§.§6"0§;
   import §9e§.§"!e§;
   import §?!V§.§ T§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class Inventory extends EventDispatcher
   {
      
      protected static var §>!X§:Class = §"!I§;
      
      private static const §5V§:int = 10;
      
      private static const §'!^§:int = 5;
      
      private static const §-0§:int = 25;
      
      private static const §[%§:Number = 1.5;
       
      
      private var §2P§:§=!L§;
      
      private var §[!a§:int = 2;
      
      private var §'!w§:Vector.<MovieClip>;
      
      private var §1!j§:§ T§;
      
      private var §2"3§:§ use§ = null;
      
      private var §%"'§:§ use§;
      
      private var §;!;§:§@!M§;
      
      private var §?!_§:§ use§;
      
      private var §#R§:Rectangle;
      
      private var §`!>§:int;
      
      private var §]S§:int;
      
      private var §>j§:int;
      
      private var §1",§:§;!L§;
      
      private var §7!,§:Boolean = false;
      
      public function Inventory(param1:§ T§)
      {
         this.§#R§ = new Rectangle();
         super();
         this.§1!j§ = param1;
         this.§?!_§ = param1.getItemByName("ItemContainer") as § use§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?!_§.mClip.numChildren)
         {
            this.§?!_§.mClip.getChildAt(_loc2_).alpha = 0;
            _loc2_++;
         }
         this.§>j§ = this.§?!_§.mClip.width;
         this.§#R§ = new Rectangle(-this.§?!_§.mClip.width,-§5V§ * 2,this.§?!_§.mClip.width * 3,this.§?!_§.mClip.height);
         this.§?!_§.x -= this.§?!_§.mClip.width;
         this.§?!_§.y -= §5V§;
         this.§2"3§ = param1.getItemByName("Inventory") as § use§;
         this.§2"3§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§6"#§);
         this.§2"3§.mClip.addEventListener(MouseEvent.ROLL_OUT,this.§3R§);
         this.§2"3§.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.§7"5§);
         this.§2P§ = new §=!L§(this.§?!_§);
         this.§%"'§ = param1.getItemByName("ScrollBar") as § use§;
         this.§;!;§ = this.§%"'§.getItemByName("Slider") as §@!M§;
         this.§;!;§.mClip.gotoAndStop(0);
         this.§;!;§.mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§0!N§);
         this.§;!;§.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§!`§);
         this.§,!!§(§<!>§.§%!$§(§>!X§));
      }
      
      public static function §-!"§(param1:String, param2:String, param3:XML = null, param4:Boolean = false) : Boolean
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
         if(param1 == "Food" && param2.indexOf("FOOD_") != -1)
         {
            return true;
         }
         if(param3 == null)
         {
            param3 = §<!>§.§%!$§(§>!X§);
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
            if(_loc6_ = §-!"§(param1,param2,_loc5_,param4))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §"!j§() : void
      {
         this.§2P§.§4!a§();
      }
      
      private function §'"!§() : void
      {
         this.§;!;§.mClip.stop();
      }
      
      protected function §0!N§(param1:MouseEvent) : void
      {
         this.§2!P§();
         this.§;!;§.mClip.play();
      }
      
      private function §2!P§() : void
      {
         if(this.§;!;§.mClip.hasEventListener(Event.ENTER_FRAME))
         {
            this.§;!;§.mClip.removeEventListener(Event.ENTER_FRAME,this.§6x§);
         }
      }
      
      protected function §6x§(param1:Event) : void
      {
         if(this.§;!;§.mClip.currentFrame == 1)
         {
            this.§2!P§();
         }
         else
         {
            this.§;!;§.mClip.prevFrame();
         }
      }
      
      protected function §!`§(param1:MouseEvent) : void
      {
         this.§;!;§.mClip.gotoAndStop(3);
         this.§;!;§.mClip.addEventListener(Event.ENTER_FRAME,this.§6x§,false,0,true);
      }
      
      private function §7"5§(param1:MouseEvent) : void
      {
         this.§7!,§ = false;
      }
      
      private function §6"#§(param1:MouseEvent) : void
      {
         if(this.§7!,§)
         {
            dispatchEvent(new §?"%§(§?"%§.CANCEL));
         }
         this.§7!,§ = false;
      }
      
      private function §3R§(param1:MouseEvent) : void
      {
         this.§7!,§ = true;
      }
      
      private function §,!!§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§=!L§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         for each(_loc2_ in param1.category)
         {
            _loc3_ = this.§]"0§(_loc2_.@button,param1.@button);
            for each(_loc4_ in _loc2_.include_category)
            {
               _loc3_.§!!u§(_loc4_.toString());
            }
            for each(_loc5_ in _loc2_.component)
            {
               _loc3_.§">§(this.§1!j§.getItemByName(_loc5_.toString()));
            }
            for each(_loc6_ in _loc2_.item)
            {
               _loc3_.§?"-§(_loc6_.toString(),!!_loc6_.hasOwnProperty("@scale") ? Number(_loc6_.@scale) : Number(1));
            }
            for each(_loc7_ in _loc2_.exclude)
            {
               _loc3_.§3<§(_loc7_.toString());
            }
            if(_loc2_.@highlight == "true")
            {
               _loc3_.§2"+§(new § 8§());
            }
            this.§,!!§(_loc2_);
         }
      }
      
      public function update(param1:int) : void
      {
         this.§2"3§.x += param1 * §[%§ * (this.isOpen() && §]!1§.§9j§.§]=§() ? 1 : -1);
         if(this.§2"3§.x > 5)
         {
            this.§2"3§.x = 5;
         }
         if(this.§2"3§.x < -this.§2"3§.width)
         {
            this.§2"3§.x = -this.§2"3§.width;
         }
         if(this.§`!>§ <= this.§#R§.height)
         {
            this.§%"'§.setVisibility(false);
            this.§#R§.y = -§5V§ * 2;
            this.§?!_§.mClip.scrollRect = this.§#R§;
         }
         else
         {
            this.§%"'§.setVisibility(true);
            this.§#R§.y = Math.max(0,this.§;!;§.§"C§() * (this.§`!>§ - this.§#R§.height)) - §5V§ * 2;
            this.§?!_§.mClip.scrollRect = this.§#R§;
         }
      }
      
      private function §]"0§(param1:String, param2:String = null) : §=!L§
      {
         var _loc3_:§3!6§ = this.§1!j§.getItemByName(param1) as §3!6§;
         var _loc4_:§3!6§ = null;
         if(param2)
         {
            _loc4_ = this.§1!j§.getItemByName(param2) as §3!6§;
         }
         var _loc5_:§=!L§;
         if(_loc5_ = this.§2P§.§8!V§(_loc4_))
         {
            return _loc5_.§"!<§(_loc3_);
         }
         return null;
      }
      
      public function §'p§(param1:§3!6§, param2:Boolean = true) : void
      {
         if(param1 == null)
         {
            this.§2P§.§,i§();
         }
         else
         {
            this.§2P§.§&5§(param1,param2);
            this.§ !K§();
         }
      }
      
      public function §6!a§() : String
      {
         return this.§2P§.§6!`§();
      }
      
      public function §]!n§(param1:Boolean = true, param2:int = 1) : void
      {
         this.§2P§.§]!n§(param2,param1);
         this.§ !K§();
      }
      
      public function §;!r§(param1:§3!6§) : void
      {
         var _loc2_:§=!L§ = this.§2P§.§8!V§(param1);
         if(_loc2_)
         {
            _loc2_.§,i§();
         }
      }
      
      public function § !K§() : void
      {
         var _loc7_:§;!L§ = null;
         var _loc8_:§;!L§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc1_:Vector.<§;!L§> = this.§2P§.§=d§();
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:Number = this.§>j§ / 2 - §'!^§ * 2;
         var _loc3_:int = 0;
         var _loc5_:Number = 0;
         var _loc6_:int = 0;
         for each(_loc8_ in _loc1_)
         {
            if((_loc9_ = _loc8_.§^!?§ < 1.6 * _loc2_ ? 1 : 2) == 1)
            {
               _loc8_.y = _loc5_;
               _loc8_.x = (_loc3_ + 0.5) * _loc2_ + (_loc3_ * 3 + 0.5) * §'!^§;
               _loc3_ = (_loc3_ + 1) % 2;
               _loc10_ = _loc2_ + §'!^§ * 0.5;
            }
            else
            {
               if(_loc3_ == 1 && _loc7_)
               {
                  _loc7_.y += _loc7_.height / 2;
                  _loc5_ += _loc7_.height + §5V§;
                  _loc7_.x = (2 * _loc2_ + 3.5 * §'!^§) / 2;
               }
               _loc8_.y = _loc5_;
               _loc8_.x = (2 * _loc2_ + 3.5 * §'!^§) / 2;
               _loc3_ = 0;
               _loc10_ = _loc2_ * 2 + §'!^§;
               _loc7_ = null;
            }
            _loc11_ = Math.min(1,_loc10_ / _loc8_.§^!?§);
            _loc8_.§8!'§(_loc11_);
            _loc6_ = Math.max(_loc8_.height,_loc6_);
            if(_loc3_ == 0)
            {
               _loc8_.y += _loc6_ / 2;
               if(_loc7_)
               {
                  _loc7_.y += _loc6_ / 2;
               }
               _loc5_ += _loc6_ + §5V§;
               _loc7_ = null;
               _loc6_ = 0;
            }
            _loc8_.visible = true;
            _loc7_ = _loc8_;
         }
         this.§`!>§ = _loc5_;
         for each(_loc8_ in _loc1_)
         {
            _loc8_.visible = true;
            _loc8_.addEventListener(MouseEvent.MOUSE_DOWN,this.§"",§);
            if((this.§1!j§.getItemByName("Objects") as §3!6§).§ null§ == §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               if(!(AngryBirdsFP11.§8!v§ as §"!e§).§`B§(_loc8_.getItemName()))
               {
                  _loc8_.§;"2§(0);
                  _loc8_.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"",§);
               }
               else
               {
                  _loc8_.§;"2§(3);
               }
            }
            else if(!(AngryBirdsFP11.§8!v§ as §"!e§).§`B§(_loc8_.getItemName()))
            {
               _loc8_.lock();
            }
            else
            {
               _loc8_.unlock();
            }
         }
      }
      
      private function §"",§(param1:MouseEvent) : void
      {
         this.§1",§ = param1.currentTarget as §;!L§;
         dispatchEvent(new §?"%§(§?"%§.§"!H§));
      }
      
      public function §case §() : §;!L§
      {
         return this.§1",§;
      }
      
      public function isOpen() : Boolean
      {
         return this.§2P§.§9M§();
      }
      
      public function §,!g§(param1:§3!6§) : Boolean
      {
         return this.§2P§.§8!V§(param1).§9M§();
      }
      
      public function §'!q§(param1:int) : void
      {
         this.§#R§.height = param1;
      }
      
      public function §^!f§(param1:String) : §;!L§
      {
         var _loc3_:§;!L§ = null;
         var _loc2_:Vector.<§;!L§> = this.§2P§.§=V§();
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.getItemName() == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
   }
}
