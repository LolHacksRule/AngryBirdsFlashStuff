package § ""§
{
   import §+L§.b2Vec2;
   import §1!Y§.§8C§;
   import §1!Y§.Sprite;
   import §1!v§.§,!7§;
   import §1!v§.§@%§;
   import §8q§.§!g§;
   import §[_§.§'!N§;
   import §[_§.§+!P§;
   import §[_§.§6G§;
   import §^i§.Texture;
   import flash.filters.GlowFilter;
   
   public class §<"6§
   {
      
      public static const §3I§:Number = 1000;
      
      public static const §+Q§:Number = 500;
      
      private static var §#c§:Array = null;
       
      
      private var §'D§:§%,§;
      
      public var §9!p§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §+!I§:Number;
      
      public var §8!r§:Number;
      
      public var §[6§:int = -1;
      
      private var §31§:String;
      
      private var §5O§:§+!P§;
      
      private var §6!B§:§+!P§;
      
      private var §&!T§:§8C§;
      
      private var §?!5§:Number = 0;
      
      private var §;",§:Number = 0;
      
      public var §2!%§:int = -1;
      
      private var § !e§:int = -1;
      
      private var §8!b§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §"!X§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §!z§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §^"-§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §,G§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §?q§:String = "fly";
      
      public var §#8§:String = "fly_yell";
      
      public var §`p§:GlowFilter;
      
      private var § r§:Vector.<§,!7§>;
      
      private var §%t§:§+!P§;
      
      private var § "5§:Sprite = null;
      
      private var §]Z§:§@%§;
      
      public function §<"6§(param1:§%,§, param2:Sprite, param3:§@%§)
      {
         super();
         this.§]Z§ = param3;
         this.§'D§ = param1;
         this.§31§ = this.§'D§.§"g§;
         this.§ r§ = new Vector.<§,!7§>();
         this.§ "5§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,!7§ = null;
         this.§=!Y§();
         if(this.§ r§)
         {
            while(this.§ r§.length > 0)
            {
               _loc1_ = this.§ r§.pop();
               _loc1_.dispose();
            }
            this.§ r§ = null;
         }
      }
      
      public function §"@§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§[6§ = param1;
         this.§8!r§ = param2;
         this.§'!7§();
      }
      
      public function §#O§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+!I§ = 1;
            return;
         }
         this.§+!I§ = this.mW / this.mH;
         if(this.§+!I§ < 1)
         {
            this.§+!I§ = 1 / this.§+!I§;
         }
         this.§+!I§ = Math.min(11,this.§+!I§);
      }
      
      public function §#"$§(param1:§6G§) : Boolean
      {
         var _loc2_:§'!N§ = null;
         var _loc3_:Texture = null;
         if(this.§'D§.isGround())
         {
            return false;
         }
         this.§%t§ = param1.§5m§("SPARKLES");
         this.§5O§ = param1.§5m§(this.§31§);
         this.§6!B§ = this.§5O§;
         var _loc4_:Number = 1;
         if(this.§6!B§)
         {
            _loc2_ = this.§6!B§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§]Z§.§while§.§?!4§();
         }
         this.§&!T§ = new §8C§(_loc3_);
         if(_loc2_)
         {
            this.§&!T§.x = -_loc2_.pivotX;
            this.§&!T§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§&!T§.x = -this.§&!T§.width / 2;
            this.§&!T§.y = -this.§&!T§.height / 2;
         }
         this.§&!T§.scaleX = _loc4_;
         this.§&!T§.scaleY = _loc4_;
         this.mW = this.§&!T§.width / 2;
         this.mH = this.§&!T§.height / 2;
         this.§ "5§.addChild(this.§&!T§);
         return true;
      }
      
      public function §!S§(param1:§!g§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§'m§)
         {
            case §!g§.§&!U§:
               _loc2_ = param1.§<&§();
               _loc3_ = _loc2_[0];
               this.§?!5§ = _loc3_.x / §@%§.§?k§;
               this.§;",§ = _loc3_.y / §@%§.§?k§;
               break;
            case §!g§.§<!t§:
         }
         this.§7!2§();
      }
      
      public function §,h§() : Array
      {
         return § I§.§,h§(null,this.§'D§.§^6§());
      }
      
      public function §8!_§() : Array
      {
         return § I§.§8!_§(null,this.§'D§.§^6§());
      }
      
      public function §#Y§() : Array
      {
         return § I§.§#Y§(null);
      }
      
      public function §'!7§() : void
      {
      }
      
      public function §;!Z§(param1:Number) : void
      {
         this.§ "5§.scaleX = this.§ "5§.scaleY = param1;
      }
      
      public function §7!2§() : void
      {
         var _loc1_:§'!N§ = null;
         if(!this.§5O§)
         {
            return;
         }
         if(this.§!z§)
         {
            this.§8!b§ = 1;
         }
         else if(this.§'D§.getSpecialAnimationProgress() >= 0 && this.§5O§.getSubAnimation(this.§"!X§))
         {
            this.§6!B§ = this.§5O§.getSubAnimation(this.§"!X§);
            this.§8!b§ = this.§6!B§.getFrameCount() * this.§'D§.getSpecialAnimationProgress();
            if(this.§8!b§ == this.§6!B§.getFrameCount() - 1 && this.§'D§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§8!b§;
            }
         }
         else if(this.mTryToSpecial && this.§5O§.getSubAnimation(this.§"!X§))
         {
            this.§6!B§ = this.§5O§.getSubAnimation(this.§"!X§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§5O§.getSubAnimation(this.§#8§))
         {
            this.§6!B§ = this.§5O§.getSubAnimation(this.§#8§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§5O§.getSubAnimation(this.§^"-§))
         {
            this.§6!B§ = this.§5O§.getSubAnimation(this.§^"-§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§5O§.getSubAnimation(this.§,G§))
         {
            this.§6!B§ = this.§5O§.getSubAnimation(this.§,G§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§5O§.getSubAnimation(this.§?q§))
         {
            this.§6!B§ = this.§5O§.getSubAnimation(this.§?q§);
            this.mIsFlying = true;
         }
         else
         {
            this.§6!B§ = this.§5O§;
         }
         if(this.§6!B§)
         {
            _loc1_ = this.§6!B§.getFrame(this.§8!b§);
            if(this.§&!T§ && _loc1_)
            {
               this.§&!T§.texture = _loc1_.texture;
               this.§&!T§.x = -_loc1_.pivotX - this.§?!5§;
               this.§&!T§.y = -_loc1_.pivotY - this.§;",§;
               this.§&!T§.scaleX = _loc1_.scale;
               this.§&!T§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §2!I§() : void
      {
         this.§ "5§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§2!%§ < 0)
         {
            this.§1!^§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§'D§.§=!,§ / this.§'D§.§,!f§) * this.§2!%§;
         if(_loc1_ != this.§ !e§)
         {
            this.§ !e§ = _loc1_;
            this.§8!b§ = this.§ !e§;
            this.§7!2§();
         }
      }
      
      public function §1!^§() : void
      {
         if(this.§5O§)
         {
            this.§2!%§ = this.§5O§.getFrameCount();
         }
      }
      
      public function §<$§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§`p§ = new GlowFilter();
         this.§`p§.blurX = param2;
         this.§`p§.blurY = param3;
         this.§`p§.color = param1;
      }
      
      public function §=!Y§() : void
      {
         this.§`p§ = null;
      }
      
      public function §-!5§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§'D§.§3C§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§#!"§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §+Z§(param1:Number) : void
      {
         var _loc2_:int = this.§ r§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§ r§[_loc2_].updateLifeTime(param1);
            if(this.§ r§[_loc2_].lifeTime < 0)
            {
               this.§#!"§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §#!"§(param1:int) : void
      {
         if(!this.§%t§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§'!N§ = this.§%t§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§,!7§ = null;
         if(param1 < this.§ r§.length)
         {
            (_loc5_ = this.§ r§[param1]).§@`§(_loc4_);
            _loc5_.§,!p§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §,!7§(_loc3_.texture,_loc4_);
            this.§ r§.push(_loc5_);
            this.§ "5§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§&!T§.width / 2 + Math.random() * this.§&!T§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§&!T§.height / 2 + Math.random() * this.§&!T§.height;
      }
      
      public function §[1§() : §8C§
      {
         return this.§&!T§;
      }
   }
}
