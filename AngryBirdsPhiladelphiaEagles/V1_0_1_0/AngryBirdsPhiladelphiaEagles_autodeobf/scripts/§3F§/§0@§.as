package §3F§
{
   import § !N§.§6!§;
   import § !N§.§=_§;
   import § !N§.§]!P§;
   import §+!N§.§-!H§;
   import §0l§.Texture;
   import §3H§.Sprite;
   import §3H§.§`!@§;
   import §>2§.§4h§;
   import §>2§.§=L§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §0@§
   {
      
      public static const §7!N§:Number = 1000;
      
      public static const §2O§:Number = 500;
      
      private static var §6,§:Array = null;
       
      
      private var §]!F§:§2!3§;
      
      public var §04§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §[#§:Number;
      
      public var §-S§:Number;
      
      public var §]N§:int = -1;
      
      private var §+z§:String;
      
      private var §3A§:§=_§;
      
      private var §4E§:§=_§;
      
      private var §3q§:§`!@§;
      
      private var §@!D§:Number = 0;
      
      private var §6F§:Number = 0;
      
      public var §0!"§:int = -1;
      
      private var §9Z§:int = -1;
      
      private var §#!1§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §=O§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §`!§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §#L§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §>F§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §=F§:String = "fly";
      
      public var §"!0§:String = "fly_yell";
      
      public var §>a§:GlowFilter;
      
      private var §6!D§:Vector.<§=L§>;
      
      private var §@c§:§=_§;
      
      private var §5+§:Sprite = null;
      
      private var §@k§:§4h§;
      
      public function §0@§(param1:§2!3§, param2:Sprite, param3:§4h§)
      {
         super();
         this.§@k§ = param3;
         this.§]!F§ = param1;
         this.§+z§ = this.§]!F§.§9E§;
         this.§6!D§ = new Vector.<§=L§>();
         this.§5+§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=L§ = null;
         this.§+#§();
         if(this.§6!D§)
         {
            while(this.§6!D§.length > 0)
            {
               _loc1_ = this.§6!D§.pop();
               _loc1_.dispose();
            }
            this.§6!D§ = null;
         }
      }
      
      public function §3b§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§]N§ = param1;
         this.§-S§ = param2;
         this.§ l§();
      }
      
      public function §]]§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[#§ = 1;
            return;
         }
         this.§[#§ = this.mW / this.mH;
         if(this.§[#§ < 1)
         {
            this.§[#§ = 1 / this.§[#§;
         }
         this.§[#§ = Math.min(11,this.§[#§);
      }
      
      public function §,H§(param1:§]!P§) : Boolean
      {
         var _loc2_:§6!§ = null;
         var _loc3_:Texture = null;
         if(this.§]!F§.isGround())
         {
            return false;
         }
         this.§@c§ = param1.getAnimation("SPARKLES");
         this.§3A§ = param1.getAnimation(this.§+z§);
         this.§4E§ = this.§3A§;
         var _loc4_:Number = 1;
         if(this.§4E§)
         {
            _loc2_ = this.§4E§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§@k§.textureManager.§5!0§();
         }
         this.§3q§ = new §`!@§(_loc3_);
         if(_loc2_)
         {
            this.§3q§.x = -_loc2_.pivotX;
            this.§3q§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§3q§.x = -this.§3q§.width / 2;
            this.§3q§.y = -this.§3q§.height / 2;
         }
         this.§3q§.scaleX = _loc4_;
         this.§3q§.scaleY = _loc4_;
         this.mW = this.§3q§.width / 2;
         this.mH = this.§3q§.height / 2;
         this.§5+§.addChild(this.§3q§);
         return true;
      }
      
      public function §,"§(param1:§-!H§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§9o§)
         {
            case §-!H§.§;!2§:
               _loc2_ = param1.§ S§();
               _loc3_ = _loc2_[0];
               this.§@!D§ = _loc3_.x / §4h§.§-9§;
               this.§6F§ = _loc3_.y / §4h§.§-9§;
               break;
            case §-!H§.§&!$§:
         }
         this.§;c§();
      }
      
      public function §-^§() : Array
      {
         return §3K§.§-^§(null,this.§]!F§.§-G§());
      }
      
      public function §7&§() : Array
      {
         return §3K§.§7&§(null,this.§]!F§.§-G§());
      }
      
      public function §>5§() : Array
      {
         return §3K§.§>5§(null);
      }
      
      public function § l§() : void
      {
      }
      
      public function §#!F§(param1:Number) : void
      {
         this.§5+§.scaleX = this.§5+§.scaleY = param1;
      }
      
      public function §;c§() : void
      {
         var _loc1_:§6!§ = null;
         if(!this.§3A§)
         {
            return;
         }
         if(this.§`!§)
         {
            this.§#!1§ = 1;
         }
         else if(this.§]!F§.getSpecialAnimationProgress() >= 0 && this.§3A§.getSubAnimation(this.§=O§))
         {
            this.§4E§ = this.§3A§.getSubAnimation(this.§=O§);
            this.§#!1§ = this.§4E§.getFrameCount() * this.§]!F§.getSpecialAnimationProgress();
            if(this.§#!1§ == this.§4E§.getFrameCount() - 1 && this.§]!F§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§#!1§;
            }
         }
         else if(this.mTryToSpecial && this.§3A§.getSubAnimation(this.§=O§))
         {
            this.§4E§ = this.§3A§.getSubAnimation(this.§=O§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§3A§.getSubAnimation(this.§"!0§))
         {
            this.§4E§ = this.§3A§.getSubAnimation(this.§"!0§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§3A§.getSubAnimation(this.§#L§))
         {
            this.§4E§ = this.§3A§.getSubAnimation(this.§#L§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§3A§.getSubAnimation(this.§>F§))
         {
            this.§4E§ = this.§3A§.getSubAnimation(this.§>F§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§3A§.getSubAnimation(this.§=F§))
         {
            this.§4E§ = this.§3A§.getSubAnimation(this.§=F§);
            this.mIsFlying = true;
         }
         else
         {
            this.§4E§ = this.§3A§;
         }
         if(this.§4E§)
         {
            _loc1_ = this.§4E§.getFrame(this.§#!1§);
            if(this.§3q§ && _loc1_)
            {
               this.§3q§.texture = _loc1_.texture;
               this.§3q§.x = -_loc1_.pivotX - this.§@!D§;
               this.§3q§.y = -_loc1_.pivotY - this.§6F§;
               this.§3q§.scaleX = _loc1_.scale;
               this.§3q§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §6N§() : void
      {
         this.§5+§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§0!"§ < 0)
         {
            this.§-!%§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§]!F§.§7^§ / this.§]!F§.§0-§) * this.§0!"§;
         if(_loc1_ != this.§9Z§)
         {
            this.§9Z§ = _loc1_;
            this.§#!1§ = this.§9Z§;
            this.§;c§();
         }
      }
      
      public function §-!%§() : void
      {
         if(this.§3A§)
         {
            this.§0!"§ = this.§3A§.getFrameCount();
         }
      }
      
      public function §!m§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§>a§ = new GlowFilter();
         this.§>a§.blurX = param2;
         this.§>a§.blurY = param3;
         this.§>a§.color = param1;
      }
      
      public function §+#§() : void
      {
         this.§>a§ = null;
      }
      
      public function §&!1§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§]!F§.§3s§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§5!B§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §;s§(param1:Number) : void
      {
         var _loc2_:int = this.§6!D§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§6!D§[_loc2_].updateLifeTime(param1);
            if(this.§6!D§[_loc2_].lifeTime < 0)
            {
               this.§5!B§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §5!B§(param1:int) : void
      {
         if(!this.§@c§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§6!§ = this.§@c§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§=L§ = null;
         if(param1 < this.§6!D§.length)
         {
            (_loc5_ = this.§6!D§[param1]).§9!8§(_loc4_);
            _loc5_.§,!=§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §=L§(_loc3_.texture,_loc4_);
            this.§6!D§.push(_loc5_);
            this.§5+§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§3q§.width / 2 + Math.random() * this.§3q§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§3q§.height / 2 + Math.random() * this.§3q§.height;
      }
      
      public function §%C§() : §`!@§
      {
         return this.§3q§;
      }
   }
}
