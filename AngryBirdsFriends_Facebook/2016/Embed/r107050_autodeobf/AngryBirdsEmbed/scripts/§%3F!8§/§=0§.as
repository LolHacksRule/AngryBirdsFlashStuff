package §?!8§
{
   import §#?§.§7!A§;
   import §#?§.§=E§;
   import §#?§.§^@§;
   import §21§.Texture;
   import §2E§.§`u§;
   import §90§.§8S§;
   import §90§.Sprite;
   import §`!4§.§6l§;
   import §`!4§.§8!9§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §=0§
   {
      
      public static const §<`§:Number = 1000;
      
      public static const §"-§:Number = 500;
      
      private static var §,B§:Array = null;
       
      
      private var §^!F§:§]f§;
      
      public var §@!0§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §7!6§:Number;
      
      public var §+!1§:Number;
      
      public var § A§:int = -1;
      
      private var § !G§:String;
      
      private var §>A§:§7!A§;
      
      private var §<D§:§7!A§;
      
      private var §%^§:§8S§;
      
      private var §>-§:Number = 0;
      
      private var §?!%§:Number = 0;
      
      public var §=!<§:int = -1;
      
      private var §?g§:int = -1;
      
      private var §=!D§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §9!N§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §#!7§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §`!;§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §=&§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §,k§:String = "fly";
      
      public var §0y§:String = "fly_yell";
      
      public var §[3§:GlowFilter;
      
      private var §?S§:Vector.<§8!9§>;
      
      private var §9!#§:§7!A§;
      
      private var §`8§:Sprite = null;
      
      private var §#J§:§6l§;
      
      public function §=0§(param1:§]f§, param2:Sprite, param3:§6l§)
      {
         super();
         this.§#J§ = param3;
         this.§^!F§ = param1;
         this.§ !G§ = this.§^!F§.§4h§;
         this.§?S§ = new Vector.<§8!9§>();
         this.§`8§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8!9§ = null;
         this.§6p§();
         if(this.§?S§)
         {
            while(this.§?S§.length > 0)
            {
               _loc1_ = this.§?S§.pop();
               _loc1_.dispose();
            }
            this.§?S§ = null;
         }
      }
      
      public function §;^§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§ A§ = param1;
         this.§+!1§ = param2;
         this.§,9§();
      }
      
      public function §]k§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7!6§ = 1;
            return;
         }
         this.§7!6§ = this.mW / this.mH;
         if(this.§7!6§ < 1)
         {
            this.§7!6§ = 1 / this.§7!6§;
         }
         this.§7!6§ = Math.min(11,this.§7!6§);
      }
      
      public function §>D§(param1:§=E§) : Boolean
      {
         var _loc2_:§^@§ = null;
         var _loc3_:Texture = null;
         if(this.§^!F§.isGround())
         {
            return false;
         }
         this.§9!#§ = param1.§"!$§("SPARKLES");
         this.§>A§ = param1.§"!$§(this.§ !G§);
         this.§<D§ = this.§>A§;
         var _loc4_:Number = 1;
         if(this.§<D§)
         {
            _loc2_ = this.§<D§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§#J§.textureManager.§9U§();
         }
         this.§%^§ = new §8S§(_loc3_);
         if(_loc2_)
         {
            this.§%^§.x = -_loc2_.pivotX;
            this.§%^§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§%^§.x = -this.§%^§.width / 2;
            this.§%^§.y = -this.§%^§.height / 2;
         }
         this.§%^§.scaleX = _loc4_;
         this.§%^§.scaleY = _loc4_;
         this.mW = this.§%^§.width / 2;
         this.mH = this.§%^§.height / 2;
         this.§`8§.addChild(this.§%^§);
         return true;
      }
      
      public function §"X§(param1:§`u§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§?!I§)
         {
            case §`u§.§ q§:
               _loc2_ = param1.§##§();
               _loc3_ = _loc2_[0];
               this.§>-§ = _loc3_.x / §6l§.§%!<§;
               this.§?!%§ = _loc3_.y / §6l§.§%!<§;
               break;
            case §`u§.§&!+§:
         }
         this.§+!;§();
      }
      
      public function §'!6§() : Array
      {
         return §[_§.§'!6§(null,this.§^!F§.§9'§());
      }
      
      public function §7h§() : Array
      {
         return §[_§.§7h§(null,this.§^!F§.§9'§());
      }
      
      public function §42§() : Array
      {
         return §[_§.§42§(null);
      }
      
      public function §,9§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§`8§.scaleX = this.§`8§.scaleY = param1;
      }
      
      public function §+!;§() : void
      {
         var _loc1_:§^@§ = null;
         if(!this.§>A§)
         {
            return;
         }
         if(this.§#!7§)
         {
            this.§=!D§ = 1;
         }
         else if(this.§^!F§.getSpecialAnimationProgress() >= 0 && this.§>A§.getSubAnimation(this.§9!N§))
         {
            this.§<D§ = this.§>A§.getSubAnimation(this.§9!N§);
            this.§=!D§ = this.§<D§.getFrameCount() * this.§^!F§.getSpecialAnimationProgress();
            if(this.§=!D§ == this.§<D§.getFrameCount() - 1 && this.§^!F§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§=!D§;
            }
         }
         else if(this.mTryToSpecial && this.§>A§.getSubAnimation(this.§9!N§))
         {
            this.§<D§ = this.§>A§.getSubAnimation(this.§9!N§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§>A§.getSubAnimation(this.§0y§))
         {
            this.§<D§ = this.§>A§.getSubAnimation(this.§0y§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§>A§.getSubAnimation(this.§`!;§))
         {
            this.§<D§ = this.§>A§.getSubAnimation(this.§`!;§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§>A§.getSubAnimation(this.§=&§))
         {
            this.§<D§ = this.§>A§.getSubAnimation(this.§=&§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§>A§.getSubAnimation(this.§,k§))
         {
            this.§<D§ = this.§>A§.getSubAnimation(this.§,k§);
            this.mIsFlying = true;
         }
         else
         {
            this.§<D§ = this.§>A§;
         }
         if(this.§<D§)
         {
            _loc1_ = this.§<D§.getFrame(this.§=!D§);
            if(this.§%^§ && _loc1_)
            {
               this.§%^§.texture = _loc1_.texture;
               this.§%^§.x = -_loc1_.pivotX - this.§>-§;
               this.§%^§.y = -_loc1_.pivotY - this.§?!%§;
               this.§%^§.scaleX = _loc1_.scale;
               this.§%^§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §1E§() : void
      {
         this.§`8§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§=!<§ < 0)
         {
            this.§&f§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§^!F§.§`]§ / this.§^!F§.§+D§) * this.§=!<§;
         if(_loc1_ != this.§?g§)
         {
            this.§?g§ = _loc1_;
            this.§=!D§ = this.§?g§;
            this.§+!;§();
         }
      }
      
      public function §&f§() : void
      {
         if(this.§>A§)
         {
            this.§=!<§ = this.§>A§.getFrameCount();
         }
      }
      
      public function §[J§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§[3§ = new GlowFilter();
         this.§[3§.blurX = param2;
         this.§[3§.blurY = param3;
         this.§[3§.color = param1;
      }
      
      public function §6p§() : void
      {
         this.§[3§ = null;
      }
      
      public function §package§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§^!F§.§?E§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§#!+§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §,+§(param1:Number) : void
      {
         var _loc2_:int = this.§?S§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§?S§[_loc2_].updateLifeTime(param1);
            if(this.§?S§[_loc2_].lifeTime < 0)
            {
               this.§#!+§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §#!+§(param1:int) : void
      {
         if(!this.§9!#§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§^@§ = this.§9!#§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§8!9§ = null;
         if(param1 < this.§?S§.length)
         {
            (_loc5_ = this.§?S§[param1]).§#!,§(_loc4_);
            _loc5_.§9R§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §8!9§(_loc3_.texture,_loc4_);
            this.§?S§.push(_loc5_);
            this.§`8§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§%^§.width / 2 + Math.random() * this.§%^§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§%^§.height / 2 + Math.random() * this.§%^§.height;
      }
      
      public function §!0§() : §8S§
      {
         return this.§%^§;
      }
   }
}
