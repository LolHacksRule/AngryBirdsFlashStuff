package §,k§
{
   import § T§.ParticleDesignerPS;
   import §"X§.Texture;
   import §1!4§.ParticleManager;
   import §5B§.§6!>§;
   import §;!;§.§8+§;
   import §;'§.§&!+§;
   import §;'§.§?!D§;
   import §;^§.§ @§;
   import §;^§.DisplayObject;
   import §;^§.Sprite;
   import §=!K§.§?;§;
   import §=!K§.§@p§;
   import §=!K§.§^Q§;
   import §??§.§5!@§;
   import starling.events.Event;
   
   public class §]Z§
   {
       
      
      protected var §=J§:int;
      
      private var §`>§:int;
      
      protected var §6E§:Number;
      
      private var §`S§:Boolean;
      
      protected var §>@§:Sprite;
      
      private var §2!L§:Array;
      
      private var §`U§:Boolean = true;
      
      private var §9!=§:§^Q§;
      
      private var §];§:Sprite;
      
      private var §[!$§:Sprite;
      
      public function §]Z§(param1:§8+§, param2:Sprite, param3:§^Q§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§@p§ = null;
         this.§2!L§ = [];
         super();
         this.§9!=§ = param3;
         this.§>@§ = param2;
         this.§6E§ = param1.§`a§;
         this.§`S§ = param1.§,!8§;
         var _loc5_:Number = 1;
         if(param1.§ W§ != 0)
         {
            _loc5_ = param1.§ W§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §?;§.§'B§(param1.mName,this.§9!=§,param1.§2!2§)))
         {
            _loc7_ = (_loc13_ = param3.§=!B§(param1.mName)).pivotY;
            if(!this.§`S§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§=J§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§=J§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§-!A§.bottom;
            _loc8_ = (_loc10_.§-!A§.left + _loc10_.§-!A§.right) / 2;
         }
         if(this.§=J§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§=J§ = Math.round(this.§=J§);
         if(param1.§9-§)
         {
            this.§`>§ = 2 + §?!D§.§?i§ * 1.5 / (this.§=J§ * param4);
         }
         else
         {
            this.§`>§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§`>§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §?;§.§'B§(param1.mName,this.§9!=§,param1.§2!2§);
               }
               else
               {
                  _loc10_ = new § @§(_loc6_,false,param1.§2!2§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§=J§ + (-_loc8_ * _loc5_ + param1.§%x§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§`@§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§4,§(param1,(_loc12_ - 1) * this.§=J§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§>@§.addChild(_loc11_);
         if(this.§];§)
         {
            if(this.§];§.numChildren > 0)
            {
               this.§>@§.addChild(this.§];§);
            }
            else
            {
               this.§];§.dispose();
            }
         }
         if(this.§[!$§)
         {
            if(this.§[!$§.numChildren > 0)
            {
               this.§>@§.addChildAt(this.§[!$§,0);
            }
            else
            {
               this.§[!$§.dispose();
            }
         }
         this.§>@§.addEventListener(Event.ADDED_TO_STAGE,this.§]!D§);
      }
      
      public function get § M§() : Boolean
      {
         return this.§`S§;
      }
      
      private function §4,§(param1:§8+§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§&!+§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§2!L§)
         {
            if((_loc4_ = ParticleManager.§,'§(_loc3_.id,this.§9!=§)) && _loc4_.§#9§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§%x§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §5!@§.§2x§.add(_loc4_);
               this.§2!L§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§[!$§)
                  {
                     this.§[!$§ = new Sprite();
                  }
                  this.§[!$§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§];§)
                  {
                     this.§];§ = new Sprite();
                  }
                  this.§];§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§%!2§(1 / 20);
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
         var _loc1_:ParticleDesignerPS = null;
         this.§>@§.§;m§(0,-1,true);
         this.§>@§.removeEventListener(Event.ADDED_TO_STAGE,this.§]!D§);
         for each(_loc1_ in this.§2!L§)
         {
            §5!@§.§2x§.§2O§(_loc1_);
            _loc1_.dispose();
         }
         this.§2!L§ = [];
         this.§[!$§ = null;
         this.§];§ = null;
      }
      
      private function §]!D§(param1:Event) : void
      {
         this.§]!7§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§6E§ * param1;
         this.§>@§.x = -_loc3_;
         this.§>@§.y = -param2;
         this.§9V§();
      }
      
      private function §]!7§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§`U§ || !this.§>@§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§2!L§)
         {
            §5!@§.§2x§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §;i§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§2!L§)
         {
            §5!@§.§2x§.§2O§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §4!K§(param1:Boolean) : void
      {
         if(param1 == this.§`U§)
         {
            return;
         }
         this.§`U§ = param1;
         if(this.§`U§)
         {
            this.§]!7§();
         }
         else
         {
            this.§;i§();
         }
      }
      
      protected function §9V§() : void
      {
         if(this.§`>§ == 1 || this.§2!L§.length > 0)
         {
            return;
         }
         while(§6!>§.§`o§ + (this.§>@§.x - this.§=J§) * §6!>§.§&h§ > 0)
         {
            this.§>@§.x -= this.§=J§;
         }
         this.§-<§();
      }
      
      private function §-<§() : void
      {
      }
   }
}
