package §3p§
{
   import §&L§.b2Vec2;
   import §,!_§.§;K§;
   import §,!_§.Animation;
   import §,!_§.AnimationManager;
   import §2!H§.§?Y§;
   import §2!H§.LevelMain;
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   import §7i§.Texture;
   import §;T§.LevelItemShape;
   import flash.filters.GlowFilter;
   
   public class LevelObjectRenderer
   {
      
      public static const §9!g§:Number = 1000;
      
      public static const §[W§:Number = 500;
      
      private static var §6H§:Array = null;
       
      
      private var §,,§:LevelObject;
      
      public var §^!;§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §]N§:Number;
      
      public var §1!T§:Number;
      
      public var §,R§:int = -1;
      
      private var §[!9§:String;
      
      private var §=n§:Animation;
      
      private var §';§:Animation;
      
      private var §"!P§:§-m§;
      
      private var §;!@§:Number = 0;
      
      private var §3C§:Number = 0;
      
      public var §0!;§:int = -1;
      
      private var §,d§:int = -1;
      
      private var §%!H§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §>!&§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §1L§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §=m§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var § !Z§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §0!?§:String = "fly";
      
      public var §'R§:String = "fly_yell";
      
      public var §'Y§:GlowFilter;
      
      private var §9h§:Vector.<§?Y§>;
      
      private var §5D§:Animation;
      
      private var §'6§:Sprite = null;
      
      private var §"!>§:LevelMain;
      
      public function LevelObjectRenderer(param1:LevelObject, param2:Sprite, param3:LevelMain)
      {
         super();
         this.§"!>§ = param3;
         this.§,,§ = param1;
         this.§[!9§ = this.§,,§.§#>§;
         this.§9h§ = new Vector.<§?Y§>();
         this.§'6§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?Y§ = null;
         this.§1!&§();
         if(this.§9h§)
         {
            while(this.§9h§.length > 0)
            {
               _loc1_ = this.§9h§.pop();
               _loc1_.dispose();
            }
            this.§9h§ = null;
         }
      }
      
      public function §,!=§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§,R§ = param1;
         this.§1!T§ = param2;
         this.§=u§();
      }
      
      public function §1!?§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]N§ = 1;
            return;
         }
         this.§]N§ = this.mW / this.mH;
         if(this.§]N§ < 1)
         {
            this.§]N§ = 1 / this.§]N§;
         }
         this.§]N§ = Math.min(11,this.§]N§);
      }
      
      public function §?E§(param1:AnimationManager) : Boolean
      {
         var _loc2_:§;K§ = null;
         var _loc3_:Texture = null;
         if(this.§,,§.isGround())
         {
            return false;
         }
         this.§5D§ = param1.getAnimation("SPARKLES");
         this.§=n§ = param1.getAnimation(this.§[!9§);
         this.§';§ = this.§=n§;
         var _loc4_:Number = 1;
         if(this.§';§)
         {
            _loc2_ = this.§';§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§"!>§.textureManager.§;?§();
         }
         this.§"!P§ = new §-m§(_loc3_);
         if(_loc2_)
         {
            this.§"!P§.x = -_loc2_.pivotX;
            this.§"!P§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§"!P§.x = -this.§"!P§.width / 2;
            this.§"!P§.y = -this.§"!P§.height / 2;
         }
         this.§"!P§.scaleX = _loc4_;
         this.§"!P§.scaleY = _loc4_;
         this.mW = this.§"!P§.width / 2;
         this.mH = this.§"!P§.height / 2;
         this.§'6§.addChild(this.§"!P§);
         return true;
      }
      
      public function §#R§(param1:LevelItemShape) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§"!5§)
         {
            case LevelItemShape.§,!4§:
               _loc2_ = param1.§6!^§();
               _loc3_ = _loc2_[0];
               this.§;!@§ = _loc3_.x / LevelMain.§8N§;
               this.§3C§ = _loc3_.y / LevelMain.§8N§;
               break;
            case LevelItemShape.§ h§:
         }
         this.§<3§();
      }
      
      public function §&!^§() : Array
      {
         return LevelObjectMovieClipHelper.§&!^§(null,this.§,,§.§9!&§());
      }
      
      public function §7I§() : Array
      {
         return LevelObjectMovieClipHelper.§7I§(null,this.§,,§.§9!&§());
      }
      
      public function §4N§() : Array
      {
         return LevelObjectMovieClipHelper.§4N§(null);
      }
      
      public function §=u§() : void
      {
      }
      
      public function §+!=§(param1:Number) : void
      {
         this.§'6§.scaleX = this.§'6§.scaleY = param1;
      }
      
      public function §<3§() : void
      {
         var _loc1_:§;K§ = null;
         if(!this.§=n§)
         {
            return;
         }
         if(this.§1L§)
         {
            this.§%!H§ = 1;
         }
         else if(this.§,,§.getSpecialAnimationProgress() >= 0 && this.§=n§.getSubAnimation(this.§>!&§))
         {
            this.§';§ = this.§=n§.getSubAnimation(this.§>!&§);
            this.§%!H§ = this.§';§.getFrameCount() * this.§,,§.getSpecialAnimationProgress();
            if(this.§%!H§ == this.§';§.getFrameCount() - 1 && this.§,,§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§%!H§;
            }
         }
         else if(this.mTryToSpecial && this.§=n§.getSubAnimation(this.§>!&§))
         {
            this.§';§ = this.§=n§.getSubAnimation(this.§>!&§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§=n§.getSubAnimation(this.§'R§))
         {
            this.§';§ = this.§=n§.getSubAnimation(this.§'R§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§=n§.getSubAnimation(this.§=m§))
         {
            this.§';§ = this.§=n§.getSubAnimation(this.§=m§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§=n§.getSubAnimation(this.§ !Z§))
         {
            this.§';§ = this.§=n§.getSubAnimation(this.§ !Z§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§=n§.getSubAnimation(this.§0!?§))
         {
            this.§';§ = this.§=n§.getSubAnimation(this.§0!?§);
            this.mIsFlying = true;
         }
         else
         {
            this.§';§ = this.§=n§;
         }
         if(this.§';§)
         {
            _loc1_ = this.§';§.getFrame(this.§%!H§);
            if(this.§"!P§ && _loc1_)
            {
               this.§"!P§.texture = _loc1_.texture;
               this.§"!P§.x = -_loc1_.pivotX - this.§;!@§;
               this.§"!P§.y = -_loc1_.pivotY - this.§3C§;
               this.§"!P§.scaleX = _loc1_.scale;
               this.§"!P§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §9! §() : void
      {
         this.§'6§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§0!;§ < 0)
         {
            this.§1]§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§,,§.§0o§ / this.§,,§.§]!3§) * this.§0!;§;
         if(_loc1_ != this.§,d§)
         {
            this.§,d§ = _loc1_;
            this.§%!H§ = this.§,d§;
            this.§<3§();
         }
      }
      
      public function §1]§() : void
      {
         if(this.§=n§)
         {
            this.§0!;§ = this.§=n§.getFrameCount();
         }
      }
      
      public function §;!!§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§'Y§ = new GlowFilter();
         this.§'Y§.blurX = param2;
         this.§'Y§.blurY = param3;
         this.§'Y§.color = param1;
      }
      
      public function §1!&§() : void
      {
         this.§'Y§ = null;
      }
      
      public function §&!L§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§,,§.§%W§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§<!H§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §,!<§(param1:Number) : void
      {
         var _loc2_:int = this.§9h§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§9h§[_loc2_].updateLifeTime(param1);
            if(this.§9h§[_loc2_].lifeTime < 0)
            {
               this.§<!H§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §<!H§(param1:int) : void
      {
         if(!this.§5D§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§;K§ = this.§5D§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§?Y§ = null;
         if(param1 < this.§9h§.length)
         {
            _loc5_ = this.§9h§[param1];
            _loc5_.§6X§(_loc4_);
            _loc5_.§[B§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §?Y§(_loc3_.texture,_loc4_);
            this.§9h§.push(_loc5_);
            this.§'6§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§"!P§.width / 2 + Math.random() * this.§"!P§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§"!P§.height / 2 + Math.random() * this.§"!P§.height;
      }
      
      public function § !d§() : §-m§
      {
         return this.§"!P§;
      }
   }
}
