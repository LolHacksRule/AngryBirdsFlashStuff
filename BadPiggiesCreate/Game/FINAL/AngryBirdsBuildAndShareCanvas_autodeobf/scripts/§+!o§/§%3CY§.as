package §+!o§
{
   import §&"5§.§+2§;
   import §&"5§.§1!A§;
   import §&"5§.§6!L§;
   import §,a§.§^7§;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import §5!V§.§3x§;
   import §7R§.Texture;
   import §default§.§=!Z§;
   import §default§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §<Y§
   {
      
      public static const §^!7§:Number = 1000;
      
      public static const §?!§:Number = 500;
      
      private static var §^!A§:Array = null;
       
      
      private var §1"0§:§]"5§;
      
      public var §,!I§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §0n§:Number;
      
      public var §;!`§:Number;
      
      public var §8!!§:int = -1;
      
      private var §?<§:String;
      
      private var §<!1§:§+2§;
      
      private var §!9§:§+2§;
      
      private var §2u§:§=!Z§;
      
      private var §4!B§:Number = 0;
      
      private var §2E§:Number = 0;
      
      public var §%!q§:int = -1;
      
      private var §]!<§:int = -1;
      
      private var §1!W§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §9"1§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §,!R§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §;3§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §?"<§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §%!+§:String = "fly";
      
      public var §7"1§:String = "fly_yell";
      
      public var §6Y§:GlowFilter;
      
      private var §]"#§:Vector.<§3x§>;
      
      private var §8%§:§+2§;
      
      private var §!&§:Sprite = null;
      
      private var §9q§:§!w§;
      
      public function §<Y§(param1:§]"5§, param2:Sprite, param3:§!w§)
      {
         super();
         this.§9q§ = param3;
         this.§1"0§ = param1;
         this.§?<§ = this.§1"0§.§!F§;
         this.§]"#§ = new Vector.<§3x§>();
         this.§!&§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3x§ = null;
         this.§'0§();
         if(this.§]"#§)
         {
            while(this.§]"#§.length > 0)
            {
               _loc1_ = this.§]"#§.pop();
               _loc1_.dispose();
            }
            this.§]"#§ = null;
         }
      }
      
      public function §#]§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§8!!§ = param1;
         this.§;!`§ = param2;
         this.§%!j§();
      }
      
      public function §6!0§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0n§ = 1;
            return;
         }
         this.§0n§ = this.mW / this.mH;
         if(this.§0n§ < 1)
         {
            this.§0n§ = 1 / this.§0n§;
         }
         this.§0n§ = Math.min(11,this.§0n§);
      }
      
      public function §!!?§(param1:§1!A§) : Boolean
      {
         var _loc2_:§6!L§ = null;
         var _loc3_:Texture = null;
         if(this.§1"0§.isGround())
         {
            return false;
         }
         this.§8%§ = param1.§@7§("SPARKLES");
         this.§<!1§ = param1.§@7§(this.§?<§);
         this.§!9§ = this.§<!1§;
         var _loc4_:Number = 1;
         if(this.§!9§)
         {
            _loc2_ = this.§!9§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§9q§.§7!J§.§4!A§();
         }
         this.§2u§ = new §=!Z§(_loc3_);
         if(_loc2_)
         {
            this.§2u§.x = -_loc2_.pivotX;
            this.§2u§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§2u§.x = -this.§2u§.width / 2;
            this.§2u§.y = -this.§2u§.height / 2;
         }
         this.§2u§.scaleX = _loc4_;
         this.§2u§.scaleY = _loc4_;
         this.mW = this.§2u§.width / 2;
         this.mH = this.§2u§.height / 2;
         this.§!&§.addChild(this.§2u§);
         return true;
      }
      
      public function §!!1§(param1:§^7§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§#z§)
         {
            case §^7§.§+!h§:
               _loc2_ = param1.§#!g§();
               _loc3_ = _loc2_[0];
               this.§4!B§ = _loc3_.x / §!w§.§4!-§;
               this.§2E§ = _loc3_.y / §!w§.§4!-§;
               break;
            case §^7§.§<!g§:
         }
         this.§>y§();
      }
      
      public function §+I§() : Array
      {
         return §"4§.§+I§(null,this.§1"0§.§@!i§());
      }
      
      public function §@!e§() : Array
      {
         return §"4§.§@!e§(null,this.§1"0§.§@!i§());
      }
      
      public function §8z§() : Array
      {
         return §"4§.§8z§(null);
      }
      
      public function §%!j§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§!&§.scaleX = this.§!&§.scaleY = param1;
      }
      
      public function §>y§() : void
      {
         var _loc1_:§6!L§ = null;
         if(!this.§<!1§)
         {
            return;
         }
         if(this.§,!R§)
         {
            this.§1!W§ = 1;
         }
         else if(this.§1"0§.getSpecialAnimationProgress() >= 0 && this.§<!1§.getSubAnimation(this.§9"1§))
         {
            this.§!9§ = this.§<!1§.getSubAnimation(this.§9"1§);
            this.§1!W§ = this.§!9§.getFrameCount() * this.§1"0§.getSpecialAnimationProgress();
            if(this.§1!W§ == this.§!9§.getFrameCount() - 1 && this.§1"0§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§1!W§;
            }
         }
         else if(this.mTryToSpecial && this.§<!1§.getSubAnimation(this.§9"1§))
         {
            this.§!9§ = this.§<!1§.getSubAnimation(this.§9"1§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§<!1§.getSubAnimation(this.§7"1§))
         {
            this.§!9§ = this.§<!1§.getSubAnimation(this.§7"1§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§<!1§.getSubAnimation(this.§;3§))
         {
            this.§!9§ = this.§<!1§.getSubAnimation(this.§;3§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§<!1§.getSubAnimation(this.§?"<§))
         {
            this.§!9§ = this.§<!1§.getSubAnimation(this.§?"<§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§<!1§.getSubAnimation(this.§%!+§))
         {
            this.§!9§ = this.§<!1§.getSubAnimation(this.§%!+§);
            this.mIsFlying = true;
         }
         else
         {
            this.§!9§ = this.§<!1§;
         }
         if(this.§!9§)
         {
            _loc1_ = this.§!9§.getFrame(this.§1!W§);
            if(this.§2u§ && _loc1_)
            {
               this.§2u§.texture = _loc1_.texture;
               this.§2u§.x = -_loc1_.pivotX - this.§4!B§;
               this.§2u§.y = -_loc1_.pivotY - this.§2E§;
               this.§2u§.scaleX = _loc1_.scale;
               this.§2u§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §76§() : void
      {
         this.§!&§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§%!q§ < 0)
         {
            this.§%U§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§1"0§.§@!P§ / this.§1"0§.§'">§) * this.§%!q§;
         if(_loc1_ != this.§]!<§)
         {
            this.§]!<§ = _loc1_;
            this.§1!W§ = this.§]!<§;
            this.§>y§();
         }
      }
      
      public function §%U§() : void
      {
         if(this.§<!1§)
         {
            this.§%!q§ = this.§<!1§.getFrameCount();
         }
      }
      
      public function §^`§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§6Y§ = new GlowFilter();
         this.§6Y§.blurX = param2;
         this.§6Y§.blurY = param3;
         this.§6Y§.color = param1;
      }
      
      public function §'0§() : void
      {
         this.§6Y§ = null;
      }
      
      public function §!!7§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§1"0§.§0&§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§%V§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §?!0§(param1:Number) : void
      {
         var _loc2_:int = this.§]"#§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§]"#§[_loc2_].updateLifeTime(param1);
            if(this.§]"#§[_loc2_].lifeTime < 0)
            {
               this.§%V§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §%V§(param1:int) : void
      {
         if(!this.§8%§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§6!L§ = this.§8%§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§3x§ = null;
         if(param1 < this.§]"#§.length)
         {
            (_loc5_ = this.§]"#§[param1]).§ O§(_loc4_);
            _loc5_.§7!X§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §3x§(_loc3_.texture,_loc4_);
            this.§]"#§.push(_loc5_);
            this.§!&§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§2u§.width / 2 + Math.random() * this.§2u§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§2u§.height / 2 + Math.random() * this.§2u§.height;
      }
      
      public function §'!x§() : §=!Z§
      {
         return this.§2u§;
      }
   }
}
