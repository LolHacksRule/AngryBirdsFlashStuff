package §_-vJ§
{
   import §_-0BV§.ParticleManager;
   import §_-0Ea§.§_-AY§;
   import §_-0O§.ParticleDesignerPS;
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-mB§;
   import §_-8d§.§_-vz§;
   import §_-9T§.§_-QO§;
   import §_-JK§.§_-S2§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-Cb§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-z4§.Texture;
   import starling.events.Event;
   
   public class §_-h5§
   {
       
      
      private var §_-2y§:int;
      
      private var §_-e6§:int;
      
      private var §_-0D3§:Number;
      
      private var §_-QM§:Boolean;
      
      private var §_-FQ§:Sprite;
      
      private var §_-1V§:Array;
      
      private var §_-JF§:Boolean = true;
      
      private var §_-00g§:§_-0FF§;
      
      private var §_-n3§:Sprite;
      
      private var §_-2Z§:Sprite;
      
      public function §_-h5§(param1:§_-QO§, param2:Sprite, param3:§_-0FF§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§_-vz§ = null;
         this.§_-1V§ = [];
         super();
         this.§_-00g§ = param3;
         this.§_-FQ§ = param2;
         this.§_-0D3§ = param1.§_-0D2§;
         this.§_-QM§ = param1.§_-gm§;
         var _loc5_:Number = 1;
         if(param1.§_-XE§ != 0)
         {
            _loc5_ = param1.§_-XE§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §_-mB§.§_-pc§(param1.mName,this.§_-00g§,param1.§_-94§)))
         {
            _loc7_ = (_loc13_ = param3.§_-70§(param1.mName)).pivotY;
            if(!this.§_-QM§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§_-2y§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§_-2y§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§_-XV§.bottom;
            _loc8_ = (_loc10_.§_-XV§.left + _loc10_.§_-XV§.right) / 2;
         }
         if(this.§_-2y§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§_-2y§ = Math.round(this.§_-2y§);
         if(param1.§_-9s§)
         {
            this.§_-e6§ = 2 + §_-00u§.§_-F1§ * 1.5 / (this.§_-2y§ * param4);
         }
         else
         {
            this.§_-e6§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§_-e6§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §_-mB§.§_-pc§(param1.mName,this.§_-00g§,param1.§_-94§);
               }
               else
               {
                  _loc10_ = new §_-09b§(_loc6_,false,param1.§_-94§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§_-2y§ + (-_loc8_ * _loc5_ + param1.§_-2n§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§_-xh§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§_-xl§(param1,(_loc12_ - 1) * this.§_-2y§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§_-FQ§.addChild(_loc11_);
         if(this.§_-n3§)
         {
            if(this.§_-n3§.numChildren > 0)
            {
               this.§_-FQ§.addChild(this.§_-n3§);
            }
            else
            {
               this.§_-n3§.dispose();
            }
         }
         if(this.§_-2Z§)
         {
            if(this.§_-2Z§.numChildren > 0)
            {
               this.§_-FQ§.addChildAt(this.§_-2Z§,0);
            }
            else
            {
               this.§_-2Z§.dispose();
            }
         }
         this.§_-FQ§.addEventListener(Event.ADDED_TO_STAGE,this.§_-b-§);
      }
      
      public function get §_-D0§() : Boolean
      {
         return this.§_-QM§;
      }
      
      private function §_-xl§(param1:§_-QO§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§_-Cb§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§_-1V§)
         {
            if((_loc4_ = ParticleManager.§_-0D0§(_loc3_.id,this.§_-00g§)) && _loc4_.§_-cJ§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§_-2n§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §_-AY§.§_-CK§.add(_loc4_);
               this.§_-1V§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§_-2Z§)
                  {
                     this.§_-2Z§ = new Sprite();
                  }
                  this.§_-2Z§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§_-n3§)
                  {
                     this.§_-n3§ = new Sprite();
                  }
                  this.§_-n3§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§_-hL§(1 / 20);
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
         this.§_-FQ§.§_-0BM§(0,-1,true);
         this.§_-FQ§.removeEventListener(Event.ADDED_TO_STAGE,this.§_-b-§);
         for each(_loc1_ in this.§_-1V§)
         {
            §_-AY§.§_-CK§.§_-Ob§(_loc1_);
            _loc1_.dispose();
         }
         this.§_-1V§ = [];
         this.§_-2Z§ = null;
         this.§_-n3§ = null;
      }
      
      private function §_-b-§(param1:Event) : void
      {
         this.§_-b5§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-0D3§ * param1;
         this.§_-FQ§.x = -_loc3_;
         this.§_-FQ§.y = -param2;
         this.§_-bh§();
      }
      
      private function §_-b5§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§_-JF§ || !this.§_-FQ§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§_-1V§)
         {
            §_-AY§.§_-CK§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §_-0EX§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§_-1V§)
         {
            §_-AY§.§_-CK§.§_-Ob§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §_-bN§(param1:Boolean) : void
      {
         if(param1 == this.§_-JF§)
         {
            return;
         }
         this.§_-JF§ = param1;
         if(this.§_-JF§)
         {
            this.§_-b5§();
         }
         else
         {
            this.§_-0EX§();
         }
      }
      
      private function §_-bh§() : void
      {
         if(this.§_-e6§ == 1 || this.§_-1V§.length > 0)
         {
            return;
         }
         while(§_-S2§.§_-qy§ + (this.§_-FQ§.x - this.§_-2y§) * §_-S2§.§_-4-§ > 0)
         {
            this.§_-FQ§.x -= this.§_-2y§;
         }
         this.§_-LH§();
      }
      
      private function §_-LH§() : void
      {
      }
   }
}
