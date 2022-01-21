package §5!G§
{
   import §!!e§.§5!%§;
   import §!R§.b2Vec2;
   import §&[§.§'!$§;
   import §&[§.§,!"§;
   import §&[§.§0!I§;
   import §2!g§.§<7§;
   import §2!g§.Sprite;
   import §@!b§.§!"§;
   import §@!b§.§@!k§;
   import §@j§.Texture;
   import flash.filters.GlowFilter;
   
   public class §]^§
   {
      
      public static const §@X§:Number = 1000;
      
      public static const §?!`§:Number = 500;
      
      private static var §9!j§:Array = null;
       
      
      private var §;B§:§6!Y§;
      
      public var §%!L§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §3!B§:Number;
      
      public var §]k§:Number;
      
      public var §?y§:int = -1;
      
      private var §,$§:String;
      
      private var §2!6§:§'!$§;
      
      private var §4!F§:§'!$§;
      
      private var §76§:§<7§;
      
      private var §"p§:Number = 0;
      
      private var §7!c§:Number = 0;
      
      public var §<!K§:int = -1;
      
      private var §^X§:int = -1;
      
      private var §5Y§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §7!b§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §^!]§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §7!g§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §<J§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §+!o§:String = "fly";
      
      public var §@!B§:String = "fly_yell";
      
      public var §<k§:GlowFilter;
      
      private var §["§:Vector.<§!"§>;
      
      private var §6X§:§'!$§;
      
      private var §[8§:Sprite = null;
      
      private var mLevelMain:§@!k§;
      
      public function §]^§(param1:§6!Y§, param2:Sprite, param3:§@!k§)
      {
         super();
         this.mLevelMain = param3;
         this.§;B§ = param1;
         this.§,$§ = this.§;B§.§@!i§;
         this.§["§ = new Vector.<§!"§>();
         this.§[8§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!"§ = null;
         this.§+!U§();
         if(this.§["§)
         {
            while(this.§["§.length > 0)
            {
               _loc1_ = this.§["§.pop();
               _loc1_.dispose();
            }
            this.§["§ = null;
         }
      }
      
      public function §,W§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§?y§ = param1;
         this.§]k§ = param2;
         this.§8>§();
      }
      
      public function §9<§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3!B§ = 1;
            return;
         }
         this.§3!B§ = this.mW / this.mH;
         if(this.§3!B§ < 1)
         {
            this.§3!B§ = 1 / this.§3!B§;
         }
         this.§3!B§ = Math.min(11,this.§3!B§);
      }
      
      public function §>q§(param1:§0!I§) : Boolean
      {
         var _loc2_:§,!"§ = null;
         var _loc3_:Texture = null;
         if(this.§;B§.isGround())
         {
            return false;
         }
         this.§6X§ = param1.getAnimation("SPARKLES");
         this.§2!6§ = param1.getAnimation(this.§,$§);
         this.§4!F§ = this.§2!6§;
         var _loc4_:Number = 1;
         if(this.§4!F§)
         {
            _loc2_ = this.§4!F§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.mLevelMain.textureManager.§3!T§();
         }
         this.§76§ = new §<7§(_loc3_);
         if(_loc2_)
         {
            this.§76§.x = -_loc2_.pivotX;
            this.§76§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§76§.x = -this.§76§.width / 2;
            this.§76§.y = -this.§76§.height / 2;
         }
         this.§76§.scaleX = _loc4_;
         this.§76§.scaleY = _loc4_;
         this.mW = this.§76§.width / 2;
         this.mH = this.§76§.height / 2;
         this.§[8§.addChild(this.§76§);
         return true;
      }
      
      public function §;l§(param1:§5!%§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§68§)
         {
            case §5!%§.§6!X§:
               _loc2_ = param1.§3!k§();
               _loc3_ = _loc2_[0];
               this.§"p§ = _loc3_.x / §@!k§.§2!J§;
               this.§7!c§ = _loc3_.y / §@!k§.§2!J§;
               break;
            case §5!%§.§;!8§:
         }
         this.§[+§();
      }
      
      public function §;!g§() : Array
      {
         return §1!A§.§;!g§(null,this.§;B§.§`!g§());
      }
      
      public function § !2§() : Array
      {
         return §1!A§.§ !2§(null,this.§;B§.§`!g§());
      }
      
      public function §1!7§() : Array
      {
         return §1!A§.§1!7§(null);
      }
      
      public function §8>§() : void
      {
      }
      
      public function §?!R§(param1:Number) : void
      {
         this.§[8§.scaleX = this.§[8§.scaleY = param1;
      }
      
      public function §[+§() : void
      {
         var _loc1_:§,!"§ = null;
         if(!this.§2!6§)
         {
            return;
         }
         if(this.§^!]§)
         {
            this.§5Y§ = 1;
         }
         else if(this.§;B§.getSpecialAnimationProgress() >= 0 && this.§2!6§.getSubAnimation(this.§7!b§))
         {
            this.§4!F§ = this.§2!6§.getSubAnimation(this.§7!b§);
            this.§5Y§ = this.§4!F§.getFrameCount() * this.§;B§.getSpecialAnimationProgress();
            if(this.§5Y§ == this.§4!F§.getFrameCount() - 1 && this.§;B§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§5Y§;
            }
         }
         else if(this.mTryToSpecial && this.§2!6§.getSubAnimation(this.§7!b§))
         {
            this.§4!F§ = this.§2!6§.getSubAnimation(this.§7!b§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§2!6§.getSubAnimation(this.§@!B§))
         {
            this.§4!F§ = this.§2!6§.getSubAnimation(this.§@!B§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§2!6§.getSubAnimation(this.§7!g§))
         {
            this.§4!F§ = this.§2!6§.getSubAnimation(this.§7!g§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§2!6§.getSubAnimation(this.§<J§))
         {
            this.§4!F§ = this.§2!6§.getSubAnimation(this.§<J§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§2!6§.getSubAnimation(this.§+!o§))
         {
            this.§4!F§ = this.§2!6§.getSubAnimation(this.§+!o§);
            this.mIsFlying = true;
         }
         else
         {
            this.§4!F§ = this.§2!6§;
         }
         if(this.§4!F§)
         {
            _loc1_ = this.§4!F§.getFrame(this.§5Y§);
            if(this.§76§ && _loc1_)
            {
               this.§76§.texture = _loc1_.texture;
               this.§76§.x = -_loc1_.pivotX - this.§"p§;
               this.§76§.y = -_loc1_.pivotY - this.§7!c§;
               this.§76§.scaleX = _loc1_.scale;
               this.§76§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §7K§() : void
      {
         this.§[8§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§<!K§ < 0)
         {
            this.§=!"§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§;B§.§%!C§ / this.§;B§.§#!2§) * this.§<!K§;
         if(_loc1_ != this.§^X§)
         {
            this.§^X§ = _loc1_;
            this.§5Y§ = this.§^X§;
            this.§[+§();
         }
      }
      
      public function §=!"§() : void
      {
         if(this.§2!6§)
         {
            this.§<!K§ = this.§2!6§.getFrameCount();
         }
      }
      
      public function §<!F§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§<k§ = new GlowFilter();
         this.§<k§.blurX = param2;
         this.§<k§.blurY = param3;
         this.§<k§.color = param1;
      }
      
      public function §+!U§() : void
      {
         this.§<k§ = null;
      }
      
      public function §%k§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§;B§.§+?§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§4!h§(_loc2_);
            _loc2_++;
         }
      }
      
      public function § !4§(param1:Number) : void
      {
         var _loc2_:int = this.§["§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§["§[_loc2_].updateLifeTime(param1);
            if(this.§["§[_loc2_].lifeTime < 0)
            {
               this.§4!h§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §4!h§(param1:int) : void
      {
         if(!this.§6X§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§,!"§ = this.§6X§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§!"§ = null;
         if(param1 < this.§["§.length)
         {
            (_loc5_ = this.§["§[param1]).§^L§(_loc4_);
            _loc5_.§]!3§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §!"§(_loc3_.texture,_loc4_);
            this.§["§.push(_loc5_);
            this.§[8§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§76§.width / 2 + Math.random() * this.§76§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§76§.height / 2 + Math.random() * this.§76§.height;
      }
      
      public function §#!Z§() : §<7§
      {
         return this.§76§;
      }
   }
}
