package §5!L§
{
   import § !^§.Texture;
   import §&!!§.§2^§;
   import §&!!§.§7N§;
   import §&!!§.§[!]§;
   import §2![§.Sprite;
   import §2![§.§[!U§;
   import §<L§.§!!G§;
   import §<L§.§?t§;
   import §?!'§.§-M§;
   import §@![§.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §+!+§
   {
      
      public static const §'!0§:Number = 1000;
      
      public static const §6!;§:Number = 500;
      
      private static var §2!5§:Array = null;
       
      
      private var §]M§:§,!&§;
      
      public var §>B§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §-O§:Number;
      
      public var §?[§:Number;
      
      public var §41§:int = -1;
      
      private var §2!K§:String;
      
      private var §@!C§:§[!]§;
      
      private var §&D§:§[!]§;
      
      private var §#Z§:§[!U§;
      
      private var §?7§:Number = 0;
      
      private var §]!;§:Number = 0;
      
      public var §=X§:int = -1;
      
      private var §0J§:int = -1;
      
      private var §`G§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §6!a§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §9$§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §"b§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §>!@§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §93§:String = "fly";
      
      public var §;r§:String = "fly_yell";
      
      public var § !W§:GlowFilter;
      
      private var §?L§:Vector.<§?t§>;
      
      private var §<!$§:§[!]§;
      
      private var §%!l§:Sprite = null;
      
      private var mLevelMain:§!!G§;
      
      public function §+!+§(param1:§,!&§, param2:Sprite, param3:§!!G§)
      {
         super();
         this.mLevelMain = param3;
         this.§]M§ = param1;
         this.§2!K§ = this.§]M§.§%!O§;
         this.§?L§ = new Vector.<§?t§>();
         this.§%!l§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?t§ = null;
         this.§]t§();
         if(this.§?L§)
         {
            while(this.§?L§.length > 0)
            {
               _loc1_ = this.§?L§.pop();
               _loc1_.dispose();
            }
            this.§?L§ = null;
         }
      }
      
      public function §4q§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§41§ = param1;
         this.§?[§ = param2;
         this.§4a§();
      }
      
      public function §&5§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§-O§ = 1;
            return;
         }
         this.§-O§ = this.mW / this.mH;
         if(this.§-O§ < 1)
         {
            this.§-O§ = 1 / this.§-O§;
         }
         this.§-O§ = Math.min(11,this.§-O§);
      }
      
      public function §&B§(param1:§2^§) : Boolean
      {
         var _loc2_:§7N§ = null;
         var _loc3_:Texture = null;
         if(this.§]M§.isGround())
         {
            return false;
         }
         this.§<!$§ = param1.getAnimation("SPARKLES");
         this.§@!C§ = param1.getAnimation(this.§2!K§);
         this.§&D§ = this.§@!C§;
         var _loc4_:Number = 1;
         if(this.§&D§)
         {
            _loc2_ = this.§&D§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.mLevelMain.textureManager.§8!c§();
         }
         this.§#Z§ = new §[!U§(_loc3_);
         if(_loc2_)
         {
            this.§#Z§.x = -_loc2_.pivotX;
            this.§#Z§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§#Z§.x = -this.§#Z§.width / 2;
            this.§#Z§.y = -this.§#Z§.height / 2;
         }
         this.§#Z§.scaleX = _loc4_;
         this.§#Z§.scaleY = _loc4_;
         this.mW = this.§#Z§.width / 2;
         this.mH = this.§#Z§.height / 2;
         this.§%!l§.addChild(this.§#Z§);
         return true;
      }
      
      public function §8!h§(param1:§-M§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§8!3§)
         {
            case §-M§.§;![§:
               _loc2_ = param1.§3j§();
               _loc3_ = _loc2_[0];
               this.§?7§ = _loc3_.x / §!!G§.§ !E§;
               this.§]!;§ = _loc3_.y / §!!G§.§ !E§;
               break;
            case §-M§.§18§:
         }
         this.§'Z§();
      }
      
      public function §;!l§() : Array
      {
         return §+F§.§;!l§(null,this.§]M§.§#!P§());
      }
      
      public function §,!f§() : Array
      {
         return §+F§.§,!f§(null,this.§]M§.§#!P§());
      }
      
      public function §]!_§() : Array
      {
         return §+F§.§]!_§(null);
      }
      
      public function §4a§() : void
      {
      }
      
      public function §+L§(param1:Number) : void
      {
         this.§%!l§.scaleX = this.§%!l§.scaleY = param1;
      }
      
      public function §'Z§() : void
      {
         var _loc1_:§7N§ = null;
         if(!this.§@!C§)
         {
            return;
         }
         if(this.§9$§)
         {
            this.§`G§ = 1;
         }
         else if(this.§]M§.getSpecialAnimationProgress() >= 0 && this.§@!C§.getSubAnimation(this.§6!a§))
         {
            this.§&D§ = this.§@!C§.getSubAnimation(this.§6!a§);
            this.§`G§ = this.§&D§.getFrameCount() * this.§]M§.getSpecialAnimationProgress();
            if(this.§`G§ == this.§&D§.getFrameCount() - 1 && this.§]M§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§`G§;
            }
         }
         else if(this.mTryToSpecial && this.§@!C§.getSubAnimation(this.§6!a§))
         {
            this.§&D§ = this.§@!C§.getSubAnimation(this.§6!a§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§@!C§.getSubAnimation(this.§;r§))
         {
            this.§&D§ = this.§@!C§.getSubAnimation(this.§;r§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§@!C§.getSubAnimation(this.§"b§))
         {
            this.§&D§ = this.§@!C§.getSubAnimation(this.§"b§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§@!C§.getSubAnimation(this.§>!@§))
         {
            this.§&D§ = this.§@!C§.getSubAnimation(this.§>!@§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§@!C§.getSubAnimation(this.§93§))
         {
            this.§&D§ = this.§@!C§.getSubAnimation(this.§93§);
            this.mIsFlying = true;
         }
         else
         {
            this.§&D§ = this.§@!C§;
         }
         if(this.§&D§)
         {
            _loc1_ = this.§&D§.getFrame(this.§`G§);
            if(this.§#Z§ && _loc1_)
            {
               this.§#Z§.texture = _loc1_.texture;
               this.§#Z§.x = -_loc1_.pivotX - this.§?7§;
               this.§#Z§.y = -_loc1_.pivotY - this.§]!;§;
               this.§#Z§.scaleX = _loc1_.scale;
               this.§#Z§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §=;§() : void
      {
         this.§%!l§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§=X§ < 0)
         {
            this.§1!-§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§]M§.§3o§ / this.§]M§.§'6§) * this.§=X§;
         if(_loc1_ != this.§0J§)
         {
            this.§0J§ = _loc1_;
            this.§`G§ = this.§0J§;
            this.§'Z§();
         }
      }
      
      public function §1!-§() : void
      {
         if(this.§@!C§)
         {
            this.§=X§ = this.§@!C§.getFrameCount();
         }
      }
      
      public function §9!0§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§ !W§ = new GlowFilter();
         this.§ !W§.blurX = param2;
         this.§ !W§.blurY = param3;
         this.§ !W§.color = param1;
      }
      
      public function §]t§() : void
      {
         this.§ !W§ = null;
      }
      
      public function §8!f§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§]M§.§6k§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§7!,§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §#!a§(param1:Number) : void
      {
         var _loc2_:int = this.§?L§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§?L§[_loc2_].updateLifeTime(param1);
            if(this.§?L§[_loc2_].lifeTime < 0)
            {
               this.§7!,§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §7!,§(param1:int) : void
      {
         if(!this.§<!$§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§7N§ = this.§<!$§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§?t§ = null;
         if(param1 < this.§?L§.length)
         {
            (_loc5_ = this.§?L§[param1]).§5!c§(_loc4_);
            _loc5_.§try§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §?t§(_loc3_.texture,_loc4_);
            this.§?L§.push(_loc5_);
            this.§%!l§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§#Z§.width / 2 + Math.random() * this.§#Z§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§#Z§.height / 2 + Math.random() * this.§#Z§.height;
      }
      
      public function §]<§() : §[!U§
      {
         return this.§#Z§;
      }
   }
}
