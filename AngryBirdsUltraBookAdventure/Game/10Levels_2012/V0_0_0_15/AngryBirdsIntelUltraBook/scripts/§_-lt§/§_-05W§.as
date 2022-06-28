package §_-lt§
{
   import §_-0DG§.§_-sQ§;
   import §_-8d§.§_-Ew§;
   import §_-8d§.§_-J§;
   import §_-8d§.§_-vz§;
   import §_-TG§.§_-0-E§;
   import §_-TG§.§_-00u§;
   import §_-Yp§.b2Vec2;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-z4§.Texture;
   import flash.filters.GlowFilter;
   
   public class §_-05W§
   {
      
      public static const §_-0C9§:Number = 1000;
      
      public static const §_-Og§:Number = 500;
      
      private static var §continue§:Array = null;
       
      
      private var §_-fI§:§_-eZ§;
      
      public var §_-QH§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §_-0F9§:Number;
      
      public var §_-Un§:Number;
      
      public var §_-kw§:int = -1;
      
      private var §_-1S§:String;
      
      private var §_-0BJ§:§_-J§;
      
      private var §_-uw§:§_-J§;
      
      private var §_-0DD§:§_-09b§;
      
      private var §_-0CN§:Number = 0;
      
      private var §_-jE§:Number = 0;
      
      public var §_-uQ§:int = -1;
      
      private var §_-qs§:int = -1;
      
      private var §_-kr§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §_-7d§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §_-PZ§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §_-05I§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §_-dl§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §_-6y§:String = "fly";
      
      public var §_-D7§:String = "fly_yell";
      
      public var §_-yS§:GlowFilter;
      
      private var §_-vo§:Vector.<§_-0-E§>;
      
      private var §_-eK§:§_-J§;
      
      private var §_-FQ§:Sprite = null;
      
      private var §_-6A§:§_-00u§;
      
      public function §_-05W§(param1:§_-eZ§, param2:Sprite, param3:§_-00u§)
      {
         super();
         this.§_-6A§ = param3;
         this.§_-fI§ = param1;
         this.§_-1S§ = this.§_-fI§.§_-o2§;
         this.§_-vo§ = new Vector.<§_-0-E§>();
         this.§_-FQ§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-0-E§ = null;
         this.§_-AL§();
         if(this.§_-vo§)
         {
            while(this.§_-vo§.length > 0)
            {
               _loc1_ = this.§_-vo§.pop();
               _loc1_.dispose();
            }
            this.§_-vo§ = null;
         }
      }
      
      public function §_-07a§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§_-kw§ = param1;
         this.§_-Un§ = param2;
         this.§_-0B-§();
      }
      
      public function §_-QT§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-0F9§ = 1;
            return;
         }
         this.§_-0F9§ = this.mW / this.mH;
         if(this.§_-0F9§ < 1)
         {
            this.§_-0F9§ = 1 / this.§_-0F9§;
         }
         this.§_-0F9§ = Math.min(11,this.§_-0F9§);
      }
      
      public function §_-xt§(param1:§_-Ew§) : Boolean
      {
         var _loc2_:§_-vz§ = null;
         var _loc3_:Texture = null;
         if(this.§_-fI§.isGround())
         {
            return false;
         }
         this.§_-eK§ = param1.getAnimation("SPARKLES");
         this.§_-0BJ§ = param1.getAnimation(this.§_-1S§);
         this.§_-uw§ = this.§_-0BJ§;
         var _loc4_:Number = 1;
         if(this.§_-uw§)
         {
            _loc2_ = this.§_-uw§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§_-6A§.textureManager.§_-Fl§();
         }
         this.§_-0DD§ = new §_-09b§(_loc3_);
         if(_loc2_)
         {
            this.§_-0DD§.x = -_loc2_.pivotX;
            this.§_-0DD§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§_-0DD§.x = -this.§_-0DD§.width / 2;
            this.§_-0DD§.y = -this.§_-0DD§.height / 2;
         }
         this.§_-0DD§.scaleX = _loc4_;
         this.§_-0DD§.scaleY = _loc4_;
         this.mW = this.§_-0DD§.width / 2;
         this.mH = this.§_-0DD§.height / 2;
         this.§_-FQ§.addChild(this.§_-0DD§);
         return true;
      }
      
      public function §_-kR§(param1:§_-sQ§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§_-aw§)
         {
            case §_-sQ§.§_-WD§:
               _loc2_ = param1.§_-J2§();
               _loc3_ = _loc2_[0];
               this.§_-0CN§ = _loc3_.x / §_-00u§.§_-lY§;
               this.§_-jE§ = _loc3_.y / §_-00u§.§_-lY§;
               break;
            case §_-sQ§.§_-2b§:
         }
         this.§_-JE§();
      }
      
      public function §_-ld§() : Array
      {
         return §_-vr§.§_-ld§(null,this.§_-fI§.§_-KD§());
      }
      
      public function §_-07r§() : Array
      {
         return §_-vr§.§_-07r§(null,this.§_-fI§.§_-KD§());
      }
      
      public function §_-dR§() : Array
      {
         return §_-vr§.§_-dR§(null);
      }
      
      public function §_-0B-§() : void
      {
      }
      
      public function §_-3U§(param1:Number) : void
      {
         this.§_-FQ§.scaleX = this.§_-FQ§.scaleY = param1;
      }
      
      public function §_-JE§() : void
      {
         var _loc1_:§_-vz§ = null;
         if(!this.§_-0BJ§)
         {
            return;
         }
         if(this.§_-PZ§)
         {
            this.§_-kr§ = 1;
         }
         else if(this.§_-fI§.getSpecialAnimationProgress() >= 0 && this.§_-0BJ§.getSubAnimation(this.§_-7d§))
         {
            this.§_-uw§ = this.§_-0BJ§.getSubAnimation(this.§_-7d§);
            this.§_-kr§ = this.§_-uw§.getFrameCount() * this.§_-fI§.getSpecialAnimationProgress();
            if(this.§_-kr§ == this.§_-uw§.getFrameCount() - 1 && this.§_-fI§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§_-kr§;
            }
         }
         else if(this.mTryToSpecial && this.§_-0BJ§.getSubAnimation(this.§_-7d§))
         {
            this.§_-uw§ = this.§_-0BJ§.getSubAnimation(this.§_-7d§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§_-0BJ§.getSubAnimation(this.§_-D7§))
         {
            this.§_-uw§ = this.§_-0BJ§.getSubAnimation(this.§_-D7§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§_-0BJ§.getSubAnimation(this.§_-05I§))
         {
            this.§_-uw§ = this.§_-0BJ§.getSubAnimation(this.§_-05I§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§_-0BJ§.getSubAnimation(this.§_-dl§))
         {
            this.§_-uw§ = this.§_-0BJ§.getSubAnimation(this.§_-dl§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§_-0BJ§.getSubAnimation(this.§_-6y§))
         {
            this.§_-uw§ = this.§_-0BJ§.getSubAnimation(this.§_-6y§);
            this.mIsFlying = true;
         }
         else
         {
            this.§_-uw§ = this.§_-0BJ§;
         }
         if(this.§_-uw§)
         {
            _loc1_ = this.§_-uw§.getFrame(this.§_-kr§);
            if(this.§_-0DD§ && _loc1_)
            {
               this.§_-0DD§.texture = _loc1_.texture;
               this.§_-0DD§.x = -_loc1_.pivotX - this.§_-0CN§;
               this.§_-0DD§.y = -_loc1_.pivotY - this.§_-jE§;
               this.§_-0DD§.scaleX = _loc1_.scale;
               this.§_-0DD§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §_-P§() : void
      {
         this.§_-FQ§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§_-uQ§ < 0)
         {
            this.§_-tM§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§_-fI§.§_-Kh§ / this.§_-fI§.§_-8l§) * this.§_-uQ§;
         if(_loc1_ != this.§_-qs§)
         {
            this.§_-qs§ = _loc1_;
            this.§_-kr§ = this.§_-qs§;
            this.§_-JE§();
         }
      }
      
      public function §_-tM§() : void
      {
         if(this.§_-0BJ§)
         {
            this.§_-uQ§ = this.§_-0BJ§.getFrameCount();
         }
      }
      
      public function §_-c4§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§_-yS§ = new GlowFilter();
         this.§_-yS§.blurX = param2;
         this.§_-yS§.blurY = param3;
         this.§_-yS§.color = param1;
      }
      
      public function §_-AL§() : void
      {
         this.§_-yS§ = null;
      }
      
      public function §_-XU§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§_-fI§.§_-vw§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§_-iG§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §_-bJ§(param1:Number) : void
      {
         var _loc2_:int = this.§_-vo§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§_-vo§[_loc2_].updateLifeTime(param1);
            if(this.§_-vo§[_loc2_].lifeTime < 0)
            {
               this.§_-iG§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §_-iG§(param1:int) : void
      {
         if(!this.§_-eK§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§_-vz§ = this.§_-eK§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§_-0-E§ = null;
         if(param1 < this.§_-vo§.length)
         {
            (_loc5_ = this.§_-vo§[param1]).§_-tX§(_loc4_);
            _loc5_.§_-F§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §_-0-E§(_loc3_.texture,_loc4_);
            this.§_-vo§.push(_loc5_);
            this.§_-FQ§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§_-0DD§.width / 2 + Math.random() * this.§_-0DD§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§_-0DD§.height / 2 + Math.random() * this.§_-0DD§.height;
      }
      
      public function §_-BJ§() : §_-09b§
      {
         return this.§_-0DD§;
      }
   }
}
