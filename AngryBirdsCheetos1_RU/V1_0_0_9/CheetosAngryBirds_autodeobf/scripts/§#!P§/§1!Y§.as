package §#!P§
{
   import §#!`§.Texture;
   import §3E§.§%h§;
   import §3E§.§6w§;
   import §7u§.§&!C§;
   import §7u§.Sprite;
   import §9!%§.§0!B§;
   import §;U§.b2Vec2;
   import §`!B§.§'I§;
   import §`!B§.§2j§;
   import §`!B§.§4!I§;
   import flash.filters.GlowFilter;
   
   public class §1!Y§
   {
      
      public static const §0!P§:Number = 1000;
      
      public static const §^_§:Number = 500;
      
      private static var §`G§:Array = null;
       
      
      private var §3!2§:§2!W§;
      
      public var §if§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var § ?§:Number;
      
      public var §3z§:Number;
      
      public var §null§:int = -1;
      
      private var §0%§:String;
      
      private var §@q§:§2j§;
      
      private var §"!L§:§2j§;
      
      private var §#!+§:§&!C§;
      
      private var §2!5§:Number = 0;
      
      private var §4![§:Number = 0;
      
      public var §-!G§:int = -1;
      
      private var §>!B§:int = -1;
      
      private var §[!<§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §#!a§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §0_§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §&!!§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §0,§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §4n§:String = "fly";
      
      public var §&H§:String = "fly_yell";
      
      public var §0z§:GlowFilter;
      
      private var §4v§:Vector.<§%h§>;
      
      private var §'l§:§2j§;
      
      private var §3!F§:Sprite = null;
      
      private var §]v§:§6w§;
      
      public function §1!Y§(param1:§2!W§, param2:Sprite, param3:§6w§)
      {
         super();
         this.§]v§ = param3;
         this.§3!2§ = param1;
         this.§0%§ = this.§3!2§.§<Y§;
         this.§4v§ = new Vector.<§%h§>();
         this.§3!F§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%h§ = null;
         this.§=Z§();
         if(this.§4v§)
         {
            while(this.§4v§.length > 0)
            {
               _loc1_ = this.§4v§.pop();
               _loc1_.dispose();
            }
            this.§4v§ = null;
         }
      }
      
      public function §?!9§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§null§ = param1;
         this.§3z§ = param2;
         this.§`!§();
      }
      
      public function §8!P§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ ?§ = 1;
            return;
         }
         this.§ ?§ = this.mW / this.mH;
         if(this.§ ?§ < 1)
         {
            this.§ ?§ = 1 / this.§ ?§;
         }
         this.§ ?§ = Math.min(11,this.§ ?§);
      }
      
      public function §%!C§(param1:§'I§) : Boolean
      {
         var _loc2_:§4!I§ = null;
         var _loc3_:Texture = null;
         if(this.§3!2§.isGround())
         {
            return false;
         }
         this.§'l§ = param1.§;!!§("SPARKLES");
         this.§@q§ = param1.§;!!§(this.§0%§);
         this.§"!L§ = this.§@q§;
         var _loc4_:Number = 1;
         if(this.§"!L§)
         {
            _loc2_ = this.§"!L§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§]v§.§59§.§2t§();
         }
         this.§#!+§ = new §&!C§(_loc3_);
         if(_loc2_)
         {
            this.§#!+§.x = -_loc2_.pivotX;
            this.§#!+§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§#!+§.x = -this.§#!+§.width / 2;
            this.§#!+§.y = -this.§#!+§.height / 2;
         }
         this.§#!+§.scaleX = _loc4_;
         this.§#!+§.scaleY = _loc4_;
         this.mW = this.§#!+§.width / 2;
         this.mH = this.§#!+§.height / 2;
         this.§3!F§.addChild(this.§#!+§);
         return true;
      }
      
      public function §6!?§(param1:§0!B§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§8<§)
         {
            case §0!B§.§3$§:
               _loc2_ = param1.§@!-§();
               _loc3_ = _loc2_[0];
               this.§2!5§ = _loc3_.x / §6w§.§?!^§;
               this.§4![§ = _loc3_.y / §6w§.§?!^§;
               break;
            case §0!B§.§?!>§:
         }
         this.§-!D§();
      }
      
      public function §4;§() : Array
      {
         return §@Q§.§4;§(null,this.§3!2§.native());
      }
      
      public function §@k§() : Array
      {
         return §@Q§.§@k§(null,this.§3!2§.native());
      }
      
      public function §%!<§() : Array
      {
         return §@Q§.§%!<§(null);
      }
      
      public function §`!§() : void
      {
      }
      
      public function §"!?§(param1:Number) : void
      {
         this.§3!F§.scaleX = this.§3!F§.scaleY = param1;
      }
      
      public function §-!D§() : void
      {
         var _loc1_:§4!I§ = null;
         if(!this.§@q§)
         {
            return;
         }
         if(this.§0_§)
         {
            this.§[!<§ = 1;
         }
         else if(this.§3!2§.getSpecialAnimationProgress() >= 0 && this.§@q§.getSubAnimation(this.§#!a§))
         {
            this.§"!L§ = this.§@q§.getSubAnimation(this.§#!a§);
            this.§[!<§ = this.§"!L§.getFrameCount() * this.§3!2§.getSpecialAnimationProgress();
            if(this.§[!<§ == this.§"!L§.getFrameCount() - 1 && this.§3!2§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§[!<§;
            }
         }
         else if(this.mTryToSpecial && this.§@q§.getSubAnimation(this.§#!a§))
         {
            this.§"!L§ = this.§@q§.getSubAnimation(this.§#!a§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§@q§.getSubAnimation(this.§&H§))
         {
            this.§"!L§ = this.§@q§.getSubAnimation(this.§&H§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§@q§.getSubAnimation(this.§&!!§))
         {
            this.§"!L§ = this.§@q§.getSubAnimation(this.§&!!§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§@q§.getSubAnimation(this.§0,§))
         {
            this.§"!L§ = this.§@q§.getSubAnimation(this.§0,§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§@q§.getSubAnimation(this.§4n§))
         {
            this.§"!L§ = this.§@q§.getSubAnimation(this.§4n§);
            this.mIsFlying = true;
         }
         else
         {
            this.§"!L§ = this.§@q§;
         }
         if(this.§"!L§)
         {
            _loc1_ = this.§"!L§.getFrame(this.§[!<§);
            if(this.§#!+§ && _loc1_)
            {
               this.§#!+§.texture = _loc1_.texture;
               this.§#!+§.x = -_loc1_.pivotX - this.§2!5§;
               this.§#!+§.y = -_loc1_.pivotY - this.§4![§;
               this.§#!+§.scaleX = _loc1_.scale;
               this.§#!+§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function § [§() : void
      {
         this.§3!F§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§-!G§ < 0)
         {
            this.§8!8§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§3!2§.§1!L§ / this.§3!2§.§!w§) * this.§-!G§;
         if(_loc1_ != this.§>!B§)
         {
            this.§>!B§ = _loc1_;
            this.§[!<§ = this.§>!B§;
            this.§-!D§();
         }
      }
      
      public function §8!8§() : void
      {
         if(this.§@q§)
         {
            this.§-!G§ = this.§@q§.getFrameCount();
         }
      }
      
      public function §-^§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§0z§ = new GlowFilter();
         this.§0z§.blurX = param2;
         this.§0z§.blurY = param3;
         this.§0z§.color = param1;
      }
      
      public function §=Z§() : void
      {
         this.§0z§ = null;
      }
      
      public function §]!>§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§3!2§.§,w§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§4u§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §8s§(param1:Number) : void
      {
         var _loc2_:int = this.§4v§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§4v§[_loc2_].updateLifeTime(param1);
            if(this.§4v§[_loc2_].lifeTime < 0)
            {
               this.§4u§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §4u§(param1:int) : void
      {
         if(!this.§'l§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§4!I§ = this.§'l§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§%h§ = null;
         if(param1 < this.§4v§.length)
         {
            (_loc5_ = this.§4v§[param1]).§1i§(_loc4_);
            _loc5_.§[;§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §%h§(_loc3_.texture,_loc4_);
            this.§4v§.push(_loc5_);
            this.§3!F§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§#!+§.width / 2 + Math.random() * this.§#!+§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§#!+§.height / 2 + Math.random() * this.§#!+§.height;
      }
      
      public function §'D§() : §&!C§
      {
         return this.§#!+§;
      }
   }
}
