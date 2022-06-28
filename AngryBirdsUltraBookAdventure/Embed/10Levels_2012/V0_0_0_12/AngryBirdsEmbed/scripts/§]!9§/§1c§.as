package §]!9§
{
   import §%x§.§#;§;
   import §%x§.§9!9§;
   import §-!0§.§4b§;
   import §-!0§.§9X§;
   import §-!0§.§`Q§;
   import §?^§.§8!?§;
   import §?^§.Sprite;
   import §`K§.§2z§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import each.Texture;
   import flash.filters.GlowFilter;
   
   public class §1c§
   {
      
      public static const §1!6§:Number = 1000;
      
      public static const §&!'§:Number = 500;
      
      private static var §=R§:Array = null;
       
      
      private var §'9§:§>2§;
      
      public var §%!5§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §6r§:Number;
      
      public var §#!A§:Number;
      
      public var §%!C§:int = -1;
      
      private var §5Z§:String;
      
      private var §=!'§:§4b§;
      
      private var §8!#§:§4b§;
      
      private var §;!G§:§8!?§;
      
      private var §2i§:Number = 0;
      
      private var §[g§:Number = 0;
      
      public var §9w§:int = -1;
      
      private var §73§:int = -1;
      
      private var §8V§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §?4§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §"@§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §9W§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §[_§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §76§:String = "fly";
      
      public var §!!7§:String = "fly_yell";
      
      public var §>!D§:GlowFilter;
      
      private var §`!$§:Vector.<§9!9§>;
      
      private var §;_§:§4b§;
      
      private var §0W§:Sprite = null;
      
      private var §7C§:§#;§;
      
      public function §1c§(param1:§>2§, param2:Sprite, param3:§#;§)
      {
         super();
         this.§7C§ = param3;
         this.§'9§ = param1;
         this.§5Z§ = this.§'9§.§'!,§;
         this.§`!$§ = new Vector.<§9!9§>();
         this.§0W§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9!9§ = null;
         this.§&&§();
         if(this.§`!$§)
         {
            while(this.§`!$§.length > 0)
            {
               _loc1_ = this.§`!$§.pop();
               _loc1_.dispose();
            }
            this.§`!$§ = null;
         }
      }
      
      public function §#G§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§%!C§ = param1;
         this.§#!A§ = param2;
         this.§ else§();
      }
      
      public function §@0§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6r§ = 1;
            return;
         }
         this.§6r§ = this.mW / this.mH;
         if(this.§6r§ < 1)
         {
            this.§6r§ = 1 / this.§6r§;
         }
         this.§6r§ = Math.min(11,this.§6r§);
      }
      
      public function §5y§(param1:§`Q§) : Boolean
      {
         var _loc2_:§9X§ = null;
         var _loc3_:Texture = null;
         if(this.§'9§.isGround())
         {
            return false;
         }
         this.§;_§ = param1.§,V§("SPARKLES");
         this.§=!'§ = param1.§,V§(this.§5Z§);
         this.§8!#§ = this.§=!'§;
         var _loc4_:Number = 1;
         if(this.§8!#§)
         {
            _loc2_ = this.§8!#§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§7C§.textureManager.§?K§();
         }
         this.§;!G§ = new §8!?§(_loc3_);
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
      
      public function §8c§(param1:§2z§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§;!3§)
         {
            case §2z§.§,j§:
               _loc2_ = param1.§!!H§();
               _loc3_ = _loc2_[0];
               this.§2i§ = _loc3_.x / §#;§.§`!2§;
               this.§[g§ = _loc3_.y / §#;§.§`!2§;
               break;
            case §2z§.§#!B§:
         }
         this.§1i§();
      }
      
      public function §7&§() : Array
      {
         return §in§.§7&§(null,this.§'9§.§=H§());
      }
      
      public function § q§() : Array
      {
         return §in§.§ q§(null,this.§'9§.§=H§());
      }
      
      public function §8z§() : Array
      {
         return §in§.§8z§(null);
      }
      
      public function § else§() : void
      {
      }
      
      public function §&w§(param1:Number) : void
      {
         this.§0W§.scaleX = this.§0W§.scaleY = param1;
      }
      
      public function §1i§() : void
      {
         var _loc1_:§9X§ = null;
         if(!this.§=!'§)
         {
            return;
         }
         if(this.§"@§)
         {
            this.§8V§ = 1;
         }
         else if(this.§'9§.getSpecialAnimationProgress() >= 0 && this.§=!'§.getSubAnimation(this.§?4§))
         {
            this.§8!#§ = this.§=!'§.getSubAnimation(this.§?4§);
            this.§8V§ = this.§8!#§.getFrameCount() * this.§'9§.getSpecialAnimationProgress();
            if(this.§8V§ == this.§8!#§.getFrameCount() - 1 && this.§'9§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§8V§;
            }
         }
         else if(this.mTryToSpecial && this.§=!'§.getSubAnimation(this.§?4§))
         {
            this.§8!#§ = this.§=!'§.getSubAnimation(this.§?4§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§=!'§.getSubAnimation(this.§!!7§))
         {
            this.§8!#§ = this.§=!'§.getSubAnimation(this.§!!7§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§=!'§.getSubAnimation(this.§9W§))
         {
            this.§8!#§ = this.§=!'§.getSubAnimation(this.§9W§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§=!'§.getSubAnimation(this.§[_§))
         {
            this.§8!#§ = this.§=!'§.getSubAnimation(this.§[_§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§=!'§.getSubAnimation(this.§76§))
         {
            this.§8!#§ = this.§=!'§.getSubAnimation(this.§76§);
            this.mIsFlying = true;
         }
         else
         {
            this.§8!#§ = this.§=!'§;
         }
         if(this.§8!#§)
         {
            _loc1_ = this.§8!#§.getFrame(this.§8V§);
            if(this.§;!G§ && _loc1_)
            {
               this.§;!G§.texture = _loc1_.texture;
               this.§;!G§.x = -_loc1_.pivotX - this.§2i§;
               this.§;!G§.y = -_loc1_.pivotY - this.§[g§;
               this.§;!G§.scaleX = _loc1_.scale;
               this.§;!G§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §3!$§() : void
      {
         this.§0W§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§9w§ < 0)
         {
            this.§1P§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§'9§.§4!;§ / this.§'9§.§8!,§) * this.§9w§;
         if(_loc1_ != this.§73§)
         {
            this.§73§ = _loc1_;
            this.§8V§ = this.§73§;
            this.§1i§();
         }
      }
      
      public function §1P§() : void
      {
         if(this.§=!'§)
         {
            this.§9w§ = this.§=!'§.getFrameCount();
         }
      }
      
      public function § +§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§>!D§ = new GlowFilter();
         this.§>!D§.blurX = param2;
         this.§>!D§.blurY = param3;
         this.§>!D§.color = param1;
      }
      
      public function §&&§() : void
      {
         this.§>!D§ = null;
      }
      
      public function §-#§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§'9§.§3v§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§;!E§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §5g§(param1:Number) : void
      {
         var _loc2_:int = this.§`!$§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§`!$§[_loc2_].updateLifeTime(param1);
            if(this.§`!$§[_loc2_].lifeTime < 0)
            {
               this.§;!E§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §;!E§(param1:int) : void
      {
         if(!this.§;_§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§9X§ = this.§;_§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§9!9§ = null;
         if(param1 < this.§`!$§.length)
         {
            (_loc5_ = this.§`!$§[param1]).§!!-§(_loc4_);
            _loc5_.§[<§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §9!9§(_loc3_.texture,_loc4_);
            this.§`!$§.push(_loc5_);
            this.§0W§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§;!G§.width / 2 + Math.random() * this.§;!G§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§;!G§.height / 2 + Math.random() * this.§;!G§.height;
      }
      
      public function §&3§() : §8!?§
      {
         return this.§;!G§;
      }
   }
}
