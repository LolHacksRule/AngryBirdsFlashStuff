package §;z§
{
   import §"P§.§^s§;
   import §&!+§.b2Vec2;
   import §,H§.§;!9§;
   import §,H§.Sprite;
   import §,Y§.Texture;
   import §-A§.§ J§;
   import §-A§.§%9§;
   import §2!4§.§>5§;
   import §2!4§.§]!7§;
   import §2!4§.§`!7§;
   import flash.filters.GlowFilter;
   
   public class §0!Q§
   {
      
      public static const §%!?§:Number = 1000;
      
      public static const §"w§:Number = 500;
      
      private static var §&^§:Array = null;
       
      
      private var §=!]§:§!+§;
      
      public var §!_§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §`=§:Number;
      
      public var §-!Z§:Number;
      
      public var §-y§:int = -1;
      
      private var §0!@§:String;
      
      private var §8K§:§`!7§;
      
      private var §#!4§:§`!7§;
      
      private var §#o§:§;!9§;
      
      private var §6!Q§:Number = 0;
      
      private var §3!8§:Number = 0;
      
      public var §6n§:int = -1;
      
      private var §&!;§:int = -1;
      
      private var §^!A§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §#!N§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §`!P§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §6!^§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §#j§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §6!<§:String = "fly";
      
      public var §1!O§:String = "fly_yell";
      
      public var §]!,§:GlowFilter;
      
      private var §%f§:Vector.<§ J§>;
      
      private var §6!C§:§`!7§;
      
      private var §=#§:Sprite = null;
      
      private var §return§:§%9§;
      
      public function §0!Q§(param1:§!+§, param2:Sprite, param3:§%9§)
      {
         super();
         this.§return§ = param3;
         this.§=!]§ = param1;
         this.§0!@§ = this.§=!]§.§10§;
         this.§%f§ = new Vector.<§ J§>();
         this.§=#§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ J§ = null;
         this.§3-§();
         if(this.§%f§)
         {
            while(this.§%f§.length > 0)
            {
               _loc1_ = this.§%f§.pop();
               _loc1_.dispose();
            }
            this.§%f§ = null;
         }
      }
      
      public function §!!I§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§-y§ = param1;
         this.§-!Z§ = param2;
         this.§-k§();
      }
      
      public function §<<§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`=§ = 1;
            return;
         }
         this.§`=§ = this.mW / this.mH;
         if(this.§`=§ < 1)
         {
            this.§`=§ = 1 / this.§`=§;
         }
         this.§`=§ = Math.min(11,this.§`=§);
      }
      
      public function §0!"§(param1:§]!7§) : Boolean
      {
         var _loc2_:§>5§ = null;
         var _loc3_:Texture = null;
         if(this.§=!]§.isGround())
         {
            return false;
         }
         this.§6!C§ = param1.§ !2§("SPARKLES");
         this.§8K§ = param1.§ !2§(this.§0!@§);
         this.§#!4§ = this.§8K§;
         var _loc4_:Number = 1;
         if(this.§#!4§)
         {
            _loc2_ = this.§#!4§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§return§.§&w§.§[!D§();
         }
         this.§#o§ = new §;!9§(_loc3_);
         if(_loc2_)
         {
            this.§#o§.x = -_loc2_.pivotX;
            this.§#o§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§#o§.x = -this.§#o§.width / 2;
            this.§#o§.y = -this.§#o§.height / 2;
         }
         this.§#o§.scaleX = _loc4_;
         this.§#o§.scaleY = _loc4_;
         this.mW = this.§#o§.width / 2;
         this.mH = this.§#o§.height / 2;
         this.§=#§.addChild(this.§#o§);
         return true;
      }
      
      public function §>w§(param1:§^s§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§!T§)
         {
            case §^s§.§=4§:
               _loc2_ = param1.§7z§();
               _loc3_ = _loc2_[0];
               this.§6!Q§ = _loc3_.x / §%9§.§1[§;
               this.§3!8§ = _loc3_.y / §%9§.§1[§;
               break;
            case §^s§.§2K§:
         }
         this.§[!Q§();
      }
      
      public function §3!6§() : Array
      {
         return §0!M§.§3!6§(null,this.§=!]§.§,!2§());
      }
      
      public function §2!D§() : Array
      {
         return §0!M§.§2!D§(null,this.§=!]§.§,!2§());
      }
      
      public function §61§() : Array
      {
         return §0!M§.§61§(null);
      }
      
      public function §-k§() : void
      {
      }
      
      public function §%!X§(param1:Number) : void
      {
         this.§=#§.scaleX = this.§=#§.scaleY = param1;
      }
      
      public function §[!Q§() : void
      {
         var _loc1_:§>5§ = null;
         if(!this.§8K§)
         {
            return;
         }
         if(this.§`!P§)
         {
            this.§^!A§ = 1;
         }
         else if(this.§=!]§.getSpecialAnimationProgress() >= 0 && this.§8K§.getSubAnimation(this.§#!N§))
         {
            this.§#!4§ = this.§8K§.getSubAnimation(this.§#!N§);
            this.§^!A§ = this.§#!4§.getFrameCount() * this.§=!]§.getSpecialAnimationProgress();
            if(this.§^!A§ == this.§#!4§.getFrameCount() - 1 && this.§=!]§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§^!A§;
            }
         }
         else if(this.mTryToSpecial && this.§8K§.getSubAnimation(this.§#!N§))
         {
            this.§#!4§ = this.§8K§.getSubAnimation(this.§#!N§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§8K§.getSubAnimation(this.§1!O§))
         {
            this.§#!4§ = this.§8K§.getSubAnimation(this.§1!O§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§8K§.getSubAnimation(this.§6!^§))
         {
            this.§#!4§ = this.§8K§.getSubAnimation(this.§6!^§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§8K§.getSubAnimation(this.§#j§))
         {
            this.§#!4§ = this.§8K§.getSubAnimation(this.§#j§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§8K§.getSubAnimation(this.§6!<§))
         {
            this.§#!4§ = this.§8K§.getSubAnimation(this.§6!<§);
            this.mIsFlying = true;
         }
         else
         {
            this.§#!4§ = this.§8K§;
         }
         if(this.§#!4§)
         {
            _loc1_ = this.§#!4§.getFrame(this.§^!A§);
            if(this.§#o§ && _loc1_)
            {
               this.§#o§.texture = _loc1_.texture;
               this.§#o§.x = -_loc1_.pivotX - this.§6!Q§;
               this.§#o§.y = -_loc1_.pivotY - this.§3!8§;
               this.§#o§.scaleX = _loc1_.scale;
               this.§#o§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §6!3§() : void
      {
         this.§=#§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§6n§ < 0)
         {
            this.§'!F§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§=!]§.§^,§ / this.§=!]§.§[!,§) * this.§6n§;
         if(_loc1_ != this.§&!;§)
         {
            this.§&!;§ = _loc1_;
            this.§^!A§ = this.§&!;§;
            this.§[!Q§();
         }
      }
      
      public function §'!F§() : void
      {
         if(this.§8K§)
         {
            this.§6n§ = this.§8K§.getFrameCount();
         }
      }
      
      public function § !!§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§]!,§ = new GlowFilter();
         this.§]!,§.blurX = param2;
         this.§]!,§.blurY = param3;
         this.§]!,§.color = param1;
      }
      
      public function §3-§() : void
      {
         this.§]!,§ = null;
      }
      
      public function §+!W§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§=!]§.§4T§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§]b§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §6M§(param1:Number) : void
      {
         var _loc2_:int = this.§%f§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§%f§[_loc2_].updateLifeTime(param1);
            if(this.§%f§[_loc2_].lifeTime < 0)
            {
               this.§]b§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §]b§(param1:int) : void
      {
         if(!this.§6!C§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§>5§ = this.§6!C§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§ J§ = null;
         if(param1 < this.§%f§.length)
         {
            (_loc5_ = this.§%f§[param1]).§3!R§(_loc4_);
            _loc5_.§6!§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new § J§(_loc3_.texture,_loc4_);
            this.§%f§.push(_loc5_);
            this.§=#§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§#o§.width / 2 + Math.random() * this.§#o§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§#o§.height / 2 + Math.random() * this.§#o§.height;
      }
      
      public function §?8§() : §;!9§
      {
         return this.§#o§;
      }
   }
}
