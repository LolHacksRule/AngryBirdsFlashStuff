package §finally§
{
   import §"o§.§ M§;
   import §"o§.§%'§;
   import §%?§.Texture;
   import §&V§.§,_§;
   import §&V§.§;Q§;
   import §&V§.§^!8§;
   import §2!"§.§;,§;
   import §@!=§.§"S§;
   import §@!=§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §`u§
   {
      
      public static const §@S§:Number = 1000;
      
      public static const §+"§:Number = 500;
      
      private static var §for §:Array = null;
       
      
      private var §@!§:§%!7§;
      
      public var §2N§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §6'§:Number;
      
      public var §]O§:Number;
      
      public var §5U§:int = -1;
      
      private var §+n§:String;
      
      private var §6!E§:§,_§;
      
      private var §[!4§:§,_§;
      
      private var §,6§:§"S§;
      
      private var §&3§:Number = 0;
      
      private var §#! §:Number = 0;
      
      public var §6S§:int = -1;
      
      private var §@!!§:int = -1;
      
      private var §+!!§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §9!§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §5!G§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §?V§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §8k§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §^!$§:String = "fly";
      
      public var §`d§:String = "fly_yell";
      
      public var §#Z§:GlowFilter;
      
      private var §?&§:Vector.<§%'§>;
      
      private var §%C§:§,_§;
      
      private var §+x§:Sprite = null;
      
      private var § 6§:§ M§;
      
      public function §`u§(param1:§%!7§, param2:Sprite, param3:§ M§)
      {
         super();
         this.§ 6§ = param3;
         this.§@!§ = param1;
         this.§+n§ = this.§@!§.§5o§;
         this.§?&§ = new Vector.<§%'§>();
         this.§+x§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%'§ = null;
         this.§+m§();
         if(this.§?&§)
         {
            while(this.§?&§.length > 0)
            {
               _loc1_ = this.§?&§.pop();
               _loc1_.dispose();
            }
            this.§?&§ = null;
         }
      }
      
      public function §5i§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§5U§ = param1;
         this.§]O§ = param2;
         this.§4i§();
      }
      
      public function §1O§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6'§ = 1;
            return;
         }
         this.§6'§ = this.mW / this.mH;
         if(this.§6'§ < 1)
         {
            this.§6'§ = 1 / this.§6'§;
         }
         this.§6'§ = Math.min(11,this.§6'§);
      }
      
      public function §4N§(param1:§^!8§) : Boolean
      {
         var _loc2_:§;Q§ = null;
         var _loc3_:Texture = null;
         if(this.§@!§.isGround())
         {
            return false;
         }
         this.§%C§ = param1.§!D§("SPARKLES");
         this.§6!E§ = param1.§!D§(this.§+n§);
         this.§[!4§ = this.§6!E§;
         var _loc4_:Number = 1;
         if(this.§[!4§)
         {
            _loc2_ = this.§[!4§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§ 6§.textureManager.§#w§();
         }
         this.§,6§ = new §"S§(_loc3_);
         if(_loc2_)
         {
            this.§,6§.x = -_loc2_.pivotX;
            this.§,6§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§,6§.x = -this.§,6§.width / 2;
            this.§,6§.y = -this.§,6§.height / 2;
         }
         this.§,6§.scaleX = _loc4_;
         this.§,6§.scaleY = _loc4_;
         this.mW = this.§,6§.width / 2;
         this.mH = this.§,6§.height / 2;
         this.§+x§.addChild(this.§,6§);
         return true;
      }
      
      public function §2!9§(param1:§;,§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§>K§)
         {
            case §;,§.§,G§:
               _loc2_ = param1.§'!C§();
               _loc3_ = _loc2_[0];
               this.§&3§ = _loc3_.x / § M§.§%v§;
               this.§#! § = _loc3_.y / § M§.§%v§;
               break;
            case §;,§.§!k§:
         }
         this.§,x§();
      }
      
      public function §'!B§() : Array
      {
         return §1`§.§'!B§(null,this.§@!§.§8>§());
      }
      
      public function §&z§() : Array
      {
         return §1`§.§&z§(null,this.§@!§.§8>§());
      }
      
      public function §?=§() : Array
      {
         return §1`§.§?=§(null);
      }
      
      public function §4i§() : void
      {
      }
      
      public function §^&§(param1:Number) : void
      {
         this.§+x§.scaleX = this.§+x§.scaleY = param1;
      }
      
      public function §,x§() : void
      {
         var _loc1_:§;Q§ = null;
         if(!this.§6!E§)
         {
            return;
         }
         if(this.§5!G§)
         {
            this.§+!!§ = 1;
         }
         else if(this.§@!§.getSpecialAnimationProgress() >= 0 && this.§6!E§.getSubAnimation(this.§9!§))
         {
            this.§[!4§ = this.§6!E§.getSubAnimation(this.§9!§);
            this.§+!!§ = this.§[!4§.getFrameCount() * this.§@!§.getSpecialAnimationProgress();
            if(this.§+!!§ == this.§[!4§.getFrameCount() - 1 && this.§@!§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§+!!§;
            }
         }
         else if(this.mTryToSpecial && this.§6!E§.getSubAnimation(this.§9!§))
         {
            this.§[!4§ = this.§6!E§.getSubAnimation(this.§9!§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§6!E§.getSubAnimation(this.§`d§))
         {
            this.§[!4§ = this.§6!E§.getSubAnimation(this.§`d§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§6!E§.getSubAnimation(this.§?V§))
         {
            this.§[!4§ = this.§6!E§.getSubAnimation(this.§?V§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§6!E§.getSubAnimation(this.§8k§))
         {
            this.§[!4§ = this.§6!E§.getSubAnimation(this.§8k§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§6!E§.getSubAnimation(this.§^!$§))
         {
            this.§[!4§ = this.§6!E§.getSubAnimation(this.§^!$§);
            this.mIsFlying = true;
         }
         else
         {
            this.§[!4§ = this.§6!E§;
         }
         if(this.§[!4§)
         {
            _loc1_ = this.§[!4§.getFrame(this.§+!!§);
            if(this.§,6§ && _loc1_)
            {
               this.§,6§.texture = _loc1_.texture;
               this.§,6§.x = -_loc1_.pivotX - this.§&3§;
               this.§,6§.y = -_loc1_.pivotY - this.§#! §;
               this.§,6§.scaleX = _loc1_.scale;
               this.§,6§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §[H§() : void
      {
         this.§+x§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§6S§ < 0)
         {
            this.§!b§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§@!§.§8x§ / this.§@!§.§3-§) * this.§6S§;
         if(_loc1_ != this.§@!!§)
         {
            this.§@!!§ = _loc1_;
            this.§+!!§ = this.§@!!§;
            this.§,x§();
         }
      }
      
      public function §!b§() : void
      {
         if(this.§6!E§)
         {
            this.§6S§ = this.§6!E§.getFrameCount();
         }
      }
      
      public function §[I§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§#Z§ = new GlowFilter();
         this.§#Z§.blurX = param2;
         this.§#Z§.blurY = param3;
         this.§#Z§.color = param1;
      }
      
      public function §+m§() : void
      {
         this.§#Z§ = null;
      }
      
      public function §&?§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§@!§.§']§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§-H§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §&6§(param1:Number) : void
      {
         var _loc2_:int = this.§?&§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§?&§[_loc2_].updateLifeTime(param1);
            if(this.§?&§[_loc2_].lifeTime < 0)
            {
               this.§-H§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §-H§(param1:int) : void
      {
         if(!this.§%C§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§;Q§ = this.§%C§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§%'§ = null;
         if(param1 < this.§?&§.length)
         {
            (_loc5_ = this.§?&§[param1]).§1!4§(_loc4_);
            _loc5_.§6h§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §%'§(_loc3_.texture,_loc4_);
            this.§?&§.push(_loc5_);
            this.§+x§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§,6§.width / 2 + Math.random() * this.§,6§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§,6§.height / 2 + Math.random() * this.§,6§.height;
      }
      
      public function §8=§() : §"S§
      {
         return this.§,6§;
      }
   }
}
