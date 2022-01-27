package §&!8§
{
   import §!r§.§2k§;
   import §,§.§ p§;
   import §,§.§]!,§;
   import §6!H§.b2Vec2;
   import §9t§.§"h§;
   import §9t§.§&!W§;
   import §9t§.§35§;
   import §]!a§.Texture;
   import §^a§.§6p§;
   import §^a§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §%$§
   {
      
      public static const §&!D§:Number = 1000;
      
      public static const §7I§:Number = 500;
      
      private static var §`!4§:Array = null;
       
      
      private var §1S§:§[g§;
      
      public var §0"§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §6j§:Number;
      
      public var §^!0§:Number;
      
      public var §%!G§:int = -1;
      
      private var §7r§:String;
      
      private var §,!2§:§"h§;
      
      private var §<r§:§"h§;
      
      private var §#P§:§6p§;
      
      private var §&!_§:Number = 0;
      
      private var §6!S§:Number = 0;
      
      public var §`!D§:int = -1;
      
      private var §[C§:int = -1;
      
      private var §=!-§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §>!@§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §!!C§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §<!6§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §5!=§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §?@§:String = "fly";
      
      public var §2o§:String = "fly_yell";
      
      public var §9!'§:GlowFilter;
      
      private var §0+§:Vector.<§]!,§>;
      
      private var §=7§:§"h§;
      
      private var §8!2§:Sprite = null;
      
      private var §^!I§:§ p§;
      
      public function §%$§(param1:§[g§, param2:Sprite, param3:§ p§)
      {
         super();
         this.§^!I§ = param3;
         this.§1S§ = param1;
         this.§7r§ = this.§1S§.§>p§;
         this.§0+§ = new Vector.<§]!,§>();
         this.§8!2§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]!,§ = null;
         this.§#y§();
         if(this.§0+§)
         {
            while(this.§0+§.length > 0)
            {
               _loc1_ = this.§0+§.pop();
               _loc1_.dispose();
            }
            this.§0+§ = null;
         }
      }
      
      public function §19§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§%!G§ = param1;
         this.§^!0§ = param2;
         this.§1Y§();
      }
      
      public function §[T§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6j§ = 1;
            return;
         }
         this.§6j§ = this.mW / this.mH;
         if(this.§6j§ < 1)
         {
            this.§6j§ = 1 / this.§6j§;
         }
         this.§6j§ = Math.min(11,this.§6j§);
      }
      
      public function §+!3§(param1:§&!W§) : Boolean
      {
         var _loc2_:§35§ = null;
         var _loc3_:Texture = null;
         if(this.§1S§.isGround())
         {
            return false;
         }
         this.§=7§ = param1.§;5§("SPARKLES");
         this.§,!2§ = param1.§;5§(this.§7r§);
         this.§<r§ = this.§,!2§;
         var _loc4_:Number = 1;
         if(this.§<r§)
         {
            _loc2_ = this.§<r§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§^!I§.§],§.§93§();
         }
         this.§#P§ = new §6p§(_loc3_);
         if(_loc2_)
         {
            this.§#P§.x = -_loc2_.pivotX;
            this.§#P§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§#P§.x = -this.§#P§.width / 2;
            this.§#P§.y = -this.§#P§.height / 2;
         }
         this.§#P§.scaleX = _loc4_;
         this.§#P§.scaleY = _loc4_;
         this.mW = this.§#P§.width / 2;
         this.mH = this.§#P§.height / 2;
         this.§8!2§.addChild(this.§#P§);
         return true;
      }
      
      public function §+!,§(param1:§2k§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§4`§)
         {
            case §2k§.§#N§:
               _loc2_ = param1.§&!B§();
               _loc3_ = _loc2_[0];
               this.§&!_§ = _loc3_.x / § p§.§]!E§;
               this.§6!S§ = _loc3_.y / § p§.§]!E§;
               break;
            case §2k§.§<!"§:
         }
         this.§8P§();
      }
      
      public function §>s§() : Array
      {
         return §,!D§.§>s§(null,this.§1S§.§[n§());
      }
      
      public function §"g§() : Array
      {
         return §,!D§.§"g§(null,this.§1S§.§[n§());
      }
      
      public function §?L§() : Array
      {
         return §,!D§.§?L§(null);
      }
      
      public function §1Y§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§8!2§.scaleX = this.§8!2§.scaleY = param1;
      }
      
      public function §8P§() : void
      {
         var _loc1_:§35§ = null;
         if(!this.§,!2§)
         {
            return;
         }
         if(this.§!!C§)
         {
            this.§=!-§ = 1;
         }
         else if(this.§1S§.getSpecialAnimationProgress() >= 0 && this.§,!2§.getSubAnimation(this.§>!@§))
         {
            this.§<r§ = this.§,!2§.getSubAnimation(this.§>!@§);
            this.§=!-§ = this.§<r§.getFrameCount() * this.§1S§.getSpecialAnimationProgress();
            if(this.§=!-§ == this.§<r§.getFrameCount() - 1 && this.§1S§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§=!-§;
            }
         }
         else if(this.mTryToSpecial && this.§,!2§.getSubAnimation(this.§>!@§))
         {
            this.§<r§ = this.§,!2§.getSubAnimation(this.§>!@§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§,!2§.getSubAnimation(this.§2o§))
         {
            this.§<r§ = this.§,!2§.getSubAnimation(this.§2o§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§,!2§.getSubAnimation(this.§<!6§))
         {
            this.§<r§ = this.§,!2§.getSubAnimation(this.§<!6§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§,!2§.getSubAnimation(this.§5!=§))
         {
            this.§<r§ = this.§,!2§.getSubAnimation(this.§5!=§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§,!2§.getSubAnimation(this.§?@§))
         {
            this.§<r§ = this.§,!2§.getSubAnimation(this.§?@§);
            this.mIsFlying = true;
         }
         else
         {
            this.§<r§ = this.§,!2§;
         }
         if(this.§<r§)
         {
            _loc1_ = this.§<r§.getFrame(this.§=!-§);
            if(this.§#P§ && _loc1_)
            {
               this.§#P§.texture = _loc1_.texture;
               this.§#P§.x = -_loc1_.pivotX - this.§&!_§;
               this.§#P§.y = -_loc1_.pivotY - this.§6!S§;
               this.§#P§.scaleX = _loc1_.scale;
               this.§#P§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §[l§() : void
      {
         this.§8!2§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§`!D§ < 0)
         {
            this.§0!#§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§1S§.§+_§ / this.§1S§.§ !G§) * this.§`!D§;
         if(_loc1_ != this.§[C§)
         {
            this.§[C§ = _loc1_;
            this.§=!-§ = this.§[C§;
            this.§8P§();
         }
      }
      
      public function §0!#§() : void
      {
         if(this.§,!2§)
         {
            this.§`!D§ = this.§,!2§.getFrameCount();
         }
      }
      
      public function §-§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§9!'§ = new GlowFilter();
         this.§9!'§.blurX = param2;
         this.§9!'§.blurY = param3;
         this.§9!'§.color = param1;
      }
      
      public function §#y§() : void
      {
         this.§9!'§ = null;
      }
      
      public function § !T§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§1S§.§>!+§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§%<§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §;t§(param1:Number) : void
      {
         var _loc2_:int = this.§0+§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§0+§[_loc2_].updateLifeTime(param1);
            if(this.§0+§[_loc2_].lifeTime < 0)
            {
               this.§%<§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §%<§(param1:int) : void
      {
         if(!this.§=7§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§35§ = this.§=7§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§]!,§ = null;
         if(param1 < this.§0+§.length)
         {
            (_loc5_ = this.§0+§[param1]).§,!h§(_loc4_);
            _loc5_.§#!0§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §]!,§(_loc3_.texture,_loc4_);
            this.§0+§.push(_loc5_);
            this.§8!2§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§#P§.width / 2 + Math.random() * this.§#P§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§#P§.height / 2 + Math.random() * this.§#P§.height;
      }
      
      public function §?7§() : §6p§
      {
         return this.§#P§;
      }
   }
}
