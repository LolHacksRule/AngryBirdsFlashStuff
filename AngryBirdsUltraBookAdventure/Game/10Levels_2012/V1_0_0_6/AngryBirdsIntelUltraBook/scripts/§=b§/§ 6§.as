package §=b§
{
   import §-d§.§7]§;
   import §2_§.§'u§;
   import §2_§.§[M§;
   import §4>§.Texture;
   import §7!B§.§-§;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   import §^!Y§.§1C§;
   import §^!Y§.§4!f§;
   import §^!Y§.§else §;
   import flash.filters.GlowFilter;
   
   public class § 6§
   {
      
      public static const §8!3§:Number = 1000;
      
      public static const §;3§:Number = 500;
      
      private static var §#9§:Array = null;
       
      
      private var §2F§:§`!_§;
      
      public var §8!t§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §1!N§:Number;
      
      public var §>!§:Number;
      
      public var §[6§:int = -1;
      
      private var §+!!§:String;
      
      private var §'P§:§4!f§;
      
      private var §4b§:§4!f§;
      
      private var §7a§:§-§;
      
      private var §+!E§:Number = 0;
      
      private var §1Y§:Number = 0;
      
      public var § !w§:int = -1;
      
      private var §"!R§:int = -1;
      
      private var §@!m§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §'!t§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §&X§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §`a§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §9!A§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var § q§:String = "fly";
      
      public var §%!b§:String = "fly_yell";
      
      public var §1O§:GlowFilter;
      
      private var §?_§:Vector.<§[M§>;
      
      private var §59§:§4!f§;
      
      private var §2O§:Sprite = null;
      
      private var §#!3§:§'u§;
      
      public function § 6§(param1:§`!_§, param2:Sprite, param3:§'u§)
      {
         super();
         this.§#!3§ = param3;
         this.§2F§ = param1;
         this.§+!!§ = this.§2F§.§^r§;
         this.§?_§ = new Vector.<§[M§>();
         this.§2O§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[M§ = null;
         this.§?-§();
         if(this.§?_§)
         {
            while(this.§?_§.length > 0)
            {
               _loc1_ = this.§?_§.pop();
               _loc1_.dispose();
            }
            this.§?_§ = null;
         }
      }
      
      public function §9!F§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§[6§ = param1;
         this.§>!§ = param2;
         this.§,!k§();
      }
      
      public function §^u§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1!N§ = 1;
            return;
         }
         this.§1!N§ = this.mW / this.mH;
         if(this.§1!N§ < 1)
         {
            this.§1!N§ = 1 / this.§1!N§;
         }
         this.§1!N§ = Math.min(11,this.§1!N§);
      }
      
      public function §[9§(param1:§else §) : Boolean
      {
         var _loc2_:§1C§ = null;
         var _loc3_:Texture = null;
         if(this.§2F§.isGround())
         {
            return false;
         }
         this.§59§ = param1.getAnimation("SPARKLES");
         this.§'P§ = param1.getAnimation(this.§+!!§);
         this.§4b§ = this.§'P§;
         var _loc4_:Number = 1;
         if(this.§4b§)
         {
            _loc2_ = this.§4b§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§#!3§.textureManager.§,<§();
         }
         this.§7a§ = new §-§(_loc3_);
         if(_loc2_)
         {
            this.§7a§.x = -_loc2_.pivotX;
            this.§7a§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§7a§.x = -this.§7a§.width / 2;
            this.§7a§.y = -this.§7a§.height / 2;
         }
         this.§7a§.scaleX = _loc4_;
         this.§7a§.scaleY = _loc4_;
         this.mW = this.§7a§.width / 2;
         this.mH = this.§7a§.height / 2;
         this.§2O§.addChild(this.§7a§);
         return true;
      }
      
      public function §@!k§(param1:§7]§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§]n§)
         {
            case §7]§.§"!D§:
               _loc2_ = param1.§&o§();
               _loc3_ = _loc2_[0];
               this.§+!E§ = _loc3_.x / §'u§.§18§;
               this.§1Y§ = _loc3_.y / §'u§.§18§;
               break;
            case §7]§.§&&§:
         }
         this.§2!m§();
      }
      
      public function §6!,§() : Array
      {
         return §"z§.§6!,§(null,this.§2F§.§-!F§());
      }
      
      public function §"!6§() : Array
      {
         return §"z§.§"!6§(null,this.§2F§.§-!F§());
      }
      
      public function §?!`§() : Array
      {
         return §"z§.§?!`§(null);
      }
      
      public function §,!k§() : void
      {
      }
      
      public function §+!s§(param1:Number) : void
      {
         this.§2O§.scaleX = this.§2O§.scaleY = param1;
      }
      
      public function §2!m§() : void
      {
         var _loc1_:§1C§ = null;
         if(!this.§'P§)
         {
            return;
         }
         if(this.§&X§)
         {
            this.§@!m§ = 1;
         }
         else if(this.§2F§.getSpecialAnimationProgress() >= 0 && this.§'P§.getSubAnimation(this.§'!t§))
         {
            this.§4b§ = this.§'P§.getSubAnimation(this.§'!t§);
            this.§@!m§ = this.§4b§.getFrameCount() * this.§2F§.getSpecialAnimationProgress();
            if(this.§@!m§ == this.§4b§.getFrameCount() - 1 && this.§2F§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§@!m§;
            }
         }
         else if(this.mTryToSpecial && this.§'P§.getSubAnimation(this.§'!t§))
         {
            this.§4b§ = this.§'P§.getSubAnimation(this.§'!t§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§'P§.getSubAnimation(this.§%!b§))
         {
            this.§4b§ = this.§'P§.getSubAnimation(this.§%!b§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§'P§.getSubAnimation(this.§`a§))
         {
            this.§4b§ = this.§'P§.getSubAnimation(this.§`a§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§'P§.getSubAnimation(this.§9!A§))
         {
            this.§4b§ = this.§'P§.getSubAnimation(this.§9!A§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§'P§.getSubAnimation(this.§ q§))
         {
            this.§4b§ = this.§'P§.getSubAnimation(this.§ q§);
            this.mIsFlying = true;
         }
         else
         {
            this.§4b§ = this.§'P§;
         }
         if(this.§4b§)
         {
            _loc1_ = this.§4b§.getFrame(this.§@!m§);
            if(this.§7a§ && _loc1_)
            {
               this.§7a§.texture = _loc1_.texture;
               this.§7a§.x = -_loc1_.pivotX - this.§+!E§;
               this.§7a§.y = -_loc1_.pivotY - this.§1Y§;
               this.§7a§.scaleX = _loc1_.scale;
               this.§7a§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §51§() : void
      {
         this.§2O§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§ !w§ < 0)
         {
            this.§`V§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§2F§.§&!>§ / this.§2F§.§]l§) * this.§ !w§;
         if(_loc1_ != this.§"!R§)
         {
            this.§"!R§ = _loc1_;
            this.§@!m§ = this.§"!R§;
            this.§2!m§();
         }
      }
      
      public function §`V§() : void
      {
         if(this.§'P§)
         {
            this.§ !w§ = this.§'P§.getFrameCount();
         }
      }
      
      public function §1L§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§1O§ = new GlowFilter();
         this.§1O§.blurX = param2;
         this.§1O§.blurY = param3;
         this.§1O§.color = param1;
      }
      
      public function §?-§() : void
      {
         this.§1O§ = null;
      }
      
      public function §7!c§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§2F§.§;a§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§?!I§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §,!u§(param1:Number) : void
      {
         var _loc2_:int = this.§?_§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§?_§[_loc2_].updateLifeTime(param1);
            if(this.§?_§[_loc2_].lifeTime < 0)
            {
               this.§?!I§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §?!I§(param1:int) : void
      {
         if(!this.§59§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§1C§ = this.§59§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§[M§ = null;
         if(param1 < this.§?_§.length)
         {
            (_loc5_ = this.§?_§[param1]).§+q§(_loc4_);
            _loc5_.§@i§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §[M§(_loc3_.texture,_loc4_);
            this.§?_§.push(_loc5_);
            this.§2O§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§7a§.width / 2 + Math.random() * this.§7a§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§7a§.height / 2 + Math.random() * this.§7a§.height;
      }
      
      public function §"§() : §-§
      {
         return this.§7a§;
      }
   }
}
