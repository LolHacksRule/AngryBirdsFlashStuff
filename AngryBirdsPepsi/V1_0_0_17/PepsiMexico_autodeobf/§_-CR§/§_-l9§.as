package §_-CR§
{
   import §_-4g§.Texture;
   import §_-HU§.§_-Ju§;
   import §_-Ja§.b2Vec2;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-OJ§.§_-Lo§;
   import §_-OJ§.§_-tL§;
   import §_-Ra§.§_-M7§;
   import §_-Ra§.§_-RO§;
   import §_-Ra§.§_-Vr§;
   import flash.filters.GlowFilter;
   
   public class §_-l9§
   {
      
      public static const §_-ey§:Number = 1000;
      
      public static const §_-L5§:Number = 500;
      
      private static var §_-Gl§:Array = null;
       
      
      private var §_-PP§:§_-Dz§;
      
      public var §_-SJ§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §super§:Number;
      
      public var §_-T-§:Number;
      
      public var §_-k0§:int = -1;
      
      private var §_-Qe§:String;
      
      private var §_-jC§:§_-RO§;
      
      private var §_-b8§:§_-RO§;
      
      private var §_-v4§:§_-19§;
      
      private var §_-H3§:Number = 0;
      
      private var §_-b4§:Number = 0;
      
      public var §_-bg§:int = -1;
      
      private var §_-wx§:int = -1;
      
      private var §_-eW§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §_-zp§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §_-I3§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §_-Zh§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §_-TI§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §_-Yn§:String = "fly";
      
      public var §_-5f§:String = "fly_yell";
      
      public var §_-U9§:GlowFilter;
      
      private var §_-uQ§:Vector.<§_-Lo§>;
      
      private var §_-Sy§:§_-RO§;
      
      private var §_-Cv§:Sprite = null;
      
      private var §_-Ag§:§_-tL§;
      
      public function §_-l9§(param1:§_-Dz§, param2:Sprite, param3:§_-tL§)
      {
         super();
         this.§_-Ag§ = param3;
         this.§_-PP§ = param1;
         this.§_-Qe§ = this.§_-PP§.§_-L1§;
         this.§_-uQ§ = new Vector.<§_-Lo§>();
         this.§_-Cv§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-Lo§ = null;
         this.§_-ad§();
         if(this.§_-uQ§)
         {
            while(this.§_-uQ§.length > 0)
            {
               _loc1_ = this.§_-uQ§.pop();
               _loc1_.dispose();
            }
            this.§_-uQ§ = null;
         }
      }
      
      public function §_-hu§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§_-k0§ = param1;
         this.§_-T-§ = param2;
         this.§_-Gm§();
      }
      
      public function §_-Hl§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§super§ = 1;
            return;
         }
         this.§super§ = this.mW / this.mH;
         if(this.§super§ < 1)
         {
            this.§super§ = 1 / this.§super§;
         }
         this.§super§ = Math.min(11,this.§super§);
      }
      
      public function §_-Yy§(param1:§_-M7§) : Boolean
      {
         var _loc2_:§_-Vr§ = null;
         var _loc3_:Texture = null;
         if(this.§_-PP§.isGround())
         {
            return false;
         }
         this.§_-Sy§ = param1.§_-S-§("SPARKLES");
         this.§_-jC§ = param1.§_-S-§(this.§_-Qe§);
         this.§_-b8§ = this.§_-jC§;
         if(this.§_-b8§)
         {
            _loc2_ = this.§_-b8§.getFrame(0);
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§_-Ag§.§_-JG§.§_-Z0§();
         }
         this.§_-v4§ = new §_-19§(_loc3_);
         if(_loc2_)
         {
            this.§_-v4§.x = -_loc2_.pivotX;
            this.§_-v4§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§_-v4§.x = -this.§_-v4§.width / 2;
            this.§_-v4§.y = -this.§_-v4§.height / 2;
         }
         this.mW = this.§_-v4§.width / 2;
         this.mH = this.§_-v4§.height / 2;
         this.§_-Cv§.addChild(this.§_-v4§);
         return true;
      }
      
      public function §_-Py§(param1:§_-Ju§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§_-zU§)
         {
            case §_-Ju§.§_-d9§:
               _loc2_ = param1.§_-mW§();
               _loc3_ = _loc2_[0];
               this.§_-H3§ = _loc3_.x / §_-tL§.§_-7m§;
               this.§_-b4§ = _loc3_.y / §_-tL§.§_-7m§;
               break;
            case §_-Ju§.§_-K9§:
         }
         this.§_-nj§();
      }
      
      public function §_-o5§() : Array
      {
         return §_-Bv§.§_-o5§(null,this.§_-PP§.§_-U7§());
      }
      
      public function §_-y2§() : Array
      {
         return §_-Bv§.§_-y2§(null,this.§_-PP§.§_-U7§());
      }
      
      public function §_-xT§() : Array
      {
         return §_-Bv§.§_-xT§(null);
      }
      
      public function §_-Gm§() : void
      {
      }
      
      public function §_-s7§(param1:Number) : void
      {
         this.§_-Cv§.scaleX = this.§_-Cv§.scaleY = param1;
      }
      
      public function §_-nj§() : void
      {
         var _loc1_:§_-Vr§ = null;
         if(!this.§_-jC§)
         {
            return;
         }
         if(this.§_-I3§)
         {
            this.§_-eW§ = 1;
         }
         else if(this.§_-PP§.getSpecialAnimationProgress() >= 0 && this.§_-jC§.getSubAnimation(this.§_-zp§))
         {
            this.§_-b8§ = this.§_-jC§.getSubAnimation(this.§_-zp§);
            this.§_-eW§ = this.§_-b8§.getFrameCount() * this.§_-PP§.getSpecialAnimationProgress();
            if(this.§_-eW§ == this.§_-b8§.getFrameCount() - 1 && this.§_-PP§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§_-eW§;
            }
         }
         else if(this.mTryToSpecial && this.§_-jC§.getSubAnimation(this.§_-zp§))
         {
            this.§_-b8§ = this.§_-jC§.getSubAnimation(this.§_-zp§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§_-jC§.getSubAnimation(this.§_-5f§))
         {
            this.§_-b8§ = this.§_-jC§.getSubAnimation(this.§_-5f§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§_-jC§.getSubAnimation(this.§_-Zh§))
         {
            this.§_-b8§ = this.§_-jC§.getSubAnimation(this.§_-Zh§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§_-jC§.getSubAnimation(this.§_-TI§))
         {
            this.§_-b8§ = this.§_-jC§.getSubAnimation(this.§_-TI§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§_-jC§.getSubAnimation(this.§_-Yn§))
         {
            this.§_-b8§ = this.§_-jC§.getSubAnimation(this.§_-Yn§);
            this.mIsFlying = true;
         }
         else
         {
            this.§_-b8§ = this.§_-jC§;
         }
         if(this.§_-b8§)
         {
            _loc1_ = this.§_-b8§.getFrame(this.§_-eW§);
            if(this.§_-v4§ && _loc1_)
            {
               this.§_-v4§.texture = _loc1_.texture;
               this.§_-v4§.x = -_loc1_.pivotX - this.§_-H3§;
               this.§_-v4§.y = -_loc1_.pivotY - this.§_-b4§;
            }
         }
      }
      
      public function §_-NN§() : void
      {
         this.§_-Cv§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§_-bg§ < 0)
         {
            this.§_-J1§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§_-PP§.§_-Qm§ / this.§_-PP§.§_-FF§) * (this.§_-bg§ * 0.99);
         if(_loc1_ != this.§_-wx§)
         {
            this.§_-wx§ = _loc1_;
            this.§_-eW§ = this.§_-wx§;
            this.§_-nj§();
         }
      }
      
      public function §_-J1§() : void
      {
         if(this.§_-jC§)
         {
            this.§_-bg§ = this.§_-jC§.getFrameCount();
         }
      }
      
      public function §_-op§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§_-U9§ = new GlowFilter();
         this.§_-U9§.blurX = param2;
         this.§_-U9§.blurY = param3;
         this.§_-U9§.color = param1;
      }
      
      public function §_-ad§() : void
      {
         this.§_-U9§ = null;
      }
      
      public function §_-2w§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§_-PP§.§_-jY§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§_-JI§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §_-b2§(param1:Number) : void
      {
         var _loc2_:int = this.§_-uQ§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§_-uQ§[_loc2_].updateLifeTime(param1);
            if(this.§_-uQ§[_loc2_].lifeTime < 0)
            {
               this.§_-JI§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §_-JI§(param1:int) : void
      {
         if(!this.§_-Sy§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§_-Vr§ = this.§_-Sy§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§_-Lo§ = null;
         if(param1 < this.§_-uQ§.length)
         {
            (_loc5_ = this.§_-uQ§[param1]).§_-db§(_loc4_);
            _loc5_.§_-sb§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §_-Lo§(_loc3_.texture,_loc4_);
            this.§_-uQ§.push(_loc5_);
            this.§_-Cv§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§_-v4§.width / 2 + Math.random() * this.§_-v4§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§_-v4§.height / 2 + Math.random() * this.§_-v4§.height;
      }
      
      public function §_-Ex§() : §_-19§
      {
         return this.§_-v4§;
      }
   }
}
