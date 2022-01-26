package §_-Xd§
{
   import §_-Cy§.Texture;
   import §_-FQ§.§_-7W§;
   import §_-FQ§.§_-iA§;
   import §_-UX§.Sprite;
   import §_-UX§.§_-2S§;
   import §_-rQ§.§_-Fv§;
   import §_-rQ§.§_-MV§;
   import §_-rQ§.§_-nh§;
   import flash.filters.GlowFilter;
   import §var§.b2Vec2;
   import §with§.§_-fn§;
   
   public class §_-1c§
   {
      
      public static const §_-sO§:Number = 1000;
      
      public static const §_-7d§:Number = 500;
      
      private static var §_-Fs§:Array = null;
       
      
      private var §_-TU§:§_-sW§;
      
      public var §_-Ad§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §_-2b§:Number;
      
      public var §_-W§:Number;
      
      public var §_-PG§:int = -1;
      
      private var §_-fU§:String;
      
      private var §_-5v§:§_-Fv§;
      
      private var §_-Dx§:§_-Fv§;
      
      private var §_-Bk§:§_-2S§;
      
      private var §_-7w§:Number = 0;
      
      private var §_-iX§:Number = 0;
      
      public var §_-dy§:int = -1;
      
      private var §true§:int = -1;
      
      private var §_-Rr§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §_-WD§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §_-gv§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §_-js§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §_-F§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §_-tf§:String = "fly";
      
      public var §_-oq§:String = "fly_yell";
      
      public var § do§:GlowFilter;
      
      private var §_-g4§:Vector.<§_-iA§>;
      
      private var §_-JW§:§_-Fv§;
      
      private var §_-bB§:Sprite = null;
      
      private var §_-6q§:§_-7W§;
      
      public function §_-1c§(param1:§_-sW§, param2:Sprite, param3:§_-7W§)
      {
         super();
         this.§_-6q§ = param3;
         this.§_-TU§ = param1;
         this.§_-fU§ = this.§_-TU§.§true §;
         this.§_-g4§ = new Vector.<§_-iA§>();
         this.§_-bB§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-iA§ = null;
         this.§_-qN§();
         if(this.§_-g4§)
         {
            while(this.§_-g4§.length > 0)
            {
               _loc1_ = this.§_-g4§.pop();
               _loc1_.dispose();
            }
            this.§_-g4§ = null;
         }
      }
      
      public function §_-TI§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§_-PG§ = param1;
         this.§_-W§ = param2;
         this.§_-vN§();
      }
      
      public function §_-Qv§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-2b§ = 1;
            return;
         }
         this.§_-2b§ = this.mW / this.mH;
         if(this.§_-2b§ < 1)
         {
            this.§_-2b§ = 1 / this.§_-2b§;
         }
         this.§_-2b§ = Math.min(11,this.§_-2b§);
      }
      
      public function §_-Mf§(param1:§_-nh§) : Boolean
      {
         var _loc2_:§_-MV§ = null;
         var _loc3_:Texture = null;
         if(this.§_-TU§.isGround())
         {
            return false;
         }
         this.§_-JW§ = param1.§_-72§("SPARKLES");
         this.§_-5v§ = param1.§_-72§(this.§_-fU§);
         this.§_-Dx§ = this.§_-5v§;
         if(this.§_-Dx§)
         {
            _loc2_ = this.§_-Dx§.getFrame(0);
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§_-6q§.§_-xI§.§_-qL§();
         }
         this.§_-Bk§ = new §_-2S§(_loc3_);
         if(_loc2_)
         {
            this.§_-Bk§.x = -_loc2_.pivotX;
            this.§_-Bk§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§_-Bk§.x = -this.§_-Bk§.width / 2;
            this.§_-Bk§.y = -this.§_-Bk§.height / 2;
         }
         this.mW = this.§_-Bk§.width / 2;
         this.mH = this.§_-Bk§.height / 2;
         this.§_-bB§.addChild(this.§_-Bk§);
         return true;
      }
      
      public function §_-S§(param1:§_-fn§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§_-Ts§)
         {
            case §_-fn§.§_-ms§:
               _loc2_ = param1.§_-Tu§();
               _loc3_ = _loc2_[0];
               this.§_-7w§ = _loc3_.x / §_-7W§.§_-hT§;
               this.§_-iX§ = _loc3_.y / §_-7W§.§_-hT§;
               break;
            case §_-fn§.§_-ul§:
         }
         this.§_-Y-§();
      }
      
      public function §_-Df§() : Array
      {
         return §_-n8§.§_-Df§(null,this.§_-TU§.§_-re§());
      }
      
      public function §_-AQ§() : Array
      {
         return §_-n8§.§_-AQ§(null,this.§_-TU§.§_-re§());
      }
      
      public function §_-9-§() : Array
      {
         return §_-n8§.§_-9-§(null);
      }
      
      public function §_-vN§() : void
      {
      }
      
      public function §_-tZ§(param1:Number) : void
      {
         this.§_-bB§.scaleX = this.§_-bB§.scaleY = param1;
      }
      
      public function §_-Y-§() : void
      {
         var _loc1_:§_-MV§ = null;
         if(!this.§_-5v§)
         {
            return;
         }
         if(this.§_-gv§)
         {
            this.§_-Rr§ = 1;
         }
         else if(this.§_-TU§.getSpecialAnimationProgress() >= 0 && this.§_-5v§.getSubAnimation(this.§_-WD§))
         {
            this.§_-Dx§ = this.§_-5v§.getSubAnimation(this.§_-WD§);
            this.§_-Rr§ = this.§_-Dx§.getFrameCount() * this.§_-TU§.getSpecialAnimationProgress();
            if(this.§_-Rr§ == this.§_-Dx§.getFrameCount() - 1 && this.§_-TU§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§_-Rr§;
            }
         }
         else if(this.mTryToSpecial && this.§_-5v§.getSubAnimation(this.§_-WD§))
         {
            this.§_-Dx§ = this.§_-5v§.getSubAnimation(this.§_-WD§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§_-5v§.getSubAnimation(this.§_-oq§))
         {
            this.§_-Dx§ = this.§_-5v§.getSubAnimation(this.§_-oq§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§_-5v§.getSubAnimation(this.§_-js§))
         {
            this.§_-Dx§ = this.§_-5v§.getSubAnimation(this.§_-js§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§_-5v§.getSubAnimation(this.§_-F§))
         {
            this.§_-Dx§ = this.§_-5v§.getSubAnimation(this.§_-F§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§_-5v§.getSubAnimation(this.§_-tf§))
         {
            this.§_-Dx§ = this.§_-5v§.getSubAnimation(this.§_-tf§);
            this.mIsFlying = true;
         }
         else
         {
            this.§_-Dx§ = this.§_-5v§;
         }
         if(this.§_-Dx§)
         {
            _loc1_ = this.§_-Dx§.getFrame(this.§_-Rr§);
            if(this.§_-Bk§ && _loc1_)
            {
               this.§_-Bk§.texture = _loc1_.texture;
               this.§_-Bk§.x = -_loc1_.pivotX - this.§_-7w§;
               this.§_-Bk§.y = -_loc1_.pivotY - this.§_-iX§;
            }
         }
      }
      
      public function §_-Oq§() : void
      {
         this.§_-bB§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§_-dy§ < 0)
         {
            this.§_-lQ§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§_-TU§.§_-gg§ / this.§_-TU§.§_-jW§) * (this.§_-dy§ * 0.99);
         if(_loc1_ != this.§true§)
         {
            this.§true§ = _loc1_;
            this.§_-Rr§ = this.§true§;
            this.§_-Y-§();
         }
      }
      
      public function §_-lQ§() : void
      {
         if(this.§_-5v§)
         {
            this.§_-dy§ = this.§_-5v§.getFrameCount();
         }
      }
      
      public function §_-TL§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§ do§ = new GlowFilter();
         this.§ do§.blurX = param2;
         this.§ do§.blurY = param3;
         this.§ do§.color = param1;
      }
      
      public function §_-qN§() : void
      {
         this.§ do§ = null;
      }
      
      public function §_-fo§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§_-TU§.§_-8h§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§_-Td§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §_-Qa§(param1:Number) : void
      {
         var _loc2_:int = this.§_-g4§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§_-g4§[_loc2_].updateLifeTime(param1);
            if(this.§_-g4§[_loc2_].lifeTime < 0)
            {
               this.§_-Td§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §_-Td§(param1:int) : void
      {
         if(!this.§_-JW§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§_-MV§ = this.§_-JW§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§_-iA§ = null;
         if(param1 < this.§_-g4§.length)
         {
            (_loc5_ = this.§_-g4§[param1]).§_-Tt§(_loc4_);
            _loc5_.§_-wq§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §_-iA§(_loc3_.texture,_loc4_);
            this.§_-g4§.push(_loc5_);
            this.§_-bB§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§_-Bk§.width / 2 + Math.random() * this.§_-Bk§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§_-Bk§.height / 2 + Math.random() * this.§_-Bk§.height;
      }
      
      public function §_-QA§() : §_-2S§
      {
         return this.§_-Bk§;
      }
   }
}
