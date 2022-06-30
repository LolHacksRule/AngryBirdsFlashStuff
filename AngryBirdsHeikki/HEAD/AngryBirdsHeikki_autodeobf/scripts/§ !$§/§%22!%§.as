package § !$§
{
   import § A§.§9c§;
   import §!!S§.Texture;
   import §+!]§.§+!=§;
   import §+!]§.§0!B§;
   import §+!]§.§6H§;
   import §6!;§.§!>§;
   import §6!;§.Sprite;
   import §9!'§.§0!%§;
   import §9!'§.§=!Y§;
   import §`!^§.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §"!%§
   {
      
      public static const §"!=§:Number = 1000;
      
      public static const §6!N§:Number = 500;
      
      private static var §8!T§:Array = null;
       
      
      private var §-b§:§>C§;
      
      public var §3!^§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §"!9§:Number;
      
      public var §'!?§:Number;
      
      public var §9!S§:int = -1;
      
      private var §'!d§:String;
      
      private var §&b§:§6H§;
      
      private var §!!1§:§6H§;
      
      private var §>!Q§:§!>§;
      
      private var §,e§:Number = 0;
      
      private var §]!U§:Number = 0;
      
      public var §@u§:int = -1;
      
      private var §==§:int = -1;
      
      private var §`<§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §2!B§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §8D§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §6`§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §<A§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §-o§:String = "fly";
      
      public var §"2§:String = "fly_yell";
      
      public var §"!0§:GlowFilter;
      
      private var §7;§:Vector.<§=!Y§>;
      
      private var §-!H§:§6H§;
      
      private var §4!B§:Sprite = null;
      
      private var §]B§:§0!%§;
      
      public function §"!%§(param1:§>C§, param2:Sprite, param3:§0!%§)
      {
         super();
         this.§]B§ = param3;
         this.§-b§ = param1;
         this.§'!d§ = this.§-b§.§ [§;
         this.§7;§ = new Vector.<§=!Y§>();
         this.§4!B§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=!Y§ = null;
         this.§,!a§();
         if(this.§7;§)
         {
            while(this.§7;§.length > 0)
            {
               _loc1_ = this.§7;§.pop();
               _loc1_.dispose();
            }
            this.§7;§ = null;
         }
      }
      
      public function §+!>§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§9!S§ = param1;
         this.§'!?§ = param2;
         this.§'8§();
      }
      
      public function §?!G§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"!9§ = 1;
            return;
         }
         this.§"!9§ = this.mW / this.mH;
         if(this.§"!9§ < 1)
         {
            this.§"!9§ = 1 / this.§"!9§;
         }
         this.§"!9§ = Math.min(11,this.§"!9§);
      }
      
      public function §'_§(param1:§0!B§) : Boolean
      {
         var _loc2_:§+!=§ = null;
         var _loc3_:Texture = null;
         if(this.§-b§.isGround())
         {
            return false;
         }
         this.§-!H§ = param1.§>n§("SPARKLES");
         this.§&b§ = param1.§>n§(this.§'!d§);
         this.§!!1§ = this.§&b§;
         var _loc4_:Number = 1;
         if(this.§!!1§)
         {
            _loc2_ = this.§!!1§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§]B§.textureManager.§>q§();
         }
         this.§>!Q§ = new §!>§(_loc3_);
         if(_loc2_)
         {
            this.§>!Q§.x = -_loc2_.pivotX;
            this.§>!Q§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§>!Q§.x = -this.§>!Q§.width / 2;
            this.§>!Q§.y = -this.§>!Q§.height / 2;
         }
         this.§>!Q§.scaleX = _loc4_;
         this.§>!Q§.scaleY = _loc4_;
         this.mW = this.§>!Q§.width / 2;
         this.mH = this.§>!Q§.height / 2;
         this.§4!B§.addChild(this.§>!Q§);
         return true;
      }
      
      public function §@!R§(param1:§9c§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§87§)
         {
            case §9c§.§+!%§:
               _loc2_ = param1.§8,§();
               _loc3_ = _loc2_[0];
               this.§,e§ = _loc3_.x / §0!%§.§"m§;
               this.§]!U§ = _loc3_.y / §0!%§.§"m§;
               break;
            case §9c§.§@!0§:
         }
         this.§'!R§();
      }
      
      public function §catch§() : Array
      {
         return §6!%§.§catch§(null,this.§-b§.§8l§());
      }
      
      public function §5!>§() : Array
      {
         return §6!%§.§5!>§(null,this.§-b§.§8l§());
      }
      
      public function §-C§() : Array
      {
         return §6!%§.§-C§(null);
      }
      
      public function §'8§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§4!B§.scaleX = this.§4!B§.scaleY = param1;
      }
      
      public function §'!R§() : void
      {
         var _loc1_:§+!=§ = null;
         if(!this.§&b§)
         {
            return;
         }
         if(this.§8D§)
         {
            this.§`<§ = 1;
         }
         else if(this.§-b§.getSpecialAnimationProgress() >= 0 && this.§&b§.getSubAnimation(this.§2!B§))
         {
            this.§!!1§ = this.§&b§.getSubAnimation(this.§2!B§);
            this.§`<§ = this.§!!1§.getFrameCount() * this.§-b§.getSpecialAnimationProgress();
            if(this.§`<§ == this.§!!1§.getFrameCount() - 1 && this.§-b§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§`<§;
            }
         }
         else if(this.mTryToSpecial && this.§&b§.getSubAnimation(this.§2!B§))
         {
            this.§!!1§ = this.§&b§.getSubAnimation(this.§2!B§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§&b§.getSubAnimation(this.§"2§))
         {
            this.§!!1§ = this.§&b§.getSubAnimation(this.§"2§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§&b§.getSubAnimation(this.§6`§))
         {
            this.§!!1§ = this.§&b§.getSubAnimation(this.§6`§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§&b§.getSubAnimation(this.§<A§))
         {
            this.§!!1§ = this.§&b§.getSubAnimation(this.§<A§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§&b§.getSubAnimation(this.§-o§))
         {
            this.§!!1§ = this.§&b§.getSubAnimation(this.§-o§);
            this.mIsFlying = true;
         }
         else
         {
            this.§!!1§ = this.§&b§;
         }
         if(this.§!!1§)
         {
            _loc1_ = this.§!!1§.getFrame(this.§`<§);
            if(this.§>!Q§ && _loc1_)
            {
               this.§>!Q§.texture = _loc1_.texture;
               this.§>!Q§.x = -_loc1_.pivotX - this.§,e§;
               this.§>!Q§.y = -_loc1_.pivotY - this.§]!U§;
               this.§>!Q§.scaleX = _loc1_.scale;
               this.§>!Q§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §#L§() : void
      {
         this.§4!B§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§@u§ < 0)
         {
            this.§?!_§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§-b§.§6!^§ / this.§-b§.§1D§) * this.§@u§;
         if(_loc1_ != this.§==§)
         {
            this.§==§ = _loc1_;
            this.§`<§ = this.§==§;
            this.§'!R§();
         }
      }
      
      public function §?!_§() : void
      {
         if(this.§&b§)
         {
            this.§@u§ = this.§&b§.getFrameCount();
         }
      }
      
      public function §5!a§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§"!0§ = new GlowFilter();
         this.§"!0§.blurX = param2;
         this.§"!0§.blurY = param3;
         this.§"!0§.color = param1;
      }
      
      public function §,!a§() : void
      {
         this.§"!0§ = null;
      }
      
      public function §^-§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§-b§.§ `§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§`!E§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §&g§(param1:Number) : void
      {
         var _loc2_:int = this.§7;§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§7;§[_loc2_].updateLifeTime(param1);
            if(this.§7;§[_loc2_].lifeTime < 0)
            {
               this.§`!E§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §`!E§(param1:int) : void
      {
         if(!this.§-!H§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§+!=§ = this.§-!H§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§=!Y§ = null;
         if(param1 < this.§7;§.length)
         {
            (_loc5_ = this.§7;§[param1]).§!C§(_loc4_);
            _loc5_.§ !_§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §=!Y§(_loc3_.texture,_loc4_);
            this.§7;§.push(_loc5_);
            this.§4!B§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§>!Q§.width / 2 + Math.random() * this.§>!Q§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§>!Q§.height / 2 + Math.random() * this.§>!Q§.height;
      }
      
      public function §`p§() : §!>§
      {
         return this.§>!Q§;
      }
   }
}
