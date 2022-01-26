package §]!+§
{
   import §!!V§.§&I§;
   import §!!V§.§continue§;
   import §&!5§.§'!$§;
   import §&!5§.Sprite;
   import §&!B§.b2Vec2;
   import §5!$§.§!`§;
   import §9!2§.§0!5§;
   import §9!2§.§<j§;
   import §9!2§.§@!!§;
   import flash.filters.GlowFilter;
   import §switch§.Texture;
   
   public class §%j§
   {
      
      public static const §8f§:Number = 1000;
      
      public static const §]J§:Number = 500;
      
      private static var §8!-§:Array = null;
       
      
      private var §'U§:§";§;
      
      public var §2!]§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §73§:Number;
      
      public var §93§:Number;
      
      public var §]9§:int = -1;
      
      private var §-!7§:String;
      
      private var §^B§:§@!!§;
      
      private var §2E§:§@!!§;
      
      private var §3!2§:§'!$§;
      
      private var §0l§:Number = 0;
      
      private var §6!F§:Number = 0;
      
      public var §2!D§:int = -1;
      
      private var § ^§:int = -1;
      
      private var § §:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §!!,§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §33§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §-f§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §]!,§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §5_§:String = "fly";
      
      public var §!V§:String = "fly_yell";
      
      public var §<!H§:GlowFilter;
      
      private var static:Vector.<§continue§>;
      
      private var §"!?§:§@!!§;
      
      private var §6`§:Sprite = null;
      
      private var §%v§:§&I§;
      
      public function §%j§(param1:§";§, param2:Sprite, param3:§&I§)
      {
         super();
         this.§%v§ = param3;
         this.§'U§ = param1;
         this.§-!7§ = this.§'U§.§+!J§;
         this.static = new Vector.<§continue§>();
         this.§6`§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§continue§ = null;
         this.§%[§();
         if(this.static)
         {
            while(this.static.length > 0)
            {
               _loc1_ = this.static.pop();
               _loc1_.dispose();
            }
            this.static = null;
         }
      }
      
      public function §`7§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§]9§ = param1;
         this.§93§ = param2;
         this.§5!Y§();
      }
      
      public function §>]§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§73§ = 1;
            return;
         }
         this.§73§ = this.mW / this.mH;
         if(this.§73§ < 1)
         {
            this.§73§ = 1 / this.§73§;
         }
         this.§73§ = Math.min(11,this.§73§);
      }
      
      public function §8,§(param1:§0!5§) : Boolean
      {
         var _loc2_:§<j§ = null;
         var _loc3_:Texture = null;
         if(this.§'U§.isGround())
         {
            return false;
         }
         this.§"!?§ = param1.§@T§("SPARKLES");
         this.§^B§ = param1.§@T§(this.§-!7§);
         this.§2E§ = this.§^B§;
         var _loc4_:Number = 1;
         if(this.§2E§)
         {
            _loc2_ = this.§2E§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§%v§.§2!#§.§1!!§();
         }
         this.§3!2§ = new §'!$§(_loc3_);
         if(_loc2_)
         {
            this.§3!2§.x = -_loc2_.pivotX;
            this.§3!2§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§3!2§.x = -this.§3!2§.width / 2;
            this.§3!2§.y = -this.§3!2§.height / 2;
         }
         this.§3!2§.scaleX = _loc4_;
         this.§3!2§.scaleY = _loc4_;
         this.mW = this.§3!2§.width / 2;
         this.mH = this.§3!2§.height / 2;
         this.§6`§.addChild(this.§3!2§);
         return true;
      }
      
      public function §6!_§(param1:§!`§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§ <§)
         {
            case §!`§.§7q§:
               _loc2_ = param1.§^D§();
               _loc3_ = _loc2_[0];
               this.§0l§ = _loc3_.x / §&I§.§]!H§;
               this.§6!F§ = _loc3_.y / §&I§.§]!H§;
               break;
            case §!`§.§65§:
         }
         this.§#!<§();
      }
      
      public function §+Q§() : Array
      {
         return §`!O§.§+Q§(null,this.§'U§.§'?§());
      }
      
      public function §95§() : Array
      {
         return §`!O§.§95§(null,this.§'U§.§'?§());
      }
      
      public function §1!'§() : Array
      {
         return §`!O§.§1!'§(null);
      }
      
      public function §5!Y§() : void
      {
      }
      
      public function §`!R§(param1:Number) : void
      {
         this.§6`§.scaleX = this.§6`§.scaleY = param1;
      }
      
      public function §#!<§() : void
      {
         var _loc1_:§<j§ = null;
         if(!this.§^B§)
         {
            return;
         }
         if(this.§33§)
         {
            this.§ § = 1;
         }
         else if(this.§'U§.getSpecialAnimationProgress() >= 0 && this.§^B§.getSubAnimation(this.§!!,§))
         {
            this.§2E§ = this.§^B§.getSubAnimation(this.§!!,§);
            this.§ § = this.§2E§.getFrameCount() * this.§'U§.getSpecialAnimationProgress();
            if(this.§ § == this.§2E§.getFrameCount() - 1 && this.§'U§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§ §;
            }
         }
         else if(this.mTryToSpecial && this.§^B§.getSubAnimation(this.§!!,§))
         {
            this.§2E§ = this.§^B§.getSubAnimation(this.§!!,§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§^B§.getSubAnimation(this.§!V§))
         {
            this.§2E§ = this.§^B§.getSubAnimation(this.§!V§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§^B§.getSubAnimation(this.§-f§))
         {
            this.§2E§ = this.§^B§.getSubAnimation(this.§-f§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§^B§.getSubAnimation(this.§]!,§))
         {
            this.§2E§ = this.§^B§.getSubAnimation(this.§]!,§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§^B§.getSubAnimation(this.§5_§))
         {
            this.§2E§ = this.§^B§.getSubAnimation(this.§5_§);
            this.mIsFlying = true;
         }
         else
         {
            this.§2E§ = this.§^B§;
         }
         if(this.§2E§)
         {
            _loc1_ = this.§2E§.getFrame(this.§ §);
            if(this.§3!2§ && _loc1_)
            {
               this.§3!2§.texture = _loc1_.texture;
               this.§3!2§.x = -_loc1_.pivotX - this.§0l§;
               this.§3!2§.y = -_loc1_.pivotY - this.§6!F§;
               this.§3!2§.scaleX = _loc1_.scale;
               this.§3!2§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §5c§() : void
      {
         this.§6`§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§2!D§ < 0)
         {
            this.§!@§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§'U§.§0!C§ / this.§'U§.§6!;§) * this.§2!D§;
         if(_loc1_ != this.§ ^§)
         {
            this.§ ^§ = _loc1_;
            this.§ § = this.§ ^§;
            this.§#!<§();
         }
      }
      
      public function §!@§() : void
      {
         if(this.§^B§)
         {
            this.§2!D§ = this.§^B§.getFrameCount();
         }
      }
      
      public function §`!#§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§<!H§ = new GlowFilter();
         this.§<!H§.blurX = param2;
         this.§<!H§.blurY = param3;
         this.§<!H§.color = param1;
      }
      
      public function §%[§() : void
      {
         this.§<!H§ = null;
      }
      
      public function §#=§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§'U§.§=5§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§6!=§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §?!W§(param1:Number) : void
      {
         var _loc2_:int = this.static.length - 1;
         while(_loc2_ >= 0)
         {
            this.static[_loc2_].updateLifeTime(param1);
            if(this.static[_loc2_].lifeTime < 0)
            {
               this.§6!=§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §6!=§(param1:int) : void
      {
         if(!this.§"!?§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§<j§ = this.§"!?§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§continue§ = null;
         if(param1 < this.static.length)
         {
            (_loc5_ = this.static[param1]).§,!I§(_loc4_);
            _loc5_.§1!$§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §continue§(_loc3_.texture,_loc4_);
            this.static.push(_loc5_);
            this.§6`§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§3!2§.width / 2 + Math.random() * this.§3!2§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§3!2§.height / 2 + Math.random() * this.§3!2§.height;
      }
      
      public function §2!;§() : §'!$§
      {
         return this.§3!2§;
      }
   }
}
