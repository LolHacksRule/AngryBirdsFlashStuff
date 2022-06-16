package §3!#§
{
   import §#S§.§+!;§;
   import §#S§.§-$§;
   import §#S§.§6!r§;
   import §0!2§.§5"L§;
   import §0!2§.§=t§;
   import §7F§.b2Vec2;
   import §=%§.§&-§;
   import §?7§.Texture;
   import §]!v§.§'!=§;
   import §]!v§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §38§
   {
      
      public static const §;""§:Number = 1000;
      
      public static const §]!V§:Number = 500;
      
      private static var §-!Q§:Array = null;
       
      
      private var §]!Z§:§5"A§;
      
      public var §#"?§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §]o§:Number;
      
      public var §@K§:Number;
      
      public var §6M§:int = -1;
      
      private var §5d§:String;
      
      private var §8"H§:§-$§;
      
      private var §9""§:§-$§;
      
      private var §2!E§:§'!=§;
      
      private var §,!6§:Number = 0;
      
      private var §97§:Number = 0;
      
      public var §`O§:int = -1;
      
      private var §-"E§:int = -1;
      
      private var §3K§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §=N§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §?!O§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §=x§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §`R§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §0!n§:String = "fly";
      
      public var §<"K§:String = "fly_yell";
      
      public var §9Z§:GlowFilter;
      
      private var §4!0§:Vector.<§=t§>;
      
      private var §6",§:§-$§;
      
      private var §`b§:Sprite = null;
      
      private var §^!"§:§5"L§;
      
      public function §38§(param1:§5"A§, param2:Sprite, param3:§5"L§)
      {
         super();
         this.§^!"§ = param3;
         this.§]!Z§ = param1;
         this.§5d§ = this.§]!Z§.§=-§;
         this.§4!0§ = new Vector.<§=t§>();
         this.§`b§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=t§ = null;
         this.§3"%§();
         if(this.§4!0§)
         {
            while(this.§4!0§.length > 0)
            {
               _loc1_ = this.§4!0§.pop();
               _loc1_.dispose();
            }
            this.§4!0§ = null;
         }
      }
      
      public function §switch§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§6M§ = param1;
         this.§@K§ = param2;
         this.§2!c§();
      }
      
      public function §[!O§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]o§ = 1;
            return;
         }
         this.§]o§ = this.mW / this.mH;
         if(this.§]o§ < 1)
         {
            this.§]o§ = 1 / this.§]o§;
         }
         this.§]o§ = Math.min(11,this.§]o§);
      }
      
      public function §5"4§(param1:§+!;§) : Boolean
      {
         var _loc2_:§6!r§ = null;
         var _loc3_:Texture = null;
         if(this.§]!Z§.isGround())
         {
            return false;
         }
         this.§6",§ = param1.getAnimation("SPARKLES");
         this.§8"H§ = param1.getAnimation(this.§5d§);
         this.§9""§ = this.§8"H§;
         var _loc4_:Number = 1;
         if(this.§9""§)
         {
            _loc2_ = this.§9""§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§^!"§.textureManager.§^!k§();
         }
         this.§2!E§ = new §'!=§(_loc3_);
         if(_loc2_)
         {
            this.§2!E§.x = -_loc2_.pivotX;
            this.§2!E§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§2!E§.x = -this.§2!E§.width / 2;
            this.§2!E§.y = -this.§2!E§.height / 2;
         }
         this.§2!E§.scaleX = _loc4_;
         this.§2!E§.scaleY = _loc4_;
         this.mW = this.§2!E§.width / 2;
         this.mH = this.§2!E§.height / 2;
         this.§`b§.addChild(this.§2!E§);
         return true;
      }
      
      public function §4!e§(param1:§&-§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§79§)
         {
            case §&-§.§9!m§:
               _loc2_ = param1.§-!r§();
               _loc3_ = _loc2_[0];
               this.§,!6§ = _loc3_.x / §5"L§.§@>§;
               this.§97§ = _loc3_.y / §5"L§.§@>§;
               break;
            case §&-§.§`!Z§:
         }
         this.§=^§();
      }
      
      public function §<!F§() : Array
      {
         return §^!z§.§<!F§(null,this.§]!Z§.§7!_§());
      }
      
      public function §!!3§() : Array
      {
         return §^!z§.§!!3§(null,this.§]!Z§.§7!_§());
      }
      
      public function §#R§() : Array
      {
         return §^!z§.§#R§(null);
      }
      
      public function §2!c§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§`b§.scaleX = this.§`b§.scaleY = param1;
      }
      
      public function §=^§() : void
      {
         var _loc1_:§6!r§ = null;
         if(!this.§8"H§)
         {
            return;
         }
         if(this.§?!O§)
         {
            this.§3K§ = 1;
         }
         else if(this.§]!Z§.getSpecialAnimationProgress() >= 0 && this.§8"H§.getSubAnimation(this.§=N§))
         {
            this.§9""§ = this.§8"H§.getSubAnimation(this.§=N§);
            this.§3K§ = this.§9""§.getFrameCount() * this.§]!Z§.getSpecialAnimationProgress();
            if(this.§3K§ == this.§9""§.getFrameCount() - 1 && this.§]!Z§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§3K§;
            }
         }
         else if(this.mTryToSpecial && this.§8"H§.getSubAnimation(this.§=N§))
         {
            this.§9""§ = this.§8"H§.getSubAnimation(this.§=N§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§8"H§.getSubAnimation(this.§<"K§))
         {
            this.§9""§ = this.§8"H§.getSubAnimation(this.§<"K§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§8"H§.getSubAnimation(this.§=x§))
         {
            this.§9""§ = this.§8"H§.getSubAnimation(this.§=x§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§8"H§.getSubAnimation(this.§`R§))
         {
            this.§9""§ = this.§8"H§.getSubAnimation(this.§`R§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§8"H§.getSubAnimation(this.§0!n§))
         {
            this.§9""§ = this.§8"H§.getSubAnimation(this.§0!n§);
            this.mIsFlying = true;
         }
         else
         {
            this.§9""§ = this.§8"H§;
         }
         if(this.§9""§)
         {
            _loc1_ = this.§9""§.getFrame(this.§3K§);
            if(this.§2!E§ && _loc1_)
            {
               this.§2!E§.texture = _loc1_.texture;
               this.§2!E§.x = -_loc1_.pivotX - this.§,!6§;
               this.§2!E§.y = -_loc1_.pivotY - this.§97§;
               this.§2!E§.scaleX = _loc1_.scale;
               this.§2!E§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §['§() : void
      {
         this.§`b§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§`O§ < 0)
         {
            this.§0!J§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§]!Z§.§!!U§ / this.§]!Z§.§3!A§) * this.§`O§;
         if(_loc1_ != this.§-"E§)
         {
            this.§-"E§ = _loc1_;
            this.§3K§ = this.§-"E§;
            this.§=^§();
         }
      }
      
      public function §0!J§() : void
      {
         if(this.§8"H§)
         {
            this.§`O§ = this.§8"H§.getFrameCount();
         }
      }
      
      public function §0!g§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§9Z§ = new GlowFilter();
         this.§9Z§.blurX = param2;
         this.§9Z§.blurY = param3;
         this.§9Z§.color = param1;
      }
      
      public function §3"%§() : void
      {
         this.§9Z§ = null;
      }
      
      public function §8"@§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§]!Z§.§+p§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§&#§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §"!3§(param1:Number) : void
      {
         var _loc2_:int = this.§4!0§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§4!0§[_loc2_].updateLifeTime(param1);
            if(this.§4!0§[_loc2_].lifeTime < 0)
            {
               this.§&#§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §&#§(param1:int) : void
      {
         if(!this.§6",§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§6!r§ = this.§6",§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§=t§ = null;
         if(param1 < this.§4!0§.length)
         {
            (_loc5_ = this.§4!0§[param1]).§9v§(_loc4_);
            _loc5_.§ F§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §=t§(_loc3_.texture,_loc4_);
            this.§4!0§.push(_loc5_);
            this.§`b§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§2!E§.width / 2 + Math.random() * this.§2!E§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§2!E§.height / 2 + Math.random() * this.§2!E§.height;
      }
      
      public function §@!y§() : §'!=§
      {
         return this.§2!E§;
      }
   }
}
