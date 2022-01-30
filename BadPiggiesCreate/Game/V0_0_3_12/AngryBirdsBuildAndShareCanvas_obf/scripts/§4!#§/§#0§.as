package §4!#§
{
   import §#?§.§+"5§;
   import §3!t§.b2Vec2;
   import §@!-§.§!!Y§;
   import §@!-§.§"K§;
   import §@!-§.§5A§;
   import §@!i§.§%Q§;
   import §@!i§.Sprite;
   import §[B§.§"d§;
   import §[B§.§[!#§;
   import §^Q§.Texture;
   import flash.filters.GlowFilter;
   
   public class §#0§
   {
      
      public static const §#!i§:Number = 1000;
      
      public static const §'"§:Number = 500;
      
      private static var §30§:Array = null;
       
      
      private var §1!?§:§60§;
      
      public var §0G§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §&"<§:Number;
      
      public var §?!0§:Number;
      
      public var §6j§:int = -1;
      
      private var §3N§:String;
      
      private var §+!Z§:§5A§;
      
      private var §+!U§:§5A§;
      
      private var §#9§:§%Q§;
      
      private var § true§:Number = 0;
      
      private var §+G§:Number = 0;
      
      public var §'V§:int = -1;
      
      private var §3!Z§:int = -1;
      
      private var §2";§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §8!0§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §"!4§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §+"8§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var § H§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §0"2§:String = "fly";
      
      public var §]!i§:String = "fly_yell";
      
      public var §7]§:GlowFilter;
      
      private var §=",§:Vector.<§[!#§>;
      
      private var §]"#§:§5A§;
      
      private var §+;§:Sprite = null;
      
      private var §]!3§:§"d§;
      
      public function §#0§(param1:§60§, param2:Sprite, param3:§"d§)
      {
         super();
         this.§]!3§ = param3;
         this.§1!?§ = param1;
         this.§3N§ = this.§1!?§.§%!t§;
         this.§=",§ = new Vector.<§[!#§>();
         this.§+;§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[!#§ = null;
         this.§]!8§();
         if(this.§=",§)
         {
            while(this.§=",§.length > 0)
            {
               _loc1_ = this.§=",§.pop();
               _loc1_.dispose();
            }
            this.§=",§ = null;
         }
      }
      
      public function §-x§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§6j§ = param1;
         this.§?!0§ = param2;
         this.§2!3§();
      }
      
      public function §6!Y§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&"<§ = 1;
            return;
         }
         this.§&"<§ = this.mW / this.mH;
         if(this.§&"<§ < 1)
         {
            this.§&"<§ = 1 / this.§&"<§;
         }
         this.§&"<§ = Math.min(11,this.§&"<§);
      }
      
      public function §=!^§(param1:§!!Y§) : Boolean
      {
         var _loc2_:§"K§ = null;
         var _loc3_:Texture = null;
         if(this.§1!?§.isGround())
         {
            return false;
         }
         this.§]"#§ = param1.§^e§("SPARKLES");
         this.§+!Z§ = param1.§^e§(this.§3N§);
         this.§+!U§ = this.§+!Z§;
         var _loc4_:Number = 1;
         if(this.§+!U§)
         {
            _loc2_ = this.§+!U§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§]!3§.§="!§.§4!i§();
         }
         this.§#9§ = new §%Q§(_loc3_);
         if(_loc2_)
         {
            this.§#9§.x = -_loc2_.pivotX;
            this.§#9§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§#9§.x = -this.§#9§.width / 2;
            this.§#9§.y = -this.§#9§.height / 2;
         }
         this.§#9§.scaleX = _loc4_;
         this.§#9§.scaleY = _loc4_;
         this.mW = this.§#9§.width / 2;
         this.mH = this.§#9§.height / 2;
         this.§+;§.addChild(this.§#9§);
         return true;
      }
      
      public function §>q§(param1:§+"5§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§-5§)
         {
            case §+"5§.§%!I§:
               _loc2_ = param1.§-7§();
               _loc3_ = _loc2_[0];
               this.§ true§ = _loc3_.x / §"d§.§2!]§;
               this.§+G§ = _loc3_.y / §"d§.§2!]§;
               break;
            case §+"5§.§<!^§:
         }
         this.§5!r§();
      }
      
      public function §if §() : Array
      {
         return §]!^§.§if §(null,this.§1!?§.§2!A§());
      }
      
      public function §]!E§() : Array
      {
         return §]!^§.§]!E§(null,this.§1!?§.§2!A§());
      }
      
      public function §23§() : Array
      {
         return §]!^§.§23§(null);
      }
      
      public function §2!3§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§+;§.scaleX = this.§+;§.scaleY = param1;
      }
      
      public function §5!r§() : void
      {
         var _loc1_:§"K§ = null;
         if(!this.§+!Z§)
         {
            return;
         }
         if(this.§"!4§)
         {
            this.§2";§ = 1;
         }
         else if(this.§1!?§.getSpecialAnimationProgress() >= 0 && this.§+!Z§.getSubAnimation(this.§8!0§))
         {
            this.§+!U§ = this.§+!Z§.getSubAnimation(this.§8!0§);
            this.§2";§ = this.§+!U§.getFrameCount() * this.§1!?§.getSpecialAnimationProgress();
            if(this.§2";§ == this.§+!U§.getFrameCount() - 1 && this.§1!?§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§2";§;
            }
         }
         else if(this.mTryToSpecial && this.§+!Z§.getSubAnimation(this.§8!0§))
         {
            this.§+!U§ = this.§+!Z§.getSubAnimation(this.§8!0§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§+!Z§.getSubAnimation(this.§]!i§))
         {
            this.§+!U§ = this.§+!Z§.getSubAnimation(this.§]!i§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§+!Z§.getSubAnimation(this.§+"8§))
         {
            this.§+!U§ = this.§+!Z§.getSubAnimation(this.§+"8§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§+!Z§.getSubAnimation(this.§ H§))
         {
            this.§+!U§ = this.§+!Z§.getSubAnimation(this.§ H§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§+!Z§.getSubAnimation(this.§0"2§))
         {
            this.§+!U§ = this.§+!Z§.getSubAnimation(this.§0"2§);
            this.mIsFlying = true;
         }
         else
         {
            this.§+!U§ = this.§+!Z§;
         }
         if(this.§+!U§)
         {
            _loc1_ = this.§+!U§.getFrame(this.§2";§);
            if(this.§#9§ && _loc1_)
            {
               this.§#9§.texture = _loc1_.texture;
               this.§#9§.x = -_loc1_.pivotX - this.§ true§;
               this.§#9§.y = -_loc1_.pivotY - this.§+G§;
               this.§#9§.scaleX = _loc1_.scale;
               this.§#9§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §2!8§() : void
      {
         this.§+;§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§'V§ < 0)
         {
            this.§=x§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§1!?§.§2E§ / this.§1!?§.§<e§) * this.§'V§;
         if(_loc1_ != this.§3!Z§)
         {
            this.§3!Z§ = _loc1_;
            this.§2";§ = this.§3!Z§;
            this.§5!r§();
         }
      }
      
      public function §=x§() : void
      {
         if(this.§+!Z§)
         {
            this.§'V§ = this.§+!Z§.getFrameCount();
         }
      }
      
      public function §@#§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§7]§ = new GlowFilter();
         this.§7]§.blurX = param2;
         this.§7]§.blurY = param3;
         this.§7]§.color = param1;
      }
      
      public function §]!8§() : void
      {
         this.§7]§ = null;
      }
      
      public function §&!O§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§1!?§.§ !l§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§'"&§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §#h§(param1:Number) : void
      {
         var _loc2_:int = this.§=",§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§=",§[_loc2_].updateLifeTime(param1);
            if(this.§=",§[_loc2_].lifeTime < 0)
            {
               this.§'"&§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §'"&§(param1:int) : void
      {
         if(!this.§]"#§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§"K§ = this.§]"#§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§[!#§ = null;
         if(param1 < this.§=",§.length)
         {
            (_loc5_ = this.§=",§[param1]).§<U§(_loc4_);
            _loc5_.§ !9§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §[!#§(_loc3_.texture,_loc4_);
            this.§=",§.push(_loc5_);
            this.§+;§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§#9§.width / 2 + Math.random() * this.§#9§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§#9§.height / 2 + Math.random() * this.§#9§.height;
      }
      
      public function §=_§() : §%Q§
      {
         return this.§#9§;
      }
   }
}
