package §_-0-r§
{
   import §_-0-K§.§_-FL§;
   import §_-0-K§.§_-Tm§;
   import §_-4I§.§_-EA§;
   import §_-4I§.§_-Kf§;
   import §_-4I§.§_-v8§;
   import §_-5t§.§_-WP§;
   import §_-KM§.§_-0A§;
   import §_-a§.§_-hu§;
   import §_-i9§.Texture;
   import §_-o§.§_-86§;
   import §case §.DisplayObject;
   import §case §.Sprite;
   import §case §.§_-G3§;
   import override.§_-Eu§;
   import starling.events.Event;
   
   public class §_-zW§
   {
       
      
      private var §_-ty§:int;
      
      private var §_-yZ§:int;
      
      private var §_-001§:Number;
      
      private var §_-tr§:Boolean;
      
      private var §_-kv§:Sprite;
      
      private var §_-Dt§:Array;
      
      private var §_-ga§:Boolean = true;
      
      private var §_-BB§:§_-v8§;
      
      private var §_-9I§:Sprite;
      
      private var §_-wJ§:Sprite;
      
      public function §_-zW§(param1:§_-86§, param2:Sprite, param3:§_-v8§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§_-EA§ = null;
         this.§_-Dt§ = [];
         super();
         this.§_-BB§ = param3;
         this.§_-kv§ = param2;
         this.§_-001§ = param1.§_-00z§;
         this.§_-tr§ = param1.§_-K4§;
         var _loc5_:Number = 1;
         if(param1.§_-6L§ != 0)
         {
            _loc5_ = param1.§_-6L§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §_-Kf§.§_-Ma§(param1.mName,this.§_-BB§,false)))
         {
            _loc7_ = (_loc13_ = param3.§_-QE§(param1.mName)).pivotY;
            if(!this.§_-tr§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§_-ty§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§_-ty§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§_-4w§.bottom;
            _loc8_ = (_loc10_.§_-4w§.left + _loc10_.§_-4w§.right) / 2;
         }
         if(this.§_-ty§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§_-ty§ = Math.round(this.§_-ty§);
         if(param1.§_-f5§)
         {
            this.§_-yZ§ = 2 + §_-FL§.§_-DA§ * 1.5 / (this.§_-ty§ * param4);
         }
         else
         {
            this.§_-yZ§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§_-yZ§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §_-Kf§.§_-Ma§(param1.mName,this.§_-BB§,false);
               }
               else
               {
                  _loc10_ = new §_-G3§(_loc6_,false,false);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§_-ty§ + (-_loc8_ * _loc5_ + param1.§_-fJ§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§_-Vh§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§_-oc§(param1,(_loc12_ - 1) * this.§_-ty§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§_-kv§.addChild(_loc11_);
         if(this.§_-9I§)
         {
            if(this.§_-9I§.numChildren > 0)
            {
               this.§_-kv§.addChild(this.§_-9I§);
            }
            else
            {
               this.§_-9I§.dispose();
            }
         }
         if(this.§_-wJ§)
         {
            if(this.§_-wJ§.numChildren > 0)
            {
               this.§_-kv§.addChildAt(this.§_-wJ§,0);
            }
            else
            {
               this.§_-wJ§.dispose();
            }
         }
         this.§_-kv§.addEventListener(Event.ADDED_TO_STAGE,this.§_-Bj§);
      }
      
      public function get §_-zC§() : Boolean
      {
         return this.§_-tr§;
      }
      
      private function §_-oc§(param1:§_-86§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§_-Tm§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§_-Dt§)
         {
            if((_loc4_ = §_-hu§.§_-KV§(_loc3_.id,this.§_-BB§)) && _loc4_.§_-BL§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§_-fJ§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §_-0A§.§with§.add(_loc4_);
               this.§_-Dt§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§_-wJ§)
                  {
                     this.§_-wJ§ = new Sprite();
                  }
                  this.§_-wJ§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§_-9I§)
                  {
                     this.§_-9I§ = new Sprite();
                  }
                  this.§_-9I§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§_-7c§(1 / 20);
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
         var _loc1_:§_-WP§ = null;
         this.§_-kv§.§_-Bx§(0,-1,true);
         this.§_-kv§.removeEventListener(Event.ADDED_TO_STAGE,this.§_-Bj§);
         for each(_loc1_ in this.§_-Dt§)
         {
            §_-0A§.§with§.§_-sz§(_loc1_);
            _loc1_.dispose();
         }
         this.§_-Dt§ = [];
         this.§_-wJ§ = null;
         this.§_-9I§ = null;
      }
      
      private function §_-Bj§(param1:Event) : void
      {
         this.§_-3-§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-001§ * param1;
         this.§_-kv§.x = -_loc3_;
         this.§_-kv§.y = -param2;
         this.§_-YZ§();
      }
      
      private function §_-3-§() : void
      {
         var _loc1_:§_-WP§ = null;
         if(!this.§_-ga§ || !this.§_-kv§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§_-Dt§)
         {
            §_-0A§.§with§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §_-Md§() : void
      {
         var _loc1_:§_-WP§ = null;
         for each(_loc1_ in this.§_-Dt§)
         {
            §_-0A§.§with§.§_-sz§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §_-ci§(param1:Boolean) : void
      {
         if(param1 == this.§_-ga§)
         {
            return;
         }
         this.§_-ga§ = param1;
         if(this.§_-ga§)
         {
            this.§_-3-§();
         }
         else
         {
            this.§_-Md§();
         }
      }
      
      private function §_-YZ§() : void
      {
         if(this.§_-yZ§ == 1 || this.§_-Dt§.length > 0)
         {
            return;
         }
         while(§_-Eu§.§_-hh§ + (this.§_-kv§.x - this.§_-ty§) * §_-Eu§.§_-Ae§ > 0)
         {
            this.§_-kv§.x -= this.§_-ty§;
         }
         this.§_-V7§();
      }
      
      private function §_-V7§() : void
      {
      }
   }
}
