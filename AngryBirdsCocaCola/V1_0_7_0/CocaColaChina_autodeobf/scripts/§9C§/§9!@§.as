package §9C§
{
   import §#m§.§;N§;
   import §+!S§.Texture;
   import §,!Q§.§%^§;
   import §,!Q§.Sprite;
   import §2l§.§%i§;
   import §2l§.§4!Q§;
   import §2l§.§63§;
   import §4A§.§&_§;
   import §4A§.§'N§;
   import §<!8§.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §9!@§
   {
      
      public static const §;X§:Number = 1000;
      
      public static const §3!M§:Number = 500;
      
      private static var §]5§:Array = null;
       
      
      private var §@3§:§4!G§;
      
      public var §>!R§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §5!P§:Number;
      
      public var § var§:Number;
      
      public var §?!6§:int = -1;
      
      private var §-!0§:String;
      
      private var §2!F§:§63§;
      
      private var §>Q§:§63§;
      
      private var §;5§:§%^§;
      
      private var §5!V§:Number = 0;
      
      private var §,G§:Number = 0;
      
      public var §%t§:int = -1;
      
      private var §2!"§:int = -1;
      
      private var §@G§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §3O§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §"3§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §2[§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §'!A§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §6!§:String = "fly";
      
      public var §0J§:String = "fly_yell";
      
      public var §1!§:GlowFilter;
      
      private var §6,§:Vector.<§'N§>;
      
      private var §`U§:§63§;
      
      private var §]!+§:Sprite = null;
      
      private var mLevelMain:§&_§;
      
      public function §9!@§(param1:§4!G§, param2:Sprite, param3:§&_§)
      {
         super();
         this.mLevelMain = param3;
         this.§@3§ = param1;
         this.§-!0§ = this.§@3§.§!I§;
         this.§6,§ = new Vector.<§'N§>();
         this.§]!+§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'N§ = null;
         this.§`!B§();
         if(this.§6,§)
         {
            while(this.§6,§.length > 0)
            {
               _loc1_ = this.§6,§.pop();
               _loc1_.dispose();
            }
            this.§6,§ = null;
         }
      }
      
      public function §"C§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§?!6§ = param1;
         this.§ var§ = param2;
         this.§"!U§();
      }
      
      public function §%!F§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!P§ = 1;
            return;
         }
         this.§5!P§ = this.mW / this.mH;
         if(this.§5!P§ < 1)
         {
            this.§5!P§ = 1 / this.§5!P§;
         }
         this.§5!P§ = Math.min(11,this.§5!P§);
      }
      
      public function §?!H§(param1:§%i§) : Boolean
      {
         var _loc2_:§4!Q§ = null;
         var _loc3_:Texture = null;
         if(this.§@3§.isGround())
         {
            return false;
         }
         this.§`U§ = param1.§set §("SPARKLES");
         this.§2!F§ = param1.§set §(this.§-!0§);
         this.§>Q§ = this.§2!F§;
         var _loc4_:Number = 1;
         if(this.§>Q§)
         {
            _loc2_ = this.§>Q§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.mLevelMain.textureManager.§@!>§();
         }
         this.§;5§ = new §%^§(_loc3_);
         if(_loc2_)
         {
            this.§;5§.x = -_loc2_.pivotX;
            this.§;5§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§;5§.x = -this.§;5§.width / 2;
            this.§;5§.y = -this.§;5§.height / 2;
         }
         this.§;5§.scaleX = _loc4_;
         this.§;5§.scaleY = _loc4_;
         this.mW = this.§;5§.width / 2;
         this.mH = this.§;5§.height / 2;
         this.§]!+§.addChild(this.§;5§);
         return true;
      }
      
      public function §-[§(param1:§;N§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§[w§)
         {
            case §;N§.§,o§:
               _loc2_ = param1.§+!!§();
               _loc3_ = _loc2_[0];
               this.§5!V§ = _loc3_.x / §&_§.§5-§;
               this.§,G§ = _loc3_.y / §&_§.§5-§;
               break;
            case §;N§.§4!,§:
         }
         this.§1?§();
      }
      
      public function §#?§() : Array
      {
         return §;!X§.§#?§(null,this.§@3§.§,m§());
      }
      
      public function §[!H§() : Array
      {
         return §;!X§.§[!H§(null,this.§@3§.§,m§());
      }
      
      public function §#T§() : Array
      {
         return §;!X§.§#T§(null);
      }
      
      public function §"!U§() : void
      {
      }
      
      public function §@!&§(param1:Number) : void
      {
         this.§]!+§.scaleX = this.§]!+§.scaleY = param1;
      }
      
      public function §1?§() : void
      {
         var _loc1_:§4!Q§ = null;
         if(!this.§2!F§)
         {
            return;
         }
         if(this.§"3§)
         {
            this.§@G§ = 1;
         }
         else if(this.§@3§.getSpecialAnimationProgress() >= 0 && this.§2!F§.getSubAnimation(this.§3O§))
         {
            this.§>Q§ = this.§2!F§.getSubAnimation(this.§3O§);
            this.§@G§ = this.§>Q§.getFrameCount() * this.§@3§.getSpecialAnimationProgress();
            if(this.§@G§ == this.§>Q§.getFrameCount() - 1 && this.§@3§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§@G§;
            }
         }
         else if(this.mTryToSpecial && this.§2!F§.getSubAnimation(this.§3O§))
         {
            this.§>Q§ = this.§2!F§.getSubAnimation(this.§3O§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§2!F§.getSubAnimation(this.§0J§))
         {
            this.§>Q§ = this.§2!F§.getSubAnimation(this.§0J§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§2!F§.getSubAnimation(this.§2[§))
         {
            this.§>Q§ = this.§2!F§.getSubAnimation(this.§2[§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§2!F§.getSubAnimation(this.§'!A§))
         {
            this.§>Q§ = this.§2!F§.getSubAnimation(this.§'!A§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§2!F§.getSubAnimation(this.§6!§))
         {
            this.§>Q§ = this.§2!F§.getSubAnimation(this.§6!§);
            this.mIsFlying = true;
         }
         else
         {
            this.§>Q§ = this.§2!F§;
         }
         if(this.§>Q§)
         {
            _loc1_ = this.§>Q§.getFrame(this.§@G§);
            if(this.§;5§ && _loc1_)
            {
               this.§;5§.texture = _loc1_.texture;
               this.§;5§.x = -_loc1_.pivotX - this.§5!V§;
               this.§;5§.y = -_loc1_.pivotY - this.§,G§;
               this.§;5§.scaleX = _loc1_.scale;
               this.§;5§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §92§() : void
      {
         this.§]!+§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§%t§ < 0)
         {
            this.§]d§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§@3§.§ b§ / this.§@3§.§&=§) * this.§%t§;
         if(_loc1_ != this.§2!"§)
         {
            this.§2!"§ = _loc1_;
            this.§@G§ = this.§2!"§;
            this.§1?§();
         }
      }
      
      public function §]d§() : void
      {
         if(this.§2!F§)
         {
            this.§%t§ = this.§2!F§.getFrameCount();
         }
      }
      
      public function §81§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§1!§ = new GlowFilter();
         this.§1!§.blurX = param2;
         this.§1!§.blurY = param3;
         this.§1!§.color = param1;
      }
      
      public function §`!B§() : void
      {
         this.§1!§ = null;
      }
      
      public function §!g§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§@3§.§!i§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§-z§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §?`§(param1:Number) : void
      {
         var _loc2_:int = this.§6,§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§6,§[_loc2_].updateLifeTime(param1);
            if(this.§6,§[_loc2_].lifeTime < 0)
            {
               this.§-z§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §-z§(param1:int) : void
      {
         if(!this.§`U§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§4!Q§ = this.§`U§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§'N§ = null;
         if(param1 < this.§6,§.length)
         {
            (_loc5_ = this.§6,§[param1]).§9y§(_loc4_);
            _loc5_.§8!%§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §'N§(_loc3_.texture,_loc4_);
            this.§6,§.push(_loc5_);
            this.§]!+§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§;5§.width / 2 + Math.random() * this.§;5§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§;5§.height / 2 + Math.random() * this.§;5§.height;
      }
      
      public function §@d§() : §%^§
      {
         return this.§;5§;
      }
   }
}
