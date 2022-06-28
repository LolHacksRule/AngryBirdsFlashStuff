package §3Y§
{
   import §'_§.Texture;
   import §1!&§.§&p§;
   import §1!&§.Sprite;
   import §8!?§.§?!B§;
   import §8!?§.Animation;
   import §8!?§.AnimationManager;
   import §?!&§.b2Vec2;
   import §?A§.§!!d§;
   import §?A§.LevelMain;
   import §^L§.LevelItemShape;
   import flash.filters.GlowFilter;
   
   public class LevelObjectRenderer
   {
      
      public static const §6!H§:Number = 1000;
      
      public static const §&3§:Number = 500;
      
      private static var §+Z§:Array = null;
       
      
      private var §-P§:LevelObject;
      
      public var §9![§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §<!8§:Number;
      
      public var §"p§:Number;
      
      public var §+!@§:int = -1;
      
      private var §=%§:String;
      
      private var §9!d§:Animation;
      
      private var §2C§:Animation;
      
      private var §=@§:§&p§;
      
      private var §@!>§:Number = 0;
      
      private var §,!_§:Number = 0;
      
      public var § !!§:int = -1;
      
      private var §2!8§:int = -1;
      
      private var §!!"§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §>x§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §#[§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §[!M§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §;_§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §,e§:String = "fly";
      
      public var §7Z§:String = "fly_yell";
      
      public var §@!]§:GlowFilter;
      
      private var §?!0§:Vector.<§!!d§>;
      
      private var §4J§:Animation;
      
      private var §1!J§:Sprite = null;
      
      private var §6f§:LevelMain;
      
      public function LevelObjectRenderer(param1:LevelObject, param2:Sprite, param3:LevelMain)
      {
         super();
         this.§6f§ = param3;
         this.§-P§ = param1;
         this.§=%§ = this.§-P§.§4!W§;
         this.§?!0§ = new Vector.<§!!d§>();
         this.§1!J§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!!d§ = null;
         this.§76§();
         if(this.§?!0§)
         {
            while(this.§?!0§.length > 0)
            {
               _loc1_ = this.§?!0§.pop();
               _loc1_.dispose();
            }
            this.§?!0§ = null;
         }
      }
      
      public function §]M§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§+!@§ = param1;
         this.§"p§ = param2;
         this.§=j§();
      }
      
      public function §9!]§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§<!8§ = 1;
            return;
         }
         this.§<!8§ = this.mW / this.mH;
         if(this.§<!8§ < 1)
         {
            this.§<!8§ = 1 / this.§<!8§;
         }
         this.§<!8§ = Math.min(11,this.§<!8§);
      }
      
      public function §-!§(param1:AnimationManager) : Boolean
      {
         var _loc2_:§?!B§ = null;
         var _loc3_:Texture = null;
         if(this.§-P§.isGround())
         {
            return false;
         }
         this.§4J§ = param1.getAnimation("SPARKLES");
         this.§9!d§ = param1.getAnimation(this.§=%§);
         this.§2C§ = this.§9!d§;
         var _loc4_:Number = 1;
         if(this.§2C§)
         {
            _loc2_ = this.§2C§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§6f§.textureManager.§0G§();
         }
         this.§=@§ = new §&p§(_loc3_);
         if(_loc2_)
         {
            this.§=@§.x = -_loc2_.pivotX;
            this.§=@§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§=@§.x = -this.§=@§.width / 2;
            this.§=@§.y = -this.§=@§.height / 2;
         }
         this.§=@§.scaleX = _loc4_;
         this.§=@§.scaleY = _loc4_;
         this.mW = this.§=@§.width / 2;
         this.mH = this.§=@§.height / 2;
         this.§1!J§.addChild(this.§=@§);
         return true;
      }
      
      public function §]!&§(param1:LevelItemShape) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§>!V§)
         {
            case LevelItemShape.§"c§:
               _loc2_ = param1.§?[§();
               _loc3_ = _loc2_[0];
               this.§@!>§ = _loc3_.x / LevelMain.§!5§;
               this.§,!_§ = _loc3_.y / LevelMain.§!5§;
               break;
            case LevelItemShape.§0!+§:
         }
         this.§#I§();
      }
      
      public function §+!3§() : Array
      {
         return LevelObjectMovieClipHelper.§+!3§(null,this.§-P§.§in§());
      }
      
      public function §@"§() : Array
      {
         return LevelObjectMovieClipHelper.§@"§(null,this.§-P§.§in§());
      }
      
      public function §^!Q§() : Array
      {
         return LevelObjectMovieClipHelper.§^!Q§(null);
      }
      
      public function §=j§() : void
      {
      }
      
      public function §6v§(param1:Number) : void
      {
         this.§1!J§.scaleX = this.§1!J§.scaleY = param1;
      }
      
      public function §#I§() : void
      {
         var _loc1_:§?!B§ = null;
         if(!this.§9!d§)
         {
            return;
         }
         if(this.§#[§)
         {
            this.§!!"§ = 1;
         }
         else if(this.§-P§.getSpecialAnimationProgress() >= 0 && this.§9!d§.getSubAnimation(this.§>x§))
         {
            this.§2C§ = this.§9!d§.getSubAnimation(this.§>x§);
            this.§!!"§ = this.§2C§.getFrameCount() * this.§-P§.getSpecialAnimationProgress();
            if(this.§!!"§ == this.§2C§.getFrameCount() - 1 && this.§-P§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§!!"§;
            }
         }
         else if(this.mTryToSpecial && this.§9!d§.getSubAnimation(this.§>x§))
         {
            this.§2C§ = this.§9!d§.getSubAnimation(this.§>x§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§9!d§.getSubAnimation(this.§7Z§))
         {
            this.§2C§ = this.§9!d§.getSubAnimation(this.§7Z§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§9!d§.getSubAnimation(this.§[!M§))
         {
            this.§2C§ = this.§9!d§.getSubAnimation(this.§[!M§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§9!d§.getSubAnimation(this.§;_§))
         {
            this.§2C§ = this.§9!d§.getSubAnimation(this.§;_§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§9!d§.getSubAnimation(this.§,e§))
         {
            this.§2C§ = this.§9!d§.getSubAnimation(this.§,e§);
            this.mIsFlying = true;
         }
         else
         {
            this.§2C§ = this.§9!d§;
         }
         if(this.§2C§)
         {
            _loc1_ = this.§2C§.getFrame(this.§!!"§);
            if(this.§=@§ && _loc1_)
            {
               this.§=@§.texture = _loc1_.texture;
               this.§=@§.x = -_loc1_.pivotX - this.§@!>§;
               this.§=@§.y = -_loc1_.pivotY - this.§,!_§;
               this.§=@§.scaleX = _loc1_.scale;
               this.§=@§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §#!<§() : void
      {
         this.§1!J§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§ !!§ < 0)
         {
            this.§8U§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§-P§.§19§ / this.§-P§.§^V§) * this.§ !!§;
         if(_loc1_ != this.§2!8§)
         {
            this.§2!8§ = _loc1_;
            this.§!!"§ = this.§2!8§;
            this.§#I§();
         }
      }
      
      public function §8U§() : void
      {
         if(this.§9!d§)
         {
            this.§ !!§ = this.§9!d§.getFrameCount();
         }
      }
      
      public function §8!Q§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§@!]§ = new GlowFilter();
         this.§@!]§.blurX = param2;
         this.§@!]§.blurY = param3;
         this.§@!]§.color = param1;
      }
      
      public function §76§() : void
      {
         this.§@!]§ = null;
      }
      
      public function §]s§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§-P§.§2!2§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§%P§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §5!T§(param1:Number) : void
      {
         var _loc2_:int = this.§?!0§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§?!0§[_loc2_].updateLifeTime(param1);
            if(this.§?!0§[_loc2_].lifeTime < 0)
            {
               this.§%P§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §%P§(param1:int) : void
      {
         if(!this.§4J§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§?!B§ = this.§4J§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§!!d§ = null;
         if(param1 < this.§?!0§.length)
         {
            _loc5_ = this.§?!0§[param1];
            _loc5_.§+!"§(_loc4_);
            _loc5_.§>!E§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §!!d§(_loc3_.texture,_loc4_);
            this.§?!0§.push(_loc5_);
            this.§1!J§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§=@§.width / 2 + Math.random() * this.§=@§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§=@§.height / 2 + Math.random() * this.§=@§.height;
      }
      
      public function §!,§() : §&p§
      {
         return this.§=@§;
      }
   }
}
