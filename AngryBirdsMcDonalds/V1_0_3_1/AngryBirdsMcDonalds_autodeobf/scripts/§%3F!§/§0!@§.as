package §?!§
{
   import § !%§.§!!&§;
   import § !%§.§0!U§;
   import § !%§.§>f§;
   import §%!n§.§%X§;
   import §&Y§.Texture;
   import §&c§.§%!a§;
   import §&c§.Sprite;
   import §0,§.b2Vec2;
   import §3!@§.§ s§;
   import §3!@§.§+i§;
   import flash.filters.GlowFilter;
   
   public class §0!@§
   {
      
      public static const §!s§:Number = 1000;
      
      public static const §<!+§:Number = 500;
      
      private static var §8<§:Array = null;
       
      
      private var §>!A§:§%o§;
      
      public var §`L§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §1!3§:Number;
      
      public var §9!X§:Number;
      
      public var §=!&§:int = -1;
      
      private var §]z§:String;
      
      private var § !C§:§>f§;
      
      private var §0'§:§>f§;
      
      private var §&!j§:§%!a§;
      
      private var §7!D§:Number = 0;
      
      private var §0!c§:Number = 0;
      
      public var §9!A§:int = -1;
      
      private var §"!p§:int = -1;
      
      private var §%!6§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §,x§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §"i§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §3!;§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var § !R§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §2!I§:String = "fly";
      
      public var §#!-§:String = "fly_yell";
      
      public var §@]§:GlowFilter;
      
      private var §!w§:Vector.<§+i§>;
      
      private var §6!H§:§>f§;
      
      private var §7U§:Sprite = null;
      
      private var mLevelMain:§ s§;
      
      public function §0!@§(param1:§%o§, param2:Sprite, param3:§ s§)
      {
         super();
         this.mLevelMain = param3;
         this.§>!A§ = param1;
         this.§]z§ = this.§>!A§.§3!G§;
         this.§!w§ = new Vector.<§+i§>();
         this.§7U§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§+i§ = null;
         this.§8Z§();
         if(this.§!w§)
         {
            while(this.§!w§.length > 0)
            {
               _loc1_ = this.§!w§.pop();
               _loc1_.dispose();
            }
            this.§!w§ = null;
         }
      }
      
      public function §-[§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§=!&§ = param1;
         this.§9!X§ = param2;
         this.§?!8§();
      }
      
      public function §]! §(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1!3§ = 1;
            return;
         }
         this.§1!3§ = this.mW / this.mH;
         if(this.§1!3§ < 1)
         {
            this.§1!3§ = 1 / this.§1!3§;
         }
         this.§1!3§ = Math.min(11,this.§1!3§);
      }
      
      public function §43§(param1:§!!&§) : Boolean
      {
         var _loc2_:§0!U§ = null;
         var _loc3_:Texture = null;
         if(this.§>!A§.isGround())
         {
            return false;
         }
         this.§6!H§ = param1.getAnimation("SPARKLES");
         this.§ !C§ = param1.getAnimation(this.§]z§);
         this.§0'§ = this.§ !C§;
         var _loc4_:Number = 1;
         if(this.§0'§)
         {
            _loc2_ = this.§0'§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.mLevelMain.textureManager.§[=§();
         }
         this.§&!j§ = new §%!a§(_loc3_);
         if(_loc2_)
         {
            this.§&!j§.x = -_loc2_.pivotX;
            this.§&!j§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§&!j§.x = -this.§&!j§.width / 2;
            this.§&!j§.y = -this.§&!j§.height / 2;
         }
         this.§&!j§.scaleX = _loc4_;
         this.§&!j§.scaleY = _loc4_;
         this.mW = this.§&!j§.width / 2;
         this.mH = this.§&!j§.height / 2;
         this.§7U§.addChild(this.§&!j§);
         return true;
      }
      
      public function §3@§(param1:§%X§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§2!&§)
         {
            case §%X§.§<!F§:
               _loc2_ = param1.§&!a§();
               _loc3_ = _loc2_[0];
               this.§7!D§ = _loc3_.x / § s§.§<!h§;
               this.§0!c§ = _loc3_.y / § s§.§<!h§;
               break;
            case §%X§.§@Q§:
         }
         this.§0U§();
      }
      
      public function §%!b§() : Array
      {
         return §91§.§%!b§(null,this.§>!A§.§^!E§());
      }
      
      public function §;R§() : Array
      {
         return §91§.§;R§(null,this.§>!A§.§^!E§());
      }
      
      public function §4!i§() : Array
      {
         return §91§.§4!i§(null);
      }
      
      public function §?!8§() : void
      {
      }
      
      public function §4r§(param1:Number) : void
      {
         this.§7U§.scaleX = this.§7U§.scaleY = param1;
      }
      
      public function §0U§() : void
      {
         var _loc1_:§0!U§ = null;
         if(!this.§ !C§)
         {
            return;
         }
         if(this.§"i§)
         {
            this.§%!6§ = 1;
         }
         else if(this.§>!A§.getSpecialAnimationProgress() >= 0 && this.§ !C§.getSubAnimation(this.§,x§))
         {
            this.§0'§ = this.§ !C§.getSubAnimation(this.§,x§);
            this.§%!6§ = this.§0'§.getFrameCount() * this.§>!A§.getSpecialAnimationProgress();
            if(this.§%!6§ == this.§0'§.getFrameCount() - 1 && this.§>!A§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§%!6§;
            }
         }
         else if(this.mTryToSpecial && this.§ !C§.getSubAnimation(this.§,x§))
         {
            this.§0'§ = this.§ !C§.getSubAnimation(this.§,x§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§ !C§.getSubAnimation(this.§#!-§))
         {
            this.§0'§ = this.§ !C§.getSubAnimation(this.§#!-§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§ !C§.getSubAnimation(this.§3!;§))
         {
            this.§0'§ = this.§ !C§.getSubAnimation(this.§3!;§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§ !C§.getSubAnimation(this.§ !R§))
         {
            this.§0'§ = this.§ !C§.getSubAnimation(this.§ !R§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§ !C§.getSubAnimation(this.§2!I§))
         {
            this.§0'§ = this.§ !C§.getSubAnimation(this.§2!I§);
            this.mIsFlying = true;
         }
         else
         {
            this.§0'§ = this.§ !C§;
         }
         if(this.§0'§)
         {
            _loc1_ = this.§0'§.getFrame(this.§%!6§);
            if(this.§&!j§ && _loc1_)
            {
               this.§&!j§.texture = _loc1_.texture;
               this.§&!j§.x = -_loc1_.pivotX - this.§7!D§;
               this.§&!j§.y = -_loc1_.pivotY - this.§0!c§;
               this.§&!j§.scaleX = _loc1_.scale;
               this.§&!j§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §9!,§() : void
      {
         this.§7U§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§9!A§ < 0)
         {
            this.§>!'§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§>!A§.§-&§ / this.§>!A§.§5!]§) * this.§9!A§;
         if(_loc1_ != this.§"!p§)
         {
            this.§"!p§ = _loc1_;
            this.§%!6§ = this.§"!p§;
            this.§0U§();
         }
      }
      
      public function §>!'§() : void
      {
         if(this.§ !C§)
         {
            this.§9!A§ = this.§ !C§.getFrameCount();
         }
      }
      
      public function §#!2§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§@]§ = new GlowFilter();
         this.§@]§.blurX = param2;
         this.§@]§.blurY = param3;
         this.§@]§.color = param1;
      }
      
      public function §8Z§() : void
      {
         this.§@]§ = null;
      }
      
      public function §0!&§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§>!A§.§9u§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§7$§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §[!H§(param1:Number) : void
      {
         var _loc2_:int = this.§!w§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§!w§[_loc2_].updateLifeTime(param1);
            if(this.§!w§[_loc2_].lifeTime < 0)
            {
               this.§7$§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §7$§(param1:int) : void
      {
         if(!this.§6!H§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§0!U§ = this.§6!H§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§+i§ = null;
         if(param1 < this.§!w§.length)
         {
            (_loc5_ = this.§!w§[param1]).§#!l§(_loc4_);
            _loc5_.§8"§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §+i§(_loc3_.texture,_loc4_);
            this.§!w§.push(_loc5_);
            this.§7U§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§&!j§.width / 2 + Math.random() * this.§&!j§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§&!j§.height / 2 + Math.random() * this.§&!j§.height;
      }
      
      public function §+V§() : §%!a§
      {
         return this.§&!j§;
      }
   }
}
