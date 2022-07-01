package §9!l§
{
   import §"!2§.§>9§;
   import §+!d§.§"r§;
   import §2!5§.§=,§;
   import §;!§.§8V§;
   import §;!A§.§+Y§;
   import §;!A§.§2v§;
   import §;!A§.§;!u§;
   import §;"$§.§`5§;
   import §;X§.§1x§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class Inventory extends EventDispatcher
   {
      
      protected static var §?"+§:Class = §7I§;
      
      private static const §@!_§:int = 10;
      
      private static const §;!i§:int = 5;
      
      private static const §%v§:int = 25;
      
      private static const §4!Y§:Number = 1.5;
       
      
      private var §9!O§:§+!6§;
      
      private var §^F§:int = 2;
      
      private var §&"3§:Vector.<MovieClip>;
      
      private var §%""§:§`5§;
      
      private var §!p§:§;!u§ = null;
      
      private var §9O§:§;!u§;
      
      private var §"!9§:§+Y§;
      
      private var §!V§:§;!u§;
      
      private var §6k§:Rectangle;
      
      private var § !0§:int;
      
      private var §#;§:int;
      
      private var §`X§:int;
      
      private var §-!7§:§@O§;
      
      private var §7"§:Boolean = false;
      
      public function Inventory(param1:§`5§)
      {
         this.§6k§ = new Rectangle();
         super();
         this.§%""§ = param1;
         this.§!V§ = param1.getItemByName("ItemContainer") as §;!u§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§!V§.mClip.numChildren)
         {
            this.§!V§.mClip.getChildAt(_loc2_).alpha = 0;
            _loc2_++;
         }
         this.§`X§ = this.§!V§.mClip.width;
         this.§6k§ = new Rectangle(-this.§!V§.mClip.width,-§@!_§ * 2,this.§!V§.mClip.width * 3,this.§!V§.mClip.height);
         this.§!V§.x -= this.§!V§.mClip.width;
         this.§!V§.y -= §@!_§;
         this.§!p§ = param1.getItemByName("Inventory") as §;!u§;
         this.§!p§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§`Q§);
         this.§!p§.mClip.addEventListener(MouseEvent.ROLL_OUT,this.§ !G§);
         this.§!p§.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.§;!z§);
         this.§9!O§ = new §+!6§(this.§!V§);
         this.§9O§ = param1.getItemByName("ScrollBar") as §;!u§;
         this.§"!9§ = this.§9O§.getItemByName("Slider") as §+Y§;
         this.§"!9§.mClip.gotoAndStop(0);
         this.§"!9§.mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§=G§);
         this.§"!9§.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§2!=§);
         this.§-i§(§1x§.§9!t§(§?"+§));
      }
      
      public static function §&!o§(param1:String, param2:String, param3:XML = null, param4:Boolean = false) : Boolean
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
            param3 = §1x§.§9!t§(§?"+§);
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
            if(_loc6_ = §&!o§(param1,param2,_loc5_,param4))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §4"§() : void
      {
         this.§9!O§.§&j§();
      }
      
      private function §,"§() : void
      {
         this.§"!9§.mClip.stop();
      }
      
      protected function §=G§(param1:MouseEvent) : void
      {
         this.§@!d§();
         this.§"!9§.mClip.play();
      }
      
      private function §@!d§() : void
      {
         if(this.§"!9§.mClip.hasEventListener(Event.ENTER_FRAME))
         {
            this.§"!9§.mClip.removeEventListener(Event.ENTER_FRAME,this.§?Y§);
         }
      }
      
      protected function §?Y§(param1:Event) : void
      {
         if(this.§"!9§.mClip.currentFrame == 1)
         {
            this.§@!d§();
         }
         else
         {
            this.§"!9§.mClip.prevFrame();
         }
      }
      
      protected function §2!=§(param1:MouseEvent) : void
      {
         this.§"!9§.mClip.gotoAndStop(3);
         this.§"!9§.mClip.addEventListener(Event.ENTER_FRAME,this.§?Y§,false,0,true);
      }
      
      private function §;!z§(param1:MouseEvent) : void
      {
         this.§7"§ = false;
      }
      
      private function §`Q§(param1:MouseEvent) : void
      {
         if(this.§7"§)
         {
            dispatchEvent(new §8V§(§8V§.CANCEL));
         }
         this.§7"§ = false;
      }
      
      private function § !G§(param1:MouseEvent) : void
      {
         this.§7"§ = true;
      }
      
      private function §-i§(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§+!6§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         for each(_loc2_ in param1.category)
         {
            _loc3_ = this.§'!9§(_loc2_.@button,param1.@button);
            for each(_loc4_ in _loc2_.include_category)
            {
               _loc3_.§!!E§(_loc4_.toString());
            }
            for each(_loc5_ in _loc2_.component)
            {
               _loc3_.§&!W§(this.§%""§.getItemByName(_loc5_.toString()));
            }
            for each(_loc6_ in _loc2_.item)
            {
               _loc3_.§""9§(_loc6_.toString(),!!_loc6_.hasOwnProperty("@scale") ? Number(_loc6_.@scale) : Number(1));
            }
            for each(_loc7_ in _loc2_.exclude)
            {
               _loc3_.§;"5§(_loc7_.toString());
            }
            if(_loc2_.@highlight == "true")
            {
               _loc3_.§'_§(new §[!&§());
            }
            this.§-i§(_loc2_);
         }
      }
      
      public function update(param1:int) : void
      {
         this.§!p§.x += param1 * §4!Y§ * (this.isOpen() && §=,§.§if §.§?!W§() ? 1 : -1);
         if(this.§!p§.x > 5)
         {
            this.§!p§.x = 5;
         }
         if(this.§!p§.x < -this.§!p§.width)
         {
            this.§!p§.x = -this.§!p§.width;
         }
         if(this.§ !0§ <= this.§6k§.height)
         {
            this.§9O§.setVisibility(false);
            this.§6k§.y = -§@!_§ * 2;
            this.§!V§.mClip.scrollRect = this.§6k§;
         }
         else
         {
            this.§9O§.setVisibility(true);
            this.§6k§.y = Math.max(0,this.§"!9§.§2"-§() * (this.§ !0§ - this.§6k§.height)) - §@!_§ * 2;
            this.§!V§.mClip.scrollRect = this.§6k§;
         }
      }
      
      private function §'!9§(param1:String, param2:String = null) : §+!6§
      {
         var _loc3_:§2v§ = this.§%""§.getItemByName(param1) as §2v§;
         var _loc4_:§2v§ = null;
         if(param2)
         {
            _loc4_ = this.§%""§.getItemByName(param2) as §2v§;
         }
         var _loc5_:§+!6§;
         if(_loc5_ = this.§9!O§.§>"4§(_loc4_))
         {
            return _loc5_.§5!&§(_loc3_);
         }
         return null;
      }
      
      public function §<^§(param1:§2v§, param2:Boolean = true) : void
      {
         if(param1 == null)
         {
            this.§9!O§.§6"&§();
         }
         else
         {
            this.§9!O§.§ !A§(param1,param2);
            this.§]!C§();
         }
      }
      
      public function §'!t§() : String
      {
         return this.§9!O§.§]Q§();
      }
      
      public function §`!n§(param1:Boolean = true, param2:int = 1) : void
      {
         this.§9!O§.§`!n§(param2,param1);
         this.§]!C§();
      }
      
      public function §+!o§(param1:§2v§) : void
      {
         var _loc2_:§+!6§ = this.§9!O§.§>"4§(param1);
         if(_loc2_)
         {
            _loc2_.§6"&§();
         }
      }
      
      public function §]!C§() : void
      {
         var _loc7_:§@O§ = null;
         var _loc8_:§@O§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc1_:Vector.<§@O§> = this.§9!O§.§4!!§();
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:Number = this.§`X§ / 2 - §;!i§ * 2;
         var _loc3_:int = 0;
         var _loc5_:Number = 0;
         var _loc6_:int = 0;
         for each(_loc8_ in _loc1_)
         {
            if((_loc9_ = _loc8_.§'!2§ < 1.6 * _loc2_ ? 1 : 2) == 1)
            {
               _loc8_.y = _loc5_;
               _loc8_.x = (_loc3_ + 0.5) * _loc2_ + (_loc3_ * 3 + 0.5) * §;!i§;
               _loc3_ = (_loc3_ + 1) % 2;
               _loc10_ = _loc2_ + §;!i§ * 0.5;
            }
            else
            {
               if(_loc3_ == 1 && _loc7_)
               {
                  _loc7_.y += _loc7_.height / 2;
                  _loc5_ += _loc7_.height + §@!_§;
                  _loc7_.x = (2 * _loc2_ + 3.5 * §;!i§) / 2;
               }
               _loc8_.y = _loc5_;
               _loc8_.x = (2 * _loc2_ + 3.5 * §;!i§) / 2;
               _loc3_ = 0;
               _loc10_ = _loc2_ * 2 + §;!i§;
               _loc7_ = null;
            }
            _loc11_ = Math.min(1,_loc10_ / _loc8_.§'!2§);
            _loc8_.§]!#§(_loc11_);
            _loc6_ = Math.max(_loc8_.height,_loc6_);
            if(_loc3_ == 0)
            {
               _loc8_.y += _loc6_ / 2;
               if(_loc7_)
               {
                  _loc7_.y += _loc6_ / 2;
               }
               _loc5_ += _loc6_ + §@!_§;
               _loc7_ = null;
               _loc6_ = 0;
            }
            _loc8_.visible = true;
            _loc7_ = _loc8_;
         }
         this.§ !0§ = _loc5_;
         for each(_loc8_ in _loc1_)
         {
            _loc8_.visible = true;
            _loc8_.addEventListener(MouseEvent.MOUSE_DOWN,this.§5F§);
            if((this.§%""§.getItemByName("Objects") as §2v§).§1!U§ == §"r§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               if(!(AngryBirdsFP11.§8!I§ as §>9§).§5j§(_loc8_.getItemName()))
               {
                  _loc8_.§6+§(0);
                  _loc8_.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5F§);
               }
               else
               {
                  _loc8_.§6+§(3);
               }
            }
            else if(!(AngryBirdsFP11.§8!I§ as §>9§).§5j§(_loc8_.getItemName()))
            {
               _loc8_.lock();
            }
            else
            {
               _loc8_.unlock();
            }
         }
      }
      
      private function §5F§(param1:MouseEvent) : void
      {
         this.§-!7§ = param1.currentTarget as §@O§;
         dispatchEvent(new §8V§(§8V§.§9t§));
      }
      
      public function §1!#§() : §@O§
      {
         return this.§-!7§;
      }
      
      public function isOpen() : Boolean
      {
         return this.§9!O§.§-!Y§();
      }
      
      public function §#"+§(param1:§2v§) : Boolean
      {
         return this.§9!O§.§>"4§(param1).§-!Y§();
      }
      
      public function §&^§(param1:int) : void
      {
         this.§6k§.height = param1;
      }
      
      public function §%d§(param1:String) : §@O§
      {
         var _loc3_:§@O§ = null;
         var _loc2_:Vector.<§@O§> = this.§9!O§.§3!B§();
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.getItemName() == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §4d§(param1:§@O§) : §2v§
      {
         return this.§9!O§.§1o§(param1.getItemName());
      }
   }
}
