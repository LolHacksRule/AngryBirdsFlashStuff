package §_-bl§
{
   import §_-2r§.§_-fa§;
   import §_-2r§.§_-sn§;
   import §_-5p§.§_-4§;
   import §_-5p§.§_-Kn§;
   import §_-5p§.§_-b1§;
   import §_-Dk§.Texture;
   import §_-Ls§.Sprite;
   import §_-Ls§.§_-Nd§;
   import §_-cP§.b2Vec2;
   import §_-p5§.§_-6L§;
   import flash.filters.GlowFilter;
   
   public class §_-Td§
   {
      
      public static const §_-2u§:Number = 1000;
      
      public static const §_-Na§:Number = 500;
      
      private static var §_-T-§:Array = null;
       
      
      private var §_-qz§:§_-Ie§;
      
      public var §_-SO§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §_-vf§:Number;
      
      public var §_-C4§:Number;
      
      public var §_-8f§:int = -1;
      
      private var §_-UD§:String;
      
      private var §_-Ec§:§_-b1§;
      
      private var §_-pj§:§_-b1§;
      
      private var §_-CV§:§_-Nd§;
      
      private var §_-gU§:Number = 0;
      
      private var §_-vN§:Number = 0;
      
      public var §_-Kr§:int = -1;
      
      private var §_-WC§:int = -1;
      
      private var §_-OG§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §_-Wq§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §_-jc§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §_-gv§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §_-V-§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §_-pb§:String = "fly";
      
      public var §_-tn§:String = "fly_yell";
      
      public var §_-Gw§:GlowFilter;
      
      private var §_-zQ§:Vector.<§_-fa§>;
      
      private var §_-xN§:§_-b1§;
      
      private var §_-S0§:Sprite = null;
      
      private var §_-5F§:§_-sn§;
      
      public function §_-Td§(param1:§_-Ie§, param2:Sprite, param3:§_-sn§)
      {
         super();
         this.§_-5F§ = param3;
         this.§_-qz§ = param1;
         this.§_-UD§ = this.§_-qz§.§_-G2§;
         this.§_-zQ§ = new Vector.<§_-fa§>();
         this.§_-S0§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-fa§ = null;
         this.§_-Ap§();
         if(this.§_-zQ§)
         {
            while(this.§_-zQ§.length > 0)
            {
               _loc1_ = this.§_-zQ§.pop();
               _loc1_.dispose();
            }
            this.§_-zQ§ = null;
         }
      }
      
      public function §_-fz§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§_-8f§ = param1;
         this.§_-C4§ = param2;
         this.§_-sS§();
      }
      
      public function §_-de§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-vf§ = 1;
            return;
         }
         this.§_-vf§ = this.mW / this.mH;
         if(this.§_-vf§ < 1)
         {
            this.§_-vf§ = 1 / this.§_-vf§;
         }
         this.§_-vf§ = Math.min(11,this.§_-vf§);
      }
      
      public function §_-Y§(param1:§_-Kn§) : Boolean
      {
         var _loc2_:§_-4§ = null;
         var _loc3_:Texture = null;
         if(this.§_-qz§.isGround())
         {
            return false;
         }
         this.§_-xN§ = param1.§_-sJ§("SPARKLES");
         this.§_-Ec§ = param1.§_-sJ§(this.§_-UD§);
         this.§_-pj§ = this.§_-Ec§;
         var _loc4_:Number = 1;
         if(this.§_-pj§)
         {
            _loc2_ = this.§_-pj§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§_-5F§.§_-aJ§.§_-H0§();
         }
         this.§_-CV§ = new §_-Nd§(_loc3_);
         if(_loc2_)
         {
            this.§_-CV§.x = -_loc2_.pivotX;
            this.§_-CV§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§_-CV§.x = -this.§_-CV§.width / 2;
            this.§_-CV§.y = -this.§_-CV§.height / 2;
         }
         this.§_-CV§.scaleX = _loc4_;
         this.§_-CV§.scaleY = _loc4_;
         this.mW = this.§_-CV§.width / 2;
         this.mH = this.§_-CV§.height / 2;
         this.§_-S0§.addChild(this.§_-CV§);
         return true;
      }
      
      public function §_-Qn§(param1:§_-6L§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§_-9-§)
         {
            case §_-6L§.§_-Xe§:
               _loc2_ = param1.§_-Vt§();
               _loc3_ = _loc2_[0];
               this.§_-gU§ = _loc3_.x / §_-sn§.§_-5Y§;
               this.§_-vN§ = _loc3_.y / §_-sn§.§_-5Y§;
               break;
            case §_-6L§.§_-zi§:
         }
         this.§_-bP§();
      }
      
      public function §_-TB§() : Array
      {
         return §_-aw§.§_-TB§(null,this.§_-qz§.§_-ZK§());
      }
      
      public function §_-YI§() : Array
      {
         return §_-aw§.§_-YI§(null,this.§_-qz§.§_-ZK§());
      }
      
      public function §_-ED§() : Array
      {
         return §_-aw§.§_-ED§(null);
      }
      
      public function §_-sS§() : void
      {
      }
      
      public function §_-Wc§(param1:Number) : void
      {
         this.§_-S0§.scaleX = this.§_-S0§.scaleY = param1;
      }
      
      public function §_-bP§() : void
      {
         var _loc1_:§_-4§ = null;
         if(!this.§_-Ec§)
         {
            return;
         }
         if(this.§_-jc§)
         {
            this.§_-OG§ = 1;
         }
         else if(this.§_-qz§.getSpecialAnimationProgress() >= 0 && this.§_-Ec§.getSubAnimation(this.§_-Wq§))
         {
            this.§_-pj§ = this.§_-Ec§.getSubAnimation(this.§_-Wq§);
            this.§_-OG§ = this.§_-pj§.getFrameCount() * this.§_-qz§.getSpecialAnimationProgress();
            if(this.§_-OG§ == this.§_-pj§.getFrameCount() - 1 && this.§_-qz§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§_-OG§;
            }
         }
         else if(this.mTryToSpecial && this.§_-Ec§.getSubAnimation(this.§_-Wq§))
         {
            this.§_-pj§ = this.§_-Ec§.getSubAnimation(this.§_-Wq§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§_-Ec§.getSubAnimation(this.§_-tn§))
         {
            this.§_-pj§ = this.§_-Ec§.getSubAnimation(this.§_-tn§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§_-Ec§.getSubAnimation(this.§_-gv§))
         {
            this.§_-pj§ = this.§_-Ec§.getSubAnimation(this.§_-gv§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§_-Ec§.getSubAnimation(this.§_-V-§))
         {
            this.§_-pj§ = this.§_-Ec§.getSubAnimation(this.§_-V-§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§_-Ec§.getSubAnimation(this.§_-pb§))
         {
            this.§_-pj§ = this.§_-Ec§.getSubAnimation(this.§_-pb§);
            this.mIsFlying = true;
         }
         else
         {
            this.§_-pj§ = this.§_-Ec§;
         }
         if(this.§_-pj§)
         {
            _loc1_ = this.§_-pj§.getFrame(this.§_-OG§);
            if(this.§_-CV§ && _loc1_)
            {
               this.§_-CV§.texture = _loc1_.texture;
               this.§_-CV§.x = -_loc1_.pivotX - this.§_-gU§;
               this.§_-CV§.y = -_loc1_.pivotY - this.§_-vN§;
               this.§_-CV§.scaleX = _loc1_.scale;
               this.§_-CV§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §_-K9§() : void
      {
         this.§_-S0§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§_-Kr§ < 0)
         {
            this.§_-Go§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§_-qz§.§_-T5§ / this.§_-qz§.§_-Rj§) * this.§_-Kr§;
         if(_loc1_ != this.§_-WC§)
         {
            this.§_-WC§ = _loc1_;
            this.§_-OG§ = this.§_-WC§;
            this.§_-bP§();
         }
      }
      
      public function §_-Go§() : void
      {
         if(this.§_-Ec§)
         {
            this.§_-Kr§ = this.§_-Ec§.getFrameCount();
         }
      }
      
      public function §_-2A§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§_-Gw§ = new GlowFilter();
         this.§_-Gw§.blurX = param2;
         this.§_-Gw§.blurY = param3;
         this.§_-Gw§.color = param1;
      }
      
      public function §_-Ap§() : void
      {
         this.§_-Gw§ = null;
      }
      
      public function §_-ot§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§_-qz§.§_-vE§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§_-Hk§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §_-02§(param1:Number) : void
      {
         var _loc2_:int = this.§_-zQ§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§_-zQ§[_loc2_].updateLifeTime(param1);
            if(this.§_-zQ§[_loc2_].lifeTime < 0)
            {
               this.§_-Hk§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §_-Hk§(param1:int) : void
      {
         if(!this.§_-xN§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§_-4§ = this.§_-xN§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§_-fa§ = null;
         if(param1 < this.§_-zQ§.length)
         {
            (_loc5_ = this.§_-zQ§[param1]).§_-mJ§(_loc4_);
            _loc5_.§_-q8§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §_-fa§(_loc3_.texture,_loc4_);
            this.§_-zQ§.push(_loc5_);
            this.§_-S0§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§_-CV§.width / 2 + Math.random() * this.§_-CV§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§_-CV§.height / 2 + Math.random() * this.§_-CV§.height;
      }
      
      public function §_-3Y§() : §_-Nd§
      {
         return this.§_-CV§;
      }
   }
}
