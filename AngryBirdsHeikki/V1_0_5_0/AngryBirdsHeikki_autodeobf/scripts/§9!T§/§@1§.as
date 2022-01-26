package §9!T§
{
   import § !9§.Texture;
   import §+D§.§5!P§;
   import §+D§.§6!I§;
   import §,!3§.b2Vec2;
   import §8!I§.§0!^§;
   import §[=§.§@!#§;
   import §[=§.Sprite;
   import §`!H§.§3!c§;
   import §`!H§.§5f§;
   import §`!H§.§9;§;
   import flash.filters.GlowFilter;
   
   public class §@1§
   {
      
      public static const §2!W§:Number = 1000;
      
      public static const §&#§:Number = 500;
      
      private static var §@>§:Array = null;
       
      
      private var §%!,§:§;!"§;
      
      public var §46§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §]b§:Number;
      
      public var §=![§:Number;
      
      public var §-!,§:int = -1;
      
      private var §5!§:String;
      
      private var §9!S§:§3!c§;
      
      private var §9H§:§3!c§;
      
      private var §;b§:§@!#§;
      
      private var §'!?§:Number = 0;
      
      private var § !B§:Number = 0;
      
      public var §4!D§:int = -1;
      
      private var §7H§:int = -1;
      
      private var §4!a§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var § try§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §<W§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §#!O§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §[!;§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §7!6§:String = "fly";
      
      public var §'!I§:String = "fly_yell";
      
      public var §4W§:GlowFilter;
      
      private var §"E§:Vector.<§6!I§>;
      
      private var §3!M§:§3!c§;
      
      private var §%@§:Sprite = null;
      
      private var §^!4§:§5!P§;
      
      public function §@1§(param1:§;!"§, param2:Sprite, param3:§5!P§)
      {
         super();
         this.§^!4§ = param3;
         this.§%!,§ = param1;
         this.§5!§ = this.§%!,§.§%!1§;
         this.§"E§ = new Vector.<§6!I§>();
         this.§%@§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6!I§ = null;
         this.§?n§();
         if(this.§"E§)
         {
            while(this.§"E§.length > 0)
            {
               _loc1_ = this.§"E§.pop();
               _loc1_.dispose();
            }
            this.§"E§ = null;
         }
      }
      
      public function §8!A§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§-!,§ = param1;
         this.§=![§ = param2;
         this.§<%§();
      }
      
      public function §^!Y§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]b§ = 1;
            return;
         }
         this.§]b§ = this.mW / this.mH;
         if(this.§]b§ < 1)
         {
            this.§]b§ = 1 / this.§]b§;
         }
         this.§]b§ = Math.min(11,this.§]b§);
      }
      
      public function §<3§(param1:§9;§) : Boolean
      {
         var _loc2_:§5f§ = null;
         var _loc3_:Texture = null;
         if(this.§%!,§.isGround())
         {
            return false;
         }
         this.§3!M§ = param1.§3![§("SPARKLES");
         this.§9!S§ = param1.§3![§(this.§5!§);
         this.§9H§ = this.§9!S§;
         var _loc4_:Number = 1;
         if(this.§9H§)
         {
            _loc2_ = this.§9H§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§^!4§.textureManager.§%!W§();
         }
         this.§;b§ = new §@!#§(_loc3_);
         if(_loc2_)
         {
            this.§;b§.x = -_loc2_.pivotX;
            this.§;b§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§;b§.x = -this.§;b§.width / 2;
            this.§;b§.y = -this.§;b§.height / 2;
         }
         this.§;b§.scaleX = _loc4_;
         this.§;b§.scaleY = _loc4_;
         this.mW = this.§;b§.width / 2;
         this.mH = this.§;b§.height / 2;
         this.§%@§.addChild(this.§;b§);
         return true;
      }
      
      public function §9V§(param1:§0!^§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§89§)
         {
            case §0!^§.§>!,§:
               _loc2_ = param1.§'%§();
               _loc3_ = _loc2_[0];
               this.§'!?§ = _loc3_.x / §5!P§.§>M§;
               this.§ !B§ = _loc3_.y / §5!P§.§>M§;
               break;
            case §0!^§.§-!J§:
         }
         this.§3H§();
      }
      
      public function § w§() : Array
      {
         return § !7§.§ w§(null,this.§%!,§.§2!L§());
      }
      
      public function §?!Z§() : Array
      {
         return § !7§.§?!Z§(null,this.§%!,§.§2!L§());
      }
      
      public function §!!>§() : Array
      {
         return § !7§.§!!>§(null);
      }
      
      public function §<%§() : void
      {
      }
      
      public function §9!^§(param1:Number) : void
      {
         this.§%@§.scaleX = this.§%@§.scaleY = param1;
      }
      
      public function §3H§() : void
      {
         var _loc1_:§5f§ = null;
         if(!this.§9!S§)
         {
            return;
         }
         if(this.§<W§)
         {
            this.§4!a§ = 1;
         }
         else if(this.§%!,§.getSpecialAnimationProgress() >= 0 && this.§9!S§.getSubAnimation(this.§ try§))
         {
            this.§9H§ = this.§9!S§.getSubAnimation(this.§ try§);
            this.§4!a§ = this.§9H§.getFrameCount() * this.§%!,§.getSpecialAnimationProgress();
            if(this.§4!a§ == this.§9H§.getFrameCount() - 1 && this.§%!,§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§4!a§;
            }
         }
         else if(this.mTryToSpecial && this.§9!S§.getSubAnimation(this.§ try§))
         {
            this.§9H§ = this.§9!S§.getSubAnimation(this.§ try§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§9!S§.getSubAnimation(this.§'!I§))
         {
            this.§9H§ = this.§9!S§.getSubAnimation(this.§'!I§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§9!S§.getSubAnimation(this.§#!O§))
         {
            this.§9H§ = this.§9!S§.getSubAnimation(this.§#!O§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§9!S§.getSubAnimation(this.§[!;§))
         {
            this.§9H§ = this.§9!S§.getSubAnimation(this.§[!;§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§9!S§.getSubAnimation(this.§7!6§))
         {
            this.§9H§ = this.§9!S§.getSubAnimation(this.§7!6§);
            this.mIsFlying = true;
         }
         else
         {
            this.§9H§ = this.§9!S§;
         }
         if(this.§9H§)
         {
            _loc1_ = this.§9H§.getFrame(this.§4!a§);
            if(this.§;b§ && _loc1_)
            {
               this.§;b§.texture = _loc1_.texture;
               this.§;b§.x = -_loc1_.pivotX - this.§'!?§;
               this.§;b§.y = -_loc1_.pivotY - this.§ !B§;
               this.§;b§.scaleX = _loc1_.scale;
               this.§;b§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §&q§() : void
      {
         this.§%@§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§4!D§ < 0)
         {
            this.§+§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§%!,§.§1K§ / this.§%!,§.§0!a§) * this.§4!D§;
         if(_loc1_ != this.§7H§)
         {
            this.§7H§ = _loc1_;
            this.§4!a§ = this.§7H§;
            this.§3H§();
         }
      }
      
      public function §+§() : void
      {
         if(this.§9!S§)
         {
            this.§4!D§ = this.§9!S§.getFrameCount();
         }
      }
      
      public function §<!=§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§4W§ = new GlowFilter();
         this.§4W§.blurX = param2;
         this.§4W§.blurY = param3;
         this.§4W§.color = param1;
      }
      
      public function §?n§() : void
      {
         this.§4W§ = null;
      }
      
      public function §3!>§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§%!,§.§&@§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§ !?§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §2!S§(param1:Number) : void
      {
         var _loc2_:int = this.§"E§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§"E§[_loc2_].updateLifeTime(param1);
            if(this.§"E§[_loc2_].lifeTime < 0)
            {
               this.§ !?§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function § !?§(param1:int) : void
      {
         if(!this.§3!M§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§5f§ = this.§3!M§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§6!I§ = null;
         if(param1 < this.§"E§.length)
         {
            (_loc5_ = this.§"E§[param1]).§-!I§(_loc4_);
            _loc5_.§9!W§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §6!I§(_loc3_.texture,_loc4_);
            this.§"E§.push(_loc5_);
            this.§%@§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§;b§.width / 2 + Math.random() * this.§;b§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§;b§.height / 2 + Math.random() * this.§;b§.height;
      }
      
      public function §&!E§() : §@!#§
      {
         return this.§;b§;
      }
   }
}
