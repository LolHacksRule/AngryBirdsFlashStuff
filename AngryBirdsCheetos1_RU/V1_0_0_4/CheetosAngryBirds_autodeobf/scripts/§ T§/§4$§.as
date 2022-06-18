package § T§
{
   import §1!A§.§;a§;
   import §1!A§.Sprite;
   import §5!K§.b2Vec2;
   import §5x§.override;
   import §7z§.§@!!§;
   import §7z§.§]!-§;
   import §8K§.§,!'§;
   import §8K§.§4i§;
   import §8K§.§9!S§;
   import §^n§.Texture;
   import flash.filters.GlowFilter;
   
   public class §4$§
   {
      
      public static const §,!;§:Number = 1000;
      
      public static const §-!6§:Number = 500;
      
      private static var §3!1§:Array = null;
       
      
      private var §true§:§"!2§;
      
      public var §;!S§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §@%§:Number;
      
      public var §]$§:Number;
      
      public var §-!4§:int = -1;
      
      private var §+!0§:String;
      
      private var §'!G§:§4i§;
      
      private var §extends§:§4i§;
      
      private var §2!L§:§;a§;
      
      private var §5!J§:Number = 0;
      
      private var §&J§:Number = 0;
      
      public var §[!,§:int = -1;
      
      private var §]u§:int = -1;
      
      private var §4a§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §[§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §@L§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §6^§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §,Y§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §-!R§:String = "fly";
      
      public var §70§:String = "fly_yell";
      
      public var §+8§:GlowFilter;
      
      private var §1!>§:Vector.<§@!!§>;
      
      private var §%!!§:§4i§;
      
      private var §0!5§:Sprite = null;
      
      private var §^'§:§]!-§;
      
      public function §4$§(param1:§"!2§, param2:Sprite, param3:§]!-§)
      {
         super();
         this.§^'§ = param3;
         this.§true§ = param1;
         this.§+!0§ = this.§true§.§9@§;
         this.§1!>§ = new Vector.<§@!!§>();
         this.§0!5§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@!!§ = null;
         this.§3F§();
         if(this.§1!>§)
         {
            while(this.§1!>§.length > 0)
            {
               _loc1_ = this.§1!>§.pop();
               _loc1_.dispose();
            }
            this.§1!>§ = null;
         }
      }
      
      public function §=!<§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§-!4§ = param1;
         this.§]$§ = param2;
         this.§>!-§();
      }
      
      public function §5!%§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@%§ = 1;
            return;
         }
         this.§@%§ = this.mW / this.mH;
         if(this.§@%§ < 1)
         {
            this.§@%§ = 1 / this.§@%§;
         }
         this.§@%§ = Math.min(11,this.§@%§);
      }
      
      public function §'!&§(param1:§,!'§) : Boolean
      {
         var _loc2_:§9!S§ = null;
         var _loc3_:Texture = null;
         if(this.§true§.isGround())
         {
            return false;
         }
         this.§%!!§ = param1.§<]§("SPARKLES");
         this.§'!G§ = param1.§<]§(this.§+!0§);
         this.§extends§ = this.§'!G§;
         var _loc4_:Number = 1;
         if(this.§extends§)
         {
            _loc2_ = this.§extends§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§^'§.§^!"§.§,!^§();
         }
         this.§2!L§ = new §;a§(_loc3_);
         if(_loc2_)
         {
            this.§2!L§.x = -_loc2_.pivotX;
            this.§2!L§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§2!L§.x = -this.§2!L§.width / 2;
            this.§2!L§.y = -this.§2!L§.height / 2;
         }
         this.§2!L§.scaleX = _loc4_;
         this.§2!L§.scaleY = _loc4_;
         this.mW = this.§2!L§.width / 2;
         this.mH = this.§2!L§.height / 2;
         this.§0!5§.addChild(this.§2!L§);
         return true;
      }
      
      public function §]!D§(param1:override) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§#!Z§)
         {
            case override.§&d§:
               _loc2_ = param1.§26§();
               _loc3_ = _loc2_[0];
               this.§5!J§ = _loc3_.x / §]!-§.§>C§;
               this.§&J§ = _loc3_.y / §]!-§.§>C§;
               break;
            case override.§[6§:
         }
         this.§=^§();
      }
      
      public function §]K§() : Array
      {
         return §'!S§.§]K§(null,this.§true§.§for§());
      }
      
      public function §0Y§() : Array
      {
         return §'!S§.§0Y§(null,this.§true§.§for§());
      }
      
      public function §"!B§() : Array
      {
         return §'!S§.§"!B§(null);
      }
      
      public function §>!-§() : void
      {
      }
      
      public function §5!9§(param1:Number) : void
      {
         this.§0!5§.scaleX = this.§0!5§.scaleY = param1;
      }
      
      public function §=^§() : void
      {
         var _loc1_:§9!S§ = null;
         if(!this.§'!G§)
         {
            return;
         }
         if(this.§@L§)
         {
            this.§4a§ = 1;
         }
         else if(this.§true§.getSpecialAnimationProgress() >= 0 && this.§'!G§.getSubAnimation(this.§[§))
         {
            this.§extends§ = this.§'!G§.getSubAnimation(this.§[§);
            this.§4a§ = this.§extends§.getFrameCount() * this.§true§.getSpecialAnimationProgress();
            if(this.§4a§ == this.§extends§.getFrameCount() - 1 && this.§true§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§4a§;
            }
         }
         else if(this.mTryToSpecial && this.§'!G§.getSubAnimation(this.§[§))
         {
            this.§extends§ = this.§'!G§.getSubAnimation(this.§[§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§'!G§.getSubAnimation(this.§70§))
         {
            this.§extends§ = this.§'!G§.getSubAnimation(this.§70§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§'!G§.getSubAnimation(this.§6^§))
         {
            this.§extends§ = this.§'!G§.getSubAnimation(this.§6^§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§'!G§.getSubAnimation(this.§,Y§))
         {
            this.§extends§ = this.§'!G§.getSubAnimation(this.§,Y§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§'!G§.getSubAnimation(this.§-!R§))
         {
            this.§extends§ = this.§'!G§.getSubAnimation(this.§-!R§);
            this.mIsFlying = true;
         }
         else
         {
            this.§extends§ = this.§'!G§;
         }
         if(this.§extends§)
         {
            _loc1_ = this.§extends§.getFrame(this.§4a§);
            if(this.§2!L§ && _loc1_)
            {
               this.§2!L§.texture = _loc1_.texture;
               this.§2!L§.x = -_loc1_.pivotX - this.§5!J§;
               this.§2!L§.y = -_loc1_.pivotY - this.§&J§;
               this.§2!L§.scaleX = _loc1_.scale;
               this.§2!L§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §]!I§() : void
      {
         this.§0!5§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§[!,§ < 0)
         {
            this.§%e§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§true§.§'!"§ / this.§true§.§get §) * this.§[!,§;
         if(_loc1_ != this.§]u§)
         {
            this.§]u§ = _loc1_;
            this.§4a§ = this.§]u§;
            this.§=^§();
         }
      }
      
      public function §%e§() : void
      {
         if(this.§'!G§)
         {
            this.§[!,§ = this.§'!G§.getFrameCount();
         }
      }
      
      public function §`!R§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§+8§ = new GlowFilter();
         this.§+8§.blurX = param2;
         this.§+8§.blurY = param3;
         this.§+8§.color = param1;
      }
      
      public function §3F§() : void
      {
         this.§+8§ = null;
      }
      
      public function §+6§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§true§.§,!E§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§;"§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §3!C§(param1:Number) : void
      {
         var _loc2_:int = this.§1!>§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§1!>§[_loc2_].updateLifeTime(param1);
            if(this.§1!>§[_loc2_].lifeTime < 0)
            {
               this.§;"§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §;"§(param1:int) : void
      {
         if(!this.§%!!§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§9!S§ = this.§%!!§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§@!!§ = null;
         if(param1 < this.§1!>§.length)
         {
            (_loc5_ = this.§1!>§[param1]).§]!5§(_loc4_);
            _loc5_.§&!H§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §@!!§(_loc3_.texture,_loc4_);
            this.§1!>§.push(_loc5_);
            this.§0!5§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§2!L§.width / 2 + Math.random() * this.§2!L§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§2!L§.height / 2 + Math.random() * this.§2!L§.height;
      }
      
      public function §[!O§() : §;a§
      {
         return this.§2!L§;
      }
   }
}
