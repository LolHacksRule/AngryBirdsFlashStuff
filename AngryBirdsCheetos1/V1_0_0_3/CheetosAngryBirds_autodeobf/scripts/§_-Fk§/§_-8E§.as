package §_-Fk§
{
   import §_-0-K§.§_-FL§;
   import §_-0-K§.§_-rY§;
   import §_-4I§.§_-14§;
   import §_-4I§.§_-EA§;
   import §_-4I§.§_-ok§;
   import §_-Vn§.b2Vec2;
   import §_-X4§.§_-vJ§;
   import §_-i9§.Texture;
   import §case §.Sprite;
   import §case §.§_-G3§;
   import flash.filters.GlowFilter;
   
   public class §_-8E§
   {
      
      public static const §_-b7§:Number = 1000;
      
      public static const §_-Ra§:Number = 500;
      
      private static var §_-Dd§:Array = null;
       
      
      private var §_-dv§:§_-Cb§;
      
      public var §_-Ux§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §_-GA§:Number;
      
      public var §_-iw§:Number;
      
      public var §_-Ve§:int = -1;
      
      private var §_-tq§:String;
      
      private var §_-wN§:§_-14§;
      
      private var §_-A6§:§_-14§;
      
      private var §_-pV§:§_-G3§;
      
      private var §_-5F§:Number = 0;
      
      private var §_-Z2§:Number = 0;
      
      public var §_-Zi§:int = -1;
      
      private var §_-Fr§:int = -1;
      
      private var §_-4r§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §_-ZA§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var § each§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §_-E3§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §_-00U§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §_-Z§:String = "fly";
      
      public var §_-we§:String = "fly_yell";
      
      public var § null§:GlowFilter;
      
      private var §_-QP§:Vector.<§_-rY§>;
      
      private var §_-0-0§:§_-14§;
      
      private var §_-kv§:Sprite = null;
      
      private var §_-mC§:§_-FL§;
      
      public function §_-8E§(param1:§_-Cb§, param2:Sprite, param3:§_-FL§)
      {
         super();
         this.§_-mC§ = param3;
         this.§_-dv§ = param1;
         this.§_-tq§ = this.§_-dv§.§_-k-§;
         this.§_-QP§ = new Vector.<§_-rY§>();
         this.§_-kv§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-rY§ = null;
         this.§_-fP§();
         if(this.§_-QP§)
         {
            while(this.§_-QP§.length > 0)
            {
               _loc1_ = this.§_-QP§.pop();
               _loc1_.dispose();
            }
            this.§_-QP§ = null;
         }
      }
      
      public function §_-gz§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§_-Ve§ = param1;
         this.§_-iw§ = param2;
         this.§_-vB§();
      }
      
      public function §_-DV§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-GA§ = 1;
            return;
         }
         this.§_-GA§ = this.mW / this.mH;
         if(this.§_-GA§ < 1)
         {
            this.§_-GA§ = 1 / this.§_-GA§;
         }
         this.§_-GA§ = Math.min(11,this.§_-GA§);
      }
      
      public function §_-pu§(param1:§_-ok§) : Boolean
      {
         var _loc2_:§_-EA§ = null;
         var _loc3_:Texture = null;
         if(this.§_-dv§.isGround())
         {
            return false;
         }
         this.§_-0-0§ = param1.§_-Sv§("SPARKLES");
         this.§_-wN§ = param1.§_-Sv§(this.§_-tq§);
         this.§_-A6§ = this.§_-wN§;
         var _loc4_:Number = 1;
         if(this.§_-A6§)
         {
            _loc2_ = this.§_-A6§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§_-mC§.§_-91§.§_-T-§();
         }
         this.§_-pV§ = new §_-G3§(_loc3_);
         if(_loc2_)
         {
            this.§_-pV§.x = -_loc2_.pivotX;
            this.§_-pV§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§_-pV§.x = -this.§_-pV§.width / 2;
            this.§_-pV§.y = -this.§_-pV§.height / 2;
         }
         this.§_-pV§.scaleX = _loc4_;
         this.§_-pV§.scaleY = _loc4_;
         this.mW = this.§_-pV§.width / 2;
         this.mH = this.§_-pV§.height / 2;
         this.§_-kv§.addChild(this.§_-pV§);
         return true;
      }
      
      public function §_-69§(param1:§_-vJ§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§_-ef§)
         {
            case §_-vJ§.§_-Lj§:
               _loc2_ = param1.§_-K1§();
               _loc3_ = _loc2_[0];
               this.§_-5F§ = _loc3_.x / §_-FL§.§_-NU§;
               this.§_-Z2§ = _loc3_.y / §_-FL§.§_-NU§;
               break;
            case §_-vJ§.§_-xK§:
         }
         this.§_-jb§();
      }
      
      public function §_-Wk§() : Array
      {
         return §_-I3§.§_-Wk§(null,this.§_-dv§.§_-o7§());
      }
      
      public function §_-3R§() : Array
      {
         return §_-I3§.§_-3R§(null,this.§_-dv§.§_-o7§());
      }
      
      public function §_-3X§() : Array
      {
         return §_-I3§.§_-3X§(null);
      }
      
      public function §_-vB§() : void
      {
      }
      
      public function §_-GZ§(param1:Number) : void
      {
         this.§_-kv§.scaleX = this.§_-kv§.scaleY = param1;
      }
      
      public function §_-jb§() : void
      {
         var _loc1_:§_-EA§ = null;
         if(!this.§_-wN§)
         {
            return;
         }
         if(this.§ each§)
         {
            this.§_-4r§ = 1;
         }
         else if(this.§_-dv§.getSpecialAnimationProgress() >= 0 && this.§_-wN§.getSubAnimation(this.§_-ZA§))
         {
            this.§_-A6§ = this.§_-wN§.getSubAnimation(this.§_-ZA§);
            this.§_-4r§ = this.§_-A6§.getFrameCount() * this.§_-dv§.getSpecialAnimationProgress();
            if(this.§_-4r§ == this.§_-A6§.getFrameCount() - 1 && this.§_-dv§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§_-4r§;
            }
         }
         else if(this.mTryToSpecial && this.§_-wN§.getSubAnimation(this.§_-ZA§))
         {
            this.§_-A6§ = this.§_-wN§.getSubAnimation(this.§_-ZA§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§_-wN§.getSubAnimation(this.§_-we§))
         {
            this.§_-A6§ = this.§_-wN§.getSubAnimation(this.§_-we§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§_-wN§.getSubAnimation(this.§_-E3§))
         {
            this.§_-A6§ = this.§_-wN§.getSubAnimation(this.§_-E3§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§_-wN§.getSubAnimation(this.§_-00U§))
         {
            this.§_-A6§ = this.§_-wN§.getSubAnimation(this.§_-00U§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§_-wN§.getSubAnimation(this.§_-Z§))
         {
            this.§_-A6§ = this.§_-wN§.getSubAnimation(this.§_-Z§);
            this.mIsFlying = true;
         }
         else
         {
            this.§_-A6§ = this.§_-wN§;
         }
         if(this.§_-A6§)
         {
            _loc1_ = this.§_-A6§.getFrame(this.§_-4r§);
            if(this.§_-pV§ && _loc1_)
            {
               this.§_-pV§.texture = _loc1_.texture;
               this.§_-pV§.x = -_loc1_.pivotX - this.§_-5F§;
               this.§_-pV§.y = -_loc1_.pivotY - this.§_-Z2§;
               this.§_-pV§.scaleX = _loc1_.scale;
               this.§_-pV§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §_-7F§() : void
      {
         this.§_-kv§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§_-Zi§ < 0)
         {
            this.§_-kT§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§_-dv§.§_-tR§ / this.§_-dv§.§_-m1§) * this.§_-Zi§;
         if(_loc1_ != this.§_-Fr§)
         {
            this.§_-Fr§ = _loc1_;
            this.§_-4r§ = this.§_-Fr§;
            this.§_-jb§();
         }
      }
      
      public function §_-kT§() : void
      {
         if(this.§_-wN§)
         {
            this.§_-Zi§ = this.§_-wN§.getFrameCount();
         }
      }
      
      public function §_-nB§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§ null§ = new GlowFilter();
         this.§ null§.blurX = param2;
         this.§ null§.blurY = param3;
         this.§ null§.color = param1;
      }
      
      public function §_-fP§() : void
      {
         this.§ null§ = null;
      }
      
      public function §_-xX§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§_-dv§.§_-nM§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§_-XC§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §_-JO§(param1:Number) : void
      {
         var _loc2_:int = this.§_-QP§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§_-QP§[_loc2_].updateLifeTime(param1);
            if(this.§_-QP§[_loc2_].lifeTime < 0)
            {
               this.§_-XC§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §_-XC§(param1:int) : void
      {
         if(!this.§_-0-0§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§_-EA§ = this.§_-0-0§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§_-rY§ = null;
         if(param1 < this.§_-QP§.length)
         {
            (_loc5_ = this.§_-QP§[param1]).§_-015§(_loc4_);
            _loc5_.§_-0Z§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §_-rY§(_loc3_.texture,_loc4_);
            this.§_-QP§.push(_loc5_);
            this.§_-kv§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§_-pV§.width / 2 + Math.random() * this.§_-pV§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§_-pV§.height / 2 + Math.random() * this.§_-pV§.height;
      }
      
      public function §_-NZ§() : §_-G3§
      {
         return this.§_-pV§;
      }
   }
}
