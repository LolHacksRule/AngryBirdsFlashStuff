package §9_§
{
   import §1n§.§,!0§;
   import §1n§.§1D§;
   import §1n§.§?!C§;
   import §4N§.§2D§;
   import §[P§.Texture;
   import §[x§.§2^§;
   import §[x§.§7!&§;
   import §^V§.§1!,§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §`-§
   {
      
      public static const §`w§:Number = 1000;
      
      public static const §&H§:Number = 500;
      
      private static var §6z§:Array = null;
       
      
      private var §>0§:§+>§;
      
      public var §7m§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §-k§:Number;
      
      public var §^!7§:Number;
      
      public var §"!E§:int = -1;
      
      private var §^s§:String;
      
      private var §,k§:§?!C§;
      
      private var §in §:§?!C§;
      
      private var §6-§:§1!,§;
      
      private var §"!H§:Number = 0;
      
      private var §;5§:Number = 0;
      
      public var §=d§:int = -1;
      
      private var §3F§:int = -1;
      
      private var §6y§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §@E§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §11§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §1X§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §]D§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §%?§:String = "fly";
      
      public var §9Q§:String = "fly_yell";
      
      public var §<o§:GlowFilter;
      
      private var §#"§:Vector.<§7!&§>;
      
      private var §%F§:§?!C§;
      
      private var §1-§:Sprite = null;
      
      private var §1! §:§2^§;
      
      public function §`-§(param1:§+>§, param2:Sprite, param3:§2^§)
      {
         super();
         this.§1! § = param3;
         this.§>0§ = param1;
         this.§^s§ = this.§>0§.§57§;
         this.§#"§ = new Vector.<§7!&§>();
         this.§1-§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7!&§ = null;
         this.§"'§();
         if(this.§#"§)
         {
            while(this.§#"§.length > 0)
            {
               _loc1_ = this.§#"§.pop();
               _loc1_.dispose();
            }
            this.§#"§ = null;
         }
      }
      
      public function §!P§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§"!E§ = param1;
         this.§^!7§ = param2;
         this.§79§();
      }
      
      public function §-!!§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§-k§ = 1;
            return;
         }
         this.§-k§ = this.mW / this.mH;
         if(this.§-k§ < 1)
         {
            this.§-k§ = 1 / this.§-k§;
         }
         this.§-k§ = Math.min(11,this.§-k§);
      }
      
      public function §`!4§(param1:§,!0§) : Boolean
      {
         var _loc2_:§1D§ = null;
         var _loc3_:Texture = null;
         if(this.§>0§.isGround())
         {
            return false;
         }
         this.§%F§ = param1.§9$§("SPARKLES");
         this.§,k§ = param1.§9$§(this.§^s§);
         this.§in § = this.§,k§;
         var _loc4_:Number = 1;
         if(this.§in §)
         {
            _loc2_ = this.§in §.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§1! §.textureManager.§9!5§();
         }
         this.§6-§ = new §1!,§(_loc3_);
         if(_loc2_)
         {
            this.§6-§.x = -_loc2_.pivotX;
            this.§6-§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§6-§.x = -this.§6-§.width / 2;
            this.§6-§.y = -this.§6-§.height / 2;
         }
         this.§6-§.scaleX = _loc4_;
         this.§6-§.scaleY = _loc4_;
         this.mW = this.§6-§.width / 2;
         this.mH = this.§6-§.height / 2;
         this.§1-§.addChild(this.§6-§);
         return true;
      }
      
      public function §9%§(param1:§2D§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§-'§)
         {
            case §2D§.§>!$§:
               _loc2_ = param1.§9H§();
               _loc3_ = _loc2_[0];
               this.§"!H§ = _loc3_.x / §2^§.§,]§;
               this.§;5§ = _loc3_.y / §2^§.§,]§;
               break;
            case §2D§.§&W§:
         }
         this.§;&§();
      }
      
      public function §"!A§() : Array
      {
         return §&!F§.§"!A§(null,this.§>0§.§"N§());
      }
      
      public function §@!&§() : Array
      {
         return §&!F§.§@!&§(null,this.§>0§.§"N§());
      }
      
      public function §if §() : Array
      {
         return §&!F§.§if §(null);
      }
      
      public function §79§() : void
      {
      }
      
      public function §-+§(param1:Number) : void
      {
         this.§1-§.scaleX = this.§1-§.scaleY = param1;
      }
      
      public function §;&§() : void
      {
         var _loc1_:§1D§ = null;
         if(!this.§,k§)
         {
            return;
         }
         if(this.§11§)
         {
            this.§6y§ = 1;
         }
         else if(this.§>0§.getSpecialAnimationProgress() >= 0 && this.§,k§.getSubAnimation(this.§@E§))
         {
            this.§in § = this.§,k§.getSubAnimation(this.§@E§);
            this.§6y§ = this.§in §.getFrameCount() * this.§>0§.getSpecialAnimationProgress();
            if(this.§6y§ == this.§in §.getFrameCount() - 1 && this.§>0§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§6y§;
            }
         }
         else if(this.mTryToSpecial && this.§,k§.getSubAnimation(this.§@E§))
         {
            this.§in § = this.§,k§.getSubAnimation(this.§@E§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§,k§.getSubAnimation(this.§9Q§))
         {
            this.§in § = this.§,k§.getSubAnimation(this.§9Q§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§,k§.getSubAnimation(this.§1X§))
         {
            this.§in § = this.§,k§.getSubAnimation(this.§1X§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§,k§.getSubAnimation(this.§]D§))
         {
            this.§in § = this.§,k§.getSubAnimation(this.§]D§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§,k§.getSubAnimation(this.§%?§))
         {
            this.§in § = this.§,k§.getSubAnimation(this.§%?§);
            this.mIsFlying = true;
         }
         else
         {
            this.§in § = this.§,k§;
         }
         if(this.§in §)
         {
            _loc1_ = this.§in §.getFrame(this.§6y§);
            if(this.§6-§ && _loc1_)
            {
               this.§6-§.texture = _loc1_.texture;
               this.§6-§.x = -_loc1_.pivotX - this.§"!H§;
               this.§6-§.y = -_loc1_.pivotY - this.§;5§;
               this.§6-§.scaleX = _loc1_.scale;
               this.§6-§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function § !5§() : void
      {
         this.§1-§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§=d§ < 0)
         {
            this.§%b§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§>0§.§8!'§ / this.§>0§.§[!3§) * this.§=d§;
         if(_loc1_ != this.§3F§)
         {
            this.§3F§ = _loc1_;
            this.§6y§ = this.§3F§;
            this.§;&§();
         }
      }
      
      public function §%b§() : void
      {
         if(this.§,k§)
         {
            this.§=d§ = this.§,k§.getFrameCount();
         }
      }
      
      public function §=O§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§<o§ = new GlowFilter();
         this.§<o§.blurX = param2;
         this.§<o§.blurY = param3;
         this.§<o§.color = param1;
      }
      
      public function §"'§() : void
      {
         this.§<o§ = null;
      }
      
      public function §?! §() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§>0§.§8@§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§&!#§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §24§(param1:Number) : void
      {
         var _loc2_:int = this.§#"§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§#"§[_loc2_].updateLifeTime(param1);
            if(this.§#"§[_loc2_].lifeTime < 0)
            {
               this.§&!#§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §&!#§(param1:int) : void
      {
         if(!this.§%F§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§1D§ = this.§%F§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§7!&§ = null;
         if(param1 < this.§#"§.length)
         {
            (_loc5_ = this.§#"§[param1]).§#F§(_loc4_);
            _loc5_.§,3§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §7!&§(_loc3_.texture,_loc4_);
            this.§#"§.push(_loc5_);
            this.§1-§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§6-§.width / 2 + Math.random() * this.§6-§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§6-§.height / 2 + Math.random() * this.§6-§.height;
      }
      
      public function §,D§() : §1!,§
      {
         return this.§6-§;
      }
   }
}
