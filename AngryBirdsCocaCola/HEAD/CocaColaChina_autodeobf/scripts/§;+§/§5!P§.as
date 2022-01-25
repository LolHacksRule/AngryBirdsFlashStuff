package §;+§
{
   import § !K§.§5+§;
   import § !K§.Sprite;
   import §"![§.Texture;
   import §&!L§.b2Vec2;
   import §4A§.§&_§;
   import §4A§.§@!2§;
   import §9!Y§.§!![§;
   import §9!Y§.§"#§;
   import §9!Y§.§<!%§;
   import §^p§.§!!U§;
   import flash.filters.GlowFilter;
   
   public class §5!P§
   {
      
      public static const §]5§:Number = 1000;
      
      public static const §3!M§:Number = 500;
      
      private static var §[>§:Array = null;
       
      
      private var §;q§:§[!3§;
      
      public var §!!^§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §?!6§:Number;
      
      public var § var§:Number;
      
      public var §-!0§:int = -1;
      
      private var §>Q§:String;
      
      private var §2!F§:§<!%§;
      
      private var §5!V§:§<!%§;
      
      private var §;5§:§5+§;
      
      private var §,G§:Number = 0;
      
      private var §%t§:Number = 0;
      
      public var §2!"§:int = -1;
      
      private var §@G§:int = -1;
      
      private var §3O§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §"3§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §2[§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §'!A§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §6!§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §0J§:String = "fly";
      
      public var §6,§:String = "fly_yell";
      
      public var §7E§:GlowFilter;
      
      private var §`U§:Vector.<§@!2§>;
      
      private var §"C§:§<!%§;
      
      private var §]!+§:Sprite = null;
      
      private var mLevelMain:§&_§;
      
      public function §5!P§(param1:§[!3§, param2:Sprite, param3:§&_§)
      {
         super();
         this.mLevelMain = param3;
         this.§;q§ = param1;
         this.§>Q§ = this.§;q§.§1T§;
         this.§`U§ = new Vector.<§@!2§>();
         this.§]!+§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@!2§ = null;
         this.§?`§();
         if(this.§`U§)
         {
            while(this.§`U§.length > 0)
            {
               _loc1_ = this.§`U§.pop();
               _loc1_.dispose();
            }
            this.§`U§ = null;
         }
      }
      
      public function §%!F§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§-!0§ = param1;
         this.§ var§ = param2;
         this.§@!&§();
      }
      
      public function §-[§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?!6§ = 1;
            return;
         }
         this.§?!6§ = this.mW / this.mH;
         if(this.§?!6§ < 1)
         {
            this.§?!6§ = 1 / this.§?!6§;
         }
         this.§?!6§ = Math.min(11,this.§?!6§);
      }
      
      public function §?!H§(param1:§!![§) : Boolean
      {
         var _loc2_:§"#§ = null;
         var _loc3_:Texture = null;
         if(this.§;q§.isGround())
         {
            return false;
         }
         this.§"C§ = param1.§ !Z§("SPARKLES");
         this.§2!F§ = param1.§ !Z§(this.§>Q§);
         this.§5!V§ = this.§2!F§;
         var _loc4_:Number = 1;
         if(this.§5!V§)
         {
            _loc2_ = this.§5!V§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.mLevelMain.textureManager.§`j§();
         }
         this.§;5§ = new §5+§(_loc3_);
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
      
      public function §#?§(param1:§!!U§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§2!'§)
         {
            case §!!U§.§<7§:
               _loc2_ = param1.§@!!§();
               _loc3_ = _loc2_[0];
               this.§,G§ = _loc3_.x / §&_§.§5-§;
               this.§%t§ = _loc3_.y / §&_§.§5-§;
               break;
            case §!!U§.§1r§:
         }
         this.§92§();
      }
      
      public function §[!H§() : Array
      {
         return §]>§.§[!H§(null,this.§;q§.§]e§());
      }
      
      public function §#T§() : Array
      {
         return §]>§.§#T§(null,this.§;q§.§]e§());
      }
      
      public function §"!U§() : Array
      {
         return §]>§.§"!U§(null);
      }
      
      public function §@!&§() : void
      {
      }
      
      public function §1?§(param1:Number) : void
      {
         this.§]!+§.scaleX = this.§]!+§.scaleY = param1;
      }
      
      public function §92§() : void
      {
         var _loc1_:§"#§ = null;
         if(!this.§2!F§)
         {
            return;
         }
         if(this.§2[§)
         {
            this.§3O§ = 1;
         }
         else if(this.§;q§.getSpecialAnimationProgress() >= 0 && this.§2!F§.getSubAnimation(this.§"3§))
         {
            this.§5!V§ = this.§2!F§.getSubAnimation(this.§"3§);
            this.§3O§ = this.§5!V§.getFrameCount() * this.§;q§.getSpecialAnimationProgress();
            if(this.§3O§ == this.§5!V§.getFrameCount() - 1 && this.§;q§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§3O§;
            }
         }
         else if(this.mTryToSpecial && this.§2!F§.getSubAnimation(this.§"3§))
         {
            this.§5!V§ = this.§2!F§.getSubAnimation(this.§"3§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§2!F§.getSubAnimation(this.§6,§))
         {
            this.§5!V§ = this.§2!F§.getSubAnimation(this.§6,§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§2!F§.getSubAnimation(this.§'!A§))
         {
            this.§5!V§ = this.§2!F§.getSubAnimation(this.§'!A§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§2!F§.getSubAnimation(this.§6!§))
         {
            this.§5!V§ = this.§2!F§.getSubAnimation(this.§6!§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§2!F§.getSubAnimation(this.§0J§))
         {
            this.§5!V§ = this.§2!F§.getSubAnimation(this.§0J§);
            this.mIsFlying = true;
         }
         else
         {
            this.§5!V§ = this.§2!F§;
         }
         if(this.§5!V§)
         {
            _loc1_ = this.§5!V§.getFrame(this.§3O§);
            if(this.§;5§ && _loc1_)
            {
               this.§;5§.texture = _loc1_.texture;
               this.§;5§.x = -_loc1_.pivotX - this.§,G§;
               this.§;5§.y = -_loc1_.pivotY - this.§%t§;
               this.§;5§.scaleX = _loc1_.scale;
               this.§;5§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §]d§() : void
      {
         this.§]!+§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§2!"§ < 0)
         {
            this.§81§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§;q§.§"!D§ / this.§;q§.§?L§) * this.§2!"§;
         if(_loc1_ != this.§@G§)
         {
            this.§@G§ = _loc1_;
            this.§3O§ = this.§@G§;
            this.§92§();
         }
      }
      
      public function §81§() : void
      {
         if(this.§2!F§)
         {
            this.§2!"§ = this.§2!F§.getFrameCount();
         }
      }
      
      public function §`!B§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§7E§ = new GlowFilter();
         this.§7E§.blurX = param2;
         this.§7E§.blurY = param3;
         this.§7E§.color = param1;
      }
      
      public function §?`§() : void
      {
         this.§7E§ = null;
      }
      
      public function §?!]§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§;q§.§!!W§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§;X§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §-z§(param1:Number) : void
      {
         var _loc2_:int = this.§`U§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§`U§[_loc2_].updateLifeTime(param1);
            if(this.§`U§[_loc2_].lifeTime < 0)
            {
               this.§;X§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §;X§(param1:int) : void
      {
         if(!this.§"C§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§"#§ = this.§"C§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§@!2§ = null;
         if(param1 < this.§`U§.length)
         {
            (_loc5_ = this.§`U§[param1]).§0=§(_loc4_);
            _loc5_.§5!,§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §@!2§(_loc3_.texture,_loc4_);
            this.§`U§.push(_loc5_);
            this.§]!+§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§;5§.width / 2 + Math.random() * this.§;5§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§;5§.height / 2 + Math.random() * this.§;5§.height;
      }
      
      public function §@d§() : §5+§
      {
         return this.§;5§;
      }
   }
}
