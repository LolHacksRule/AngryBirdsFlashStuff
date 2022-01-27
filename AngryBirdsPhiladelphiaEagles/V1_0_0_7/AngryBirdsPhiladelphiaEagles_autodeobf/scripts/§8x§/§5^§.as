package §8x§
{
   import §"`§.Texture;
   import §'d§.§?+§;
   import §+f§.§0Q§;
   import §+f§.§=3§;
   import §+f§.§@d§;
   import §,!F§.§#§;
   import §,!F§.§]T§;
   import §4G§.Sprite;
   import §4G§.§`l§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §5^§
   {
      
      public static const §'v§:Number = 1000;
      
      public static const §3H§:Number = 500;
      
      private static var §]Y§:Array = null;
       
      
      private var §"!#§:§8C§;
      
      public var §-P§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §;!@§:Number;
      
      public var §+H§:Number;
      
      public var §2l§:int = -1;
      
      private var §4!§:String;
      
      private var §0+§:§0Q§;
      
      private var §<Y§:§0Q§;
      
      private var §&4§:§`l§;
      
      private var §8g§:Number = 0;
      
      private var §[t§:Number = 0;
      
      public var §2H§:int = -1;
      
      private var §1<§:int = -1;
      
      private var §+!8§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §^N§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §2!B§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §05§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var § each§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §->§:String = "fly";
      
      public var §<k§:String = "fly_yell";
      
      public var §&?§:GlowFilter;
      
      private var §;[§:Vector.<§]T§>;
      
      private var §!!%§:§0Q§;
      
      private var §!!+§:Sprite = null;
      
      private var §&§:§#§;
      
      public function §5^§(param1:§8C§, param2:Sprite, param3:§#§)
      {
         super();
         this.§&§ = param3;
         this.§"!#§ = param1;
         this.§4!§ = this.§"!#§.§!Z§;
         this.§;[§ = new Vector.<§]T§>();
         this.§!!+§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]T§ = null;
         this.§#!G§();
         if(this.§;[§)
         {
            while(this.§;[§.length > 0)
            {
               _loc1_ = this.§;[§.pop();
               _loc1_.dispose();
            }
            this.§;[§ = null;
         }
      }
      
      public function §>$§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§2l§ = param1;
         this.§+H§ = param2;
         this.§`!%§();
      }
      
      public function § !2§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!@§ = 1;
            return;
         }
         this.§;!@§ = this.mW / this.mH;
         if(this.§;!@§ < 1)
         {
            this.§;!@§ = 1 / this.§;!@§;
         }
         this.§;!@§ = Math.min(11,this.§;!@§);
      }
      
      public function §+!1§(param1:§@d§) : Boolean
      {
         var _loc2_:§=3§ = null;
         var _loc3_:Texture = null;
         if(this.§"!#§.isGround())
         {
            return false;
         }
         this.§!!%§ = param1.getAnimation("SPARKLES");
         this.§0+§ = param1.getAnimation(this.§4!§);
         this.§<Y§ = this.§0+§;
         var _loc4_:Number = 1;
         if(this.§<Y§)
         {
            _loc2_ = this.§<Y§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§&§.textureManager.§^!C§();
         }
         this.§&4§ = new §`l§(_loc3_);
         if(_loc2_)
         {
            this.§&4§.x = -_loc2_.pivotX;
            this.§&4§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§&4§.x = -this.§&4§.width / 2;
            this.§&4§.y = -this.§&4§.height / 2;
         }
         this.§&4§.scaleX = _loc4_;
         this.§&4§.scaleY = _loc4_;
         this.mW = this.§&4§.width / 2;
         this.mH = this.§&4§.height / 2;
         this.§!!+§.addChild(this.§&4§);
         return true;
      }
      
      public function §=F§(param1:§?+§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§-$§)
         {
            case §?+§.§null §:
               _loc2_ = param1.§7H§();
               _loc3_ = _loc2_[0];
               this.§8g§ = _loc3_.x / §#§.§67§;
               this.§[t§ = _loc3_.y / §#§.§67§;
               break;
            case §?+§.§3G§:
         }
         this.§#y§();
      }
      
      public function §,!L§() : Array
      {
         return §4z§.§,!L§(null,this.§"!#§.§@v§());
      }
      
      public function §;!I§() : Array
      {
         return §4z§.§;!I§(null,this.§"!#§.§@v§());
      }
      
      public function §package§() : Array
      {
         return §4z§.§package§(null);
      }
      
      public function §`!%§() : void
      {
      }
      
      public function §0O§(param1:Number) : void
      {
         this.§!!+§.scaleX = this.§!!+§.scaleY = param1;
      }
      
      public function §#y§() : void
      {
         var _loc1_:§=3§ = null;
         if(!this.§0+§)
         {
            return;
         }
         if(this.§2!B§)
         {
            this.§+!8§ = 1;
         }
         else if(this.§"!#§.getSpecialAnimationProgress() >= 0 && this.§0+§.getSubAnimation(this.§^N§))
         {
            this.§<Y§ = this.§0+§.getSubAnimation(this.§^N§);
            this.§+!8§ = this.§<Y§.getFrameCount() * this.§"!#§.getSpecialAnimationProgress();
            if(this.§+!8§ == this.§<Y§.getFrameCount() - 1 && this.§"!#§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§+!8§;
            }
         }
         else if(this.mTryToSpecial && this.§0+§.getSubAnimation(this.§^N§))
         {
            this.§<Y§ = this.§0+§.getSubAnimation(this.§^N§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§0+§.getSubAnimation(this.§<k§))
         {
            this.§<Y§ = this.§0+§.getSubAnimation(this.§<k§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§0+§.getSubAnimation(this.§05§))
         {
            this.§<Y§ = this.§0+§.getSubAnimation(this.§05§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§0+§.getSubAnimation(this.§ each§))
         {
            this.§<Y§ = this.§0+§.getSubAnimation(this.§ each§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§0+§.getSubAnimation(this.§->§))
         {
            this.§<Y§ = this.§0+§.getSubAnimation(this.§->§);
            this.mIsFlying = true;
         }
         else
         {
            this.§<Y§ = this.§0+§;
         }
         if(this.§<Y§)
         {
            _loc1_ = this.§<Y§.getFrame(this.§+!8§);
            if(this.§&4§ && _loc1_)
            {
               this.§&4§.texture = _loc1_.texture;
               this.§&4§.x = -_loc1_.pivotX - this.§8g§;
               this.§&4§.y = -_loc1_.pivotY - this.§[t§;
               this.§&4§.scaleX = _loc1_.scale;
               this.§&4§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §-e§() : void
      {
         this.§!!+§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§2H§ < 0)
         {
            this.§,w§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§"!#§.§<5§ / this.§"!#§.§`t§) * this.§2H§;
         if(_loc1_ != this.§1<§)
         {
            this.§1<§ = _loc1_;
            this.§+!8§ = this.§1<§;
            this.§#y§();
         }
      }
      
      public function §,w§() : void
      {
         if(this.§0+§)
         {
            this.§2H§ = this.§0+§.getFrameCount();
         }
      }
      
      public function §+Z§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§&?§ = new GlowFilter();
         this.§&?§.blurX = param2;
         this.§&?§.blurY = param3;
         this.§&?§.color = param1;
      }
      
      public function §#!G§() : void
      {
         this.§&?§ = null;
      }
      
      public function § !"§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§"!#§.§?!N§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§<%§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §7!4§(param1:Number) : void
      {
         var _loc2_:int = this.§;[§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§;[§[_loc2_].updateLifeTime(param1);
            if(this.§;[§[_loc2_].lifeTime < 0)
            {
               this.§<%§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §<%§(param1:int) : void
      {
         if(!this.§!!%§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§=3§ = this.§!!%§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§]T§ = null;
         if(param1 < this.§;[§.length)
         {
            (_loc5_ = this.§;[§[param1]).§]i§(_loc4_);
            _loc5_.§&!O§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §]T§(_loc3_.texture,_loc4_);
            this.§;[§.push(_loc5_);
            this.§!!+§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§&4§.width / 2 + Math.random() * this.§&4§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§&4§.height / 2 + Math.random() * this.§&4§.height;
      }
      
      public function §^!"§() : §`l§
      {
         return this.§&4§;
      }
   }
}
