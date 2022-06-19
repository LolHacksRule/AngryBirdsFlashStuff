package §+B§
{
   import §!!R§.§#q§;
   import §!!R§.DisplayObject;
   import §!!R§.Sprite;
   import §&!W§.§&!$§;
   import §&!W§.§2!'§;
   import §&!W§.§8!K§;
   import §'!$§.§^&§;
   import §2k§.Texture;
   import §3]§.§5O§;
   import §6M§.§%`§;
   import §7W§.§ !+§;
   import §8!P§.§5p§;
   import §?'§.§7!>§;
   import §?'§.§9N§;
   import starling.events.Event;
   
   public class §^!R§
   {
       
      
      private var §!2§:int;
      
      private var §[;§:int;
      
      private var §0&§:Number;
      
      private var §>V§:Boolean;
      
      private var §=!<§:Sprite;
      
      private var §[=§:Array;
      
      private var §%O§:Boolean = true;
      
      private var §&U§:§8!K§;
      
      private var §5+§:Sprite;
      
      private var §[p§:Sprite;
      
      public function §^!R§(param1:§5O§, param2:Sprite, param3:§8!K§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§&!$§ = null;
         this.§[=§ = [];
         super();
         this.§&U§ = param3;
         this.§=!<§ = param2;
         this.§0&§ = param1.§4!Y§;
         this.§>V§ = param1.§7j§;
         var _loc5_:Number = 1;
         if(param1.§7<§ != 0)
         {
            _loc5_ = param1.§7<§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §2!'§.§^l§(param1.mName,this.§&U§,false)))
         {
            _loc7_ = (_loc13_ = param3.§"7§(param1.mName)).pivotY;
            if(!this.§>V§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§!2§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§!2§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§%!=§.bottom;
            _loc8_ = (_loc10_.§%!=§.left + _loc10_.§%!=§.right) / 2;
         }
         if(this.§!2§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§!2§ = Math.round(this.§!2§);
         if(param1.§4!S§)
         {
            this.§[;§ = 2 + §9N§.§ !4§ * 1.5 / (this.§!2§ * param4);
         }
         else
         {
            this.§[;§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§[;§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §2!'§.§^l§(param1.mName,this.§&U§,false);
               }
               else
               {
                  _loc10_ = new §#q§(_loc6_,false,false);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§!2§ + (-_loc8_ * _loc5_ + param1.§`%§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§]!>§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§4H§(param1,(_loc12_ - 1) * this.§!2§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§=!<§.addChild(_loc11_);
         if(this.§5+§)
         {
            if(this.§5+§.numChildren > 0)
            {
               this.§=!<§.addChild(this.§5+§);
            }
            else
            {
               this.§5+§.dispose();
            }
         }
         if(this.§[p§)
         {
            if(this.§[p§.numChildren > 0)
            {
               this.§=!<§.addChildAt(this.§[p§,0);
            }
            else
            {
               this.§[p§.dispose();
            }
         }
         this.§=!<§.addEventListener(Event.ADDED_TO_STAGE,this.§?!?§);
      }
      
      public function get §4!R§() : Boolean
      {
         return this.§>V§;
      }
      
      private function §4H§(param1:§5O§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§7!>§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§[=§)
         {
            if((_loc4_ = §%`§.§super§(_loc3_.id,this.§&U§)) && _loc4_.§63§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§`%§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               § !+§.§?!L§.add(_loc4_);
               this.§[=§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§[p§)
                  {
                     this.§[p§ = new Sprite();
                  }
                  this.§[p§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§5+§)
                  {
                     this.§5+§ = new Sprite();
                  }
                  this.§5+§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§=!'§(1 / 20);
                  _loc5_++;
               }
            }
            else if(_loc4_)
            {
               _loc4_.dispose();
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§^&§ = null;
         this.§=!<§.§>[§(0,-1,true);
         this.§=!<§.removeEventListener(Event.ADDED_TO_STAGE,this.§?!?§);
         for each(_loc1_ in this.§[=§)
         {
            § !+§.§?!L§.§2W§(_loc1_);
            _loc1_.dispose();
         }
         this.§[=§ = [];
         this.§[p§ = null;
         this.§5+§ = null;
      }
      
      private function §?!?§(param1:Event) : void
      {
         this.§];§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§0&§ * param1;
         this.§=!<§.x = -_loc3_;
         this.§=!<§.y = -param2;
         this.§4j§();
      }
      
      private function §];§() : void
      {
         var _loc1_:§^&§ = null;
         if(!this.§%O§ || !this.§=!<§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§[=§)
         {
            § !+§.§?!L§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §"!H§() : void
      {
         var _loc1_:§^&§ = null;
         for each(_loc1_ in this.§[=§)
         {
            § !+§.§?!L§.§2W§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §@!-§(param1:Boolean) : void
      {
         if(param1 == this.§%O§)
         {
            return;
         }
         this.§%O§ = param1;
         if(this.§%O§)
         {
            this.§];§();
         }
         else
         {
            this.§"!H§();
         }
      }
      
      private function §4j§() : void
      {
         if(this.§[;§ == 1 || this.§[=§.length > 0)
         {
            return;
         }
         while(§5p§.§7n§ + (this.§=!<§.x - this.§!2§) * §5p§.§ !T§ > 0)
         {
            this.§=!<§.x -= this.§!2§;
         }
         this.§;T§();
      }
      
      private function §;T§() : void
      {
      }
   }
}
