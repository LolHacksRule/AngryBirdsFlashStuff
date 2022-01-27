package §`!X§
{
   import §"!<§.Texture;
   import §%O§.§6?§;
   import §%O§.§=I§;
   import §%O§.§`b§;
   import §<!-§.Sprite;
   import §<!-§.§^B§;
   import §=i§.b2Vec2;
   import §^!7§.§[!,§;
   import §^!7§.§^A§;
   import §`Y§.§[!'§;
   import flash.filters.GlowFilter;
   
   public class §>r§
   {
      
      public static const §&!E§:Number = 1000;
      
      public static const §&R§:Number = 500;
      
      private static var §true§:Array = null;
       
      
      private var §,!$§:§5&§;
      
      public var §1!P§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §0!A§:Number;
      
      public var §;&§:Number;
      
      public var §#p§:int = -1;
      
      private var §&x§:String;
      
      private var §"!`§:§6?§;
      
      private var §-M§:§6?§;
      
      private var §7!§:§^B§;
      
      private var §0!2§:Number = 0;
      
      private var §8t§:Number = 0;
      
      public var §=!D§:int = -1;
      
      private var §3z§:int = -1;
      
      private var §@!J§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §,`§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §'h§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §set §:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §7x§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §]L§:String = "fly";
      
      public var §[!L§:String = "fly_yell";
      
      public var §57§:GlowFilter;
      
      private var §^L§:Vector.<§[!,§>;
      
      private var §&3§:§6?§;
      
      private var §0b§:Sprite = null;
      
      private var §<&§:§^A§;
      
      public function §>r§(param1:§5&§, param2:Sprite, param3:§^A§)
      {
         super();
         this.§<&§ = param3;
         this.§,!$§ = param1;
         this.§&x§ = this.§,!$§.§7=§;
         this.§^L§ = new Vector.<§[!,§>();
         this.§0b§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[!,§ = null;
         this.§9z§();
         if(this.§^L§)
         {
            while(this.§^L§.length > 0)
            {
               _loc1_ = this.§^L§.pop();
               _loc1_.dispose();
            }
            this.§^L§ = null;
         }
      }
      
      public function §3j§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§#p§ = param1;
         this.§;&§ = param2;
         this.§4n§();
      }
      
      public function §7L§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0!A§ = 1;
            return;
         }
         this.§0!A§ = this.mW / this.mH;
         if(this.§0!A§ < 1)
         {
            this.§0!A§ = 1 / this.§0!A§;
         }
         this.§0!A§ = Math.min(11,this.§0!A§);
      }
      
      public function §6n§(param1:§`b§) : Boolean
      {
         var _loc2_:§=I§ = null;
         var _loc3_:Texture = null;
         if(this.§,!$§.isGround())
         {
            return false;
         }
         this.§&3§ = param1.§=!B§("SPARKLES");
         this.§"!`§ = param1.§=!B§(this.§&x§);
         this.§-M§ = this.§"!`§;
         var _loc4_:Number = 1;
         if(this.§-M§)
         {
            _loc2_ = this.§-M§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§<&§.textureManager.§';§();
         }
         this.§7!§ = new §^B§(_loc3_);
         if(_loc2_)
         {
            this.§7!§.x = -_loc2_.pivotX;
            this.§7!§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§7!§.x = -this.§7!§.width / 2;
            this.§7!§.y = -this.§7!§.height / 2;
         }
         this.§7!§.scaleX = _loc4_;
         this.§7!§.scaleY = _loc4_;
         this.mW = this.§7!§.width / 2;
         this.mH = this.§7!§.height / 2;
         this.§0b§.addChild(this.§7!§);
         return true;
      }
      
      public function §9f§(param1:§[!'§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§[R§)
         {
            case §[!'§.§@![§:
               _loc2_ = param1.§+w§();
               _loc3_ = _loc2_[0];
               this.§0!2§ = _loc3_.x / §^A§.§<U§;
               this.§8t§ = _loc3_.y / §^A§.§<U§;
               break;
            case §[!'§.§>1§:
         }
         this.§]O§();
      }
      
      public function §00§() : Array
      {
         return §&!Q§.§00§(null,this.§,!$§.§%!U§());
      }
      
      public function §?Z§() : Array
      {
         return §&!Q§.§?Z§(null,this.§,!$§.§%!U§());
      }
      
      public function §=o§() : Array
      {
         return §&!Q§.§=o§(null);
      }
      
      public function §4n§() : void
      {
      }
      
      public function §?!c§(param1:Number) : void
      {
         this.§0b§.scaleX = this.§0b§.scaleY = param1;
      }
      
      public function §]O§() : void
      {
         var _loc1_:§=I§ = null;
         if(!this.§"!`§)
         {
            return;
         }
         if(this.§'h§)
         {
            this.§@!J§ = 1;
         }
         else if(this.§,!$§.getSpecialAnimationProgress() >= 0 && this.§"!`§.getSubAnimation(this.§,`§))
         {
            this.§-M§ = this.§"!`§.getSubAnimation(this.§,`§);
            this.§@!J§ = this.§-M§.getFrameCount() * this.§,!$§.getSpecialAnimationProgress();
            if(this.§@!J§ == this.§-M§.getFrameCount() - 1 && this.§,!$§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§@!J§;
            }
         }
         else if(this.mTryToSpecial && this.§"!`§.getSubAnimation(this.§,`§))
         {
            this.§-M§ = this.§"!`§.getSubAnimation(this.§,`§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§"!`§.getSubAnimation(this.§[!L§))
         {
            this.§-M§ = this.§"!`§.getSubAnimation(this.§[!L§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§"!`§.getSubAnimation(this.§set §))
         {
            this.§-M§ = this.§"!`§.getSubAnimation(this.§set §);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§"!`§.getSubAnimation(this.§7x§))
         {
            this.§-M§ = this.§"!`§.getSubAnimation(this.§7x§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§"!`§.getSubAnimation(this.§]L§))
         {
            this.§-M§ = this.§"!`§.getSubAnimation(this.§]L§);
            this.mIsFlying = true;
         }
         else
         {
            this.§-M§ = this.§"!`§;
         }
         if(this.§-M§)
         {
            _loc1_ = this.§-M§.getFrame(this.§@!J§);
            if(this.§7!§ && _loc1_)
            {
               this.§7!§.texture = _loc1_.texture;
               this.§7!§.x = -_loc1_.pivotX - this.§0!2§;
               this.§7!§.y = -_loc1_.pivotY - this.§8t§;
               this.§7!§.scaleX = _loc1_.scale;
               this.§7!§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §else§() : void
      {
         this.§0b§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§=!D§ < 0)
         {
            this.§use§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§,!$§.§^o§ / this.§,!$§.§'!M§) * this.§=!D§;
         if(_loc1_ != this.§3z§)
         {
            this.§3z§ = _loc1_;
            this.§@!J§ = this.§3z§;
            this.§]O§();
         }
      }
      
      public function §use§() : void
      {
         if(this.§"!`§)
         {
            this.§=!D§ = this.§"!`§.getFrameCount();
         }
      }
      
      public function §#!4§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§57§ = new GlowFilter();
         this.§57§.blurX = param2;
         this.§57§.blurY = param3;
         this.§57§.color = param1;
      }
      
      public function §9z§() : void
      {
         this.§57§ = null;
      }
      
      public function §`Z§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§,!$§.§[N§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§5J§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §7!H§(param1:Number) : void
      {
         var _loc2_:int = this.§^L§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§^L§[_loc2_].updateLifeTime(param1);
            if(this.§^L§[_loc2_].lifeTime < 0)
            {
               this.§5J§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §5J§(param1:int) : void
      {
         if(!this.§&3§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§=I§ = this.§&3§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§[!,§ = null;
         if(param1 < this.§^L§.length)
         {
            (_loc5_ = this.§^L§[param1]).§9!9§(_loc4_);
            _loc5_.§'j§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §[!,§(_loc3_.texture,_loc4_);
            this.§^L§.push(_loc5_);
            this.§0b§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§7!§.width / 2 + Math.random() * this.§7!§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§7!§.height / 2 + Math.random() * this.§7!§.height;
      }
      
      public function §2G§() : §^B§
      {
         return this.§7!§;
      }
   }
}
