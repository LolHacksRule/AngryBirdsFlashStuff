package §_-ST§
{
   import §_-B7§.§_-pl§;
   import §_-Bp§.§_-9c§;
   import §_-Bp§.§_-Po§;
   import §_-Bp§.§_-wQ§;
   import §_-Q2§.Texture;
   import §_-dx§.b2Vec2;
   import §_-ez§.§_-Ay§;
   import §_-ez§.§_-C8§;
   import §_-vO§.Sprite;
   import §_-vO§.§_-OW§;
   import flash.filters.GlowFilter;
   
   public class §_-T6§
   {
      
      public static const §_-JK§:Number = 1000;
      
      public static const §_-1R§:Number = 500;
      
      private static var §_-ti§:Array = null;
       
      
      private var §_-s6§:§_-fK§;
      
      public var §_-u5§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §_-Fh§:Number;
      
      public var §_-Tj§:Number;
      
      public var §_-BA§:int = -1;
      
      private var §_-pa§:String;
      
      private var §_-3i§:§_-wQ§;
      
      private var §_-C6§:§_-wQ§;
      
      private var §_-9r§:§_-OW§;
      
      private var §_-gN§:Number = 0;
      
      private var §_-xA§:Number = 0;
      
      public var §_-tU§:int = -1;
      
      private var §_-wA§:int = -1;
      
      private var §_-El§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §_-cY§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §_-Xk§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §_-u-§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §_-pj§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §_-Mx§:String = "fly";
      
      public var §_-mG§:String = "fly_yell";
      
      public var §_-0m§:GlowFilter;
      
      private var §_-Q6§:Vector.<§_-C8§>;
      
      private var §_-ZD§:§_-wQ§;
      
      private var §_-0O§:Sprite = null;
      
      private var §_-9N§:§_-Ay§;
      
      public function §_-T6§(param1:§_-fK§, param2:Sprite, param3:§_-Ay§)
      {
         super();
         this.§_-9N§ = param3;
         this.§_-s6§ = param1;
         this.§_-pa§ = this.§_-s6§.§_-Pd§;
         this.§_-Q6§ = new Vector.<§_-C8§>();
         this.§_-0O§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-C8§ = null;
         this.§_-hn§();
         if(this.§_-Q6§)
         {
            while(this.§_-Q6§.length > 0)
            {
               _loc1_ = this.§_-Q6§.pop();
               _loc1_.dispose();
            }
            this.§_-Q6§ = null;
         }
      }
      
      public function §_-64§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§_-BA§ = param1;
         this.§_-Tj§ = param2;
         this.§_-gU§();
      }
      
      public function §_-Nn§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Fh§ = 1;
            return;
         }
         this.§_-Fh§ = this.mW / this.mH;
         if(this.§_-Fh§ < 1)
         {
            this.§_-Fh§ = 1 / this.§_-Fh§;
         }
         this.§_-Fh§ = Math.min(11,this.§_-Fh§);
      }
      
      public function §_-Mq§(param1:§_-Po§) : Boolean
      {
         var _loc2_:§_-9c§ = null;
         var _loc3_:Texture = null;
         if(this.§_-s6§.isGround())
         {
            return false;
         }
         this.§_-ZD§ = param1.§_-hS§("SPARKLES");
         this.§_-3i§ = param1.§_-hS§(this.§_-pa§);
         this.§_-C6§ = this.§_-3i§;
         if(this.§_-C6§)
         {
            _loc2_ = this.§_-C6§.getFrame(0);
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§_-9N§.§_-si§.§_-Ex§();
         }
         this.§_-9r§ = new §_-OW§(_loc3_);
         if(_loc2_)
         {
            this.§_-9r§.x = -_loc2_.pivotX;
            this.§_-9r§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§_-9r§.x = -this.§_-9r§.width / 2;
            this.§_-9r§.y = -this.§_-9r§.height / 2;
         }
         this.mW = this.§_-9r§.width / 2;
         this.mH = this.§_-9r§.height / 2;
         this.§_-0O§.addChild(this.§_-9r§);
         return true;
      }
      
      public function §_-5-§(param1:§_-pl§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§_-qU§)
         {
            case §_-pl§.§_-gb§:
               _loc2_ = param1.§_-Nr§();
               _loc3_ = _loc2_[0];
               this.§_-gN§ = _loc3_.x / §_-Ay§.§_-G0§;
               this.§_-xA§ = _loc3_.y / §_-Ay§.§_-G0§;
               break;
            case §_-pl§.§_-Fj§:
         }
         this.§_-Bt§();
      }
      
      public function §_-bh§() : Array
      {
         return §_-b-§.§_-bh§(null,this.§_-s6§.§_-8x§());
      }
      
      public function §_-I0§() : Array
      {
         return §_-b-§.§_-I0§(null,this.§_-s6§.§_-8x§());
      }
      
      public function §_-bL§() : Array
      {
         return §_-b-§.§_-bL§(null);
      }
      
      public function §_-gU§() : void
      {
      }
      
      public function §_-cW§(param1:Number) : void
      {
         this.§_-0O§.scaleX = this.§_-0O§.scaleY = param1;
      }
      
      public function §_-Bt§() : void
      {
         var _loc1_:§_-9c§ = null;
         if(!this.§_-3i§)
         {
            return;
         }
         if(this.§_-Xk§)
         {
            this.§_-El§ = 1;
         }
         else if(this.§_-s6§.getSpecialAnimationProgress() >= 0 && this.§_-3i§.getSubAnimation(this.§_-cY§))
         {
            this.§_-C6§ = this.§_-3i§.getSubAnimation(this.§_-cY§);
            this.§_-El§ = this.§_-C6§.getFrameCount() * this.§_-s6§.getSpecialAnimationProgress();
            if(this.§_-El§ == this.§_-C6§.getFrameCount() - 1 && this.§_-s6§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§_-El§;
            }
         }
         else if(this.mTryToSpecial && this.§_-3i§.getSubAnimation(this.§_-cY§))
         {
            this.§_-C6§ = this.§_-3i§.getSubAnimation(this.§_-cY§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§_-3i§.getSubAnimation(this.§_-mG§))
         {
            this.§_-C6§ = this.§_-3i§.getSubAnimation(this.§_-mG§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§_-3i§.getSubAnimation(this.§_-u-§))
         {
            this.§_-C6§ = this.§_-3i§.getSubAnimation(this.§_-u-§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§_-3i§.getSubAnimation(this.§_-pj§))
         {
            this.§_-C6§ = this.§_-3i§.getSubAnimation(this.§_-pj§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§_-3i§.getSubAnimation(this.§_-Mx§))
         {
            this.§_-C6§ = this.§_-3i§.getSubAnimation(this.§_-Mx§);
            this.mIsFlying = true;
         }
         else
         {
            this.§_-C6§ = this.§_-3i§;
         }
         if(this.§_-C6§)
         {
            _loc1_ = this.§_-C6§.getFrame(this.§_-El§);
            if(this.§_-9r§ && _loc1_)
            {
               this.§_-9r§.texture = _loc1_.texture;
               this.§_-9r§.x = -_loc1_.pivotX - this.§_-gN§;
               this.§_-9r§.y = -_loc1_.pivotY - this.§_-xA§;
            }
         }
      }
      
      public function §_-hm§() : void
      {
         this.§_-0O§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§_-tU§ < 0)
         {
            this.§_-lV§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§_-s6§.§_-Sy§ / this.§_-s6§.§_-JQ§) * (this.§_-tU§ * 0.99);
         if(_loc1_ != this.§_-wA§)
         {
            this.§_-wA§ = _loc1_;
            this.§_-El§ = this.§_-wA§;
            this.§_-Bt§();
         }
      }
      
      public function §_-lV§() : void
      {
         if(this.§_-3i§)
         {
            this.§_-tU§ = this.§_-3i§.getFrameCount();
         }
      }
      
      public function §_-CA§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§_-0m§ = new GlowFilter();
         this.§_-0m§.blurX = param2;
         this.§_-0m§.blurY = param3;
         this.§_-0m§.color = param1;
      }
      
      public function §_-hn§() : void
      {
         this.§_-0m§ = null;
      }
      
      public function §_-pM§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§_-s6§.§_-2R§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§_-Hf§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §_-bK§(param1:Number) : void
      {
         var _loc2_:int = this.§_-Q6§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§_-Q6§[_loc2_].updateLifeTime(param1);
            if(this.§_-Q6§[_loc2_].lifeTime < 0)
            {
               this.§_-Hf§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §_-Hf§(param1:int) : void
      {
         if(!this.§_-ZD§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§_-9c§ = this.§_-ZD§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§_-C8§ = null;
         if(param1 < this.§_-Q6§.length)
         {
            (_loc5_ = this.§_-Q6§[param1]).§_-TN§(_loc4_);
            _loc5_.§_-AJ§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §_-C8§(_loc3_.texture,_loc4_);
            this.§_-Q6§.push(_loc5_);
            this.§_-0O§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§_-9r§.width / 2 + Math.random() * this.§_-9r§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§_-9r§.height / 2 + Math.random() * this.§_-9r§.height;
      }
      
      public function §_-JT§() : §_-OW§
      {
         return this.§_-9r§;
      }
   }
}
