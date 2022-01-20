package §4j§
{
   import § !J§.§%M§;
   import § !J§.§[;§;
   import §&7§.Texture;
   import §+S§.b2Vec2;
   import §9!§.§4!j§;
   import §9`§.§+!D§;
   import §9`§.§3f§;
   import §9`§.§8!P§;
   import §`!n§.§+i§;
   import §`!n§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §?!c§
   {
      
      public static const §%R§:Number = 1000;
      
      public static const §=$§:Number = 500;
      
      private static var §]!L§:Array = null;
       
      
      private var § Y§:§9M§;
      
      public var §@Q§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §2'§:Number;
      
      public var §>O§:Number;
      
      public var §0!J§:int = -1;
      
      private var §`,§:String;
      
      private var §"!"§:§+!D§;
      
      private var §'!+§:§+!D§;
      
      private var §+!d§:§+i§;
      
      private var §3!C§:Number = 0;
      
      private var §,Z§:Number = 0;
      
      public var §0!Z§:int = -1;
      
      private var §#_§:int = -1;
      
      private var §+f§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §4!2§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §;r§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §+!2§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §3t§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §,%§:String = "fly";
      
      public var §2!"§:String = "fly_yell";
      
      public var §?!`§:GlowFilter;
      
      private var §[!@§:Vector.<§[;§>;
      
      private var §;P§:§+!D§;
      
      private var §]!M§:Sprite = null;
      
      private var mLevelMain:§%M§;
      
      public function §?!c§(param1:§9M§, param2:Sprite, param3:§%M§)
      {
         super();
         this.mLevelMain = param3;
         this.§ Y§ = param1;
         this.§`,§ = this.§ Y§.§`!p§;
         this.§[!@§ = new Vector.<§[;§>();
         this.§]!M§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[;§ = null;
         this.§<y§();
         if(this.§[!@§)
         {
            while(this.§[!@§.length > 0)
            {
               _loc1_ = this.§[!@§.pop();
               _loc1_.dispose();
            }
            this.§[!@§ = null;
         }
      }
      
      public function §3W§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§0!J§ = param1;
         this.§>O§ = param2;
         this.§7!f§();
      }
      
      public function §&Y§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2'§ = 1;
            return;
         }
         this.§2'§ = this.mW / this.mH;
         if(this.§2'§ < 1)
         {
            this.§2'§ = 1 / this.§2'§;
         }
         this.§2'§ = Math.min(11,this.§2'§);
      }
      
      public function §0C§(param1:§3f§) : Boolean
      {
         var _loc2_:§8!P§ = null;
         var _loc3_:Texture = null;
         if(this.§ Y§.isGround())
         {
            return false;
         }
         this.§;P§ = param1.getAnimation("SPARKLES");
         this.§"!"§ = param1.getAnimation(this.§`,§);
         this.§'!+§ = this.§"!"§;
         var _loc4_:Number = 1;
         if(this.§'!+§)
         {
            _loc2_ = this.§'!+§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.mLevelMain.textureManager.§`G§();
         }
         this.§+!d§ = new §+i§(_loc3_);
         if(_loc2_)
         {
            this.§+!d§.x = -_loc2_.pivotX;
            this.§+!d§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§+!d§.x = -this.§+!d§.width / 2;
            this.§+!d§.y = -this.§+!d§.height / 2;
         }
         this.§+!d§.scaleX = _loc4_;
         this.§+!d§.scaleY = _loc4_;
         this.mW = this.§+!d§.width / 2;
         this.mH = this.§+!d§.height / 2;
         this.§]!M§.addChild(this.§+!d§);
         return true;
      }
      
      public function §-"§(param1:§4!j§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§<a§)
         {
            case §4!j§.§'!Q§:
               _loc2_ = param1.§3!<§();
               _loc3_ = _loc2_[0];
               this.§3!C§ = _loc3_.x / §%M§.§'!Y§;
               this.§,Z§ = _loc3_.y / §%M§.§'!Y§;
               break;
            case §4!j§.§<P§:
         }
         this.§;b§();
      }
      
      public function §8!$§() : Array
      {
         return §"!A§.§8!$§(null,this.§ Y§.dynamic());
      }
      
      public function §8`§() : Array
      {
         return §"!A§.§8`§(null,this.§ Y§.dynamic());
      }
      
      public function §4g§() : Array
      {
         return §"!A§.§4g§(null);
      }
      
      public function §7!f§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§]!M§.scaleX = this.§]!M§.scaleY = param1;
      }
      
      public function §;b§() : void
      {
         var _loc1_:§8!P§ = null;
         if(!this.§"!"§)
         {
            return;
         }
         if(this.§;r§)
         {
            this.§+f§ = 1;
         }
         else if(this.§ Y§.getSpecialAnimationProgress() >= 0 && this.§"!"§.getSubAnimation(this.§4!2§))
         {
            this.§'!+§ = this.§"!"§.getSubAnimation(this.§4!2§);
            this.§+f§ = this.§'!+§.getFrameCount() * this.§ Y§.getSpecialAnimationProgress();
            if(this.§+f§ == this.§'!+§.getFrameCount() - 1 && this.§ Y§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§+f§;
            }
         }
         else if(this.mTryToSpecial && this.§"!"§.getSubAnimation(this.§4!2§))
         {
            this.§'!+§ = this.§"!"§.getSubAnimation(this.§4!2§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§"!"§.getSubAnimation(this.§2!"§))
         {
            this.§'!+§ = this.§"!"§.getSubAnimation(this.§2!"§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§"!"§.getSubAnimation(this.§+!2§))
         {
            this.§'!+§ = this.§"!"§.getSubAnimation(this.§+!2§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§"!"§.getSubAnimation(this.§3t§))
         {
            this.§'!+§ = this.§"!"§.getSubAnimation(this.§3t§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§"!"§.getSubAnimation(this.§,%§))
         {
            this.§'!+§ = this.§"!"§.getSubAnimation(this.§,%§);
            this.mIsFlying = true;
         }
         else
         {
            this.§'!+§ = this.§"!"§;
         }
         if(this.§'!+§)
         {
            _loc1_ = this.§'!+§.getFrame(this.§+f§);
            if(this.§+!d§ && _loc1_)
            {
               this.§+!d§.texture = _loc1_.texture;
               this.§+!d§.x = -_loc1_.pivotX - this.§3!C§;
               this.§+!d§.y = -_loc1_.pivotY - this.§,Z§;
               this.§+!d§.scaleX = _loc1_.scale;
               this.§+!d§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §`]§() : void
      {
         this.§]!M§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§0!Z§ < 0)
         {
            this.§^v§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§ Y§.§4!6§ / this.§ Y§.§%!^§) * this.§0!Z§;
         if(_loc1_ != this.§#_§)
         {
            this.§#_§ = _loc1_;
            this.§+f§ = this.§#_§;
            this.§;b§();
         }
      }
      
      public function §^v§() : void
      {
         if(this.§"!"§)
         {
            this.§0!Z§ = this.§"!"§.getFrameCount();
         }
      }
      
      public function §@=§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§?!`§ = new GlowFilter();
         this.§?!`§.blurX = param2;
         this.§?!`§.blurY = param3;
         this.§?!`§.color = param1;
      }
      
      public function §<y§() : void
      {
         this.§?!`§ = null;
      }
      
      public function §7;§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§ Y§.§>+§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§<v§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §`!S§(param1:Number) : void
      {
         var _loc2_:int = this.§[!@§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§[!@§[_loc2_].updateLifeTime(param1);
            if(this.§[!@§[_loc2_].lifeTime < 0)
            {
               this.§<v§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §<v§(param1:int) : void
      {
         if(!this.§;P§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§8!P§ = this.§;P§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§[;§ = null;
         if(param1 < this.§[!@§.length)
         {
            (_loc5_ = this.§[!@§[param1]).§'![§(_loc4_);
            _loc5_.§%!k§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §[;§(_loc3_.texture,_loc4_);
            this.§[!@§.push(_loc5_);
            this.§]!M§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§+!d§.width / 2 + Math.random() * this.§+!d§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§+!d§.height / 2 + Math.random() * this.§+!d§.height;
      }
      
      public function §;I§() : §+i§
      {
         return this.§+!d§;
      }
   }
}
