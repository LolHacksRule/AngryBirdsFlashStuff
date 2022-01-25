package §4!O§
{
   import §#!a§.Texture;
   import §5!?§.§""§;
   import §5!?§.§>"§;
   import §8r§.§ "§;
   import §8r§.§-!$§;
   import §8r§.§^!a§;
   import §;t§.§=_§;
   import §;t§.Sprite;
   import §[o§.§4C§;
   import flash.filters.GlowFilter;
   import §implements§.b2Vec2;
   
   public class §^e§
   {
      
      public static const §0!a§:Number = 1000;
      
      public static const §"!>§:Number = 500;
      
      private static var §8P§:Array = null;
       
      
      private var § i§:§&+§;
      
      public var §,!J§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §9Y§:Number;
      
      public var §9!4§:Number;
      
      public var §=!9§:int = -1;
      
      private var §5!O§:String;
      
      private var §9!G§:§^!a§;
      
      private var §>!E§:§^!a§;
      
      private var §2D§:§=_§;
      
      private var §?T§:Number = 0;
      
      private var §>!"§:Number = 0;
      
      public var §3y§:int = -1;
      
      private var §%!$§:int = -1;
      
      private var §"B§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §3!N§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §return§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §9!I§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §>!O§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §<N§:String = "fly";
      
      public var §6E§:String = "fly_yell";
      
      public var §>o§:GlowFilter;
      
      private var §@!]§:Vector.<§""§>;
      
      private var §1V§:§^!a§;
      
      private var §8q§:Sprite = null;
      
      private var mLevelMain:§>"§;
      
      public function §^e§(param1:§&+§, param2:Sprite, param3:§>"§)
      {
         super();
         this.mLevelMain = param3;
         this.§ i§ = param1;
         this.§5!O§ = this.§ i§.§7!0§;
         this.§@!]§ = new Vector.<§""§>();
         this.§8q§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§""§ = null;
         this.§&!3§();
         if(this.§@!]§)
         {
            while(this.§@!]§.length > 0)
            {
               _loc1_ = this.§@!]§.pop();
               _loc1_.dispose();
            }
            this.§@!]§ = null;
         }
      }
      
      public function §5!R§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§=!9§ = param1;
         this.§9!4§ = param2;
         this.§78§();
      }
      
      public function §'!=§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9Y§ = 1;
            return;
         }
         this.§9Y§ = this.mW / this.mH;
         if(this.§9Y§ < 1)
         {
            this.§9Y§ = 1 / this.§9Y§;
         }
         this.§9Y§ = Math.min(11,this.§9Y§);
      }
      
      public function §?7§(param1:§ "§) : Boolean
      {
         var _loc2_:§-!$§ = null;
         var _loc3_:Texture = null;
         if(this.§ i§.isGround())
         {
            return false;
         }
         this.§1V§ = param1.§8T§("SPARKLES");
         this.§9!G§ = param1.§8T§(this.§5!O§);
         this.§>!E§ = this.§9!G§;
         var _loc4_:Number = 1;
         if(this.§>!E§)
         {
            _loc2_ = this.§>!E§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.mLevelMain.textureManager.§'N§();
         }
         this.§2D§ = new §=_§(_loc3_);
         if(_loc2_)
         {
            this.§2D§.x = -_loc2_.pivotX;
            this.§2D§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§2D§.x = -this.§2D§.width / 2;
            this.§2D§.y = -this.§2D§.height / 2;
         }
         this.§2D§.scaleX = _loc4_;
         this.§2D§.scaleY = _loc4_;
         this.mW = this.§2D§.width / 2;
         this.mH = this.§2D§.height / 2;
         this.§8q§.addChild(this.§2D§);
         return true;
      }
      
      public function §8]§(param1:§4C§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§class§)
         {
            case §4C§.§7!3§:
               _loc2_ = param1.§^!K§();
               _loc3_ = _loc2_[0];
               this.§?T§ = _loc3_.x / §>"§.§'!S§;
               this.§>!"§ = _loc3_.y / §>"§.§'!S§;
               break;
            case §4C§.§=m§:
         }
         this.§2`§();
      }
      
      public function §&!d§() : Array
      {
         return §2C§.§&!d§(null,this.§ i§.§^p§());
      }
      
      public function §8Q§() : Array
      {
         return §2C§.§8Q§(null,this.§ i§.§^p§());
      }
      
      public function § !U§() : Array
      {
         return §2C§.§ !U§(null);
      }
      
      public function §78§() : void
      {
      }
      
      public function §3G§(param1:Number) : void
      {
         this.§8q§.scaleX = this.§8q§.scaleY = param1;
      }
      
      public function §2`§() : void
      {
         var _loc1_:§-!$§ = null;
         if(!this.§9!G§)
         {
            return;
         }
         if(this.§return§)
         {
            this.§"B§ = 1;
         }
         else if(this.§ i§.getSpecialAnimationProgress() >= 0 && this.§9!G§.getSubAnimation(this.§3!N§))
         {
            this.§>!E§ = this.§9!G§.getSubAnimation(this.§3!N§);
            this.§"B§ = this.§>!E§.getFrameCount() * this.§ i§.getSpecialAnimationProgress();
            if(this.§"B§ == this.§>!E§.getFrameCount() - 1 && this.§ i§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§"B§;
            }
         }
         else if(this.mTryToSpecial && this.§9!G§.getSubAnimation(this.§3!N§))
         {
            this.§>!E§ = this.§9!G§.getSubAnimation(this.§3!N§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§9!G§.getSubAnimation(this.§6E§))
         {
            this.§>!E§ = this.§9!G§.getSubAnimation(this.§6E§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§9!G§.getSubAnimation(this.§9!I§))
         {
            this.§>!E§ = this.§9!G§.getSubAnimation(this.§9!I§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§9!G§.getSubAnimation(this.§>!O§))
         {
            this.§>!E§ = this.§9!G§.getSubAnimation(this.§>!O§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§9!G§.getSubAnimation(this.§<N§))
         {
            this.§>!E§ = this.§9!G§.getSubAnimation(this.§<N§);
            this.mIsFlying = true;
         }
         else
         {
            this.§>!E§ = this.§9!G§;
         }
         if(this.§>!E§)
         {
            _loc1_ = this.§>!E§.getFrame(this.§"B§);
            if(this.§2D§ && _loc1_)
            {
               this.§2D§.texture = _loc1_.texture;
               this.§2D§.x = -_loc1_.pivotX - this.§?T§;
               this.§2D§.y = -_loc1_.pivotY - this.§>!"§;
               this.§2D§.scaleX = _loc1_.scale;
               this.§2D§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §[!D§() : void
      {
         this.§8q§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§3y§ < 0)
         {
            this.§1!`§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§ i§.§8!B§ / this.§ i§.§6!N§) * this.§3y§;
         if(_loc1_ != this.§%!$§)
         {
            this.§%!$§ = _loc1_;
            this.§"B§ = this.§%!$§;
            this.§2`§();
         }
      }
      
      public function §1!`§() : void
      {
         if(this.§9!G§)
         {
            this.§3y§ = this.§9!G§.getFrameCount();
         }
      }
      
      public function §^!U§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§>o§ = new GlowFilter();
         this.§>o§.blurX = param2;
         this.§>o§.blurY = param3;
         this.§>o§.color = param1;
      }
      
      public function §&!3§() : void
      {
         this.§>o§ = null;
      }
      
      public function §-B§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§ i§.§81§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§'!H§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §<!U§(param1:Number) : void
      {
         var _loc2_:int = this.§@!]§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§@!]§[_loc2_].updateLifeTime(param1);
            if(this.§@!]§[_loc2_].lifeTime < 0)
            {
               this.§'!H§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §'!H§(param1:int) : void
      {
         if(!this.§1V§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§-!$§ = this.§1V§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§""§ = null;
         if(param1 < this.§@!]§.length)
         {
            (_loc5_ = this.§@!]§[param1]).§0N§(_loc4_);
            _loc5_.§%!O§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §""§(_loc3_.texture,_loc4_);
            this.§@!]§.push(_loc5_);
            this.§8q§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§2D§.width / 2 + Math.random() * this.§2D§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§2D§.height / 2 + Math.random() * this.§2D§.height;
      }
      
      public function §!!O§() : §=_§
      {
         return this.§2D§;
      }
   }
}
