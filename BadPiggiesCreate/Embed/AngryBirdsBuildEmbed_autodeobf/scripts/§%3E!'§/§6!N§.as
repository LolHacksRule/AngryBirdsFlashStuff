package §>!'§
{
   import §-!`§.§7!J§;
   import §-!`§.Sprite;
   import §0!-§.Texture;
   import §<!<§.§1u§;
   import §<!<§.§7E§;
   import §<!B§.b2Vec2;
   import §=U§.§&!U§;
   import §=U§.§;P§;
   import §=U§.§>?§;
   import §?!6§.§"!0§;
   import flash.filters.GlowFilter;
   
   public class §6!N§
   {
      
      public static const §0+§:Number = 1000;
      
      public static const §>!7§:Number = 500;
      
      private static var §9!U§:Array = null;
       
      
      private var §^!d§:§<!3§;
      
      public var §-!5§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §2F§:Number;
      
      public var §+h§:Number;
      
      public var §];§:int = -1;
      
      private var §2!j§:String;
      
      private var §#!M§:§;P§;
      
      private var §@F§:§;P§;
      
      private var §,!^§:§7!J§;
      
      private var §+!g§:Number = 0;
      
      private var §<§:Number = 0;
      
      public var §6!=§:int = -1;
      
      private var §4u§:int = -1;
      
      private var §"S§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §1V§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §+!O§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §extends§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §6v§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §,!M§:String = "fly";
      
      public var §&S§:String = "fly_yell";
      
      public var §4!3§:GlowFilter;
      
      private var §"!1§:Vector.<§1u§>;
      
      private var §4!"§:§;P§;
      
      private var §>E§:Sprite = null;
      
      private var §-n§:§7E§;
      
      public function §6!N§(param1:§<!3§, param2:Sprite, param3:§7E§)
      {
         super();
         this.§-n§ = param3;
         this.§^!d§ = param1;
         this.§2!j§ = this.§^!d§.§>p§;
         this.§"!1§ = new Vector.<§1u§>();
         this.§>E§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§1u§ = null;
         this.§8d§();
         if(this.§"!1§)
         {
            while(this.§"!1§.length > 0)
            {
               _loc1_ = this.§"!1§.pop();
               _loc1_.dispose();
            }
            this.§"!1§ = null;
         }
      }
      
      public function §-!,§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§];§ = param1;
         this.§+h§ = param2;
         this.§,!+§();
      }
      
      public function §in §(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2F§ = 1;
            return;
         }
         this.§2F§ = this.mW / this.mH;
         if(this.§2F§ < 1)
         {
            this.§2F§ = 1 / this.§2F§;
         }
         this.§2F§ = Math.min(11,this.§2F§);
      }
      
      public function §3!F§(param1:§&!U§) : Boolean
      {
         var _loc2_:§>?§ = null;
         var _loc3_:Texture = null;
         if(this.§^!d§.isGround())
         {
            return false;
         }
         this.§4!"§ = param1.§`!!§("SPARKLES");
         this.§#!M§ = param1.§`!!§(this.§2!j§);
         this.§@F§ = this.§#!M§;
         var _loc4_:Number = 1;
         if(this.§@F§)
         {
            _loc2_ = this.§@F§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§-n§.textureManager.§8r§();
         }
         this.§,!^§ = new §7!J§(_loc3_);
         if(_loc2_)
         {
            this.§,!^§.x = -_loc2_.pivotX;
            this.§,!^§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§,!^§.x = -this.§,!^§.width / 2;
            this.§,!^§.y = -this.§,!^§.height / 2;
         }
         this.§,!^§.scaleX = _loc4_;
         this.§,!^§.scaleY = _loc4_;
         this.mW = this.§,!^§.width / 2;
         this.mH = this.§,!^§.height / 2;
         this.§>E§.addChild(this.§,!^§);
         return true;
      }
      
      public function §&u§(param1:§"!0§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§71§)
         {
            case §"!0§.§3I§:
               _loc2_ = param1.§#5§();
               _loc3_ = _loc2_[0];
               this.§+!g§ = _loc3_.x / §7E§.§8!'§;
               this.§<§ = _loc3_.y / §7E§.§8!'§;
               break;
            case §"!0§.§`C§:
         }
         this.§]T§();
      }
      
      public function §!!p§() : Array
      {
         return §!B§.§!!p§(null,this.§^!d§.§;!Z§());
      }
      
      public function §!!F§() : Array
      {
         return §!B§.§!!F§(null,this.§^!d§.§;!Z§());
      }
      
      public function §]!P§() : Array
      {
         return §!B§.§]!P§(null);
      }
      
      public function §,!+§() : void
      {
      }
      
      public function §&!Q§(param1:Number) : void
      {
         this.§>E§.scaleX = this.§>E§.scaleY = param1;
      }
      
      public function §]T§() : void
      {
         var _loc1_:§>?§ = null;
         if(!this.§#!M§)
         {
            return;
         }
         if(this.§+!O§)
         {
            this.§"S§ = 1;
         }
         else if(this.§^!d§.getSpecialAnimationProgress() >= 0 && this.§#!M§.getSubAnimation(this.§1V§))
         {
            this.§@F§ = this.§#!M§.getSubAnimation(this.§1V§);
            this.§"S§ = this.§@F§.getFrameCount() * this.§^!d§.getSpecialAnimationProgress();
            if(this.§"S§ == this.§@F§.getFrameCount() - 1 && this.§^!d§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§"S§;
            }
         }
         else if(this.mTryToSpecial && this.§#!M§.getSubAnimation(this.§1V§))
         {
            this.§@F§ = this.§#!M§.getSubAnimation(this.§1V§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§#!M§.getSubAnimation(this.§&S§))
         {
            this.§@F§ = this.§#!M§.getSubAnimation(this.§&S§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§#!M§.getSubAnimation(this.§extends§))
         {
            this.§@F§ = this.§#!M§.getSubAnimation(this.§extends§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§#!M§.getSubAnimation(this.§6v§))
         {
            this.§@F§ = this.§#!M§.getSubAnimation(this.§6v§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§#!M§.getSubAnimation(this.§,!M§))
         {
            this.§@F§ = this.§#!M§.getSubAnimation(this.§,!M§);
            this.mIsFlying = true;
         }
         else
         {
            this.§@F§ = this.§#!M§;
         }
         if(this.§@F§)
         {
            _loc1_ = this.§@F§.getFrame(this.§"S§);
            if(this.§,!^§ && _loc1_)
            {
               this.§,!^§.texture = _loc1_.texture;
               this.§,!^§.x = -_loc1_.pivotX - this.§+!g§;
               this.§,!^§.y = -_loc1_.pivotY - this.§<§;
               this.§,!^§.scaleX = _loc1_.scale;
               this.§,!^§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §'!i§() : void
      {
         this.§>E§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§6!=§ < 0)
         {
            this.§ !i§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§^!d§.§!!>§ / this.§^!d§.§1!s§) * this.§6!=§;
         if(_loc1_ != this.§4u§)
         {
            this.§4u§ = _loc1_;
            this.§"S§ = this.§4u§;
            this.§]T§();
         }
      }
      
      public function § !i§() : void
      {
         if(this.§#!M§)
         {
            this.§6!=§ = this.§#!M§.getFrameCount();
         }
      }
      
      public function §-!Q§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§4!3§ = new GlowFilter();
         this.§4!3§.blurX = param2;
         this.§4!3§.blurY = param3;
         this.§4!3§.color = param1;
      }
      
      public function §8d§() : void
      {
         this.§4!3§ = null;
      }
      
      public function §,y§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§^!d§.§'J§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§?!T§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §2!g§(param1:Number) : void
      {
         var _loc2_:int = this.§"!1§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§"!1§[_loc2_].updateLifeTime(param1);
            if(this.§"!1§[_loc2_].lifeTime < 0)
            {
               this.§?!T§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §?!T§(param1:int) : void
      {
         if(!this.§4!"§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§>?§ = this.§4!"§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§1u§ = null;
         if(param1 < this.§"!1§.length)
         {
            (_loc5_ = this.§"!1§[param1]).§^2§(_loc4_);
            _loc5_.§?O§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §1u§(_loc3_.texture,_loc4_);
            this.§"!1§.push(_loc5_);
            this.§>E§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§,!^§.width / 2 + Math.random() * this.§,!^§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§,!^§.height / 2 + Math.random() * this.§,!^§.height;
      }
      
      public function §+!V§() : §7!J§
      {
         return this.§,!^§;
      }
   }
}
