package §_-tW§
{
   import §_-3b§.§_-5p§;
   import §_-3b§.§_-Lf§;
   import §_-3b§.§_-Xv§;
   import §_-Di§.§_-b-§;
   import §_-Di§.§_-ix§;
   import §_-Q0§.Texture;
   import §_-Rm§.§_-7§;
   import §_-SE§.Sprite;
   import §_-SE§.§_-rl§;
   import §_-bA§.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §_-wS§
   {
      
      public static const §_-Ma§:Number = 1000;
      
      public static const §_-DA§:Number = 500;
      
      private static var §_-q§:Array = null;
       
      
      private var §_-6q§:§_-lx§;
      
      public var §_-WR§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §_-4d§:Number;
      
      public var §_-70§:Number;
      
      public var §_-tx§:int = -1;
      
      private var §_-2b§:String;
      
      private var §_-h1§:§_-5p§;
      
      private var §_-Tn§:§_-5p§;
      
      private var §_-53§:§_-rl§;
      
      private var §_-6k§:Number = 0;
      
      private var §_-Ze§:Number = 0;
      
      public var §_-h6§:int = -1;
      
      private var §_-t-§:int = -1;
      
      private var §_-DY§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §_-ZI§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §_-ZU§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §_-wK§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §_-QA§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §_-V6§:String = "fly";
      
      public var §_-yx§:String = "fly_yell";
      
      public var §_-sn§:GlowFilter;
      
      private var §_-FA§:Vector.<§_-b-§>;
      
      private var §_-Nj§:§_-5p§;
      
      private var §_-j§:Sprite = null;
      
      private var §_-JH§:§_-ix§;
      
      public function §_-wS§(param1:§_-lx§, param2:Sprite, param3:§_-ix§)
      {
         super();
         this.§_-JH§ = param3;
         this.§_-6q§ = param1;
         this.§_-2b§ = this.§_-6q§.§_-ep§;
         this.§_-FA§ = new Vector.<§_-b-§>();
         this.§_-j§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-b-§ = null;
         this.§try §();
         if(this.§_-FA§)
         {
            while(this.§_-FA§.length > 0)
            {
               _loc1_ = this.§_-FA§.pop();
               _loc1_.dispose();
            }
            this.§_-FA§ = null;
         }
      }
      
      public function §_-Dx§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§_-tx§ = param1;
         this.§_-70§ = param2;
         this.§_-aj§();
      }
      
      public function §_-E§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-4d§ = 1;
            return;
         }
         this.§_-4d§ = this.mW / this.mH;
         if(this.§_-4d§ < 1)
         {
            this.§_-4d§ = 1 / this.§_-4d§;
         }
         this.§_-4d§ = Math.min(11,this.§_-4d§);
      }
      
      public function §_-9V§(param1:§_-Xv§) : Boolean
      {
         var _loc2_:§_-Lf§ = null;
         var _loc3_:Texture = null;
         if(this.§_-6q§.isGround())
         {
            return false;
         }
         this.§_-Nj§ = param1.§_-8-§("SPARKLES");
         this.§_-h1§ = param1.§_-8-§(this.§_-2b§);
         this.§_-Tn§ = this.§_-h1§;
         if(this.§_-Tn§)
         {
            _loc2_ = this.§_-Tn§.getFrame(0);
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§_-JH§.§_-G9§.§_-3i§();
         }
         this.§_-53§ = new §_-rl§(_loc3_);
         if(_loc2_)
         {
            this.§_-53§.x = -_loc2_.pivotX;
            this.§_-53§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§_-53§.x = -this.§_-53§.width / 2;
            this.§_-53§.y = -this.§_-53§.height / 2;
         }
         this.mW = this.§_-53§.width / 2;
         this.mH = this.§_-53§.height / 2;
         this.§_-j§.addChild(this.§_-53§);
         return true;
      }
      
      public function §_-M-§(param1:§_-7§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§_-mC§)
         {
            case §_-7§.§_-DK§:
               _loc2_ = param1.§_-pH§();
               _loc3_ = _loc2_[0];
               this.§_-6k§ = _loc3_.x / §_-ix§.§_-z8§;
               this.§_-Ze§ = _loc3_.y / §_-ix§.§_-z8§;
               break;
            case §_-7§.§_-YM§:
         }
         this.§_-p6§();
      }
      
      public function §_-K1§() : Array
      {
         return §_-hE§.§_-K1§(null,this.§_-6q§.§_-Ig§());
      }
      
      public function §_-lM§() : Array
      {
         return §_-hE§.§_-lM§(null,this.§_-6q§.§_-Ig§());
      }
      
      public function §_-dV§() : Array
      {
         return §_-hE§.§_-dV§(null);
      }
      
      public function §_-aj§() : void
      {
      }
      
      public function §_-Wh§(param1:Number) : void
      {
         this.§_-j§.scaleX = this.§_-j§.scaleY = param1;
      }
      
      public function §_-p6§() : void
      {
         var _loc1_:§_-Lf§ = null;
         if(!this.§_-h1§)
         {
            return;
         }
         if(this.§_-ZU§)
         {
            this.§_-DY§ = 1;
         }
         else if(this.§_-6q§.getSpecialAnimationProgress() >= 0 && this.§_-h1§.getSubAnimation(this.§_-ZI§))
         {
            this.§_-Tn§ = this.§_-h1§.getSubAnimation(this.§_-ZI§);
            this.§_-DY§ = this.§_-Tn§.getFrameCount() * this.§_-6q§.getSpecialAnimationProgress();
            if(this.§_-DY§ == this.§_-Tn§.getFrameCount() - 1 && this.§_-6q§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§_-DY§;
            }
         }
         else if(this.mTryToSpecial && this.§_-h1§.getSubAnimation(this.§_-ZI§))
         {
            this.§_-Tn§ = this.§_-h1§.getSubAnimation(this.§_-ZI§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§_-h1§.getSubAnimation(this.§_-yx§))
         {
            this.§_-Tn§ = this.§_-h1§.getSubAnimation(this.§_-yx§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§_-h1§.getSubAnimation(this.§_-wK§))
         {
            this.§_-Tn§ = this.§_-h1§.getSubAnimation(this.§_-wK§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§_-h1§.getSubAnimation(this.§_-QA§))
         {
            this.§_-Tn§ = this.§_-h1§.getSubAnimation(this.§_-QA§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§_-h1§.getSubAnimation(this.§_-V6§))
         {
            this.§_-Tn§ = this.§_-h1§.getSubAnimation(this.§_-V6§);
            this.mIsFlying = true;
         }
         else
         {
            this.§_-Tn§ = this.§_-h1§;
         }
         if(this.§_-Tn§)
         {
            _loc1_ = this.§_-Tn§.getFrame(this.§_-DY§);
            if(this.§_-53§ && _loc1_)
            {
               this.§_-53§.texture = _loc1_.texture;
               this.§_-53§.x = -_loc1_.pivotX - this.§_-6k§;
               this.§_-53§.y = -_loc1_.pivotY - this.§_-Ze§;
            }
         }
      }
      
      public function §_-OR§() : void
      {
         this.§_-j§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§_-h6§ < 0)
         {
            this.§_-hh§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§_-6q§.§_-hs§ / this.§_-6q§.§_-eV§) * this.§_-h6§;
         if(_loc1_ != this.§_-t-§)
         {
            this.§_-t-§ = _loc1_;
            this.§_-DY§ = this.§_-t-§;
            this.§_-p6§();
         }
      }
      
      public function §_-hh§() : void
      {
         if(this.§_-h1§)
         {
            this.§_-h6§ = this.§_-h1§.getFrameCount();
         }
      }
      
      public function §_-kB§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§_-sn§ = new GlowFilter();
         this.§_-sn§.blurX = param2;
         this.§_-sn§.blurY = param3;
         this.§_-sn§.color = param1;
      }
      
      public function §try §() : void
      {
         this.§_-sn§ = null;
      }
      
      public function §_-p4§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§_-6q§.§_-Zw§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§_-km§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §_-J9§(param1:Number) : void
      {
         var _loc2_:int = this.§_-FA§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§_-FA§[_loc2_].updateLifeTime(param1);
            if(this.§_-FA§[_loc2_].lifeTime < 0)
            {
               this.§_-km§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §_-km§(param1:int) : void
      {
         if(!this.§_-Nj§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§_-Lf§ = this.§_-Nj§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§_-b-§ = null;
         if(param1 < this.§_-FA§.length)
         {
            (_loc5_ = this.§_-FA§[param1]).§_-fb§(_loc4_);
            _loc5_.§_-P4§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §_-b-§(_loc3_.texture,_loc4_);
            this.§_-FA§.push(_loc5_);
            this.§_-j§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§_-53§.width / 2 + Math.random() * this.§_-53§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§_-53§.height / 2 + Math.random() * this.§_-53§.height;
      }
      
      public function §_-1l§() : §_-rl§
      {
         return this.§_-53§;
      }
   }
}
