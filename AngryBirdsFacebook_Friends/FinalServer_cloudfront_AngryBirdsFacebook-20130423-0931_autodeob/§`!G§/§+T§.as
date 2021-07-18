package §`!G§
{
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §-f§.§+"R§;
   import §4!<§.§'!S§;
   import §4!<§.§^t§;
   import §6!^§.b2Vec2;
   import §<5§.Texture;
   import §<T§.§4!N§;
   import §<T§.§^!Y§;
   import §<T§.§^"5§;
   import flash.filters.GlowFilter;
   
   public class §+T§
   {
      
      public static const §<!t§:Number = 1000;
      
      public static const §4!V§:Number = 500;
      
      private static var §;"2§:Array = null;
       
      
      private var §9!!§:§[!8§;
      
      public var §@!s§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §="V§:Number;
      
      public var §+!m§:Number;
      
      public var §"!3§:int = -1;
      
      private var §#_§:String;
      
      private var §4",§:§4!N§;
      
      private var §]^§:§4!N§;
      
      private var §8!U§:§ "E§;
      
      private var §`w§:Number = 0;
      
      private var §6"#§:Number = 0;
      
      public var §5D§:int = -1;
      
      private var §>!#§:int = -1;
      
      private var §5!B§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §%+§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §<!O§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §8]§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §`-§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §>"Q§:String = "fly";
      
      public var §?U§:String = "fly_yell";
      
      public var §`!D§:GlowFilter;
      
      private var §`"B§:Vector.<§^t§>;
      
      private var §3"E§:§4!N§;
      
      private var §?!T§:Sprite = null;
      
      private var mLevelMain:§'!S§;
      
      public function §+T§(param1:§[!8§, param2:Sprite, param3:§'!S§)
      {
         super();
         this.mLevelMain = param3;
         this.§9!!§ = param1;
         this.§#_§ = this.§9!!§.§@x§;
         this.§`"B§ = new Vector.<§^t§>();
         this.§?!T§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^t§ = null;
         this.§;",§();
         if(this.§`"B§)
         {
            while(this.§`"B§.length > 0)
            {
               _loc1_ = this.§`"B§.pop();
               _loc1_.dispose();
            }
            this.§`"B§ = null;
         }
      }
      
      public function §=9§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§"!3§ = param1;
         this.§+!m§ = param2;
         this.§8!6§();
      }
      
      public function §%c§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§="V§ = 1;
            return;
         }
         this.§="V§ = this.mW / this.mH;
         if(this.§="V§ < 1)
         {
            this.§="V§ = 1 / this.§="V§;
         }
         this.§="V§ = Math.min(11,this.§="V§);
      }
      
      public function §2"0§(param1:§^!Y§) : Boolean
      {
         var _loc2_:§^"5§ = null;
         var _loc3_:Texture = null;
         if(this.§9!!§.isGround())
         {
            return false;
         }
         this.§3"E§ = param1.getAnimation("SPARKLES");
         this.§4",§ = param1.getAnimation(this.§#_§);
         this.§]^§ = this.§4",§;
         var _loc4_:Number = 1;
         if(this.§]^§)
         {
            _loc2_ = this.§]^§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.mLevelMain.textureManager.§]i§();
         }
         this.§8!U§ = new § "E§(_loc3_);
         if(_loc2_)
         {
            this.§8!U§.x = -_loc2_.pivotX;
            this.§8!U§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§8!U§.x = -this.§8!U§.width / 2;
            this.§8!U§.y = -this.§8!U§.height / 2;
         }
         this.§8!U§.scaleX = _loc4_;
         this.§8!U§.scaleY = _loc4_;
         this.mW = this.§8!U§.width / 2;
         this.mH = this.§8!U§.height / 2;
         this.§?!T§.addChild(this.§8!U§);
         return true;
      }
      
      public function §#a§(param1:§+"R§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§]!k§)
         {
            case §+"R§.§"c§:
               _loc2_ = param1.§3V§();
               _loc3_ = _loc2_[0];
               this.§`w§ = _loc3_.x / §'!S§.§2"<§;
               this.§6"#§ = _loc3_.y / §'!S§.§2"<§;
               break;
            case §+"R§.§[!>§:
         }
         this.§!!,§();
      }
      
      public function §'"7§() : Array
      {
         return §1"J§.§'"7§(null,this.§9!!§.§]H§());
      }
      
      public function §>Y§() : Array
      {
         return §1"J§.§>Y§(null,this.§9!!§.§]H§());
      }
      
      public function §#!r§() : Array
      {
         return §1"J§.§#!r§(null);
      }
      
      public function §8!6§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§?!T§.scaleX = this.§?!T§.scaleY = param1;
      }
      
      public function §!!,§() : void
      {
         var _loc1_:§^"5§ = null;
         if(!this.§4",§)
         {
            return;
         }
         if(this.§<!O§)
         {
            this.§5!B§ = 1;
         }
         else if(this.§9!!§.getSpecialAnimationProgress() >= 0 && this.§4",§.getSubAnimation(this.§%+§))
         {
            this.§]^§ = this.§4",§.getSubAnimation(this.§%+§);
            this.§5!B§ = this.§]^§.getFrameCount() * this.§9!!§.getSpecialAnimationProgress();
            if(this.§5!B§ == this.§]^§.getFrameCount() - 1 && this.§9!!§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§5!B§;
            }
         }
         else if(this.mTryToSpecial && this.§4",§.getSubAnimation(this.§%+§))
         {
            this.§]^§ = this.§4",§.getSubAnimation(this.§%+§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§4",§.getSubAnimation(this.§?U§))
         {
            this.§]^§ = this.§4",§.getSubAnimation(this.§?U§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§4",§.getSubAnimation(this.§8]§))
         {
            this.§]^§ = this.§4",§.getSubAnimation(this.§8]§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§4",§.getSubAnimation(this.§`-§))
         {
            this.§]^§ = this.§4",§.getSubAnimation(this.§`-§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§4",§.getSubAnimation(this.§>"Q§))
         {
            this.§]^§ = this.§4",§.getSubAnimation(this.§>"Q§);
            this.mIsFlying = true;
         }
         else
         {
            this.§]^§ = this.§4",§;
         }
         if(this.§]^§)
         {
            _loc1_ = this.§]^§.getFrame(this.§5!B§);
            if(this.§8!U§ && _loc1_)
            {
               this.§8!U§.texture = _loc1_.texture;
               this.§8!U§.x = -_loc1_.pivotX - this.§`w§;
               this.§8!U§.y = -_loc1_.pivotY - this.§6"#§;
               this.§8!U§.scaleX = _loc1_.scale;
               this.§8!U§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §4,§() : void
      {
         this.§?!T§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§5D§ < 0)
         {
            this.§%";§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§9!!§.§ d§ / this.§9!!§.§^!2§) * this.§5D§;
         if(_loc1_ != this.§>!#§)
         {
            this.§>!#§ = _loc1_;
            this.§5!B§ = this.§>!#§;
            this.§!!,§();
         }
      }
      
      public function §%";§() : void
      {
         if(this.§4",§)
         {
            this.§5D§ = this.§4",§.getFrameCount();
         }
      }
      
      public function §#"R§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§`!D§ = new GlowFilter();
         this.§`!D§.blurX = param2;
         this.§`!D§.blurY = param3;
         this.§`!D§.color = param1;
      }
      
      public function §;",§() : void
      {
         this.§`!D§ = null;
      }
      
      public function §try §() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§9!!§.§`!A§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§`!_§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §>!'§(param1:Number) : void
      {
         var _loc2_:int = this.§`"B§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§`"B§[_loc2_].updateLifeTime(param1);
            if(this.§`"B§[_loc2_].lifeTime < 0)
            {
               this.§`!_§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §`!_§(param1:int) : void
      {
         if(!this.§3"E§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§^"5§ = this.§3"E§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§^t§ = null;
         if(param1 < this.§`"B§.length)
         {
            (_loc5_ = this.§`"B§[param1]).§9"0§(_loc4_);
            _loc5_.§0Y§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §^t§(_loc3_.texture,_loc4_);
            this.§`"B§.push(_loc5_);
            this.§?!T§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§8!U§.width / 2 + Math.random() * this.§8!U§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§8!U§.height / 2 + Math.random() * this.§8!U§.height;
      }
      
      public function §`j§() : § "E§
      {
         return this.§8!U§;
      }
   }
}
