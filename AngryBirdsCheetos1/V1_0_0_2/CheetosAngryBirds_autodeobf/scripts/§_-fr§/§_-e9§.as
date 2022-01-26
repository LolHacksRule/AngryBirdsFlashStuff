package §_-fr§
{
   import §_-F2§.b2Vec2;
   import §_-GY§.Sprite;
   import §_-GY§.§_-4W§;
   import §_-Kz§.§_-0-p§;
   import §_-Kz§.§_-c3§;
   import §_-TV§.§_-KN§;
   import §_-my§.§_-GX§;
   import §_-my§.§_-Oi§;
   import §_-my§.§_-uG§;
   import §_-yp§.Texture;
   import flash.filters.GlowFilter;
   
   public class §_-e9§
   {
      
      public static const §_-0-X§:Number = 1000;
      
      public static const §finally§:Number = 500;
      
      private static var §_-ee§:Array = null;
       
      
      private var §_-ng§:§_-FX§;
      
      public var §_-bd§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §_-Ir§:Number;
      
      public var §_-kG§:Number;
      
      public var §_-e8§:int = -1;
      
      private var §_-8d§:String;
      
      private var §_-wq§:§_-uG§;
      
      private var §_-LV§:§_-uG§;
      
      private var §_-B9§:§_-4W§;
      
      private var §_-iO§:Number = 0;
      
      private var §_-Vb§:Number = 0;
      
      public var §_-zZ§:int = -1;
      
      private var §_-YA§:int = -1;
      
      private var §_-dl§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §_-63§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §_-X4§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §_-2a§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §_-Zc§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §_-cM§:String = "fly";
      
      public var §_-0A§:String = "fly_yell";
      
      public var §_-ja§:GlowFilter;
      
      private var §_-WE§:Vector.<§_-0-p§>;
      
      private var §_-gM§:§_-uG§;
      
      private var §_-xQ§:Sprite = null;
      
      private var §_-GF§:§_-c3§;
      
      public function §_-e9§(param1:§_-FX§, param2:Sprite, param3:§_-c3§)
      {
         super();
         this.§_-GF§ = param3;
         this.§_-ng§ = param1;
         this.§_-8d§ = this.§_-ng§.§_-05§;
         this.§_-WE§ = new Vector.<§_-0-p§>();
         this.§_-xQ§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-0-p§ = null;
         this.§_-dY§();
         if(this.§_-WE§)
         {
            while(this.§_-WE§.length > 0)
            {
               _loc1_ = this.§_-WE§.pop();
               _loc1_.dispose();
            }
            this.§_-WE§ = null;
         }
      }
      
      public function §_-ND§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§_-e8§ = param1;
         this.§_-kG§ = param2;
         this.§_-Xx§();
      }
      
      public function §_-RS§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Ir§ = 1;
            return;
         }
         this.§_-Ir§ = this.mW / this.mH;
         if(this.§_-Ir§ < 1)
         {
            this.§_-Ir§ = 1 / this.§_-Ir§;
         }
         this.§_-Ir§ = Math.min(11,this.§_-Ir§);
      }
      
      public function §_-98§(param1:§_-Oi§) : Boolean
      {
         var _loc2_:§_-GX§ = null;
         var _loc3_:Texture = null;
         if(this.§_-ng§.isGround())
         {
            return false;
         }
         this.§_-gM§ = param1.§_-VW§("SPARKLES");
         this.§_-wq§ = param1.§_-VW§(this.§_-8d§);
         this.§_-LV§ = this.§_-wq§;
         var _loc4_:Number = 1;
         if(this.§_-LV§)
         {
            _loc2_ = this.§_-LV§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§_-GF§.§_-3q§.§_-Mk§();
         }
         this.§_-B9§ = new §_-4W§(_loc3_);
         if(_loc2_)
         {
            this.§_-B9§.x = -_loc2_.pivotX;
            this.§_-B9§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§_-B9§.x = -this.§_-B9§.width / 2;
            this.§_-B9§.y = -this.§_-B9§.height / 2;
         }
         this.§_-B9§.scaleX = _loc4_;
         this.§_-B9§.scaleY = _loc4_;
         this.mW = this.§_-B9§.width / 2;
         this.mH = this.§_-B9§.height / 2;
         this.§_-xQ§.addChild(this.§_-B9§);
         return true;
      }
      
      public function §_-00§(param1:§_-KN§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§_-Xm§)
         {
            case §_-KN§.§_-ul§:
               _loc2_ = param1.§_-QD§();
               _loc3_ = _loc2_[0];
               this.§_-iO§ = _loc3_.x / §_-c3§.§_-GA§;
               this.§_-Vb§ = _loc3_.y / §_-c3§.§_-GA§;
               break;
            case §_-KN§.§_-60§:
         }
         this.§_-bC§();
      }
      
      public function §_-pP§() : Array
      {
         return §_-gg§.§_-pP§(null,this.§_-ng§.§_-LG§());
      }
      
      public function §_-pV§() : Array
      {
         return §_-gg§.§_-pV§(null,this.§_-ng§.§_-LG§());
      }
      
      public function §_-Z1§() : Array
      {
         return §_-gg§.§_-Z1§(null);
      }
      
      public function §_-Xx§() : void
      {
      }
      
      public function §_-7A§(param1:Number) : void
      {
         this.§_-xQ§.scaleX = this.§_-xQ§.scaleY = param1;
      }
      
      public function §_-bC§() : void
      {
         var _loc1_:§_-GX§ = null;
         if(!this.§_-wq§)
         {
            return;
         }
         if(this.§_-X4§)
         {
            this.§_-dl§ = 1;
         }
         else if(this.§_-ng§.getSpecialAnimationProgress() >= 0 && this.§_-wq§.getSubAnimation(this.§_-63§))
         {
            this.§_-LV§ = this.§_-wq§.getSubAnimation(this.§_-63§);
            this.§_-dl§ = this.§_-LV§.getFrameCount() * this.§_-ng§.getSpecialAnimationProgress();
            if(this.§_-dl§ == this.§_-LV§.getFrameCount() - 1 && this.§_-ng§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§_-dl§;
            }
         }
         else if(this.mTryToSpecial && this.§_-wq§.getSubAnimation(this.§_-63§))
         {
            this.§_-LV§ = this.§_-wq§.getSubAnimation(this.§_-63§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§_-wq§.getSubAnimation(this.§_-0A§))
         {
            this.§_-LV§ = this.§_-wq§.getSubAnimation(this.§_-0A§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§_-wq§.getSubAnimation(this.§_-2a§))
         {
            this.§_-LV§ = this.§_-wq§.getSubAnimation(this.§_-2a§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§_-wq§.getSubAnimation(this.§_-Zc§))
         {
            this.§_-LV§ = this.§_-wq§.getSubAnimation(this.§_-Zc§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§_-wq§.getSubAnimation(this.§_-cM§))
         {
            this.§_-LV§ = this.§_-wq§.getSubAnimation(this.§_-cM§);
            this.mIsFlying = true;
         }
         else
         {
            this.§_-LV§ = this.§_-wq§;
         }
         if(this.§_-LV§)
         {
            _loc1_ = this.§_-LV§.getFrame(this.§_-dl§);
            if(this.§_-B9§ && _loc1_)
            {
               this.§_-B9§.texture = _loc1_.texture;
               this.§_-B9§.x = -_loc1_.pivotX - this.§_-iO§;
               this.§_-B9§.y = -_loc1_.pivotY - this.§_-Vb§;
               this.§_-B9§.scaleX = _loc1_.scale;
               this.§_-B9§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §_-UN§() : void
      {
         this.§_-xQ§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§_-zZ§ < 0)
         {
            this.§_-5m§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§_-ng§.§_-KZ§ / this.§_-ng§.§_-EU§) * this.§_-zZ§;
         if(_loc1_ != this.§_-YA§)
         {
            this.§_-YA§ = _loc1_;
            this.§_-dl§ = this.§_-YA§;
            this.§_-bC§();
         }
      }
      
      public function §_-5m§() : void
      {
         if(this.§_-wq§)
         {
            this.§_-zZ§ = this.§_-wq§.getFrameCount();
         }
      }
      
      public function §_-iK§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§_-ja§ = new GlowFilter();
         this.§_-ja§.blurX = param2;
         this.§_-ja§.blurY = param3;
         this.§_-ja§.color = param1;
      }
      
      public function §_-dY§() : void
      {
         this.§_-ja§ = null;
      }
      
      public function §_-aS§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§_-ng§.§_-m8§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§_-K2§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §_-Il§(param1:Number) : void
      {
         var _loc2_:int = this.§_-WE§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§_-WE§[_loc2_].updateLifeTime(param1);
            if(this.§_-WE§[_loc2_].lifeTime < 0)
            {
               this.§_-K2§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §_-K2§(param1:int) : void
      {
         if(!this.§_-gM§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§_-GX§ = this.§_-gM§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§_-0-p§ = null;
         if(param1 < this.§_-WE§.length)
         {
            (_loc5_ = this.§_-WE§[param1]).§_-v8§(_loc4_);
            _loc5_.§_-0k§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §_-0-p§(_loc3_.texture,_loc4_);
            this.§_-WE§.push(_loc5_);
            this.§_-xQ§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§_-B9§.width / 2 + Math.random() * this.§_-B9§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§_-B9§.height / 2 + Math.random() * this.§_-B9§.height;
      }
      
      public function §_-vL§() : §_-4W§
      {
         return this.§_-B9§;
      }
   }
}
