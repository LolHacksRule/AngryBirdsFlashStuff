package §[>§
{
   import §'G§.§2!]§;
   import §+a§.Texture;
   import §9!a§.§"z§;
   import §9!a§.Sprite;
   import §9T§.§6C§;
   import §9T§.§=!^§;
   import §=0§.§ !C§;
   import §=0§.§@_§;
   import §=0§.§^L§;
   import §[R§.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §]S§
   {
      
      public static const §]T§:Number = 1000;
      
      public static const §9V§:Number = 500;
      
      private static var §%h§:Array = null;
       
      
      private var §&!F§:§`,§;
      
      public var §8r§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §4[§:Number;
      
      public var §`!U§:Number;
      
      public var §1M§:int = -1;
      
      private var §'J§:String;
      
      private var §]!,§:§@_§;
      
      private var §;!1§:§@_§;
      
      private var § F§:§"z§;
      
      private var §2!0§:Number = 0;
      
      private var §>!=§:Number = 0;
      
      public var §45§:int = -1;
      
      private var §>7§:int = -1;
      
      private var §!Q§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §>!L§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §?u§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §#[§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §<!B§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §@!3§:String = "fly";
      
      public var §[h§:String = "fly_yell";
      
      public var §]!O§:GlowFilter;
      
      private var §]z§:Vector.<§6C§>;
      
      private var §%!8§:§@_§;
      
      private var §"$§:Sprite = null;
      
      private var §&?§:§=!^§;
      
      public function §]S§(param1:§`,§, param2:Sprite, param3:§=!^§)
      {
         super();
         this.§&?§ = param3;
         this.§&!F§ = param1;
         this.§'J§ = this.§&!F§.§@!]§;
         this.§]z§ = new Vector.<§6C§>();
         this.§"$§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6C§ = null;
         this.§7v§();
         if(this.§]z§)
         {
            while(this.§]z§.length > 0)
            {
               _loc1_ = this.§]z§.pop();
               _loc1_.dispose();
            }
            this.§]z§ = null;
         }
      }
      
      public function §&!Z§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§1M§ = param1;
         this.§`!U§ = param2;
         this.§8!§();
      }
      
      public function §,!L§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4[§ = 1;
            return;
         }
         this.§4[§ = this.mW / this.mH;
         if(this.§4[§ < 1)
         {
            this.§4[§ = 1 / this.§4[§;
         }
         this.§4[§ = Math.min(11,this.§4[§);
      }
      
      public function §`!@§(param1:§ !C§) : Boolean
      {
         var _loc2_:§^L§ = null;
         var _loc3_:Texture = null;
         if(this.§&!F§.isGround())
         {
            return false;
         }
         this.§%!8§ = param1.§#!E§("SPARKLES");
         this.§]!,§ = param1.§#!E§(this.§'J§);
         this.§;!1§ = this.§]!,§;
         var _loc4_:Number = 1;
         if(this.§;!1§)
         {
            _loc2_ = this.§;!1§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§&?§.§!c§.§^!W§();
         }
         this.§ F§ = new §"z§(_loc3_);
         if(_loc2_)
         {
            this.§ F§.x = -_loc2_.pivotX;
            this.§ F§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§ F§.x = -this.§ F§.width / 2;
            this.§ F§.y = -this.§ F§.height / 2;
         }
         this.§ F§.scaleX = _loc4_;
         this.§ F§.scaleY = _loc4_;
         this.mW = this.§ F§.width / 2;
         this.mH = this.§ F§.height / 2;
         this.§"$§.addChild(this.§ F§);
         return true;
      }
      
      public function §&B§(param1:§2!]§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§[I§)
         {
            case §2!]§.§[r§:
               _loc2_ = param1.§?<§();
               _loc3_ = _loc2_[0];
               this.§2!0§ = _loc3_.x / §=!^§.§4#§;
               this.§>!=§ = _loc3_.y / §=!^§.§4#§;
               break;
            case §2!]§.§6!$§:
         }
         this.§&8§();
      }
      
      public function §;'§() : Array
      {
         return §6d§.§;'§(null,this.§&!F§.§-S§());
      }
      
      public function §-z§() : Array
      {
         return §6d§.§-z§(null,this.§&!F§.§-S§());
      }
      
      public function §6!7§() : Array
      {
         return §6d§.§6!7§(null);
      }
      
      public function §8!§() : void
      {
      }
      
      public function §>U§(param1:Number) : void
      {
         this.§"$§.scaleX = this.§"$§.scaleY = param1;
      }
      
      public function §&8§() : void
      {
         var _loc1_:§^L§ = null;
         if(!this.§]!,§)
         {
            return;
         }
         if(this.§?u§)
         {
            this.§!Q§ = 1;
         }
         else if(this.§&!F§.getSpecialAnimationProgress() >= 0 && this.§]!,§.getSubAnimation(this.§>!L§))
         {
            this.§;!1§ = this.§]!,§.getSubAnimation(this.§>!L§);
            this.§!Q§ = this.§;!1§.getFrameCount() * this.§&!F§.getSpecialAnimationProgress();
            if(this.§!Q§ == this.§;!1§.getFrameCount() - 1 && this.§&!F§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§!Q§;
            }
         }
         else if(this.mTryToSpecial && this.§]!,§.getSubAnimation(this.§>!L§))
         {
            this.§;!1§ = this.§]!,§.getSubAnimation(this.§>!L§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§]!,§.getSubAnimation(this.§[h§))
         {
            this.§;!1§ = this.§]!,§.getSubAnimation(this.§[h§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§]!,§.getSubAnimation(this.§#[§))
         {
            this.§;!1§ = this.§]!,§.getSubAnimation(this.§#[§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§]!,§.getSubAnimation(this.§<!B§))
         {
            this.§;!1§ = this.§]!,§.getSubAnimation(this.§<!B§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§]!,§.getSubAnimation(this.§@!3§))
         {
            this.§;!1§ = this.§]!,§.getSubAnimation(this.§@!3§);
            this.mIsFlying = true;
         }
         else
         {
            this.§;!1§ = this.§]!,§;
         }
         if(this.§;!1§)
         {
            _loc1_ = this.§;!1§.getFrame(this.§!Q§);
            if(this.§ F§ && _loc1_)
            {
               this.§ F§.texture = _loc1_.texture;
               this.§ F§.x = -_loc1_.pivotX - this.§2!0§;
               this.§ F§.y = -_loc1_.pivotY - this.§>!=§;
               this.§ F§.scaleX = _loc1_.scale;
               this.§ F§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §3!D§() : void
      {
         this.§"$§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§45§ < 0)
         {
            this.§%!V§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§&!F§.§8!?§ / this.§&!F§.§6!_§) * this.§45§;
         if(_loc1_ != this.§>7§)
         {
            this.§>7§ = _loc1_;
            this.§!Q§ = this.§>7§;
            this.§&8§();
         }
      }
      
      public function §%!V§() : void
      {
         if(this.§]!,§)
         {
            this.§45§ = this.§]!,§.getFrameCount();
         }
      }
      
      public function §&3§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§]!O§ = new GlowFilter();
         this.§]!O§.blurX = param2;
         this.§]!O§.blurY = param3;
         this.§]!O§.color = param1;
      }
      
      public function §7v§() : void
      {
         this.§]!O§ = null;
      }
      
      public function §%!5§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§&!F§.§`!<§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§?j§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §7!0§(param1:Number) : void
      {
         var _loc2_:int = this.§]z§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§]z§[_loc2_].updateLifeTime(param1);
            if(this.§]z§[_loc2_].lifeTime < 0)
            {
               this.§?j§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §?j§(param1:int) : void
      {
         if(!this.§%!8§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§^L§ = this.§%!8§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§6C§ = null;
         if(param1 < this.§]z§.length)
         {
            (_loc5_ = this.§]z§[param1]).§='§(_loc4_);
            _loc5_.§4X§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §6C§(_loc3_.texture,_loc4_);
            this.§]z§.push(_loc5_);
            this.§"$§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§ F§.width / 2 + Math.random() * this.§ F§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§ F§.height / 2 + Math.random() * this.§ F§.height;
      }
      
      public function §3!$§() : §"z§
      {
         return this.§ F§;
      }
   }
}
