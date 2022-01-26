package §_-mj§
{
   import §_-4n§.b2Vec2;
   import §_-5Y§.§_-p3§;
   import §_-5Y§.§_-yw§;
   import §_-DQ§.Texture;
   import §_-PC§.§_-N0§;
   import §_-PC§.§_-ob§;
   import §_-PC§.§_-qH§;
   import §_-WH§.§_-ce§;
   import §_-b5§.Sprite;
   import §_-b5§.§_-Xj§;
   import flash.filters.GlowFilter;
   
   public class §_-KA§
   {
      
      public static const §_-6K§:Number = 1000;
      
      public static const §_-NA§:Number = 500;
      
      private static var §_-nx§:Array = null;
       
      
      private var §_-UI§:§_-GI§;
      
      public var §_-qZ§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §_-Xx§:Number;
      
      public var §_-aK§:Number;
      
      public var §_-pp§:int = -1;
      
      private var §_-hA§:String;
      
      private var §_-x0§:§_-ob§;
      
      private var §_-X§:§_-ob§;
      
      private var §_-Cb§:§_-Xj§;
      
      private var §_-QS§:Number = 0;
      
      private var §_-8y§:Number = 0;
      
      public var §_-lm§:int = -1;
      
      private var §_-bC§:int = -1;
      
      private var §_-ep§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §_-t9§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §_-Qc§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §_-qF§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §_-yj§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §_-zC§:String = "fly";
      
      public var §_-rv§:String = "fly_yell";
      
      public var §_-PW§:GlowFilter;
      
      private var §_-DY§:Vector.<§_-p3§>;
      
      private var §_-NC§:§_-ob§;
      
      private var §_-MT§:Sprite = null;
      
      private var §_-Fx§:§_-yw§;
      
      public function §_-KA§(param1:§_-GI§, param2:Sprite, param3:§_-yw§)
      {
         super();
         this.§_-Fx§ = param3;
         this.§_-UI§ = param1;
         this.§_-hA§ = this.§_-UI§.§_-FK§;
         this.§_-DY§ = new Vector.<§_-p3§>();
         this.§_-MT§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-p3§ = null;
         this.§_-VS§();
         if(this.§_-DY§)
         {
            while(this.§_-DY§.length > 0)
            {
               _loc1_ = this.§_-DY§.pop();
               _loc1_.dispose();
            }
            this.§_-DY§ = null;
         }
      }
      
      public function §_-fj§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§_-pp§ = param1;
         this.§_-aK§ = param2;
         this.§_-PP§();
      }
      
      public function §_-yL§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Xx§ = 1;
            return;
         }
         this.§_-Xx§ = this.mW / this.mH;
         if(this.§_-Xx§ < 1)
         {
            this.§_-Xx§ = 1 / this.§_-Xx§;
         }
         this.§_-Xx§ = Math.min(11,this.§_-Xx§);
      }
      
      public function §_-TF§(param1:§_-N0§) : Boolean
      {
         var _loc2_:§_-qH§ = null;
         var _loc3_:Texture = null;
         if(this.§_-UI§.isGround())
         {
            return false;
         }
         this.§_-NC§ = param1.§_-CT§("SPARKLES");
         this.§_-x0§ = param1.§_-CT§(this.§_-hA§);
         this.§_-X§ = this.§_-x0§;
         if(this.§_-X§)
         {
            _loc2_ = this.§_-X§.getFrame(0);
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§_-Fx§.§_-Ly§.§_-hd§();
         }
         this.§_-Cb§ = new §_-Xj§(_loc3_);
         if(_loc2_)
         {
            this.§_-Cb§.x = -_loc2_.pivotX;
            this.§_-Cb§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§_-Cb§.x = -this.§_-Cb§.width / 2;
            this.§_-Cb§.y = -this.§_-Cb§.height / 2;
         }
         this.mW = this.§_-Cb§.width / 2;
         this.mH = this.§_-Cb§.height / 2;
         this.§_-MT§.addChild(this.§_-Cb§);
         return true;
      }
      
      public function §_-lL§(param1:§_-ce§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§_-jG§)
         {
            case §_-ce§.§_-kD§:
               _loc2_ = param1.§_-ag§();
               _loc3_ = _loc2_[0];
               this.§_-QS§ = _loc3_.x / §_-yw§.§_-rO§;
               this.§_-8y§ = _loc3_.y / §_-yw§.§_-rO§;
               break;
            case §_-ce§.§_-73§:
         }
         this.§_-XU§();
      }
      
      public function §_-y0§() : Array
      {
         return §_-Fm§.§_-y0§(null,this.§_-UI§.§_-2n§());
      }
      
      public function §_-4O§() : Array
      {
         return §_-Fm§.§_-4O§(null,this.§_-UI§.§_-2n§());
      }
      
      public function §_-nq§() : Array
      {
         return §_-Fm§.§_-nq§(null);
      }
      
      public function §_-PP§() : void
      {
      }
      
      public function §for§(param1:Number) : void
      {
         this.§_-MT§.scaleX = this.§_-MT§.scaleY = param1;
      }
      
      public function §_-XU§() : void
      {
         var _loc1_:§_-qH§ = null;
         if(!this.§_-x0§)
         {
            return;
         }
         if(this.§_-Qc§)
         {
            this.§_-ep§ = 1;
         }
         else if(this.§_-UI§.getSpecialAnimationProgress() >= 0 && this.§_-x0§.getSubAnimation(this.§_-t9§))
         {
            this.§_-X§ = this.§_-x0§.getSubAnimation(this.§_-t9§);
            this.§_-ep§ = this.§_-X§.getFrameCount() * this.§_-UI§.getSpecialAnimationProgress();
            if(this.§_-ep§ == this.§_-X§.getFrameCount() - 1 && this.§_-UI§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§_-ep§;
            }
         }
         else if(this.mTryToSpecial && this.§_-x0§.getSubAnimation(this.§_-t9§))
         {
            this.§_-X§ = this.§_-x0§.getSubAnimation(this.§_-t9§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§_-x0§.getSubAnimation(this.§_-rv§))
         {
            this.§_-X§ = this.§_-x0§.getSubAnimation(this.§_-rv§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§_-x0§.getSubAnimation(this.§_-qF§))
         {
            this.§_-X§ = this.§_-x0§.getSubAnimation(this.§_-qF§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§_-x0§.getSubAnimation(this.§_-yj§))
         {
            this.§_-X§ = this.§_-x0§.getSubAnimation(this.§_-yj§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§_-x0§.getSubAnimation(this.§_-zC§))
         {
            this.§_-X§ = this.§_-x0§.getSubAnimation(this.§_-zC§);
            this.mIsFlying = true;
         }
         else
         {
            this.§_-X§ = this.§_-x0§;
         }
         if(this.§_-X§)
         {
            _loc1_ = this.§_-X§.getFrame(this.§_-ep§);
            if(this.§_-Cb§ && _loc1_)
            {
               this.§_-Cb§.texture = _loc1_.texture;
               this.§_-Cb§.x = -_loc1_.pivotX - this.§_-QS§;
               this.§_-Cb§.y = -_loc1_.pivotY - this.§_-8y§;
            }
         }
      }
      
      public function §_-FJ§() : void
      {
         this.§_-MT§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§_-lm§ < 0)
         {
            this.§_-K0§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§_-UI§.§_-QY§ / this.§_-UI§.§_-t6§) * (this.§_-lm§ * 0.99);
         if(_loc1_ != this.§_-bC§)
         {
            this.§_-bC§ = _loc1_;
            this.§_-ep§ = this.§_-bC§;
            this.§_-XU§();
         }
      }
      
      public function §_-K0§() : void
      {
         if(this.§_-x0§)
         {
            this.§_-lm§ = this.§_-x0§.getFrameCount();
         }
      }
      
      public function §_-1M§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§_-PW§ = new GlowFilter();
         this.§_-PW§.blurX = param2;
         this.§_-PW§.blurY = param3;
         this.§_-PW§.color = param1;
      }
      
      public function §_-VS§() : void
      {
         this.§_-PW§ = null;
      }
      
      public function §_-ec§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§_-UI§.§_-Bs§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§_-7K§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §_-Od§(param1:Number) : void
      {
         var _loc2_:int = this.§_-DY§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§_-DY§[_loc2_].updateLifeTime(param1);
            if(this.§_-DY§[_loc2_].lifeTime < 0)
            {
               this.§_-7K§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §_-7K§(param1:int) : void
      {
         if(!this.§_-NC§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§_-qH§ = this.§_-NC§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§_-p3§ = null;
         if(param1 < this.§_-DY§.length)
         {
            (_loc5_ = this.§_-DY§[param1]).§_-Wi§(_loc4_);
            _loc5_.§_-sH§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §_-p3§(_loc3_.texture,_loc4_);
            this.§_-DY§.push(_loc5_);
            this.§_-MT§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§_-Cb§.width / 2 + Math.random() * this.§_-Cb§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§_-Cb§.height / 2 + Math.random() * this.§_-Cb§.height;
      }
      
      public function §if§() : §_-Xj§
      {
         return this.§_-Cb§;
      }
   }
}
