package §0=§
{
   import §,T§.§=K§;
   import §,T§.§[-§;
   import §,]§.Texture;
   import §-!'§.§3!1§;
   import §-!'§.Sprite;
   import §0E§.§<=§;
   import §<A§.§'n§;
   import §<A§.§8<§;
   import §<A§.§;V§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §?!,§
   {
      
      public static const §=!B§:Number = 1000;
      
      public static const §5!O§:Number = 500;
      
      private static var §&!;§:Array = null;
       
      
      private var §>Q§:§2p§;
      
      public var §%U§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §'V§:Number;
      
      public var §4N§:Number;
      
      public var §5s§:int = -1;
      
      private var §9z§:String;
      
      private var §;T§:§;V§;
      
      private var §`s§:§;V§;
      
      private var §!!-§:§3!1§;
      
      private var §#m§:Number = 0;
      
      private var § in§:Number = 0;
      
      public var §5w§:int = -1;
      
      private var §!'§:int = -1;
      
      private var § !F§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §^b§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §5c§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §'5§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §6!@§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §^Z§:String = "fly";
      
      public var §'6§:String = "fly_yell";
      
      public var §"!&§:GlowFilter;
      
      private var §7!N§:Vector.<§=K§>;
      
      private var §+!<§:§;V§;
      
      private var §46§:Sprite = null;
      
      private var §34§:§[-§;
      
      public function §?!,§(param1:§2p§, param2:Sprite, param3:§[-§)
      {
         super();
         this.§34§ = param3;
         this.§>Q§ = param1;
         this.§9z§ = this.§>Q§.§8!J§;
         this.§7!N§ = new Vector.<§=K§>();
         this.§46§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=K§ = null;
         this.§&!8§();
         if(this.§7!N§)
         {
            while(this.§7!N§.length > 0)
            {
               _loc1_ = this.§7!N§.pop();
               _loc1_.dispose();
            }
            this.§7!N§ = null;
         }
      }
      
      public function §2B§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§5s§ = param1;
         this.§4N§ = param2;
         this.§-J§();
      }
      
      public function §>#§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'V§ = 1;
            return;
         }
         this.§'V§ = this.mW / this.mH;
         if(this.§'V§ < 1)
         {
            this.§'V§ = 1 / this.§'V§;
         }
         this.§'V§ = Math.min(11,this.§'V§);
      }
      
      public function § !&§(param1:§'n§) : Boolean
      {
         var _loc2_:§8<§ = null;
         var _loc3_:Texture = null;
         if(this.§>Q§.isGround())
         {
            return false;
         }
         this.§+!<§ = param1.getAnimation("SPARKLES");
         this.§;T§ = param1.getAnimation(this.§9z§);
         this.§`s§ = this.§;T§;
         var _loc4_:Number = 1;
         if(this.§`s§)
         {
            _loc2_ = this.§`s§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§34§.textureManager.§"z§();
         }
         this.§!!-§ = new §3!1§(_loc3_);
         if(_loc2_)
         {
            this.§!!-§.x = -_loc2_.pivotX;
            this.§!!-§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§!!-§.x = -this.§!!-§.width / 2;
            this.§!!-§.y = -this.§!!-§.height / 2;
         }
         this.§!!-§.scaleX = _loc4_;
         this.§!!-§.scaleY = _loc4_;
         this.mW = this.§!!-§.width / 2;
         this.mH = this.§!!-§.height / 2;
         this.§46§.addChild(this.§!!-§);
         return true;
      }
      
      public function §1!1§(param1:§<=§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§[i§)
         {
            case §<=§.§=R§:
               _loc2_ = param1.§]!=§();
               _loc3_ = _loc2_[0];
               this.§#m§ = _loc3_.x / §[-§.§;5§;
               this.§ in§ = _loc3_.y / §[-§.§;5§;
               break;
            case §<=§.§[g§:
         }
         this.§=P§();
      }
      
      public function §-I§() : Array
      {
         return §+!A§.§-I§(null,this.§>Q§.§%@§());
      }
      
      public function §&g§() : Array
      {
         return §+!A§.§&g§(null,this.§>Q§.§%@§());
      }
      
      public function §6Q§() : Array
      {
         return §+!A§.§6Q§(null);
      }
      
      public function §-J§() : void
      {
      }
      
      public function §!!6§(param1:Number) : void
      {
         this.§46§.scaleX = this.§46§.scaleY = param1;
      }
      
      public function §=P§() : void
      {
         var _loc1_:§8<§ = null;
         if(!this.§;T§)
         {
            return;
         }
         if(this.§5c§)
         {
            this.§ !F§ = 1;
         }
         else if(this.§>Q§.getSpecialAnimationProgress() >= 0 && this.§;T§.getSubAnimation(this.§^b§))
         {
            this.§`s§ = this.§;T§.getSubAnimation(this.§^b§);
            this.§ !F§ = this.§`s§.getFrameCount() * this.§>Q§.getSpecialAnimationProgress();
            if(this.§ !F§ == this.§`s§.getFrameCount() - 1 && this.§>Q§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§ !F§;
            }
         }
         else if(this.mTryToSpecial && this.§;T§.getSubAnimation(this.§^b§))
         {
            this.§`s§ = this.§;T§.getSubAnimation(this.§^b§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§;T§.getSubAnimation(this.§'6§))
         {
            this.§`s§ = this.§;T§.getSubAnimation(this.§'6§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§;T§.getSubAnimation(this.§'5§))
         {
            this.§`s§ = this.§;T§.getSubAnimation(this.§'5§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§;T§.getSubAnimation(this.§6!@§))
         {
            this.§`s§ = this.§;T§.getSubAnimation(this.§6!@§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§;T§.getSubAnimation(this.§^Z§))
         {
            this.§`s§ = this.§;T§.getSubAnimation(this.§^Z§);
            this.mIsFlying = true;
         }
         else
         {
            this.§`s§ = this.§;T§;
         }
         if(this.§`s§)
         {
            _loc1_ = this.§`s§.getFrame(this.§ !F§);
            if(this.§!!-§ && _loc1_)
            {
               this.§!!-§.texture = _loc1_.texture;
               this.§!!-§.x = -_loc1_.pivotX - this.§#m§;
               this.§!!-§.y = -_loc1_.pivotY - this.§ in§;
               this.§!!-§.scaleX = _loc1_.scale;
               this.§!!-§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §6!C§() : void
      {
         this.§46§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§5w§ < 0)
         {
            this.§47§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§>Q§.§[!J§ / this.§>Q§.§ !L§) * this.§5w§;
         if(_loc1_ != this.§!'§)
         {
            this.§!'§ = _loc1_;
            this.§ !F§ = this.§!'§;
            this.§=P§();
         }
      }
      
      public function §47§() : void
      {
         if(this.§;T§)
         {
            this.§5w§ = this.§;T§.getFrameCount();
         }
      }
      
      public function §'l§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§"!&§ = new GlowFilter();
         this.§"!&§.blurX = param2;
         this.§"!&§.blurY = param3;
         this.§"!&§.color = param1;
      }
      
      public function §&!8§() : void
      {
         this.§"!&§ = null;
      }
      
      public function §;L§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§>Q§.§8!?§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§-!F§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §=!§(param1:Number) : void
      {
         var _loc2_:int = this.§7!N§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§7!N§[_loc2_].updateLifeTime(param1);
            if(this.§7!N§[_loc2_].lifeTime < 0)
            {
               this.§-!F§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §-!F§(param1:int) : void
      {
         if(!this.§+!<§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§8<§ = this.§+!<§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§=K§ = null;
         if(param1 < this.§7!N§.length)
         {
            (_loc5_ = this.§7!N§[param1]).§0;§(_loc4_);
            _loc5_.§@D§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §=K§(_loc3_.texture,_loc4_);
            this.§7!N§.push(_loc5_);
            this.§46§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§!!-§.width / 2 + Math.random() * this.§!!-§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§!!-§.height / 2 + Math.random() * this.§!!-§.height;
      }
      
      public function §3f§() : §3!1§
      {
         return this.§!!-§;
      }
   }
}
