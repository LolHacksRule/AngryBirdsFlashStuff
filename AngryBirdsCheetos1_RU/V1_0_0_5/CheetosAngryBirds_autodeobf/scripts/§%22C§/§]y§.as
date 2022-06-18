package §"C§
{
   import §%b§.§0!Z§;
   import §%b§.§28§;
   import §+,§.b2Vec2;
   import §-A§.Texture;
   import §?!H§.§?U§;
   import §@!§.§ !N§;
   import §@!§.§8!W§;
   import §@!§.§;"§;
   import flash.filters.GlowFilter;
   import §null §.§%!G§;
   import §null §.Sprite;
   
   public class §]y§
   {
      
      public static const §"d§:Number = 1000;
      
      public static const §7!@§:Number = 500;
      
      private static var §`,§:Array = null;
       
      
      private var §'6§:§?w§;
      
      public var §`!0§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §6!]§:Number;
      
      public var §69§:Number;
      
      public var §]]§:int = -1;
      
      private var §<J§:String;
      
      private var §"!9§:§8!W§;
      
      private var §;z§:§8!W§;
      
      private var §'!>§:§%!G§;
      
      private var §6H§:Number = 0;
      
      private var §1K§:Number = 0;
      
      public var §7h§:int = -1;
      
      private var §';§:int = -1;
      
      private var §"!1§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §-!#§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §+!F§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §[K§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §1H§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §#m§:String = "fly";
      
      public var §^L§:String = "fly_yell";
      
      public var §;x§:GlowFilter;
      
      private var §`[§:Vector.<§28§>;
      
      private var §9c§:§8!W§;
      
      private var §&!C§:Sprite = null;
      
      private var §]!8§:§0!Z§;
      
      public function §]y§(param1:§?w§, param2:Sprite, param3:§0!Z§)
      {
         super();
         this.§]!8§ = param3;
         this.§'6§ = param1;
         this.§<J§ = this.§'6§.§]!W§;
         this.§`[§ = new Vector.<§28§>();
         this.§&!C§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§28§ = null;
         this.§2k§();
         if(this.§`[§)
         {
            while(this.§`[§.length > 0)
            {
               _loc1_ = this.§`[§.pop();
               _loc1_.dispose();
            }
            this.§`[§ = null;
         }
      }
      
      public function §%^§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§]]§ = param1;
         this.§69§ = param2;
         this.§63§();
      }
      
      public function §,T§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6!]§ = 1;
            return;
         }
         this.§6!]§ = this.mW / this.mH;
         if(this.§6!]§ < 1)
         {
            this.§6!]§ = 1 / this.§6!]§;
         }
         this.§6!]§ = Math.min(11,this.§6!]§);
      }
      
      public function §=@§(param1:§;"§) : Boolean
      {
         var _loc2_:§ !N§ = null;
         var _loc3_:Texture = null;
         if(this.§'6§.isGround())
         {
            return false;
         }
         this.§9c§ = param1.§0g§("SPARKLES");
         this.§"!9§ = param1.§0g§(this.§<J§);
         this.§;z§ = this.§"!9§;
         var _loc4_:Number = 1;
         if(this.§;z§)
         {
            _loc2_ = this.§;z§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§]!8§.§>A§.§4! §();
         }
         this.§'!>§ = new §%!G§(_loc3_);
         if(_loc2_)
         {
            this.§'!>§.x = -_loc2_.pivotX;
            this.§'!>§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§'!>§.x = -this.§'!>§.width / 2;
            this.§'!>§.y = -this.§'!>§.height / 2;
         }
         this.§'!>§.scaleX = _loc4_;
         this.§'!>§.scaleY = _loc4_;
         this.mW = this.§'!>§.width / 2;
         this.mH = this.§'!>§.height / 2;
         this.§&!C§.addChild(this.§'!>§);
         return true;
      }
      
      public function §#!L§(param1:§?U§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§-d§)
         {
            case §?U§.§"H§:
               _loc2_ = param1.§"L§();
               _loc3_ = _loc2_[0];
               this.§6H§ = _loc3_.x / §0!Z§.§+n§;
               this.§1K§ = _loc3_.y / §0!Z§.§+n§;
               break;
            case §?U§.§&u§:
         }
         this.§2!Y§();
      }
      
      public function §2!?§() : Array
      {
         return §77§.§2!?§(null,this.§'6§.§8E§());
      }
      
      public function §5!L§() : Array
      {
         return §77§.§5!L§(null,this.§'6§.§8E§());
      }
      
      public function §#!V§() : Array
      {
         return §77§.§#!V§(null);
      }
      
      public function §63§() : void
      {
      }
      
      public function §4H§(param1:Number) : void
      {
         this.§&!C§.scaleX = this.§&!C§.scaleY = param1;
      }
      
      public function §2!Y§() : void
      {
         var _loc1_:§ !N§ = null;
         if(!this.§"!9§)
         {
            return;
         }
         if(this.§+!F§)
         {
            this.§"!1§ = 1;
         }
         else if(this.§'6§.getSpecialAnimationProgress() >= 0 && this.§"!9§.getSubAnimation(this.§-!#§))
         {
            this.§;z§ = this.§"!9§.getSubAnimation(this.§-!#§);
            this.§"!1§ = this.§;z§.getFrameCount() * this.§'6§.getSpecialAnimationProgress();
            if(this.§"!1§ == this.§;z§.getFrameCount() - 1 && this.§'6§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§"!1§;
            }
         }
         else if(this.mTryToSpecial && this.§"!9§.getSubAnimation(this.§-!#§))
         {
            this.§;z§ = this.§"!9§.getSubAnimation(this.§-!#§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§"!9§.getSubAnimation(this.§^L§))
         {
            this.§;z§ = this.§"!9§.getSubAnimation(this.§^L§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§"!9§.getSubAnimation(this.§[K§))
         {
            this.§;z§ = this.§"!9§.getSubAnimation(this.§[K§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§"!9§.getSubAnimation(this.§1H§))
         {
            this.§;z§ = this.§"!9§.getSubAnimation(this.§1H§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§"!9§.getSubAnimation(this.§#m§))
         {
            this.§;z§ = this.§"!9§.getSubAnimation(this.§#m§);
            this.mIsFlying = true;
         }
         else
         {
            this.§;z§ = this.§"!9§;
         }
         if(this.§;z§)
         {
            _loc1_ = this.§;z§.getFrame(this.§"!1§);
            if(this.§'!>§ && _loc1_)
            {
               this.§'!>§.texture = _loc1_.texture;
               this.§'!>§.x = -_loc1_.pivotX - this.§6H§;
               this.§'!>§.y = -_loc1_.pivotY - this.§1K§;
               this.§'!>§.scaleX = _loc1_.scale;
               this.§'!>§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §+c§() : void
      {
         this.§&!C§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§7h§ < 0)
         {
            this.§^!!§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§'6§.§;&§ / this.§'6§.§-#§) * this.§7h§;
         if(_loc1_ != this.§';§)
         {
            this.§';§ = _loc1_;
            this.§"!1§ = this.§';§;
            this.§2!Y§();
         }
      }
      
      public function §^!!§() : void
      {
         if(this.§"!9§)
         {
            this.§7h§ = this.§"!9§.getFrameCount();
         }
      }
      
      public function §<u§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§;x§ = new GlowFilter();
         this.§;x§.blurX = param2;
         this.§;x§.blurY = param3;
         this.§;x§.color = param1;
      }
      
      public function §2k§() : void
      {
         this.§;x§ = null;
      }
      
      public function §`&§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§'6§.§?Q§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§"=§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §0&§(param1:Number) : void
      {
         var _loc2_:int = this.§`[§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§`[§[_loc2_].updateLifeTime(param1);
            if(this.§`[§[_loc2_].lifeTime < 0)
            {
               this.§"=§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §"=§(param1:int) : void
      {
         if(!this.§9c§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§ !N§ = this.§9c§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§28§ = null;
         if(param1 < this.§`[§.length)
         {
            (_loc5_ = this.§`[§[param1]).§%!Z§(_loc4_);
            _loc5_.§!_§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §28§(_loc3_.texture,_loc4_);
            this.§`[§.push(_loc5_);
            this.§&!C§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§'!>§.width / 2 + Math.random() * this.§'!>§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§'!>§.height / 2 + Math.random() * this.§'!>§.height;
      }
      
      public function §'![§() : §%!G§
      {
         return this.§'!>§;
      }
   }
}
