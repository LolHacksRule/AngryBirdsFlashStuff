package §]!D§
{
   import §"k§.§1s§;
   import §"k§.§5!7§;
   import §"k§.§;!Z§;
   import §%n§.§"!;§;
   import §3q§.b2Vec2;
   import §8!`§.§4J§;
   import §8!`§.§<!N§;
   import §;!Q§.§%o§;
   import §;!Q§.Sprite;
   import §]p§.Texture;
   import flash.filters.GlowFilter;
   
   public class §]!R§
   {
      
      public static const §<_§:Number = 1000;
      
      public static const §<'§:Number = 500;
      
      private static var §9u§:Array = null;
       
      
      private var §0!X§:§@!]§;
      
      public var §66§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §@!%§:Number;
      
      public var § e§:Number;
      
      public var §6H§:int = -1;
      
      private var §2C§:String;
      
      private var § !7§:§;!Z§;
      
      private var §-!?§:§;!Z§;
      
      private var §6d§:§%o§;
      
      private var §;b§:Number = 0;
      
      private var §;-§:Number = 0;
      
      public var §'!>§:int = -1;
      
      private var §#!E§:int = -1;
      
      private var §-<§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §->§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §1!=§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §"x§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §8>§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §^e§:String = "fly";
      
      public var §[!B§:String = "fly_yell";
      
      public var §>m§:GlowFilter;
      
      private var §?!4§:Vector.<§<!N§>;
      
      private var §"!'§:§;!Z§;
      
      private var §`K§:Sprite = null;
      
      private var §'N§:§4J§;
      
      public function §]!R§(param1:§@!]§, param2:Sprite, param3:§4J§)
      {
         super();
         this.§'N§ = param3;
         this.§0!X§ = param1;
         this.§2C§ = this.§0!X§.§4u§;
         this.§?!4§ = new Vector.<§<!N§>();
         this.§`K§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<!N§ = null;
         this.§"Y§();
         if(this.§?!4§)
         {
            while(this.§?!4§.length > 0)
            {
               _loc1_ = this.§?!4§.pop();
               _loc1_.dispose();
            }
            this.§?!4§ = null;
         }
      }
      
      public function §@>§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§6H§ = param1;
         this.§ e§ = param2;
         this.§5!Z§();
      }
      
      public function §4!V§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@!%§ = 1;
            return;
         }
         this.§@!%§ = this.mW / this.mH;
         if(this.§@!%§ < 1)
         {
            this.§@!%§ = 1 / this.§@!%§;
         }
         this.§@!%§ = Math.min(11,this.§@!%§);
      }
      
      public function §7!W§(param1:§1s§) : Boolean
      {
         var _loc2_:§5!7§ = null;
         var _loc3_:Texture = null;
         if(this.§0!X§.isGround())
         {
            return false;
         }
         this.§"!'§ = param1.§-!J§("SPARKLES");
         this.§ !7§ = param1.§-!J§(this.§2C§);
         this.§-!?§ = this.§ !7§;
         var _loc4_:Number = 1;
         if(this.§-!?§)
         {
            _loc2_ = this.§-!?§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§'N§.§>?§.§7!&§();
         }
         this.§6d§ = new §%o§(_loc3_);
         if(_loc2_)
         {
            this.§6d§.x = -_loc2_.pivotX;
            this.§6d§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§6d§.x = -this.§6d§.width / 2;
            this.§6d§.y = -this.§6d§.height / 2;
         }
         this.§6d§.scaleX = _loc4_;
         this.§6d§.scaleY = _loc4_;
         this.mW = this.§6d§.width / 2;
         this.mH = this.§6d§.height / 2;
         this.§`K§.addChild(this.§6d§);
         return true;
      }
      
      public function §]y§(param1:§"!;§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§3F§)
         {
            case §"!;§.§+H§:
               _loc2_ = param1.§4<§();
               _loc3_ = _loc2_[0];
               this.§;b§ = _loc3_.x / §4J§.§<W§;
               this.§;-§ = _loc3_.y / §4J§.§<W§;
               break;
            case §"!;§.§6!§:
         }
         this.§5!]§();
      }
      
      public function §4P§() : Array
      {
         return §!!Y§.§4P§(null,this.§0!X§.§,F§());
      }
      
      public function §"J§() : Array
      {
         return §!!Y§.§"J§(null,this.§0!X§.§,F§());
      }
      
      public function §>!+§() : Array
      {
         return §!!Y§.§>!+§(null);
      }
      
      public function §5!Z§() : void
      {
      }
      
      public function §0!%§(param1:Number) : void
      {
         this.§`K§.scaleX = this.§`K§.scaleY = param1;
      }
      
      public function §5!]§() : void
      {
         var _loc1_:§5!7§ = null;
         if(!this.§ !7§)
         {
            return;
         }
         if(this.§1!=§)
         {
            this.§-<§ = 1;
         }
         else if(this.§0!X§.getSpecialAnimationProgress() >= 0 && this.§ !7§.getSubAnimation(this.§->§))
         {
            this.§-!?§ = this.§ !7§.getSubAnimation(this.§->§);
            this.§-<§ = this.§-!?§.getFrameCount() * this.§0!X§.getSpecialAnimationProgress();
            if(this.§-<§ == this.§-!?§.getFrameCount() - 1 && this.§0!X§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§-<§;
            }
         }
         else if(this.mTryToSpecial && this.§ !7§.getSubAnimation(this.§->§))
         {
            this.§-!?§ = this.§ !7§.getSubAnimation(this.§->§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§ !7§.getSubAnimation(this.§[!B§))
         {
            this.§-!?§ = this.§ !7§.getSubAnimation(this.§[!B§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§ !7§.getSubAnimation(this.§"x§))
         {
            this.§-!?§ = this.§ !7§.getSubAnimation(this.§"x§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§ !7§.getSubAnimation(this.§8>§))
         {
            this.§-!?§ = this.§ !7§.getSubAnimation(this.§8>§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§ !7§.getSubAnimation(this.§^e§))
         {
            this.§-!?§ = this.§ !7§.getSubAnimation(this.§^e§);
            this.mIsFlying = true;
         }
         else
         {
            this.§-!?§ = this.§ !7§;
         }
         if(this.§-!?§)
         {
            _loc1_ = this.§-!?§.getFrame(this.§-<§);
            if(this.§6d§ && _loc1_)
            {
               this.§6d§.texture = _loc1_.texture;
               this.§6d§.x = -_loc1_.pivotX - this.§;b§;
               this.§6d§.y = -_loc1_.pivotY - this.§;-§;
               this.§6d§.scaleX = _loc1_.scale;
               this.§6d§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §0!L§() : void
      {
         this.§`K§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§'!>§ < 0)
         {
            this.§;!@§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§0!X§.§5h§ / this.§0!X§.§!e§) * this.§'!>§;
         if(_loc1_ != this.§#!E§)
         {
            this.§#!E§ = _loc1_;
            this.§-<§ = this.§#!E§;
            this.§5!]§();
         }
      }
      
      public function §;!@§() : void
      {
         if(this.§ !7§)
         {
            this.§'!>§ = this.§ !7§.getFrameCount();
         }
      }
      
      public function §+!S§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§>m§ = new GlowFilter();
         this.§>m§.blurX = param2;
         this.§>m§.blurY = param3;
         this.§>m§.color = param1;
      }
      
      public function §"Y§() : void
      {
         this.§>m§ = null;
      }
      
      public function §"!%§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§0!X§.§@!7§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§"e§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §5S§(param1:Number) : void
      {
         var _loc2_:int = this.§?!4§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§?!4§[_loc2_].updateLifeTime(param1);
            if(this.§?!4§[_loc2_].lifeTime < 0)
            {
               this.§"e§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §"e§(param1:int) : void
      {
         if(!this.§"!'§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§5!7§ = this.§"!'§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§<!N§ = null;
         if(param1 < this.§?!4§.length)
         {
            (_loc5_ = this.§?!4§[param1]).§=X§(_loc4_);
            _loc5_.§4!6§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §<!N§(_loc3_.texture,_loc4_);
            this.§?!4§.push(_loc5_);
            this.§`K§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§6d§.width / 2 + Math.random() * this.§6d§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§6d§.height / 2 + Math.random() * this.§6d§.height;
      }
      
      public function §,!8§() : §%o§
      {
         return this.§6d§;
      }
   }
}
