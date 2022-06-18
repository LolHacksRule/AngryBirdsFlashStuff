package §<[§
{
   import §&!7§.Texture;
   import §+!%§.§ ,§;
   import §+!%§.§'!"§;
   import §,Y§.§^!1§;
   import §->§.§2! §;
   import §->§.Sprite;
   import §[!$§.§2!%§;
   import §[!$§.§89§;
   import §[!$§.§`d§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §;+§
   {
      
      public static const §@2§:Number = 1000;
      
      public static const §`!6§:Number = 500;
      
      private static var §7!>§:Array = null;
       
      
      private var §]E§:§>!4§;
      
      public var §'Q§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §`!;§:Number;
      
      public var §[N§:Number;
      
      public var §4!D§:int = -1;
      
      private var §&o§:String;
      
      private var § d§:§2!%§;
      
      private var §-T§:§2!%§;
      
      private var §"m§:§2! §;
      
      private var §[;§:Number = 0;
      
      private var §[Q§:Number = 0;
      
      public var §&P§:int = -1;
      
      private var §9y§:int = -1;
      
      private var §@c§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §=!G§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §8?§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §%K§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §=!"§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §!!!§:String = "fly";
      
      public var §43§:String = "fly_yell";
      
      public var §,!1§:GlowFilter;
      
      private var §=o§:Vector.<§ ,§>;
      
      private var §^L§:§2!%§;
      
      private var §'M§:Sprite = null;
      
      private var §]U§:§'!"§;
      
      public function §;+§(param1:§>!4§, param2:Sprite, param3:§'!"§)
      {
         super();
         this.§]U§ = param3;
         this.§]E§ = param1;
         this.§&o§ = this.§]E§.§5!#§;
         this.§=o§ = new Vector.<§ ,§>();
         this.§'M§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ ,§ = null;
         this.§%!7§();
         if(this.§=o§)
         {
            while(this.§=o§.length > 0)
            {
               _loc1_ = this.§=o§.pop();
               _loc1_.dispose();
            }
            this.§=o§ = null;
         }
      }
      
      public function §9_§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§4!D§ = param1;
         this.§[N§ = param2;
         this.§@[§();
      }
      
      public function §?n§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`!;§ = 1;
            return;
         }
         this.§`!;§ = this.mW / this.mH;
         if(this.§`!;§ < 1)
         {
            this.§`!;§ = 1 / this.§`!;§;
         }
         this.§`!;§ = Math.min(11,this.§`!;§);
      }
      
      public function §6-§(param1:§`d§) : Boolean
      {
         var _loc2_:§89§ = null;
         var _loc3_:Texture = null;
         if(this.§]E§.isGround())
         {
            return false;
         }
         this.§^L§ = param1.§`!-§("SPARKLES");
         this.§ d§ = param1.§`!-§(this.§&o§);
         this.§-T§ = this.§ d§;
         var _loc4_:Number = 1;
         if(this.§-T§)
         {
            _loc2_ = this.§-T§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§]U§.textureManager.§!L§();
         }
         this.§"m§ = new §2! §(_loc3_);
         if(_loc2_)
         {
            this.§"m§.x = -_loc2_.pivotX;
            this.§"m§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§"m§.x = -this.§"m§.width / 2;
            this.§"m§.y = -this.§"m§.height / 2;
         }
         this.§"m§.scaleX = _loc4_;
         this.§"m§.scaleY = _loc4_;
         this.mW = this.§"m§.width / 2;
         this.mH = this.§"m§.height / 2;
         this.§'M§.addChild(this.§"m§);
         return true;
      }
      
      public function §7>§(param1:§^!1§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§ 5§)
         {
            case §^!1§.§>V§:
               _loc2_ = param1.§9>§();
               _loc3_ = _loc2_[0];
               this.§[;§ = _loc3_.x / §'!"§.§%!8§;
               this.§[Q§ = _loc3_.y / §'!"§.§%!8§;
               break;
            case §^!1§.§5!D§:
         }
         this.§2!9§();
      }
      
      public function §!H§() : Array
      {
         return §;!E§.§!H§(null,this.§]E§.§'!!§());
      }
      
      public function §8!<§() : Array
      {
         return §;!E§.§8!<§(null,this.§]E§.§'!!§());
      }
      
      public function §"!-§() : Array
      {
         return §;!E§.§"!-§(null);
      }
      
      public function §@[§() : void
      {
      }
      
      public function §;8§(param1:Number) : void
      {
         this.§'M§.scaleX = this.§'M§.scaleY = param1;
      }
      
      public function §2!9§() : void
      {
         var _loc1_:§89§ = null;
         if(!this.§ d§)
         {
            return;
         }
         if(this.§8?§)
         {
            this.§@c§ = 1;
         }
         else if(this.§]E§.getSpecialAnimationProgress() >= 0 && this.§ d§.getSubAnimation(this.§=!G§))
         {
            this.§-T§ = this.§ d§.getSubAnimation(this.§=!G§);
            this.§@c§ = this.§-T§.getFrameCount() * this.§]E§.getSpecialAnimationProgress();
            if(this.§@c§ == this.§-T§.getFrameCount() - 1 && this.§]E§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§@c§;
            }
         }
         else if(this.mTryToSpecial && this.§ d§.getSubAnimation(this.§=!G§))
         {
            this.§-T§ = this.§ d§.getSubAnimation(this.§=!G§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§ d§.getSubAnimation(this.§43§))
         {
            this.§-T§ = this.§ d§.getSubAnimation(this.§43§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§ d§.getSubAnimation(this.§%K§))
         {
            this.§-T§ = this.§ d§.getSubAnimation(this.§%K§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§ d§.getSubAnimation(this.§=!"§))
         {
            this.§-T§ = this.§ d§.getSubAnimation(this.§=!"§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§ d§.getSubAnimation(this.§!!!§))
         {
            this.§-T§ = this.§ d§.getSubAnimation(this.§!!!§);
            this.mIsFlying = true;
         }
         else
         {
            this.§-T§ = this.§ d§;
         }
         if(this.§-T§)
         {
            _loc1_ = this.§-T§.getFrame(this.§@c§);
            if(this.§"m§ && _loc1_)
            {
               this.§"m§.texture = _loc1_.texture;
               this.§"m§.x = -_loc1_.pivotX - this.§[;§;
               this.§"m§.y = -_loc1_.pivotY - this.§[Q§;
               this.§"m§.scaleX = _loc1_.scale;
               this.§"m§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §1!4§() : void
      {
         this.§'M§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§&P§ < 0)
         {
            this.§>x§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§]E§.§;%§ / this.§]E§.§&?§) * this.§&P§;
         if(_loc1_ != this.§9y§)
         {
            this.§9y§ = _loc1_;
            this.§@c§ = this.§9y§;
            this.§2!9§();
         }
      }
      
      public function §>x§() : void
      {
         if(this.§ d§)
         {
            this.§&P§ = this.§ d§.getFrameCount();
         }
      }
      
      public function §&Z§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§,!1§ = new GlowFilter();
         this.§,!1§.blurX = param2;
         this.§,!1§.blurY = param3;
         this.§,!1§.color = param1;
      }
      
      public function §%!7§() : void
      {
         this.§,!1§ = null;
      }
      
      public function §?a§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§]E§.§-I§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§%!§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §;!B§(param1:Number) : void
      {
         var _loc2_:int = this.§=o§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§=o§[_loc2_].updateLifeTime(param1);
            if(this.§=o§[_loc2_].lifeTime < 0)
            {
               this.§%!§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §%!§(param1:int) : void
      {
         if(!this.§^L§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§89§ = this.§^L§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§ ,§ = null;
         if(param1 < this.§=o§.length)
         {
            (_loc5_ = this.§=o§[param1]).§"Z§(_loc4_);
            _loc5_.§@j§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new § ,§(_loc3_.texture,_loc4_);
            this.§=o§.push(_loc5_);
            this.§'M§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§"m§.width / 2 + Math.random() * this.§"m§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§"m§.height / 2 + Math.random() * this.§"m§.height;
      }
      
      public function §#0§() : §2! §
      {
         return this.§"m§;
      }
   }
}
