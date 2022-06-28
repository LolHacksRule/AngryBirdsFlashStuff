package § !3§
{
   import §!c§.§<q§;
   import §%-§.§%!,§;
   import §%-§.Sprite;
   import §%x§.§#;§;
   import §%x§.§9!9§;
   import §<h§.§%]§;
   import §<h§.§<@§;
   import §<h§.§]^§;
   import §?!"§.Texture;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §[4§
   {
      
      public static const §;!E§:Number = 1000;
      
      public static const §&!'§:Number = 500;
      
      private static var §1!6§:Array = null;
       
      
      private var §'9§:§'§;
      
      public var § var§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §1c§:Number;
      
      public var §#!A§:Number;
      
      public var §6r§:int = -1;
      
      private var §%!C§:String;
      
      private var §=!'§:§<@§;
      
      private var §5Z§:§<@§;
      
      private var §;!G§:§%!,§;
      
      private var §8!#§:Number = 0;
      
      private var §2i§:Number = 0;
      
      public var §[g§:int = -1;
      
      private var §9w§:int = -1;
      
      private var §73§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §8V§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §?4§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §"@§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §9W§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §[_§:String = "fly";
      
      public var §76§:String = "fly_yell";
      
      public var §'n§:GlowFilter;
      
      private var §!!7§:Vector.<§9!9§>;
      
      private var §`!$§:§<@§;
      
      private var §0W§:Sprite = null;
      
      private var §7C§:§#;§;
      
      public function §[4§(param1:§'§, param2:Sprite, param3:§#;§)
      {
         super();
         this.§7C§ = param3;
         this.§'9§ = param1;
         this.§%!C§ = this.§'9§.§+i§;
         this.§!!7§ = new Vector.<§9!9§>();
         this.§0W§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9!9§ = null;
         this.§ +§();
         if(this.§!!7§)
         {
            while(this.§!!7§.length > 0)
            {
               _loc1_ = this.§!!7§.pop();
               _loc1_.dispose();
            }
            this.§!!7§ = null;
         }
      }
      
      public function §;_§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§6r§ = param1;
         this.§#!A§ = param2;
         this.§8z§();
      }
      
      public function §#G§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1c§ = 1;
            return;
         }
         this.§1c§ = this.mW / this.mH;
         if(this.§1c§ < 1)
         {
            this.§1c§ = 1 / this.§1c§;
         }
         this.§1c§ = Math.min(11,this.§1c§);
      }
      
      public function §5y§(param1:§%]§) : Boolean
      {
         var _loc2_:§]^§ = null;
         var _loc3_:Texture = null;
         if(this.§'9§.isGround())
         {
            return false;
         }
         this.§`!$§ = param1.§3H§("SPARKLES");
         this.§=!'§ = param1.§3H§(this.§%!C§);
         this.§5Z§ = this.§=!'§;
         var _loc4_:Number = 1;
         if(this.§5Z§)
         {
            _loc2_ = this.§5Z§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§7C§.textureManager.§'K§();
         }
         this.§;!G§ = new §%!,§(_loc3_);
         if(_loc2_)
         {
            this.§;!G§.x = -_loc2_.pivotX;
            this.§;!G§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§;!G§.x = -this.§;!G§.width / 2;
            this.§;!G§.y = -this.§;!G§.height / 2;
         }
         this.§;!G§.scaleX = _loc4_;
         this.§;!G§.scaleY = _loc4_;
         this.mW = this.§;!G§.width / 2;
         this.mH = this.§;!G§.height / 2;
         this.§0W§.addChild(this.§;!G§);
         return true;
      }
      
      public function §@0§(param1:§<q§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§ !B§)
         {
            case §<q§.§8!3§:
               _loc2_ = param1.§6! §();
               _loc3_ = _loc2_[0];
               this.§8!#§ = _loc3_.x / §#;§.§`!2§;
               this.§2i§ = _loc3_.y / §#;§.§`!2§;
               break;
            case §<q§.§,j§:
         }
         this.§&w§();
      }
      
      public function §8c§() : Array
      {
         return §>o§.§8c§(null,this.§'9§.§?!1§());
      }
      
      public function §7&§() : Array
      {
         return §>o§.§7&§(null,this.§'9§.§?!1§());
      }
      
      public function § q§() : Array
      {
         return §>o§.§ q§(null);
      }
      
      public function §8z§() : void
      {
      }
      
      public function § else§(param1:Number) : void
      {
         this.§0W§.scaleX = this.§0W§.scaleY = param1;
      }
      
      public function §&w§() : void
      {
         var _loc1_:§]^§ = null;
         if(!this.§=!'§)
         {
            return;
         }
         if(this.§?4§)
         {
            this.§73§ = 1;
         }
         else if(this.§'9§.getSpecialAnimationProgress() >= 0 && this.§=!'§.getSubAnimation(this.§8V§))
         {
            this.§5Z§ = this.§=!'§.getSubAnimation(this.§8V§);
            this.§73§ = this.§5Z§.getFrameCount() * this.§'9§.getSpecialAnimationProgress();
            if(this.§73§ == this.§5Z§.getFrameCount() - 1 && this.§'9§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§73§;
            }
         }
         else if(this.mTryToSpecial && this.§=!'§.getSubAnimation(this.§8V§))
         {
            this.§5Z§ = this.§=!'§.getSubAnimation(this.§8V§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§=!'§.getSubAnimation(this.§76§))
         {
            this.§5Z§ = this.§=!'§.getSubAnimation(this.§76§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§=!'§.getSubAnimation(this.§"@§))
         {
            this.§5Z§ = this.§=!'§.getSubAnimation(this.§"@§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§=!'§.getSubAnimation(this.§9W§))
         {
            this.§5Z§ = this.§=!'§.getSubAnimation(this.§9W§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§=!'§.getSubAnimation(this.§[_§))
         {
            this.§5Z§ = this.§=!'§.getSubAnimation(this.§[_§);
            this.mIsFlying = true;
         }
         else
         {
            this.§5Z§ = this.§=!'§;
         }
         if(this.§5Z§)
         {
            _loc1_ = this.§5Z§.getFrame(this.§73§);
            if(this.§;!G§ && _loc1_)
            {
               this.§;!G§.texture = _loc1_.texture;
               this.§;!G§.x = -_loc1_.pivotX - this.§8!#§;
               this.§;!G§.y = -_loc1_.pivotY - this.§2i§;
               this.§;!G§.scaleX = _loc1_.scale;
               this.§;!G§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §1i§() : void
      {
         this.§0W§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§[g§ < 0)
         {
            this.§3!$§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§'9§.§7j§ / this.§'9§.§`9§) * this.§[g§;
         if(_loc1_ != this.§9w§)
         {
            this.§9w§ = _loc1_;
            this.§73§ = this.§9w§;
            this.§&w§();
         }
      }
      
      public function §3!$§() : void
      {
         if(this.§=!'§)
         {
            this.§[g§ = this.§=!'§.getFrameCount();
         }
      }
      
      public function §1P§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§'n§ = new GlowFilter();
         this.§'n§.blurX = param2;
         this.§'n§.blurY = param3;
         this.§'n§.color = param1;
      }
      
      public function § +§() : void
      {
         this.§'n§ = null;
      }
      
      public function §&&§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§'9§.§^'§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§5g§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §-#§(param1:Number) : void
      {
         var _loc2_:int = this.§!!7§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§!!7§[_loc2_].updateLifeTime(param1);
            if(this.§!!7§[_loc2_].lifeTime < 0)
            {
               this.§5g§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §5g§(param1:int) : void
      {
         if(!this.§`!$§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§]^§ = this.§`!$§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§9!9§ = null;
         if(param1 < this.§!!7§.length)
         {
            (_loc5_ = this.§!!7§[param1]).§!!-§(_loc4_);
            _loc5_.§[<§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §9!9§(_loc3_.texture,_loc4_);
            this.§!!7§.push(_loc5_);
            this.§0W§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§;!G§.width / 2 + Math.random() * this.§;!G§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§;!G§.height / 2 + Math.random() * this.§;!G§.height;
      }
      
      public function §&3§() : §%!,§
      {
         return this.§;!G§;
      }
   }
}
