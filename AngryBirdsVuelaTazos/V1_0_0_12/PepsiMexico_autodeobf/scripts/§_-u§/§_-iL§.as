package §_-u§
{
   import §_-1P§.§_-XN§;
   import §_-1P§.§_-lC§;
   import §_-1P§.§_-uT§;
   import §_-9z§.b2Vec2;
   import §_-H2§.§_-fm§;
   import §_-S4§.Texture;
   import §_-pF§.Sprite;
   import §_-pF§.§_-gY§;
   import §_-rp§.§_-2o§;
   import §_-rp§.§_-c5§;
   import flash.filters.GlowFilter;
   
   public class §_-iL§
   {
      
      public static const §_-3F§:Number = 1000;
      
      public static const §_-Dk§:Number = 500;
      
      private static var §_-28§:Array = null;
       
      
      private var §_-cW§:§_-5Q§;
      
      public var §_-EC§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §_-RP§:Number;
      
      public var §_-us§:Number;
      
      public var §_-lE§:int = -1;
      
      private var §_-0u§:String;
      
      private var §_-MD§:§_-uT§;
      
      private var §_-Pq§:§_-uT§;
      
      private var §_-XR§:§_-gY§;
      
      private var §_-Id§:Number = 0;
      
      private var §_-C6§:Number = 0;
      
      public var §_-aL§:int = -1;
      
      private var §_-ta§:int = -1;
      
      private var §_-Mu§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §_-mA§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §_-2f§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §_-0k§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §_-o3§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §_-UM§:String = "fly";
      
      public var §_-nQ§:String = "fly_yell";
      
      public var §_-Jm§:GlowFilter;
      
      private var §_-r2§:Vector.<§_-2o§>;
      
      private var §_-sY§:§_-uT§;
      
      private var §_-C8§:Sprite = null;
      
      private var §_-fE§:§_-c5§;
      
      public function §_-iL§(param1:§_-5Q§, param2:Sprite, param3:§_-c5§)
      {
         super();
         this.§_-fE§ = param3;
         this.§_-cW§ = param1;
         this.§_-0u§ = this.§_-cW§.§_-s7§;
         this.§_-r2§ = new Vector.<§_-2o§>();
         this.§_-C8§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-2o§ = null;
         this.§_-I8§();
         if(this.§_-r2§)
         {
            while(this.§_-r2§.length > 0)
            {
               _loc1_ = this.§_-r2§.pop();
               _loc1_.dispose();
            }
            this.§_-r2§ = null;
         }
      }
      
      public function §_-0§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§_-lE§ = param1;
         this.§_-us§ = param2;
         this.§_-VD§();
      }
      
      public function §_-D5§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-RP§ = 1;
            return;
         }
         this.§_-RP§ = this.mW / this.mH;
         if(this.§_-RP§ < 1)
         {
            this.§_-RP§ = 1 / this.§_-RP§;
         }
         this.§_-RP§ = Math.min(11,this.§_-RP§);
      }
      
      public function §_-cm§(param1:§_-lC§) : Boolean
      {
         var _loc2_:§_-XN§ = null;
         var _loc3_:Texture = null;
         if(this.§_-cW§.isGround())
         {
            return false;
         }
         this.§_-sY§ = param1.§_-9B§("SPARKLES");
         this.§_-MD§ = param1.§_-9B§(this.§_-0u§);
         this.§_-Pq§ = this.§_-MD§;
         if(this.§_-Pq§)
         {
            _loc2_ = this.§_-Pq§.getFrame(0);
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§_-fE§.§_-2I§.§_-WG§();
         }
         this.§_-XR§ = new §_-gY§(_loc3_);
         if(_loc2_)
         {
            this.§_-XR§.x = -_loc2_.pivotX;
            this.§_-XR§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§_-XR§.x = -this.§_-XR§.width / 2;
            this.§_-XR§.y = -this.§_-XR§.height / 2;
         }
         this.mW = this.§_-XR§.width / 2;
         this.mH = this.§_-XR§.height / 2;
         this.§_-C8§.addChild(this.§_-XR§);
         return true;
      }
      
      public function §_-m0§(param1:§_-fm§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§_-mu§)
         {
            case §_-fm§.§_-qq§:
               _loc2_ = param1.§_-Py§();
               _loc3_ = _loc2_[0];
               this.§_-Id§ = _loc3_.x / §_-c5§.§_-Wa§;
               this.§_-C6§ = _loc3_.y / §_-c5§.§_-Wa§;
               break;
            case §_-fm§.§_-fi§:
         }
         this.§_-nJ§();
      }
      
      public function §_-qP§() : Array
      {
         return §_-Wp§.§_-qP§(null,this.§_-cW§.§_-Xd§());
      }
      
      public function §_-13§() : Array
      {
         return §_-Wp§.§_-13§(null,this.§_-cW§.§_-Xd§());
      }
      
      public function §_-nE§() : Array
      {
         return §_-Wp§.§_-nE§(null);
      }
      
      public function §_-VD§() : void
      {
      }
      
      public function §_-PE§(param1:Number) : void
      {
         this.§_-C8§.scaleX = this.§_-C8§.scaleY = param1;
      }
      
      public function §_-nJ§() : void
      {
         var _loc1_:§_-XN§ = null;
         if(!this.§_-MD§)
         {
            return;
         }
         if(this.§_-2f§)
         {
            this.§_-Mu§ = 1;
         }
         else if(this.§_-cW§.getSpecialAnimationProgress() >= 0 && this.§_-MD§.getSubAnimation(this.§_-mA§))
         {
            this.§_-Pq§ = this.§_-MD§.getSubAnimation(this.§_-mA§);
            this.§_-Mu§ = this.§_-Pq§.getFrameCount() * this.§_-cW§.getSpecialAnimationProgress();
            if(this.§_-Mu§ == this.§_-Pq§.getFrameCount() - 1 && this.§_-cW§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§_-Mu§;
            }
         }
         else if(this.mTryToSpecial && this.§_-MD§.getSubAnimation(this.§_-mA§))
         {
            this.§_-Pq§ = this.§_-MD§.getSubAnimation(this.§_-mA§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§_-MD§.getSubAnimation(this.§_-nQ§))
         {
            this.§_-Pq§ = this.§_-MD§.getSubAnimation(this.§_-nQ§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§_-MD§.getSubAnimation(this.§_-0k§))
         {
            this.§_-Pq§ = this.§_-MD§.getSubAnimation(this.§_-0k§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§_-MD§.getSubAnimation(this.§_-o3§))
         {
            this.§_-Pq§ = this.§_-MD§.getSubAnimation(this.§_-o3§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§_-MD§.getSubAnimation(this.§_-UM§))
         {
            this.§_-Pq§ = this.§_-MD§.getSubAnimation(this.§_-UM§);
            this.mIsFlying = true;
         }
         else
         {
            this.§_-Pq§ = this.§_-MD§;
         }
         if(this.§_-Pq§)
         {
            _loc1_ = this.§_-Pq§.getFrame(this.§_-Mu§);
            if(this.§_-XR§ && _loc1_)
            {
               this.§_-XR§.texture = _loc1_.texture;
               this.§_-XR§.x = -_loc1_.pivotX - this.§_-Id§;
               this.§_-XR§.y = -_loc1_.pivotY - this.§_-C6§;
            }
         }
      }
      
      public function §_-SK§() : void
      {
         this.§_-C8§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§_-aL§ < 0)
         {
            this.§_-xY§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§_-cW§.§_-c8§ / this.§_-cW§.§_-gA§) * (this.§_-aL§ * 0.99);
         if(_loc1_ != this.§_-ta§)
         {
            this.§_-ta§ = _loc1_;
            this.§_-Mu§ = this.§_-ta§;
            this.§_-nJ§();
         }
      }
      
      public function §_-xY§() : void
      {
         if(this.§_-MD§)
         {
            this.§_-aL§ = this.§_-MD§.getFrameCount();
         }
      }
      
      public function §_-pk§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§_-Jm§ = new GlowFilter();
         this.§_-Jm§.blurX = param2;
         this.§_-Jm§.blurY = param3;
         this.§_-Jm§.color = param1;
      }
      
      public function §_-I8§() : void
      {
         this.§_-Jm§ = null;
      }
      
      public function §_-Fm§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§_-cW§.§_-dd§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§_-UP§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §_-GJ§(param1:Number) : void
      {
         var _loc2_:int = this.§_-r2§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§_-r2§[_loc2_].updateLifeTime(param1);
            if(this.§_-r2§[_loc2_].lifeTime < 0)
            {
               this.§_-UP§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §_-UP§(param1:int) : void
      {
         if(!this.§_-sY§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§_-XN§ = this.§_-sY§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§_-2o§ = null;
         if(param1 < this.§_-r2§.length)
         {
            (_loc5_ = this.§_-r2§[param1]).§_-Yg§(_loc4_);
            _loc5_.§_-D6§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §_-2o§(_loc3_.texture,_loc4_);
            this.§_-r2§.push(_loc5_);
            this.§_-C8§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§_-XR§.width / 2 + Math.random() * this.§_-XR§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§_-XR§.height / 2 + Math.random() * this.§_-XR§.height;
      }
      
      public function §_-7I§() : §_-gY§
      {
         return this.§_-XR§;
      }
   }
}
