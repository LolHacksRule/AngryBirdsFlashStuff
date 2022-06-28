package § var§
{
   import §&H§.b2Vec2;
   import §0S§.§6R§;
   import §40§.§"e§;
   import §40§.§5G§;
   import §=`§.§#`§;
   import §=`§.§%!L§;
   import §=`§.§7!V§;
   import §?]§.Texture;
   import §`g§.§"<§;
   import §`g§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §7!r§
   {
      
      public static const §<!c§:Number = 1000;
      
      public static const §=2§:Number = 500;
      
      private static var §?j§:Array = null;
       
      
      private var each:§!u§;
      
      public var §'![§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §-!+§:Number;
      
      public var §4t§:Number;
      
      public var §0!W§:int = -1;
      
      private var §'" §:String;
      
      private var §0"$§:§%!L§;
      
      private var §^" §:§%!L§;
      
      private var §?!F§:§"<§;
      
      private var §=!V§:Number = 0;
      
      private var §2P§:Number = 0;
      
      public var §;`§:int = -1;
      
      private var §-!'§:int = -1;
      
      private var § if§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §`!A§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var § ^§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §^E§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §=!k§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var § !_§:String = "fly";
      
      public var §?Y§:String = "fly_yell";
      
      public var §2!G§:GlowFilter;
      
      private var §1!S§:Vector.<§"e§>;
      
      private var §1"§:§%!L§;
      
      private var §]2§:Sprite = null;
      
      private var §#!U§:§5G§;
      
      public function §7!r§(param1:§!u§, param2:Sprite, param3:§5G§)
      {
         super();
         this.§#!U§ = param3;
         this.each = param1;
         this.§'" § = this.each.§-!>§;
         this.§1!S§ = new Vector.<§"e§>();
         this.§]2§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"e§ = null;
         this.§#!&§();
         if(this.§1!S§)
         {
            while(this.§1!S§.length > 0)
            {
               _loc1_ = this.§1!S§.pop();
               _loc1_.dispose();
            }
            this.§1!S§ = null;
         }
      }
      
      public function §3![§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§0!W§ = param1;
         this.§4t§ = param2;
         this.§3!s§();
      }
      
      public function §^!o§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§-!+§ = 1;
            return;
         }
         this.§-!+§ = this.mW / this.mH;
         if(this.§-!+§ < 1)
         {
            this.§-!+§ = 1 / this.§-!+§;
         }
         this.§-!+§ = Math.min(11,this.§-!+§);
      }
      
      public function §]J§(param1:§7!V§) : Boolean
      {
         var _loc2_:§#`§ = null;
         var _loc3_:Texture = null;
         if(this.each.isGround())
         {
            return false;
         }
         this.§1"§ = param1.getAnimation("SPARKLES");
         this.§0"$§ = param1.getAnimation(this.§'" §);
         this.§^" § = this.§0"$§;
         var _loc4_:Number = 1;
         if(this.§^" §)
         {
            _loc2_ = this.§^" §.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§#!U§.textureManager.§9Y§();
         }
         this.§?!F§ = new §"<§(_loc3_);
         if(_loc2_)
         {
            this.§?!F§.x = -_loc2_.pivotX;
            this.§?!F§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§?!F§.x = -this.§?!F§.width / 2;
            this.§?!F§.y = -this.§?!F§.height / 2;
         }
         this.§?!F§.scaleX = _loc4_;
         this.§?!F§.scaleY = _loc4_;
         this.mW = this.§?!F§.width / 2;
         this.mH = this.§?!F§.height / 2;
         this.§]2§.addChild(this.§?!F§);
         return true;
      }
      
      public function §8c§(param1:§6R§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§0>§)
         {
            case §6R§.§9!Z§:
               _loc2_ = param1.§!!>§();
               _loc3_ = _loc2_[0];
               this.§=!V§ = _loc3_.x / §5G§.§6+§;
               this.§2P§ = _loc3_.y / §5G§.§6+§;
               break;
            case §6R§.§#""§:
         }
         this.§=!2§();
      }
      
      public function §[T§() : Array
      {
         return §7c§.§[T§(null,this.each.§,!y§());
      }
      
      public function §]x§() : Array
      {
         return §7c§.§]x§(null,this.each.§,!y§());
      }
      
      public function §=!"§() : Array
      {
         return §7c§.§=!"§(null);
      }
      
      public function §3!s§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§]2§.scaleX = this.§]2§.scaleY = param1;
      }
      
      public function §=!2§() : void
      {
         var _loc1_:§#`§ = null;
         if(!this.§0"$§)
         {
            return;
         }
         if(this.§ ^§)
         {
            this.§ if§ = 1;
         }
         else if(this.each.getSpecialAnimationProgress() >= 0 && this.§0"$§.getSubAnimation(this.§`!A§))
         {
            this.§^" § = this.§0"$§.getSubAnimation(this.§`!A§);
            this.§ if§ = this.§^" §.getFrameCount() * this.each.getSpecialAnimationProgress();
            if(this.§ if§ == this.§^" §.getFrameCount() - 1 && this.each.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§ if§;
            }
         }
         else if(this.mTryToSpecial && this.§0"$§.getSubAnimation(this.§`!A§))
         {
            this.§^" § = this.§0"$§.getSubAnimation(this.§`!A§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§0"$§.getSubAnimation(this.§?Y§))
         {
            this.§^" § = this.§0"$§.getSubAnimation(this.§?Y§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§0"$§.getSubAnimation(this.§^E§))
         {
            this.§^" § = this.§0"$§.getSubAnimation(this.§^E§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§0"$§.getSubAnimation(this.§=!k§))
         {
            this.§^" § = this.§0"$§.getSubAnimation(this.§=!k§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§0"$§.getSubAnimation(this.§ !_§))
         {
            this.§^" § = this.§0"$§.getSubAnimation(this.§ !_§);
            this.mIsFlying = true;
         }
         else
         {
            this.§^" § = this.§0"$§;
         }
         if(this.§^" §)
         {
            _loc1_ = this.§^" §.getFrame(this.§ if§);
            if(this.§?!F§ && _loc1_)
            {
               this.§?!F§.texture = _loc1_.texture;
               this.§?!F§.x = -_loc1_.pivotX - this.§=!V§;
               this.§?!F§.y = -_loc1_.pivotY - this.§2P§;
               this.§?!F§.scaleX = _loc1_.scale;
               this.§?!F§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §^!$§() : void
      {
         this.§]2§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§;`§ < 0)
         {
            this.§5!^§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.each.§0M§ / this.each.§]!3§) * this.§;`§;
         if(_loc1_ != this.§-!'§)
         {
            this.§-!'§ = _loc1_;
            this.§ if§ = this.§-!'§;
            this.§=!2§();
         }
      }
      
      public function §5!^§() : void
      {
         if(this.§0"$§)
         {
            this.§;`§ = this.§0"$§.getFrameCount();
         }
      }
      
      public function §[5§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§2!G§ = new GlowFilter();
         this.§2!G§.blurX = param2;
         this.§2!G§.blurY = param3;
         this.§2!G§.color = param1;
      }
      
      public function §#!&§() : void
      {
         this.§2!G§ = null;
      }
      
      public function §=!v§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.each.§^!e§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§6!Q§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §=7§(param1:Number) : void
      {
         var _loc2_:int = this.§1!S§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§1!S§[_loc2_].updateLifeTime(param1);
            if(this.§1!S§[_loc2_].lifeTime < 0)
            {
               this.§6!Q§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §6!Q§(param1:int) : void
      {
         if(!this.§1"§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§#`§ = this.§1"§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§"e§ = null;
         if(param1 < this.§1!S§.length)
         {
            (_loc5_ = this.§1!S§[param1]).§8#§(_loc4_);
            _loc5_.§]o§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §"e§(_loc3_.texture,_loc4_);
            this.§1!S§.push(_loc5_);
            this.§]2§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§?!F§.width / 2 + Math.random() * this.§?!F§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§?!F§.height / 2 + Math.random() * this.§?!F§.height;
      }
      
      public function §-F§() : §"<§
      {
         return this.§?!F§;
      }
   }
}
