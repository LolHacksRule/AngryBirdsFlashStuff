package §-!&§
{
   import § N§.§1!A§;
   import § N§.Sprite;
   import §#e§.§4^§;
   import §#e§.§@!+§;
   import §#e§.§`!9§;
   import §2G§.§+b§;
   import §8z§.Texture;
   import §9T§.§0!4§;
   import §9T§.§1r§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §?k§
   {
      
      public static const §1J§:Number = 1000;
      
      public static const §[R§:Number = 500;
      
      private static var §-!P§:Array = null;
       
      
      private var §'!0§:§3!,§;
      
      public var §if §:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §;!=§:Number;
      
      public var §1!#§:Number;
      
      public var §=n§:int = -1;
      
      private var §"u§:String;
      
      private var §3!Q§:§4^§;
      
      private var §[s§:§4^§;
      
      private var §<!8§:§1!A§;
      
      private var §3!B§:Number = 0;
      
      private var §=h§:Number = 0;
      
      public var §8!H§:int = -1;
      
      private var §[$§:int = -1;
      
      private var §4!1§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §6,§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §1y§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §&!D§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §5!A§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §"Y§:String = "fly";
      
      public var §"m§:String = "fly_yell";
      
      public var §@O§:GlowFilter;
      
      private var §>!@§:Vector.<§0!4§>;
      
      private var §%h§:§4^§;
      
      private var §8A§:Sprite = null;
      
      private var §;§:§1r§;
      
      public function §?k§(param1:§3!,§, param2:Sprite, param3:§1r§)
      {
         super();
         this.§;§ = param3;
         this.§'!0§ = param1;
         this.§"u§ = this.§'!0§.§4V§;
         this.§>!@§ = new Vector.<§0!4§>();
         this.§8A§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0!4§ = null;
         this.§^B§();
         if(this.§>!@§)
         {
            while(this.§>!@§.length > 0)
            {
               _loc1_ = this.§>!@§.pop();
               _loc1_.dispose();
            }
            this.§>!@§ = null;
         }
      }
      
      public function §+,§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§=n§ = param1;
         this.§1!#§ = param2;
         this.§<<§();
      }
      
      public function §7G§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!=§ = 1;
            return;
         }
         this.§;!=§ = this.mW / this.mH;
         if(this.§;!=§ < 1)
         {
            this.§;!=§ = 1 / this.§;!=§;
         }
         this.§;!=§ = Math.min(11,this.§;!=§);
      }
      
      public function §[!B§(param1:§@!+§) : Boolean
      {
         var _loc2_:§`!9§ = null;
         var _loc3_:Texture = null;
         if(this.§'!0§.isGround())
         {
            return false;
         }
         this.§%h§ = param1.getAnimation("SPARKLES");
         this.§3!Q§ = param1.getAnimation(this.§"u§);
         this.§[s§ = this.§3!Q§;
         var _loc4_:Number = 1;
         if(this.§[s§)
         {
            _loc2_ = this.§[s§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§;§.textureManager.§6K§();
         }
         this.§<!8§ = new §1!A§(_loc3_);
         if(_loc2_)
         {
            this.§<!8§.x = -_loc2_.pivotX;
            this.§<!8§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§<!8§.x = -this.§<!8§.width / 2;
            this.§<!8§.y = -this.§<!8§.height / 2;
         }
         this.§<!8§.scaleX = _loc4_;
         this.§<!8§.scaleY = _loc4_;
         this.mW = this.§<!8§.width / 2;
         this.mH = this.§<!8§.height / 2;
         this.§8A§.addChild(this.§<!8§);
         return true;
      }
      
      public function §!!,§(param1:§+b§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§6H§)
         {
            case §+b§.§%<§:
               _loc2_ = param1.§'! §();
               _loc3_ = _loc2_[0];
               this.§3!B§ = _loc3_.x / §1r§.§[M§;
               this.§=h§ = _loc3_.y / §1r§.§[M§;
               break;
            case §+b§.§'J§:
         }
         this.§08§();
      }
      
      public function §%k§() : Array
      {
         return §'s§.§%k§(null,this.§'!0§.§4H§());
      }
      
      public function §7m§() : Array
      {
         return §'s§.§7m§(null,this.§'!0§.§4H§());
      }
      
      public function §3'§() : Array
      {
         return §'s§.§3'§(null);
      }
      
      public function §<<§() : void
      {
      }
      
      public function §%!0§(param1:Number) : void
      {
         this.§8A§.scaleX = this.§8A§.scaleY = param1;
      }
      
      public function §08§() : void
      {
         var _loc1_:§`!9§ = null;
         if(!this.§3!Q§)
         {
            return;
         }
         if(this.§1y§)
         {
            this.§4!1§ = 1;
         }
         else if(this.§'!0§.getSpecialAnimationProgress() >= 0 && this.§3!Q§.getSubAnimation(this.§6,§))
         {
            this.§[s§ = this.§3!Q§.getSubAnimation(this.§6,§);
            this.§4!1§ = this.§[s§.getFrameCount() * this.§'!0§.getSpecialAnimationProgress();
            if(this.§4!1§ == this.§[s§.getFrameCount() - 1 && this.§'!0§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§4!1§;
            }
         }
         else if(this.mTryToSpecial && this.§3!Q§.getSubAnimation(this.§6,§))
         {
            this.§[s§ = this.§3!Q§.getSubAnimation(this.§6,§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§3!Q§.getSubAnimation(this.§"m§))
         {
            this.§[s§ = this.§3!Q§.getSubAnimation(this.§"m§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§3!Q§.getSubAnimation(this.§&!D§))
         {
            this.§[s§ = this.§3!Q§.getSubAnimation(this.§&!D§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§3!Q§.getSubAnimation(this.§5!A§))
         {
            this.§[s§ = this.§3!Q§.getSubAnimation(this.§5!A§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§3!Q§.getSubAnimation(this.§"Y§))
         {
            this.§[s§ = this.§3!Q§.getSubAnimation(this.§"Y§);
            this.mIsFlying = true;
         }
         else
         {
            this.§[s§ = this.§3!Q§;
         }
         if(this.§[s§)
         {
            _loc1_ = this.§[s§.getFrame(this.§4!1§);
            if(this.§<!8§ && _loc1_)
            {
               this.§<!8§.texture = _loc1_.texture;
               this.§<!8§.x = -_loc1_.pivotX - this.§3!B§;
               this.§<!8§.y = -_loc1_.pivotY - this.§=h§;
               this.§<!8§.scaleX = _loc1_.scale;
               this.§<!8§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §in§() : void
      {
         this.§8A§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§8!H§ < 0)
         {
            this.§`t§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§'!0§.§8!2§ / this.§'!0§.§53§) * this.§8!H§;
         if(_loc1_ != this.§[$§)
         {
            this.§[$§ = _loc1_;
            this.§4!1§ = this.§[$§;
            this.§08§();
         }
      }
      
      public function §`t§() : void
      {
         if(this.§3!Q§)
         {
            this.§8!H§ = this.§3!Q§.getFrameCount();
         }
      }
      
      public function §0V§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§@O§ = new GlowFilter();
         this.§@O§.blurX = param2;
         this.§@O§.blurY = param3;
         this.§@O§.color = param1;
      }
      
      public function §^B§() : void
      {
         this.§@O§ = null;
      }
      
      public function §4!@§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§'!0§.§8!D§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§&t§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §56§(param1:Number) : void
      {
         var _loc2_:int = this.§>!@§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§>!@§[_loc2_].updateLifeTime(param1);
            if(this.§>!@§[_loc2_].lifeTime < 0)
            {
               this.§&t§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §&t§(param1:int) : void
      {
         if(!this.§%h§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§`!9§ = this.§%h§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§0!4§ = null;
         if(param1 < this.§>!@§.length)
         {
            (_loc5_ = this.§>!@§[param1]).§]!D§(_loc4_);
            _loc5_.§6?§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §0!4§(_loc3_.texture,_loc4_);
            this.§>!@§.push(_loc5_);
            this.§8A§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§<!8§.width / 2 + Math.random() * this.§<!8§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§<!8§.height / 2 + Math.random() * this.§<!8§.height;
      }
      
      public function §[c§() : §1!A§
      {
         return this.§<!8§;
      }
   }
}
