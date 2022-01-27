package §>Y§
{
   import §4!-§.§%o§;
   import §4!-§.§]V§;
   import §4!0§.§#^§;
   import §4!0§.§#v§;
   import §4!0§.§+!,§;
   import §86§.§?5§;
   import §86§.Sprite;
   import §<Z§.§ P§;
   import §[!A§.Texture;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §^!,§
   {
      
      public static const §'!?§:Number = 1000;
      
      public static const §1s§:Number = 500;
      
      private static var §#Z§:Array = null;
       
      
      private var §"W§:§#o§;
      
      public var §6G§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §[2§:Number;
      
      public var §&§:Number;
      
      public var §4a§:int = -1;
      
      private var §81§:String;
      
      private var §"h§:§#v§;
      
      private var §9J§:§#v§;
      
      private var §+`§:§?5§;
      
      private var §!1§:Number = 0;
      
      private var §5!J§:Number = 0;
      
      public var §"!@§:int = -1;
      
      private var § !1§:int = -1;
      
      private var §[I§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §1!-§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §9p§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §;X§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §@#§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §5!B§:String = "fly";
      
      public var §"'§:String = "fly_yell";
      
      public var §0'§:GlowFilter;
      
      private var §=!1§:Vector.<§]V§>;
      
      private var §8w§:§#v§;
      
      private var §+!N§:Sprite = null;
      
      private var §'!8§:§%o§;
      
      public function §^!,§(param1:§#o§, param2:Sprite, param3:§%o§)
      {
         super();
         this.§'!8§ = param3;
         this.§"W§ = param1;
         this.§81§ = this.§"W§.§]q§;
         this.§=!1§ = new Vector.<§]V§>();
         this.§+!N§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]V§ = null;
         this.§&Z§();
         if(this.§=!1§)
         {
            while(this.§=!1§.length > 0)
            {
               _loc1_ = this.§=!1§.pop();
               _loc1_.dispose();
            }
            this.§=!1§ = null;
         }
      }
      
      public function §+!-§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§4a§ = param1;
         this.§&§ = param2;
         this.§"!I§();
      }
      
      public function §`!,§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[2§ = 1;
            return;
         }
         this.§[2§ = this.mW / this.mH;
         if(this.§[2§ < 1)
         {
            this.§[2§ = 1 / this.§[2§;
         }
         this.§[2§ = Math.min(11,this.§[2§);
      }
      
      public function §5!6§(param1:§+!,§) : Boolean
      {
         var _loc2_:§#^§ = null;
         var _loc3_:Texture = null;
         if(this.§"W§.isGround())
         {
            return false;
         }
         this.§8w§ = param1.getAnimation("SPARKLES");
         this.§"h§ = param1.getAnimation(this.§81§);
         this.§9J§ = this.§"h§;
         var _loc4_:Number = 1;
         if(this.§9J§)
         {
            _loc2_ = this.§9J§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§'!8§.textureManager.§`c§();
         }
         this.§+`§ = new §?5§(_loc3_);
         if(_loc2_)
         {
            this.§+`§.x = -_loc2_.pivotX;
            this.§+`§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§+`§.x = -this.§+`§.width / 2;
            this.§+`§.y = -this.§+`§.height / 2;
         }
         this.§+`§.scaleX = _loc4_;
         this.§+`§.scaleY = _loc4_;
         this.mW = this.§+`§.width / 2;
         this.mH = this.§+`§.height / 2;
         this.§+!N§.addChild(this.§+`§);
         return true;
      }
      
      public function §[!L§(param1:§ P§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§!"§)
         {
            case § P§.§0!+§:
               _loc2_ = param1.§3%§();
               _loc3_ = _loc2_[0];
               this.§!1§ = _loc3_.x / §%o§.§]!?§;
               this.§5!J§ = _loc3_.y / §%o§.§]!?§;
               break;
            case § P§.§3-§:
         }
         this.§-!C§();
      }
      
      public function §;!?§() : Array
      {
         return §`!!§.§;!?§(null,this.§"W§.§6X§());
      }
      
      public function §8!L§() : Array
      {
         return §`!!§.§8!L§(null,this.§"W§.§6X§());
      }
      
      public function §-C§() : Array
      {
         return §`!!§.§-C§(null);
      }
      
      public function §"!I§() : void
      {
      }
      
      public function §6p§(param1:Number) : void
      {
         this.§+!N§.scaleX = this.§+!N§.scaleY = param1;
      }
      
      public function §-!C§() : void
      {
         var _loc1_:§#^§ = null;
         if(!this.§"h§)
         {
            return;
         }
         if(this.§9p§)
         {
            this.§[I§ = 1;
         }
         else if(this.§"W§.getSpecialAnimationProgress() >= 0 && this.§"h§.getSubAnimation(this.§1!-§))
         {
            this.§9J§ = this.§"h§.getSubAnimation(this.§1!-§);
            this.§[I§ = this.§9J§.getFrameCount() * this.§"W§.getSpecialAnimationProgress();
            if(this.§[I§ == this.§9J§.getFrameCount() - 1 && this.§"W§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§[I§;
            }
         }
         else if(this.mTryToSpecial && this.§"h§.getSubAnimation(this.§1!-§))
         {
            this.§9J§ = this.§"h§.getSubAnimation(this.§1!-§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§"h§.getSubAnimation(this.§"'§))
         {
            this.§9J§ = this.§"h§.getSubAnimation(this.§"'§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§"h§.getSubAnimation(this.§;X§))
         {
            this.§9J§ = this.§"h§.getSubAnimation(this.§;X§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§"h§.getSubAnimation(this.§@#§))
         {
            this.§9J§ = this.§"h§.getSubAnimation(this.§@#§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§"h§.getSubAnimation(this.§5!B§))
         {
            this.§9J§ = this.§"h§.getSubAnimation(this.§5!B§);
            this.mIsFlying = true;
         }
         else
         {
            this.§9J§ = this.§"h§;
         }
         if(this.§9J§)
         {
            _loc1_ = this.§9J§.getFrame(this.§[I§);
            if(this.§+`§ && _loc1_)
            {
               this.§+`§.texture = _loc1_.texture;
               this.§+`§.x = -_loc1_.pivotX - this.§!1§;
               this.§+`§.y = -_loc1_.pivotY - this.§5!J§;
               this.§+`§.scaleX = _loc1_.scale;
               this.§+`§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §=!;§() : void
      {
         this.§+!N§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§"!@§ < 0)
         {
            this.§<C§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§"W§.§=4§ / this.§"W§.§72§) * this.§"!@§;
         if(_loc1_ != this.§ !1§)
         {
            this.§ !1§ = _loc1_;
            this.§[I§ = this.§ !1§;
            this.§-!C§();
         }
      }
      
      public function §<C§() : void
      {
         if(this.§"h§)
         {
            this.§"!@§ = this.§"h§.getFrameCount();
         }
      }
      
      public function § !L§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§0'§ = new GlowFilter();
         this.§0'§.blurX = param2;
         this.§0'§.blurY = param3;
         this.§0'§.color = param1;
      }
      
      public function §&Z§() : void
      {
         this.§0'§ = null;
      }
      
      public function §%f§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§"W§.§1+§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§%h§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §;2§(param1:Number) : void
      {
         var _loc2_:int = this.§=!1§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§=!1§[_loc2_].updateLifeTime(param1);
            if(this.§=!1§[_loc2_].lifeTime < 0)
            {
               this.§%h§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §%h§(param1:int) : void
      {
         if(!this.§8w§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§#^§ = this.§8w§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§]V§ = null;
         if(param1 < this.§=!1§.length)
         {
            (_loc5_ = this.§=!1§[param1]).§>X§(_loc4_);
            _loc5_.§7W§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §]V§(_loc3_.texture,_loc4_);
            this.§=!1§.push(_loc5_);
            this.§+!N§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§+`§.width / 2 + Math.random() * this.§+`§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§+`§.height / 2 + Math.random() * this.§+`§.height;
      }
      
      public function §5,§() : §?5§
      {
         return this.§+`§;
      }
   }
}
