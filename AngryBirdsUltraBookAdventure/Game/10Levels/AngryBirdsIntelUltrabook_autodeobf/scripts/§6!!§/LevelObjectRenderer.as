package §6!!§
{
   import §#!,§.§0!b§;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §,!7§.Animation;
   import §,!7§.AnimationManager;
   import §6!J§.Texture;
   import §>!8§.b2Vec2;
   import §]!@§.LevelMain;
   import §]!@§.§^x§;
   import flash.filters.GlowFilter;
   import §package§.LevelItemShape;
   
   public class LevelObjectRenderer
   {
      
      public static const §9I§:Number = 1000;
      
      public static const §;B§:Number = 500;
      
      private static var §&!Z§:Array = null;
       
      
      private var §-!_§:LevelObject;
      
      public var §3[§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var § !S§:Number;
      
      public var §>!M§:Number;
      
      public var §"i§:int = -1;
      
      private var § !!§:String;
      
      private var §;]§:Animation;
      
      private var §2!;§:Animation;
      
      private var §'!Q§:§0!b§;
      
      private var §8!D§:Number = 0;
      
      private var §8!1§:Number = 0;
      
      public var §!a§:int = -1;
      
      private var §7!G§:int = -1;
      
      private var §>!§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §=7§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §&[§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §#!3§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §^!4§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §;!i§:String = "fly";
      
      public var § p§:String = "fly_yell";
      
      public var §+Q§:GlowFilter;
      
      private var §&!H§:Vector.<§^x§>;
      
      private var §3!W§:Animation;
      
      private var §"!,§:Sprite = null;
      
      private var §`s§:LevelMain;
      
      public function LevelObjectRenderer(param1:LevelObject, param2:Sprite, param3:LevelMain)
      {
         super();
         this.§`s§ = param3;
         this.§-!_§ = param1;
         this.§ !!§ = this.§-!_§.§ I§;
         this.§&!H§ = new Vector.<§^x§>();
         this.§"!,§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^x§ = null;
         this.§1O§();
         if(this.§&!H§)
         {
            while(this.§&!H§.length > 0)
            {
               _loc1_ = this.§&!H§.pop();
               _loc1_.dispose();
            }
            this.§&!H§ = null;
         }
      }
      
      public function §]!P§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§"i§ = param1;
         this.§>!M§ = param2;
         this.§8!H§();
      }
      
      public function §%v§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !S§ = 1;
            return;
         }
         this.§ !S§ = this.mW / this.mH;
         if(this.§ !S§ < 1)
         {
            this.§ !S§ = 1 / this.§ !S§;
         }
         this.§ !S§ = Math.min(11,this.§ !S§);
      }
      
      public function §&`§(param1:AnimationManager) : Boolean
      {
         var _loc2_:§ H§ = null;
         var _loc3_:Texture = null;
         if(this.§-!_§.isGround())
         {
            return false;
         }
         this.§3!W§ = param1.getAnimation("SPARKLES");
         this.§;]§ = param1.getAnimation(this.§ !!§);
         this.§2!;§ = this.§;]§;
         var _loc4_:Number = 1;
         if(this.§2!;§)
         {
            _loc2_ = this.§2!;§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§`s§.textureManager.§&R§();
         }
         this.§'!Q§ = new §0!b§(_loc3_);
         if(_loc2_)
         {
            this.§'!Q§.x = -_loc2_.pivotX;
            this.§'!Q§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§'!Q§.x = -this.§'!Q§.width / 2;
            this.§'!Q§.y = -this.§'!Q§.height / 2;
         }
         this.§'!Q§.scaleX = _loc4_;
         this.§'!Q§.scaleY = _loc4_;
         this.mW = this.§'!Q§.width / 2;
         this.mH = this.§'!Q§.height / 2;
         this.§"!,§.addChild(this.§'!Q§);
         return true;
      }
      
      public function §`!I§(param1:LevelItemShape) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§&! §)
         {
            case LevelItemShape.§1<§:
               _loc2_ = param1.§?!0§();
               _loc3_ = _loc2_[0];
               this.§8!D§ = _loc3_.x / LevelMain.§@!d§;
               this.§8!1§ = _loc3_.y / LevelMain.§@!d§;
               break;
            case LevelItemShape.§!!&§:
         }
         this.§@!2§();
      }
      
      public function §=!P§() : Array
      {
         return LevelObjectMovieClipHelper.§=!P§(null,this.§-!_§.§9s§());
      }
      
      public function §+!Y§() : Array
      {
         return LevelObjectMovieClipHelper.§+!Y§(null,this.§-!_§.§9s§());
      }
      
      public function §86§() : Array
      {
         return LevelObjectMovieClipHelper.§86§(null);
      }
      
      public function §8!H§() : void
      {
      }
      
      public function §<,§(param1:Number) : void
      {
         this.§"!,§.scaleX = this.§"!,§.scaleY = param1;
      }
      
      public function §@!2§() : void
      {
         var _loc1_:§ H§ = null;
         if(!this.§;]§)
         {
            return;
         }
         if(this.§&[§)
         {
            this.§>!§ = 1;
         }
         else if(this.§-!_§.getSpecialAnimationProgress() >= 0 && this.§;]§.getSubAnimation(this.§=7§))
         {
            this.§2!;§ = this.§;]§.getSubAnimation(this.§=7§);
            this.§>!§ = this.§2!;§.getFrameCount() * this.§-!_§.getSpecialAnimationProgress();
            if(this.§>!§ == this.§2!;§.getFrameCount() - 1 && this.§-!_§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§>!§;
            }
         }
         else if(this.mTryToSpecial && this.§;]§.getSubAnimation(this.§=7§))
         {
            this.§2!;§ = this.§;]§.getSubAnimation(this.§=7§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§;]§.getSubAnimation(this.§ p§))
         {
            this.§2!;§ = this.§;]§.getSubAnimation(this.§ p§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§;]§.getSubAnimation(this.§#!3§))
         {
            this.§2!;§ = this.§;]§.getSubAnimation(this.§#!3§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§;]§.getSubAnimation(this.§^!4§))
         {
            this.§2!;§ = this.§;]§.getSubAnimation(this.§^!4§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§;]§.getSubAnimation(this.§;!i§))
         {
            this.§2!;§ = this.§;]§.getSubAnimation(this.§;!i§);
            this.mIsFlying = true;
         }
         else
         {
            this.§2!;§ = this.§;]§;
         }
         if(this.§2!;§)
         {
            _loc1_ = this.§2!;§.getFrame(this.§>!§);
            if(this.§'!Q§ && _loc1_)
            {
               this.§'!Q§.texture = _loc1_.texture;
               this.§'!Q§.x = -_loc1_.pivotX - this.§8!D§;
               this.§'!Q§.y = -_loc1_.pivotY - this.§8!1§;
               this.§'!Q§.scaleX = _loc1_.scale;
               this.§'!Q§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §9!Q§() : void
      {
         this.§"!,§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§!a§ < 0)
         {
            this.§8!i§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§-!_§.§3W§ / this.§-!_§.§>!"§) * this.§!a§;
         if(_loc1_ != this.§7!G§)
         {
            this.§7!G§ = _loc1_;
            this.§>!§ = this.§7!G§;
            this.§@!2§();
         }
      }
      
      public function §8!i§() : void
      {
         if(this.§;]§)
         {
            this.§!a§ = this.§;]§.getFrameCount();
         }
      }
      
      public function §4!W§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§+Q§ = new GlowFilter();
         this.§+Q§.blurX = param2;
         this.§+Q§.blurY = param3;
         this.§+Q§.color = param1;
      }
      
      public function §1O§() : void
      {
         this.§+Q§ = null;
      }
      
      public function §%H§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§-!_§.§0!"§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§6!j§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §;q§(param1:Number) : void
      {
         var _loc2_:int = this.§&!H§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§&!H§[_loc2_].updateLifeTime(param1);
            if(this.§&!H§[_loc2_].lifeTime < 0)
            {
               this.§6!j§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §6!j§(param1:int) : void
      {
         if(!this.§3!W§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§ H§ = this.§3!W§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§^x§ = null;
         if(param1 < this.§&!H§.length)
         {
            _loc5_ = this.§&!H§[param1];
            _loc5_.§+! §(_loc4_);
            _loc5_.§^Y§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §^x§(_loc3_.texture,_loc4_);
            this.§&!H§.push(_loc5_);
            this.§"!,§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§'!Q§.width / 2 + Math.random() * this.§'!Q§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§'!Q§.height / 2 + Math.random() * this.§'!Q§.height;
      }
      
      public function §>!a§() : §0!b§
      {
         return this.§'!Q§;
      }
   }
}
