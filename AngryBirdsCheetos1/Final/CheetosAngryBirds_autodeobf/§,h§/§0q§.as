package §,h§
{
   import § `§.§5L§;
   import § `§.§6!=§;
   import § `§.§^1§;
   import §!X§.§86§;
   import §!X§.§@X§;
   import §0!G§.b2Vec2;
   import §]!B§.Texture;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   import §default§.§<A§;
   import flash.filters.GlowFilter;
   
   public class §0q§
   {
      
      public static const §<!6§:Number = 1000;
      
      public static const §?r§:Number = 500;
      
      private static var §'+§:Array = null;
       
      
      private var §]N§:§+0§;
      
      public var §6H§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §>7§:Number;
      
      public var §^!W§:Number;
      
      public var §?!G§:int = -1;
      
      private var §^[§:String;
      
      private var §<,§:§^1§;
      
      private var §"h§:§^1§;
      
      private var §#3§:§`!C§;
      
      private var §1z§:Number = 0;
      
      private var §4!<§:Number = 0;
      
      public var §&!&§:int = -1;
      
      private var §`&§:int = -1;
      
      private var §1! §:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §;o§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §;!D§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §>-§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §1!4§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §,!1§:String = "fly";
      
      public var § !'§:String = "fly_yell";
      
      public var §'!D§:GlowFilter;
      
      private var §9x§:Vector.<§@X§>;
      
      private var §[!7§:§^1§;
      
      private var §?!N§:Sprite = null;
      
      private var §>`§:§86§;
      
      public function §0q§(param1:§+0§, param2:Sprite, param3:§86§)
      {
         super();
         this.§>`§ = param3;
         this.§]N§ = param1;
         this.§^[§ = this.§]N§.§2!1§;
         this.§9x§ = new Vector.<§@X§>();
         this.§?!N§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@X§ = null;
         this.§-q§();
         if(this.§9x§)
         {
            while(this.§9x§.length > 0)
            {
               _loc1_ = this.§9x§.pop();
               _loc1_.dispose();
            }
            this.§9x§ = null;
         }
      }
      
      public function §7!]§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§?!G§ = param1;
         this.§^!W§ = param2;
         this.§-+§();
      }
      
      public function §+J§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§>7§ = 1;
            return;
         }
         this.§>7§ = this.mW / this.mH;
         if(this.§>7§ < 1)
         {
            this.§>7§ = 1 / this.§>7§;
         }
         this.§>7§ = Math.min(11,this.§>7§);
      }
      
      public function §`@§(param1:§5L§) : Boolean
      {
         var _loc2_:§6!=§ = null;
         var _loc3_:Texture = null;
         if(this.§]N§.isGround())
         {
            return false;
         }
         this.§[!7§ = param1.§>f§("SPARKLES");
         this.§<,§ = param1.§>f§(this.§^[§);
         this.§"h§ = this.§<,§;
         var _loc4_:Number = 1;
         if(this.§"h§)
         {
            _loc2_ = this.§"h§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§>`§.§=]§.§-!D§();
         }
         this.§#3§ = new §`!C§(_loc3_);
         if(_loc2_)
         {
            this.§#3§.x = -_loc2_.pivotX;
            this.§#3§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§#3§.x = -this.§#3§.width / 2;
            this.§#3§.y = -this.§#3§.height / 2;
         }
         this.§#3§.scaleX = _loc4_;
         this.§#3§.scaleY = _loc4_;
         this.mW = this.§#3§.width / 2;
         this.mH = this.§#3§.height / 2;
         this.§?!N§.addChild(this.§#3§);
         return true;
      }
      
      public function §`!9§(param1:§<A§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§ !+§)
         {
            case §<A§.§4!S§:
               _loc2_ = param1.§1,§();
               _loc3_ = _loc2_[0];
               this.§1z§ = _loc3_.x / §86§.§7!4§;
               this.§4!<§ = _loc3_.y / §86§.§7!4§;
               break;
            case §<A§.§%E§:
         }
         this.§+!4§();
      }
      
      public function §^Y§() : Array
      {
         return §-!?§.§^Y§(null,this.§]N§.§29§());
      }
      
      public function §#U§() : Array
      {
         return §-!?§.§#U§(null,this.§]N§.§29§());
      }
      
      public function §?!Y§() : Array
      {
         return §-!?§.§?!Y§(null);
      }
      
      public function §-+§() : void
      {
      }
      
      public function §%!H§(param1:Number) : void
      {
         this.§?!N§.scaleX = this.§?!N§.scaleY = param1;
      }
      
      public function §+!4§() : void
      {
         var _loc1_:§6!=§ = null;
         if(!this.§<,§)
         {
            return;
         }
         if(this.§;!D§)
         {
            this.§1! § = 1;
         }
         else if(this.§]N§.getSpecialAnimationProgress() >= 0 && this.§<,§.getSubAnimation(this.§;o§))
         {
            this.§"h§ = this.§<,§.getSubAnimation(this.§;o§);
            this.§1! § = this.§"h§.getFrameCount() * this.§]N§.getSpecialAnimationProgress();
            if(this.§1! § == this.§"h§.getFrameCount() - 1 && this.§]N§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§1! §;
            }
         }
         else if(this.mTryToSpecial && this.§<,§.getSubAnimation(this.§;o§))
         {
            this.§"h§ = this.§<,§.getSubAnimation(this.§;o§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§<,§.getSubAnimation(this.§ !'§))
         {
            this.§"h§ = this.§<,§.getSubAnimation(this.§ !'§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§<,§.getSubAnimation(this.§>-§))
         {
            this.§"h§ = this.§<,§.getSubAnimation(this.§>-§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§<,§.getSubAnimation(this.§1!4§))
         {
            this.§"h§ = this.§<,§.getSubAnimation(this.§1!4§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§<,§.getSubAnimation(this.§,!1§))
         {
            this.§"h§ = this.§<,§.getSubAnimation(this.§,!1§);
            this.mIsFlying = true;
         }
         else
         {
            this.§"h§ = this.§<,§;
         }
         if(this.§"h§)
         {
            _loc1_ = this.§"h§.getFrame(this.§1! §);
            if(this.§#3§ && _loc1_)
            {
               this.§#3§.texture = _loc1_.texture;
               this.§#3§.x = -_loc1_.pivotX - this.§1z§;
               this.§#3§.y = -_loc1_.pivotY - this.§4!<§;
               this.§#3§.scaleX = _loc1_.scale;
               this.§#3§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §5!Z§() : void
      {
         this.§?!N§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§&!&§ < 0)
         {
            this.§2!W§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§]N§.§,!&§ / this.§]N§.§+?§) * this.§&!&§;
         if(_loc1_ != this.§`&§)
         {
            this.§`&§ = _loc1_;
            this.§1! § = this.§`&§;
            this.§+!4§();
         }
      }
      
      public function §2!W§() : void
      {
         if(this.§<,§)
         {
            this.§&!&§ = this.§<,§.getFrameCount();
         }
      }
      
      public function §[s§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§'!D§ = new GlowFilter();
         this.§'!D§.blurX = param2;
         this.§'!D§.blurY = param3;
         this.§'!D§.color = param1;
      }
      
      public function §-q§() : void
      {
         this.§'!D§ = null;
      }
      
      public function §2!>§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§]N§.§'!+§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§8g§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §,r§(param1:Number) : void
      {
         var _loc2_:int = this.§9x§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§9x§[_loc2_].updateLifeTime(param1);
            if(this.§9x§[_loc2_].lifeTime < 0)
            {
               this.§8g§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §8g§(param1:int) : void
      {
         if(!this.§[!7§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§6!=§ = this.§[!7§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§@X§ = null;
         if(param1 < this.§9x§.length)
         {
            (_loc5_ = this.§9x§[param1]).§57§(_loc4_);
            _loc5_.§0!§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §@X§(_loc3_.texture,_loc4_);
            this.§9x§.push(_loc5_);
            this.§?!N§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§#3§.width / 2 + Math.random() * this.§#3§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§#3§.height / 2 + Math.random() * this.§#3§.height;
      }
      
      public function §"7§() : §`!C§
      {
         return this.§#3§;
      }
   }
}
