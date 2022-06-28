package §^!A§
{
   import §&o§.§?T§;
   import §&o§.Sprite;
   import §0! §.Texture;
   import §6A§.§ !§;
   import §6A§.§3;§;
   import §9K§.§!?§;
   import §9K§.§"!?§;
   import §9K§.§,z§;
   import §^!L§.§"c§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §[!J§
   {
      
      public static const §`"§:Number = 1000;
      
      public static const §4!-§:Number = 500;
      
      private static var §3!$§:Array = null;
       
      
      private var § ?§:§;!%§;
      
      public var §%s§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §=4§:Number;
      
      public var §2!;§:Number;
      
      public var §>c§:int = -1;
      
      private var §?Y§:String;
      
      private var §>!%§:§!?§;
      
      private var §5F§:§!?§;
      
      private var §+J§:§?T§;
      
      private var §;!N§:Number = 0;
      
      private var § T§:Number = 0;
      
      public var §>P§:int = -1;
      
      private var §2e§:int = -1;
      
      private var §8!4§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §@M§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §`4§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §<r§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §[B§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §!!8§:String = "fly";
      
      public var §!"§:String = "fly_yell";
      
      public var §1=§:GlowFilter;
      
      private var §+!;§:Vector.<§3;§>;
      
      private var §^!E§:§!?§;
      
      private var §,!7§:Sprite = null;
      
      private var §?V§:§ !§;
      
      public function §[!J§(param1:§;!%§, param2:Sprite, param3:§ !§)
      {
         super();
         this.§?V§ = param3;
         this.§ ?§ = param1;
         this.§?Y§ = this.§ ?§.§1>§;
         this.§+!;§ = new Vector.<§3;§>();
         this.§,!7§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3;§ = null;
         this.§ !9§();
         if(this.§+!;§)
         {
            while(this.§+!;§.length > 0)
            {
               _loc1_ = this.§+!;§.pop();
               _loc1_.dispose();
            }
            this.§+!;§ = null;
         }
      }
      
      public function §-L§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§>c§ = param1;
         this.§2!;§ = param2;
         this.§>j§();
      }
      
      public function §@"§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§=4§ = 1;
            return;
         }
         this.§=4§ = this.mW / this.mH;
         if(this.§=4§ < 1)
         {
            this.§=4§ = 1 / this.§=4§;
         }
         this.§=4§ = Math.min(11,this.§=4§);
      }
      
      public function §1R§(param1:§"!?§) : Boolean
      {
         var _loc2_:§,z§ = null;
         var _loc3_:Texture = null;
         if(this.§ ?§.isGround())
         {
            return false;
         }
         this.§^!E§ = param1.§8!0§("SPARKLES");
         this.§>!%§ = param1.§8!0§(this.§?Y§);
         this.§5F§ = this.§>!%§;
         var _loc4_:Number = 1;
         if(this.§5F§)
         {
            _loc2_ = this.§5F§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§?V§.textureManager.§=^§();
         }
         this.§+J§ = new §?T§(_loc3_);
         if(_loc2_)
         {
            this.§+J§.x = -_loc2_.pivotX;
            this.§+J§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§+J§.x = -this.§+J§.width / 2;
            this.§+J§.y = -this.§+J§.height / 2;
         }
         this.§+J§.scaleX = _loc4_;
         this.§+J§.scaleY = _loc4_;
         this.mW = this.§+J§.width / 2;
         this.mH = this.§+J§.height / 2;
         this.§,!7§.addChild(this.§+J§);
         return true;
      }
      
      public function §+!'§(param1:§"c§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§3<§)
         {
            case §"c§.§,p§:
               _loc2_ = param1.§&v§();
               _loc3_ = _loc2_[0];
               this.§;!N§ = _loc3_.x / § !§.§`J§;
               this.§ T§ = _loc3_.y / § !§.§`J§;
               break;
            case §"c§.§"!K§:
         }
         this.§;?§();
      }
      
      public function §2!7§() : Array
      {
         return §5c§.§2!7§(null,this.§ ?§.§-A§());
      }
      
      public function §!J§() : Array
      {
         return §5c§.§!J§(null,this.§ ?§.§-A§());
      }
      
      public function §[T§() : Array
      {
         return §5c§.§[T§(null);
      }
      
      public function §>j§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§,!7§.scaleX = this.§,!7§.scaleY = param1;
      }
      
      public function §;?§() : void
      {
         var _loc1_:§,z§ = null;
         if(!this.§>!%§)
         {
            return;
         }
         if(this.§`4§)
         {
            this.§8!4§ = 1;
         }
         else if(this.§ ?§.getSpecialAnimationProgress() >= 0 && this.§>!%§.getSubAnimation(this.§@M§))
         {
            this.§5F§ = this.§>!%§.getSubAnimation(this.§@M§);
            this.§8!4§ = this.§5F§.getFrameCount() * this.§ ?§.getSpecialAnimationProgress();
            if(this.§8!4§ == this.§5F§.getFrameCount() - 1 && this.§ ?§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§8!4§;
            }
         }
         else if(this.mTryToSpecial && this.§>!%§.getSubAnimation(this.§@M§))
         {
            this.§5F§ = this.§>!%§.getSubAnimation(this.§@M§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§>!%§.getSubAnimation(this.§!"§))
         {
            this.§5F§ = this.§>!%§.getSubAnimation(this.§!"§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§>!%§.getSubAnimation(this.§<r§))
         {
            this.§5F§ = this.§>!%§.getSubAnimation(this.§<r§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§>!%§.getSubAnimation(this.§[B§))
         {
            this.§5F§ = this.§>!%§.getSubAnimation(this.§[B§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§>!%§.getSubAnimation(this.§!!8§))
         {
            this.§5F§ = this.§>!%§.getSubAnimation(this.§!!8§);
            this.mIsFlying = true;
         }
         else
         {
            this.§5F§ = this.§>!%§;
         }
         if(this.§5F§)
         {
            _loc1_ = this.§5F§.getFrame(this.§8!4§);
            if(this.§+J§ && _loc1_)
            {
               this.§+J§.texture = _loc1_.texture;
               this.§+J§.x = -_loc1_.pivotX - this.§;!N§;
               this.§+J§.y = -_loc1_.pivotY - this.§ T§;
               this.§+J§.scaleX = _loc1_.scale;
               this.§+J§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §]!1§() : void
      {
         this.§,!7§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§>P§ < 0)
         {
            this.§+!=§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§ ?§.§`Y§ / this.§ ?§.§@!§) * this.§>P§;
         if(_loc1_ != this.§2e§)
         {
            this.§2e§ = _loc1_;
            this.§8!4§ = this.§2e§;
            this.§;?§();
         }
      }
      
      public function §+!=§() : void
      {
         if(this.§>!%§)
         {
            this.§>P§ = this.§>!%§.getFrameCount();
         }
      }
      
      public function §%w§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§1=§ = new GlowFilter();
         this.§1=§.blurX = param2;
         this.§1=§.blurY = param3;
         this.§1=§.color = param1;
      }
      
      public function § !9§() : void
      {
         this.§1=§ = null;
      }
      
      public function §#! §() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§ ?§.§1!=§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§4!L§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §&&§(param1:Number) : void
      {
         var _loc2_:int = this.§+!;§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§+!;§[_loc2_].updateLifeTime(param1);
            if(this.§+!;§[_loc2_].lifeTime < 0)
            {
               this.§4!L§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §4!L§(param1:int) : void
      {
         if(!this.§^!E§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§,z§ = this.§^!E§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§3;§ = null;
         if(param1 < this.§+!;§.length)
         {
            (_loc5_ = this.§+!;§[param1]).§,!L§(_loc4_);
            _loc5_.§5!E§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §3;§(_loc3_.texture,_loc4_);
            this.§+!;§.push(_loc5_);
            this.§,!7§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§+J§.width / 2 + Math.random() * this.§+J§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§+J§.height / 2 + Math.random() * this.§+J§.height;
      }
      
      public function §'!4§() : §?T§
      {
         return this.§+J§;
      }
   }
}
