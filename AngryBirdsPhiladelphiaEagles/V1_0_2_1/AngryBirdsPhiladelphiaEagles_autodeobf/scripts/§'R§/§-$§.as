package §'R§
{
   import §%"§.§ do§;
   import §%"§.§7b§;
   import §<!N§.§&M§;
   import §<!N§.Sprite;
   import §@M§.Texture;
   import §^'§.§!!M§;
   import §^'§.§,!2§;
   import §^'§.§?!@§;
   import §`=§.§24§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §-$§
   {
      
      public static const §`!,§:Number = 1000;
      
      public static const §&&§:Number = 500;
      
      private static var §5R§:Array = null;
       
      
      private var §7!D§:§&r§;
      
      public var §&A§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §finally§:Number;
      
      public var §0B§:Number;
      
      public var §'!4§:int = -1;
      
      private var §%!=§:String;
      
      private var §"-§:§,!2§;
      
      private var §>g§:§,!2§;
      
      private var §!!;§:§&M§;
      
      private var §?$§:Number = 0;
      
      private var §%?§:Number = 0;
      
      public var § ]§:int = -1;
      
      private var §!^§:int = -1;
      
      private var §<!+§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var § x§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §@!N§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var § !2§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §6V§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §#`§:String = "fly";
      
      public var §2H§:String = "fly_yell";
      
      public var § K§:GlowFilter;
      
      private var §^H§:Vector.<§7b§>;
      
      private var §%r§:§,!2§;
      
      private var §=!"§:Sprite = null;
      
      private var §-H§:§ do§;
      
      public function §-$§(param1:§&r§, param2:Sprite, param3:§ do§)
      {
         super();
         this.§-H§ = param3;
         this.§7!D§ = param1;
         this.§%!=§ = this.§7!D§.§8!I§;
         this.§^H§ = new Vector.<§7b§>();
         this.§=!"§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7b§ = null;
         this.§3r§();
         if(this.§^H§)
         {
            while(this.§^H§.length > 0)
            {
               _loc1_ = this.§^H§.pop();
               _loc1_.dispose();
            }
            this.§^H§ = null;
         }
      }
      
      public function §<+§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§'!4§ = param1;
         this.§0B§ = param2;
         this.§1!M§();
      }
      
      public function §75§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§finally§ = 1;
            return;
         }
         this.§finally§ = this.mW / this.mH;
         if(this.§finally§ < 1)
         {
            this.§finally§ = 1 / this.§finally§;
         }
         this.§finally§ = Math.min(11,this.§finally§);
      }
      
      public function §3n§(param1:§?!@§) : Boolean
      {
         var _loc2_:§!!M§ = null;
         var _loc3_:Texture = null;
         if(this.§7!D§.isGround())
         {
            return false;
         }
         this.§%r§ = param1.getAnimation("SPARKLES");
         this.§"-§ = param1.getAnimation(this.§%!=§);
         this.§>g§ = this.§"-§;
         var _loc4_:Number = 1;
         if(this.§>g§)
         {
            _loc2_ = this.§>g§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§-H§.textureManager.§;k§();
         }
         this.§!!;§ = new §&M§(_loc3_);
         if(_loc2_)
         {
            this.§!!;§.x = -_loc2_.pivotX;
            this.§!!;§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§!!;§.x = -this.§!!;§.width / 2;
            this.§!!;§.y = -this.§!!;§.height / 2;
         }
         this.§!!;§.scaleX = _loc4_;
         this.§!!;§.scaleY = _loc4_;
         this.mW = this.§!!;§.width / 2;
         this.mH = this.§!!;§.height / 2;
         this.§=!"§.addChild(this.§!!;§);
         return true;
      }
      
      public function §'?§(param1:§24§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§4!%§)
         {
            case §24§.§<<§:
               _loc2_ = param1.§'U§();
               _loc3_ = _loc2_[0];
               this.§?$§ = _loc3_.x / § do§.§^!I§;
               this.§%?§ = _loc3_.y / § do§.§^!I§;
               break;
            case §24§.§9=§:
         }
         this.§8_§();
      }
      
      public function §^!F§() : Array
      {
         return §"§.§^!F§(null,this.§7!D§.§4!N§());
      }
      
      public function §3!H§() : Array
      {
         return §"§.§3!H§(null,this.§7!D§.§4!N§());
      }
      
      public function §?X§() : Array
      {
         return §"§.§?X§(null);
      }
      
      public function §1!M§() : void
      {
      }
      
      public function §[n§(param1:Number) : void
      {
         this.§=!"§.scaleX = this.§=!"§.scaleY = param1;
      }
      
      public function §8_§() : void
      {
         var _loc1_:§!!M§ = null;
         if(!this.§"-§)
         {
            return;
         }
         if(this.§@!N§)
         {
            this.§<!+§ = 1;
         }
         else if(this.§7!D§.getSpecialAnimationProgress() >= 0 && this.§"-§.getSubAnimation(this.§ x§))
         {
            this.§>g§ = this.§"-§.getSubAnimation(this.§ x§);
            this.§<!+§ = this.§>g§.getFrameCount() * this.§7!D§.getSpecialAnimationProgress();
            if(this.§<!+§ == this.§>g§.getFrameCount() - 1 && this.§7!D§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§<!+§;
            }
         }
         else if(this.mTryToSpecial && this.§"-§.getSubAnimation(this.§ x§))
         {
            this.§>g§ = this.§"-§.getSubAnimation(this.§ x§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§"-§.getSubAnimation(this.§2H§))
         {
            this.§>g§ = this.§"-§.getSubAnimation(this.§2H§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§"-§.getSubAnimation(this.§ !2§))
         {
            this.§>g§ = this.§"-§.getSubAnimation(this.§ !2§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§"-§.getSubAnimation(this.§6V§))
         {
            this.§>g§ = this.§"-§.getSubAnimation(this.§6V§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§"-§.getSubAnimation(this.§#`§))
         {
            this.§>g§ = this.§"-§.getSubAnimation(this.§#`§);
            this.mIsFlying = true;
         }
         else
         {
            this.§>g§ = this.§"-§;
         }
         if(this.§>g§)
         {
            _loc1_ = this.§>g§.getFrame(this.§<!+§);
            if(this.§!!;§ && _loc1_)
            {
               this.§!!;§.texture = _loc1_.texture;
               this.§!!;§.x = -_loc1_.pivotX - this.§?$§;
               this.§!!;§.y = -_loc1_.pivotY - this.§%?§;
               this.§!!;§.scaleX = _loc1_.scale;
               this.§!!;§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §=s§() : void
      {
         this.§=!"§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§ ]§ < 0)
         {
            this.§0-§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§7!D§.§3! § / this.§7!D§.§`!O§) * this.§ ]§;
         if(_loc1_ != this.§!^§)
         {
            this.§!^§ = _loc1_;
            this.§<!+§ = this.§!^§;
            this.§8_§();
         }
      }
      
      public function §0-§() : void
      {
         if(this.§"-§)
         {
            this.§ ]§ = this.§"-§.getFrameCount();
         }
      }
      
      public function §0&§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§ K§ = new GlowFilter();
         this.§ K§.blurX = param2;
         this.§ K§.blurY = param3;
         this.§ K§.color = param1;
      }
      
      public function §3r§() : void
      {
         this.§ K§ = null;
      }
      
      public function §'K§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§7!D§.§[L§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§[e§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §?&§(param1:Number) : void
      {
         var _loc2_:int = this.§^H§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§^H§[_loc2_].updateLifeTime(param1);
            if(this.§^H§[_loc2_].lifeTime < 0)
            {
               this.§[e§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §[e§(param1:int) : void
      {
         if(!this.§%r§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§!!M§ = this.§%r§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§7b§ = null;
         if(param1 < this.§^H§.length)
         {
            (_loc5_ = this.§^H§[param1]).§>#§(_loc4_);
            _loc5_.§5!8§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §7b§(_loc3_.texture,_loc4_);
            this.§^H§.push(_loc5_);
            this.§=!"§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§!!;§.width / 2 + Math.random() * this.§!!;§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§!!;§.height / 2 + Math.random() * this.§!!;§.height;
      }
      
      public function §0!!§() : §&M§
      {
         return this.§!!;§;
      }
   }
}
