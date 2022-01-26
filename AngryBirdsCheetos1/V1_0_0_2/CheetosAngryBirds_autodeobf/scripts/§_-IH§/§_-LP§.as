package §_-IH§
{
   import §_-7T§.§_-yJ§;
   import §_-GY§.DisplayObject;
   import §_-GY§.Sprite;
   import §_-GY§.§_-4W§;
   import §_-Kz§.§_-c3§;
   import §_-Kz§.§_-jm§;
   import §_-O1§.§_-Lz§;
   import §_-Ob§.§_-jM§;
   import §_-Rd§.§_-Az§;
   import §_-Ye§.§_-cP§;
   import §_-my§.§_-GX§;
   import §_-my§.§_-V0§;
   import §_-my§.§_-W5§;
   import §_-yp§.Texture;
   import starling.events.Event;
   
   public class §_-LP§
   {
       
      
      private var §_-cF§:int;
      
      private var §_-d5§:int;
      
      private var §_-7-§:Number;
      
      private var §_-Ji§:Boolean;
      
      private var §_-xQ§:Sprite;
      
      private var §_-Kf§:Array;
      
      private var §_-uf§:Boolean = true;
      
      private var §_-B1§:§_-V0§;
      
      private var §_-5I§:Sprite;
      
      private var §_-s4§:Sprite;
      
      public function §_-LP§(param1:§_-jM§, param2:Sprite, param3:§_-V0§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§_-GX§ = null;
         this.§_-Kf§ = [];
         super();
         this.§_-B1§ = param3;
         this.§_-xQ§ = param2;
         this.§_-7-§ = param1.§_-fT§;
         this.§_-Ji§ = param1.§_-Np§;
         var _loc5_:Number = 1;
         if(param1.§_-uV§ != 0)
         {
            _loc5_ = param1.§_-uV§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §_-W5§.§_-tU§(param1.mName,this.§_-B1§,false)))
         {
            _loc7_ = (_loc13_ = param3.§_-8O§(param1.mName)).pivotY;
            if(!this.§_-Ji§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§_-cF§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§_-cF§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§_-nY§.bottom;
            _loc8_ = (_loc10_.§_-nY§.left + _loc10_.§_-nY§.right) / 2;
         }
         if(this.§_-cF§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§_-cF§ = Math.round(this.§_-cF§);
         if(param1.§_-np§)
         {
            this.§_-d5§ = 2 + §_-c3§.§_-6Y§ * 1.5 / (this.§_-cF§ * param4);
         }
         else
         {
            this.§_-d5§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§_-d5§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §_-W5§.§_-tU§(param1.mName,this.§_-B1§,false);
               }
               else
               {
                  _loc10_ = new §_-4W§(_loc6_,false,false);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§_-cF§ + (-_loc8_ * _loc5_ + param1.§_-r5§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§_-MM§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§_-vd§(param1,(_loc12_ - 1) * this.§_-cF§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§_-xQ§.addChild(_loc11_);
         if(this.§_-5I§)
         {
            if(this.§_-5I§.numChildren > 0)
            {
               this.§_-xQ§.addChild(this.§_-5I§);
            }
            else
            {
               this.§_-5I§.dispose();
            }
         }
         if(this.§_-s4§)
         {
            if(this.§_-s4§.numChildren > 0)
            {
               this.§_-xQ§.addChildAt(this.§_-s4§,0);
            }
            else
            {
               this.§_-s4§.dispose();
            }
         }
         this.§_-xQ§.addEventListener(Event.ADDED_TO_STAGE,this.§_-jb§);
      }
      
      public function get §_-fW§() : Boolean
      {
         return this.§_-Ji§;
      }
      
      private function §_-vd§(param1:§_-jM§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§_-jm§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§_-Kf§)
         {
            if((_loc4_ = §_-Az§.§_-I8§(_loc3_.id,this.§_-B1§)) && _loc4_.§_-5V§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§_-r5§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §_-cP§.§_-Nz§.add(_loc4_);
               this.§_-Kf§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§_-s4§)
                  {
                     this.§_-s4§ = new Sprite();
                  }
                  this.§_-s4§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§_-5I§)
                  {
                     this.§_-5I§ = new Sprite();
                  }
                  this.§_-5I§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§_-Da§(1 / 20);
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
         var _loc1_:§_-Lz§ = null;
         this.§_-xQ§.§_-0-x§(0,-1,true);
         this.§_-xQ§.removeEventListener(Event.ADDED_TO_STAGE,this.§_-jb§);
         for each(_loc1_ in this.§_-Kf§)
         {
            §_-cP§.§_-Nz§.§_-8u§(_loc1_);
            _loc1_.dispose();
         }
         this.§_-Kf§ = [];
         this.§_-s4§ = null;
         this.§_-5I§ = null;
      }
      
      private function §_-jb§(param1:Event) : void
      {
         this.§_-5Z§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-7-§ * param1;
         this.§_-xQ§.x = -_loc3_;
         this.§_-xQ§.y = -param2;
         this.§_-YM§();
      }
      
      private function §_-5Z§() : void
      {
         var _loc1_:§_-Lz§ = null;
         if(!this.§_-uf§ || !this.§_-xQ§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§_-Kf§)
         {
            §_-cP§.§_-Nz§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §_-Qw§() : void
      {
         var _loc1_:§_-Lz§ = null;
         for each(_loc1_ in this.§_-Kf§)
         {
            §_-cP§.§_-Nz§.§_-8u§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §_-uY§(param1:Boolean) : void
      {
         if(param1 == this.§_-uf§)
         {
            return;
         }
         this.§_-uf§ = param1;
         if(this.§_-uf§)
         {
            this.§_-5Z§();
         }
         else
         {
            this.§_-Qw§();
         }
      }
      
      private function §_-YM§() : void
      {
         if(this.§_-d5§ == 1 || this.§_-Kf§.length > 0)
         {
            return;
         }
         while(§_-yJ§.§_-gB§ + (this.§_-xQ§.x - this.§_-cF§) * §_-yJ§.§_-rO§ > 0)
         {
            this.§_-xQ§.x -= this.§_-cF§;
         }
         this.§_-xH§();
      }
      
      private function §_-xH§() : void
      {
      }
   }
}
