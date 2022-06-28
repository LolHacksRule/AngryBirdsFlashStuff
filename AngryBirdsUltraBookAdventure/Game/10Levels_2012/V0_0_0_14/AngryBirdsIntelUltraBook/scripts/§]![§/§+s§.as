package §]![§
{
   import §!!9§.Texture;
   import §+&§.§-!7§;
   import §+&§.§@B§;
   import §,6§.§5z§;
   import §,6§.§>N§;
   import §,6§.§^!>§;
   import §8>§.b2Vec2;
   import §9E§.§;!U§;
   import §9E§.Sprite;
   import §>o§.§0!N§;
   import flash.filters.GlowFilter;
   
   public class §+s§
   {
      
      public static const §'!m§:Number = 1000;
      
      public static const §1!W§:Number = 500;
      
      private static var §<!6§:Array = null;
       
      
      private var §"K§:§4!H§;
      
      public var §1y§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §[!f§:Number;
      
      public var §'!k§:Number;
      
      public var §7!N§:int = -1;
      
      private var §'!R§:String;
      
      private var §?I§:§^!>§;
      
      private var §]!?§:§^!>§;
      
      private var §[!!§:§;!U§;
      
      private var §5e§:Number = 0;
      
      private var §-e§:Number = 0;
      
      public var §<!8§:int = -1;
      
      private var §9L§:int = -1;
      
      private var §9!F§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §6m§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §?!]§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §1!s§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §`!S§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §]^§:String = "fly";
      
      public var §!z§:String = "fly_yell";
      
      public var § !Q§:GlowFilter;
      
      private var §5!`§:Vector.<§@B§>;
      
      private var §0W§:§^!>§;
      
      private var §8!9§:Sprite = null;
      
      private var §+!X§:§-!7§;
      
      public function §+s§(param1:§4!H§, param2:Sprite, param3:§-!7§)
      {
         super();
         this.§+!X§ = param3;
         this.§"K§ = param1;
         this.§'!R§ = this.§"K§.§@!p§;
         this.§5!`§ = new Vector.<§@B§>();
         this.§8!9§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@B§ = null;
         this.§9!u§();
         if(this.§5!`§)
         {
            while(this.§5!`§.length > 0)
            {
               _loc1_ = this.§5!`§.pop();
               _loc1_.dispose();
            }
            this.§5!`§ = null;
         }
      }
      
      public function §>m§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§7!N§ = param1;
         this.§'!k§ = param2;
         this.§!3§();
      }
      
      public function §2l§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[!f§ = 1;
            return;
         }
         this.§[!f§ = this.mW / this.mH;
         if(this.§[!f§ < 1)
         {
            this.§[!f§ = 1 / this.§[!f§;
         }
         this.§[!f§ = Math.min(11,this.§[!f§);
      }
      
      public function §7!2§(param1:§>N§) : Boolean
      {
         var _loc2_:§5z§ = null;
         var _loc3_:Texture = null;
         if(this.§"K§.isGround())
         {
            return false;
         }
         this.§0W§ = param1.getAnimation("SPARKLES");
         this.§?I§ = param1.getAnimation(this.§'!R§);
         this.§]!?§ = this.§?I§;
         var _loc4_:Number = 1;
         if(this.§]!?§)
         {
            _loc2_ = this.§]!?§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§+!X§.textureManager.§80§();
         }
         this.§[!!§ = new §;!U§(_loc3_);
         if(_loc2_)
         {
            this.§[!!§.x = -_loc2_.pivotX;
            this.§[!!§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§[!!§.x = -this.§[!!§.width / 2;
            this.§[!!§.y = -this.§[!!§.height / 2;
         }
         this.§[!!§.scaleX = _loc4_;
         this.§[!!§.scaleY = _loc4_;
         this.mW = this.§[!!§.width / 2;
         this.mH = this.§[!!§.height / 2;
         this.§8!9§.addChild(this.§[!!§);
         return true;
      }
      
      public function §@j§(param1:§0!N§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§;N§)
         {
            case §0!N§.§0M§:
               _loc2_ = param1.§9K§();
               _loc3_ = _loc2_[0];
               this.§5e§ = _loc3_.x / §-!7§.§8!r§;
               this.§-e§ = _loc3_.y / §-!7§.§8!r§;
               break;
            case §0!N§.§#!`§:
         }
         this.§@F§();
      }
      
      public function §>q§() : Array
      {
         return §9!p§.§>q§(null,this.§"K§.§'!#§());
      }
      
      public function §>v§() : Array
      {
         return §9!p§.§>v§(null,this.§"K§.§'!#§());
      }
      
      public function §,!V§() : Array
      {
         return §9!p§.§,!V§(null);
      }
      
      public function §!3§() : void
      {
      }
      
      public function §&O§(param1:Number) : void
      {
         this.§8!9§.scaleX = this.§8!9§.scaleY = param1;
      }
      
      public function §@F§() : void
      {
         var _loc1_:§5z§ = null;
         if(!this.§?I§)
         {
            return;
         }
         if(this.§?!]§)
         {
            this.§9!F§ = 1;
         }
         else if(this.§"K§.getSpecialAnimationProgress() >= 0 && this.§?I§.getSubAnimation(this.§6m§))
         {
            this.§]!?§ = this.§?I§.getSubAnimation(this.§6m§);
            this.§9!F§ = this.§]!?§.getFrameCount() * this.§"K§.getSpecialAnimationProgress();
            if(this.§9!F§ == this.§]!?§.getFrameCount() - 1 && this.§"K§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§9!F§;
            }
         }
         else if(this.mTryToSpecial && this.§?I§.getSubAnimation(this.§6m§))
         {
            this.§]!?§ = this.§?I§.getSubAnimation(this.§6m§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§?I§.getSubAnimation(this.§!z§))
         {
            this.§]!?§ = this.§?I§.getSubAnimation(this.§!z§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§?I§.getSubAnimation(this.§1!s§))
         {
            this.§]!?§ = this.§?I§.getSubAnimation(this.§1!s§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§?I§.getSubAnimation(this.§`!S§))
         {
            this.§]!?§ = this.§?I§.getSubAnimation(this.§`!S§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§?I§.getSubAnimation(this.§]^§))
         {
            this.§]!?§ = this.§?I§.getSubAnimation(this.§]^§);
            this.mIsFlying = true;
         }
         else
         {
            this.§]!?§ = this.§?I§;
         }
         if(this.§]!?§)
         {
            _loc1_ = this.§]!?§.getFrame(this.§9!F§);
            if(this.§[!!§ && _loc1_)
            {
               this.§[!!§.texture = _loc1_.texture;
               this.§[!!§.x = -_loc1_.pivotX - this.§5e§;
               this.§[!!§.y = -_loc1_.pivotY - this.§-e§;
               this.§[!!§.scaleX = _loc1_.scale;
               this.§[!!§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §<!K§() : void
      {
         this.§8!9§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§<!8§ < 0)
         {
            this.§>-§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§"K§.§%,§ / this.§"K§.§0K§) * this.§<!8§;
         if(_loc1_ != this.§9L§)
         {
            this.§9L§ = _loc1_;
            this.§9!F§ = this.§9L§;
            this.§@F§();
         }
      }
      
      public function §>-§() : void
      {
         if(this.§?I§)
         {
            this.§<!8§ = this.§?I§.getFrameCount();
         }
      }
      
      public function §;F§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§ !Q§ = new GlowFilter();
         this.§ !Q§.blurX = param2;
         this.§ !Q§.blurY = param3;
         this.§ !Q§.color = param1;
      }
      
      public function §9!u§() : void
      {
         this.§ !Q§ = null;
      }
      
      public function §!!D§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§"K§.§=U§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§@!7§(_loc2_);
            _loc2_++;
         }
      }
      
      public function § ![§(param1:Number) : void
      {
         var _loc2_:int = this.§5!`§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§5!`§[_loc2_].updateLifeTime(param1);
            if(this.§5!`§[_loc2_].lifeTime < 0)
            {
               this.§@!7§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §@!7§(param1:int) : void
      {
         if(!this.§0W§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§5z§ = this.§0W§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§@B§ = null;
         if(param1 < this.§5!`§.length)
         {
            (_loc5_ = this.§5!`§[param1]).§^;§(_loc4_);
            _loc5_.§4!"§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §@B§(_loc3_.texture,_loc4_);
            this.§5!`§.push(_loc5_);
            this.§8!9§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§[!!§.width / 2 + Math.random() * this.§[!!§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§[!!§.height / 2 + Math.random() * this.§[!!§.height;
      }
      
      public function §1f§() : §;!U§
      {
         return this.§[!!§;
      }
   }
}
