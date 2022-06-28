package §%Q§
{
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §,!5§.§@8§;
   import §,!5§.§^g§;
   import §-w§.§+W§;
   import §-w§.§1!;§;
   import §-w§.§^!&§;
   import §<!1§.§2!W§;
   import §>H§.b2Vec2;
   import §^!+§.Texture;
   import flash.filters.GlowFilter;
   
   public class §'!%§
   {
      
      public static const §2<§:Number = 1000;
      
      public static const §?r§:Number = 500;
      
      private static var §!!9§:Array = null;
       
      
      private var §1!Q§:§`!<§;
      
      public var §%j§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §;!0§:Number;
      
      public var §%!v§:Number;
      
      public var §3!Y§:int = -1;
      
      private var §`!4§:String;
      
      private var §8x§:§1!;§;
      
      private var §;!B§:§1!;§;
      
      private var §^!?§:§?!U§;
      
      private var §8l§:Number = 0;
      
      private var §1n§:Number = 0;
      
      public var §4k§:int = -1;
      
      private var §0!h§:int = -1;
      
      private var §`D§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §8!b§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §82§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §7!5§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §<!<§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §3@§:String = "fly";
      
      public var §;!T§:String = "fly_yell";
      
      public var §3!m§:GlowFilter;
      
      private var §@A§:Vector.<§@8§>;
      
      private var §,!M§:§1!;§;
      
      private var §8X§:Sprite = null;
      
      private var §?l§:§^g§;
      
      public function §'!%§(param1:§`!<§, param2:Sprite, param3:§^g§)
      {
         super();
         this.§?l§ = param3;
         this.§1!Q§ = param1;
         this.§`!4§ = this.§1!Q§.§<!]§;
         this.§@A§ = new Vector.<§@8§>();
         this.§8X§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@8§ = null;
         this.§6!D§();
         if(this.§@A§)
         {
            while(this.§@A§.length > 0)
            {
               _loc1_ = this.§@A§.pop();
               _loc1_.dispose();
            }
            this.§@A§ = null;
         }
      }
      
      public function §=!>§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§3!Y§ = param1;
         this.§%!v§ = param2;
         this.§[O§();
      }
      
      public function §?!T§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!0§ = 1;
            return;
         }
         this.§;!0§ = this.mW / this.mH;
         if(this.§;!0§ < 1)
         {
            this.§;!0§ = 1 / this.§;!0§;
         }
         this.§;!0§ = Math.min(11,this.§;!0§);
      }
      
      public function §%!]§(param1:§^!&§) : Boolean
      {
         var _loc2_:§+W§ = null;
         var _loc3_:Texture = null;
         if(this.§1!Q§.isGround())
         {
            return false;
         }
         this.§,!M§ = param1.getAnimation("SPARKLES");
         this.§8x§ = param1.getAnimation(this.§`!4§);
         this.§;!B§ = this.§8x§;
         var _loc4_:Number = 1;
         if(this.§;!B§)
         {
            _loc2_ = this.§;!B§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§?l§.textureManager.§0y§();
         }
         this.§^!?§ = new §?!U§(_loc3_);
         if(_loc2_)
         {
            this.§^!?§.x = -_loc2_.pivotX;
            this.§^!?§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§^!?§.x = -this.§^!?§.width / 2;
            this.§^!?§.y = -this.§^!?§.height / 2;
         }
         this.§^!?§.scaleX = _loc4_;
         this.§^!?§.scaleY = _loc4_;
         this.mW = this.§^!?§.width / 2;
         this.mH = this.§^!?§.height / 2;
         this.§8X§.addChild(this.§^!?§);
         return true;
      }
      
      public function §9x§(param1:§2!W§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§6r§)
         {
            case §2!W§.§=!i§:
               _loc2_ = param1.§!M§();
               _loc3_ = _loc2_[0];
               this.§8l§ = _loc3_.x / §^g§.§^!S§;
               this.§1n§ = _loc3_.y / §^g§.§^!S§;
               break;
            case §2!W§.§"d§:
         }
         this.§true §();
      }
      
      public function §-C§() : Array
      {
         return §4!%§.§-C§(null,this.§1!Q§.§=]§());
      }
      
      public function §2!T§() : Array
      {
         return §4!%§.§2!T§(null,this.§1!Q§.§=]§());
      }
      
      public function §,!n§() : Array
      {
         return §4!%§.§,!n§(null);
      }
      
      public function §[O§() : void
      {
      }
      
      public function §<!K§(param1:Number) : void
      {
         this.§8X§.scaleX = this.§8X§.scaleY = param1;
      }
      
      public function §true §() : void
      {
         var _loc1_:§+W§ = null;
         if(!this.§8x§)
         {
            return;
         }
         if(this.§82§)
         {
            this.§`D§ = 1;
         }
         else if(this.§1!Q§.getSpecialAnimationProgress() >= 0 && this.§8x§.getSubAnimation(this.§8!b§))
         {
            this.§;!B§ = this.§8x§.getSubAnimation(this.§8!b§);
            this.§`D§ = this.§;!B§.getFrameCount() * this.§1!Q§.getSpecialAnimationProgress();
            if(this.§`D§ == this.§;!B§.getFrameCount() - 1 && this.§1!Q§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§`D§;
            }
         }
         else if(this.mTryToSpecial && this.§8x§.getSubAnimation(this.§8!b§))
         {
            this.§;!B§ = this.§8x§.getSubAnimation(this.§8!b§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§8x§.getSubAnimation(this.§;!T§))
         {
            this.§;!B§ = this.§8x§.getSubAnimation(this.§;!T§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§8x§.getSubAnimation(this.§7!5§))
         {
            this.§;!B§ = this.§8x§.getSubAnimation(this.§7!5§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§8x§.getSubAnimation(this.§<!<§))
         {
            this.§;!B§ = this.§8x§.getSubAnimation(this.§<!<§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§8x§.getSubAnimation(this.§3@§))
         {
            this.§;!B§ = this.§8x§.getSubAnimation(this.§3@§);
            this.mIsFlying = true;
         }
         else
         {
            this.§;!B§ = this.§8x§;
         }
         if(this.§;!B§)
         {
            _loc1_ = this.§;!B§.getFrame(this.§`D§);
            if(this.§^!?§ && _loc1_)
            {
               this.§^!?§.texture = _loc1_.texture;
               this.§^!?§.x = -_loc1_.pivotX - this.§8l§;
               this.§^!?§.y = -_loc1_.pivotY - this.§1n§;
               this.§^!?§.scaleX = _loc1_.scale;
               this.§^!?§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §0!V§() : void
      {
         this.§8X§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§4k§ < 0)
         {
            this.§ !N§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§1!Q§.§%!R§ / this.§1!Q§.§-!!§) * this.§4k§;
         if(_loc1_ != this.§0!h§)
         {
            this.§0!h§ = _loc1_;
            this.§`D§ = this.§0!h§;
            this.§true §();
         }
      }
      
      public function § !N§() : void
      {
         if(this.§8x§)
         {
            this.§4k§ = this.§8x§.getFrameCount();
         }
      }
      
      public function §?1§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§3!m§ = new GlowFilter();
         this.§3!m§.blurX = param2;
         this.§3!m§.blurY = param3;
         this.§3!m§.color = param1;
      }
      
      public function §6!D§() : void
      {
         this.§3!m§ = null;
      }
      
      public function §]w§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§1!Q§.§#!g§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§!!S§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §+!B§(param1:Number) : void
      {
         var _loc2_:int = this.§@A§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§@A§[_loc2_].updateLifeTime(param1);
            if(this.§@A§[_loc2_].lifeTime < 0)
            {
               this.§!!S§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §!!S§(param1:int) : void
      {
         if(!this.§,!M§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§+W§ = this.§,!M§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§@8§ = null;
         if(param1 < this.§@A§.length)
         {
            (_loc5_ = this.§@A§[param1]).§8N§(_loc4_);
            _loc5_.§ !]§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §@8§(_loc3_.texture,_loc4_);
            this.§@A§.push(_loc5_);
            this.§8X§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§^!?§.width / 2 + Math.random() * this.§^!?§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§^!?§.height / 2 + Math.random() * this.§^!?§.height;
      }
      
      public function §1!k§() : §?!U§
      {
         return this.§^!?§;
      }
   }
}
