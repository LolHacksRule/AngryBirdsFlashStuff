package §4n§
{
   import §"X§.Texture;
   import §9!#§.§8U§;
   import §;'§.§?!D§;
   import §;'§.§?[§;
   import §;^§.§ @§;
   import §;^§.Sprite;
   import §=!K§.;
   import §=!K§.§@p§;
   import §=!K§.§]!%§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §8X§
   {
      
      public static const §4k§:Number = 1000;
      
      public static const §^!§:Number = 500;
      
      private static var § !1§:Array = null;
       
      
      private var § !0§:§@!4§;
      
      public var §07§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §3R§:Number;
      
      public var §8!>§:Number;
      
      public var §;!C§:int = -1;
      
      private var §9!<§:String;
      
      private var §44§:§#4§;
      
      private var §^!'§:§#4§;
      
      private var §"U§:§ @§;
      
      private var §!!H§:Number = 0;
      
      private var §,S§:Number = 0;
      
      public var §?!6§:int = -1;
      
      private var §>!0§:int = -1;
      
      private var §',§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §]!§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §1!H§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §"!A§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §>6§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §+!0§:String = "fly";
      
      public var §%]§:String = "fly_yell";
      
      public var §-!$§:GlowFilter;
      
      private var §`I§:Vector.<§?[§>;
      
      private var §-u§:§#4§;
      
      private var §>@§:Sprite = null;
      
      private var §2I§:§?!D§;
      
      public function §8X§(param1:§@!4§, param2:Sprite, param3:§?!D§)
      {
         super();
         this.§2I§ = param3;
         this.§ !0§ = param1;
         this.§9!<§ = this.§ !0§.§"!!§;
         this.§`I§ = new Vector.<§?[§>();
         this.§>@§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?[§ = null;
         this.§2A§();
         if(this.§`I§)
         {
            while(this.§`I§.length > 0)
            {
               _loc1_ = this.§`I§.pop();
               _loc1_.dispose();
            }
            this.§`I§ = null;
         }
      }
      
      public function §7!8§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§;!C§ = param1;
         this.§8!>§ = param2;
         this.§;@§();
      }
      
      public function §3[§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3R§ = 1;
            return;
         }
         this.§3R§ = this.mW / this.mH;
         if(this.§3R§ < 1)
         {
            this.§3R§ = 1 / this.§3R§;
         }
         this.§3R§ = Math.min(11,this.§3R§);
      }
      
      public function §3!J§(param1:§]!%§) : Boolean
      {
         var _loc2_:§@p§ = null;
         var _loc3_:Texture = null;
         if(this.§ !0§.isGround())
         {
            return false;
         }
         this.§-u§ = param1.§]C§("SPARKLES");
         this.§44§ = param1.§]C§(this.§9!<§);
         this.§^!'§ = this.§44§;
         var _loc4_:Number = 1;
         if(this.§^!'§)
         {
            _loc2_ = this.§^!'§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§2I§.textureManager.§4!M§();
         }
         this.§"U§ = new § @§(_loc3_);
         if(_loc2_)
         {
            this.§"U§.x = -_loc2_.pivotX;
            this.§"U§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§"U§.x = -this.§"U§.width / 2;
            this.§"U§.y = -this.§"U§.height / 2;
         }
         this.§"U§.scaleX = _loc4_;
         this.§"U§.scaleY = _loc4_;
         this.mW = this.§"U§.width / 2;
         this.mH = this.§"U§.height / 2;
         this.§>@§.addChild(this.§"U§);
         return true;
      }
      
      public function §5!2§(param1:§8U§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§^!H§)
         {
            case §8U§.§?!A§:
               _loc2_ = param1.§null §();
               _loc3_ = _loc2_[0];
               this.§!!H§ = _loc3_.x / §?!D§.§@!I§;
               this.§,S§ = _loc3_.y / §?!D§.§@!I§;
               break;
            case §8U§.§8!N§:
         }
         this.§0f§();
      }
      
      public function §;s§() : Array
      {
         return §3A§.§;s§(null,this.§ !0§.§%+§());
      }
      
      public function §@!8§() : Array
      {
         return §3A§.§@!8§(null,this.§ !0§.§%+§());
      }
      
      public function §;O§() : Array
      {
         return §3A§.§;O§(null);
      }
      
      public function §;@§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§>@§.scaleX = this.§>@§.scaleY = param1;
      }
      
      public function §0f§() : void
      {
         var _loc1_:§@p§ = null;
         if(!this.§44§)
         {
            return;
         }
         if(this.§1!H§)
         {
            this.§',§ = 1;
         }
         else if(this.§ !0§.getSpecialAnimationProgress() >= 0 && this.§44§.getSubAnimation(this.§]!§))
         {
            this.§^!'§ = this.§44§.getSubAnimation(this.§]!§);
            this.§',§ = this.§^!'§.getFrameCount() * this.§ !0§.getSpecialAnimationProgress();
            if(this.§',§ == this.§^!'§.getFrameCount() - 1 && this.§ !0§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§',§;
            }
         }
         else if(this.mTryToSpecial && this.§44§.getSubAnimation(this.§]!§))
         {
            this.§^!'§ = this.§44§.getSubAnimation(this.§]!§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§44§.getSubAnimation(this.§%]§))
         {
            this.§^!'§ = this.§44§.getSubAnimation(this.§%]§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§44§.getSubAnimation(this.§"!A§))
         {
            this.§^!'§ = this.§44§.getSubAnimation(this.§"!A§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§44§.getSubAnimation(this.§>6§))
         {
            this.§^!'§ = this.§44§.getSubAnimation(this.§>6§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§44§.getSubAnimation(this.§+!0§))
         {
            this.§^!'§ = this.§44§.getSubAnimation(this.§+!0§);
            this.mIsFlying = true;
         }
         else
         {
            this.§^!'§ = this.§44§;
         }
         if(this.§^!'§)
         {
            _loc1_ = this.§^!'§.getFrame(this.§',§);
            if(this.§"U§ && _loc1_)
            {
               this.§"U§.texture = _loc1_.texture;
               this.§"U§.x = -_loc1_.pivotX - this.§!!H§;
               this.§"U§.y = -_loc1_.pivotY - this.§,S§;
               this.§"U§.scaleX = _loc1_.scale;
               this.§"U§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §;V§() : void
      {
         this.§>@§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§?!6§ < 0)
         {
            this.§^!+§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§ !0§.§'s§ / this.§ !0§.§@g§) * this.§?!6§;
         if(_loc1_ != this.§>!0§)
         {
            this.§>!0§ = _loc1_;
            this.§',§ = this.§>!0§;
            this.§0f§();
         }
      }
      
      public function §^!+§() : void
      {
         if(this.§44§)
         {
            this.§?!6§ = this.§44§.getFrameCount();
         }
      }
      
      public function §=,§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§-!$§ = new GlowFilter();
         this.§-!$§.blurX = param2;
         this.§-!$§.blurY = param3;
         this.§-!$§.color = param1;
      }
      
      public function §2A§() : void
      {
         this.§-!$§ = null;
      }
      
      public function §`!;§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§ !0§.§<o§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§1;§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §#f§(param1:Number) : void
      {
         var _loc2_:int = this.§`I§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§`I§[_loc2_].updateLifeTime(param1);
            if(this.§`I§[_loc2_].lifeTime < 0)
            {
               this.§1;§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §1;§(param1:int) : void
      {
         if(!this.§-u§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§@p§ = this.§-u§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§?[§ = null;
         if(param1 < this.§`I§.length)
         {
            (_loc5_ = this.§`I§[param1]).§85§(_loc4_);
            _loc5_.§>2§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §?[§(_loc3_.texture,_loc4_);
            this.§`I§.push(_loc5_);
            this.§>@§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§"U§.width / 2 + Math.random() * this.§"U§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§"U§.height / 2 + Math.random() * this.§"U§.height;
      }
      
      public function §[!,§() : § @§
      {
         return this.§"U§;
      }
   }
}
