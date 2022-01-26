package §_-Sp§
{
   import §_-0y§.§_-B3§;
   import §_-0y§.§_-m4§;
   import §_-KS§.§_-3l§;
   import §_-KS§.§_-6i§;
   import §_-KS§.§_-Wt§;
   import §_-Zl§.b2Vec2;
   import §_-hR§.§_-bZ§;
   import §_-jY§.Texture;
   import §_-se§.Sprite;
   import §_-se§.§_-N§;
   import flash.filters.GlowFilter;
   
   public class §_-Lk§
   {
      
      public static const §_-1w§:Number = 1000;
      
      public static const §_-R6§:Number = 500;
      
      private static var §_-ma§:Array = null;
       
      
      private var §_-Vp§:§_-JP§;
      
      public var §_-BX§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §_-jD§:Number;
      
      public var §_-63§:Number;
      
      public var §_-uh§:int = -1;
      
      private var §_-CF§:String;
      
      private var §_-eV§:§_-3l§;
      
      private var §_-mf§:§_-3l§;
      
      private var §_-Le§:§_-N§;
      
      private var §_-lo§:Number = 0;
      
      private var §_-B5§:Number = 0;
      
      public var §_-dw§:int = -1;
      
      private var §_-tf§:int = -1;
      
      private var §_-w8§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §_-VR§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §_-N4§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §_-EG§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §_-ng§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §_-i8§:String = "fly";
      
      public var §_-kT§:String = "fly_yell";
      
      public var §_-3N§:GlowFilter;
      
      private var §_-g0§:Vector.<§_-m4§>;
      
      private var §_-Ic§:§_-3l§;
      
      private var §_-Pj§:Sprite = null;
      
      private var §_-Ia§:§_-B3§;
      
      public function §_-Lk§(param1:§_-JP§, param2:Sprite, param3:§_-B3§)
      {
         super();
         this.§_-Ia§ = param3;
         this.§_-Vp§ = param1;
         this.§_-CF§ = this.§_-Vp§.§_-TR§;
         this.§_-g0§ = new Vector.<§_-m4§>();
         this.§_-Pj§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-m4§ = null;
         this.§_-FW§();
         if(this.§_-g0§)
         {
            while(this.§_-g0§.length > 0)
            {
               _loc1_ = this.§_-g0§.pop();
               _loc1_.dispose();
            }
            this.§_-g0§ = null;
         }
      }
      
      public function §_-PJ§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§_-uh§ = param1;
         this.§_-63§ = param2;
         this.§_-q2§();
      }
      
      public function §_-Me§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-jD§ = 1;
            return;
         }
         this.§_-jD§ = this.mW / this.mH;
         if(this.§_-jD§ < 1)
         {
            this.§_-jD§ = 1 / this.§_-jD§;
         }
         this.§_-jD§ = Math.min(11,this.§_-jD§);
      }
      
      public function §_-10§(param1:§_-6i§) : Boolean
      {
         var _loc2_:§_-Wt§ = null;
         var _loc3_:Texture = null;
         if(this.§_-Vp§.isGround())
         {
            return false;
         }
         this.§_-Ic§ = param1.§_-bs§("SPARKLES");
         this.§_-eV§ = param1.§_-bs§(this.§_-CF§);
         this.§_-mf§ = this.§_-eV§;
         if(this.§_-mf§)
         {
            _loc2_ = this.§_-mf§.getFrame(0);
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§_-Ia§.§_-WT§.§_-O8§();
         }
         this.§_-Le§ = new §_-N§(_loc3_);
         if(_loc2_)
         {
            this.§_-Le§.x = -_loc2_.pivotX;
            this.§_-Le§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§_-Le§.x = -this.§_-Le§.width / 2;
            this.§_-Le§.y = -this.§_-Le§.height / 2;
         }
         this.mW = this.§_-Le§.width / 2;
         this.mH = this.§_-Le§.height / 2;
         this.§_-Pj§.addChild(this.§_-Le§);
         return true;
      }
      
      public function §_-Yx§(param1:§_-bZ§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§_-DD§)
         {
            case §_-bZ§.§_-Wy§:
               _loc2_ = param1.§_-f7§();
               _loc3_ = _loc2_[0];
               this.§_-lo§ = _loc3_.x / §_-B3§.§_-s8§;
               this.§_-B5§ = _loc3_.y / §_-B3§.§_-s8§;
               break;
            case §_-bZ§.§_-WL§:
         }
         this.§_-hd§();
      }
      
      public function §_-5u§() : Array
      {
         return §_-eO§.§_-5u§(null,this.§_-Vp§.§_-cb§());
      }
      
      public function §_-aT§() : Array
      {
         return §_-eO§.§_-aT§(null,this.§_-Vp§.§_-cb§());
      }
      
      public function §_-hN§() : Array
      {
         return §_-eO§.§_-hN§(null);
      }
      
      public function §_-q2§() : void
      {
      }
      
      public function §_-dE§(param1:Number) : void
      {
         this.§_-Pj§.scaleX = this.§_-Pj§.scaleY = param1;
      }
      
      public function §_-hd§() : void
      {
         var _loc1_:§_-Wt§ = null;
         if(!this.§_-eV§)
         {
            return;
         }
         if(this.§_-N4§)
         {
            this.§_-w8§ = 1;
         }
         else if(this.§_-Vp§.getSpecialAnimationProgress() >= 0 && this.§_-eV§.getSubAnimation(this.§_-VR§))
         {
            this.§_-mf§ = this.§_-eV§.getSubAnimation(this.§_-VR§);
            this.§_-w8§ = this.§_-mf§.getFrameCount() * this.§_-Vp§.getSpecialAnimationProgress();
            if(this.§_-w8§ == this.§_-mf§.getFrameCount() - 1 && this.§_-Vp§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§_-w8§;
            }
         }
         else if(this.mTryToSpecial && this.§_-eV§.getSubAnimation(this.§_-VR§))
         {
            this.§_-mf§ = this.§_-eV§.getSubAnimation(this.§_-VR§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§_-eV§.getSubAnimation(this.§_-kT§))
         {
            this.§_-mf§ = this.§_-eV§.getSubAnimation(this.§_-kT§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§_-eV§.getSubAnimation(this.§_-EG§))
         {
            this.§_-mf§ = this.§_-eV§.getSubAnimation(this.§_-EG§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§_-eV§.getSubAnimation(this.§_-ng§))
         {
            this.§_-mf§ = this.§_-eV§.getSubAnimation(this.§_-ng§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§_-eV§.getSubAnimation(this.§_-i8§))
         {
            this.§_-mf§ = this.§_-eV§.getSubAnimation(this.§_-i8§);
            this.mIsFlying = true;
         }
         else
         {
            this.§_-mf§ = this.§_-eV§;
         }
         if(this.§_-mf§)
         {
            _loc1_ = this.§_-mf§.getFrame(this.§_-w8§);
            if(this.§_-Le§ && _loc1_)
            {
               this.§_-Le§.texture = _loc1_.texture;
               this.§_-Le§.x = -_loc1_.pivotX - this.§_-lo§;
               this.§_-Le§.y = -_loc1_.pivotY - this.§_-B5§;
            }
         }
      }
      
      public function §_-5p§() : void
      {
         this.§_-Pj§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§_-dw§ < 0)
         {
            this.§_-1H§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§_-Vp§.§null § / this.§_-Vp§.§_-8S§) * (this.§_-dw§ * 0.99);
         if(_loc1_ != this.§_-tf§)
         {
            this.§_-tf§ = _loc1_;
            this.§_-w8§ = this.§_-tf§;
            this.§_-hd§();
         }
      }
      
      public function §_-1H§() : void
      {
         if(this.§_-eV§)
         {
            this.§_-dw§ = this.§_-eV§.getFrameCount();
         }
      }
      
      public function §_-tA§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§_-3N§ = new GlowFilter();
         this.§_-3N§.blurX = param2;
         this.§_-3N§.blurY = param3;
         this.§_-3N§.color = param1;
      }
      
      public function §_-FW§() : void
      {
         this.§_-3N§ = null;
      }
      
      public function §_-V-§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§_-Vp§.§_-mL§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§_-Z7§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §_-1o§(param1:Number) : void
      {
         var _loc2_:int = this.§_-g0§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§_-g0§[_loc2_].updateLifeTime(param1);
            if(this.§_-g0§[_loc2_].lifeTime < 0)
            {
               this.§_-Z7§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §_-Z7§(param1:int) : void
      {
         if(!this.§_-Ic§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§_-Wt§ = this.§_-Ic§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§_-m4§ = null;
         if(param1 < this.§_-g0§.length)
         {
            (_loc5_ = this.§_-g0§[param1]).§_-dC§(_loc4_);
            _loc5_.§_-GL§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §_-m4§(_loc3_.texture,_loc4_);
            this.§_-g0§.push(_loc5_);
            this.§_-Pj§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§_-Le§.width / 2 + Math.random() * this.§_-Le§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§_-Le§.height / 2 + Math.random() * this.§_-Le§.height;
      }
      
      public function §throw§() : §_-N§
      {
         return this.§_-Le§;
      }
   }
}
