package §9"%§
{
   import §#]§.b2Vec2;
   import §%Q§.§@d§;
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import §6!D§.§"A§;
   import §6!D§.§3!K§;
   import §6!D§.§[t§;
   import §9"!§.§9"3§;
   import §9"!§.§<m§;
   import flash.filters.GlowFilter;
   
   public class §#!D§
   {
      
      public static const §%"$§:Number = 1000;
      
      public static const § !'§:Number = 500;
      
      private static var §=!^§:Array = null;
       
      
      private var §7!B§:§&!r§;
      
      public var §@6§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §%`§:Number;
      
      public var §%!6§:Number;
      
      public var §9!§:int = -1;
      
      private var §7"2§:String;
      
      private var §,s§:§"A§;
      
      private var §%">§:§"A§;
      
      private var §#!5§:§0!N§;
      
      private var § "5§:Number = 0;
      
      private var §]!h§:Number = 0;
      
      public var §0!A§:int = -1;
      
      private var §>!3§:int = -1;
      
      private var §!"'§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §["0§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §&!u§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §]&§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §>!>§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §'&§:String = "fly";
      
      public var §'!I§:String = "fly_yell";
      
      public var §[y§:GlowFilter;
      
      private var §9!4§:Vector.<§<m§>;
      
      private var §`R§:§"A§;
      
      private var §3^§:Sprite = null;
      
      private var §@O§:§9"3§;
      
      public function §#!D§(param1:§&!r§, param2:Sprite, param3:§9"3§)
      {
         super();
         this.§@O§ = param3;
         this.§7!B§ = param1;
         this.§7"2§ = this.§7!B§.§2!>§;
         this.§9!4§ = new Vector.<§<m§>();
         this.§3^§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<m§ = null;
         this.§@"%§();
         if(this.§9!4§)
         {
            while(this.§9!4§.length > 0)
            {
               _loc1_ = this.§9!4§.pop();
               _loc1_.dispose();
            }
            this.§9!4§ = null;
         }
      }
      
      public function §@w§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§9!§ = param1;
         this.§%!6§ = param2;
         this.§"O§();
      }
      
      public function §5!-§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%`§ = 1;
            return;
         }
         this.§%`§ = this.mW / this.mH;
         if(this.§%`§ < 1)
         {
            this.§%`§ = 1 / this.§%`§;
         }
         this.§%`§ = Math.min(11,this.§%`§);
      }
      
      public function §4§(param1:§[t§) : Boolean
      {
         var _loc2_:§3!K§ = null;
         var _loc3_:Texture = null;
         if(this.§7!B§.isGround())
         {
            return false;
         }
         this.§`R§ = param1.getAnimation("SPARKLES");
         this.§,s§ = param1.getAnimation(this.§7"2§);
         this.§%">§ = this.§,s§;
         var _loc4_:Number = 1;
         if(this.§%">§)
         {
            _loc2_ = this.§%">§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§@O§.textureManager.§2M§();
         }
         this.§#!5§ = new §0!N§(_loc3_);
         if(_loc2_)
         {
            this.§#!5§.x = -_loc2_.pivotX;
            this.§#!5§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§#!5§.x = -this.§#!5§.width / 2;
            this.§#!5§.y = -this.§#!5§.height / 2;
         }
         this.§#!5§.scaleX = _loc4_;
         this.§#!5§.scaleY = _loc4_;
         this.mW = this.§#!5§.width / 2;
         this.mH = this.§#!5§.height / 2;
         this.§3^§.addChild(this.§#!5§);
         return true;
      }
      
      public function §^!'§(param1:§@d§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§&1§)
         {
            case §@d§.§88§:
               _loc2_ = param1.§'!;§();
               _loc3_ = _loc2_[0];
               this.§ "5§ = _loc3_.x / §9"3§.§'"F§;
               this.§]!h§ = _loc3_.y / §9"3§.§'"F§;
               break;
            case §@d§.§4"B§:
         }
         this.§[!k§();
      }
      
      public function §4![§() : Array
      {
         return §#n§.§4![§(null,this.§7!B§.§<!r§());
      }
      
      public function §4!T§() : Array
      {
         return §#n§.§4!T§(null,this.§7!B§.§<!r§());
      }
      
      public function §>r§() : Array
      {
         return §#n§.§>r§(null);
      }
      
      public function §"O§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§3^§.scaleX = this.§3^§.scaleY = param1;
      }
      
      public function §[!k§() : void
      {
         var _loc1_:§3!K§ = null;
         if(!this.§,s§)
         {
            return;
         }
         if(this.§&!u§)
         {
            this.§!"'§ = 1;
         }
         else if(this.§7!B§.getSpecialAnimationProgress() >= 0 && this.§,s§.getSubAnimation(this.§["0§))
         {
            this.§%">§ = this.§,s§.getSubAnimation(this.§["0§);
            this.§!"'§ = this.§%">§.getFrameCount() * this.§7!B§.getSpecialAnimationProgress();
            if(this.§!"'§ == this.§%">§.getFrameCount() - 1 && this.§7!B§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§!"'§;
            }
         }
         else if(this.mTryToSpecial && this.§,s§.getSubAnimation(this.§["0§))
         {
            this.§%">§ = this.§,s§.getSubAnimation(this.§["0§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§,s§.getSubAnimation(this.§'!I§))
         {
            this.§%">§ = this.§,s§.getSubAnimation(this.§'!I§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§,s§.getSubAnimation(this.§]&§))
         {
            this.§%">§ = this.§,s§.getSubAnimation(this.§]&§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§,s§.getSubAnimation(this.§>!>§))
         {
            this.§%">§ = this.§,s§.getSubAnimation(this.§>!>§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§,s§.getSubAnimation(this.§'&§))
         {
            this.§%">§ = this.§,s§.getSubAnimation(this.§'&§);
            this.mIsFlying = true;
         }
         else
         {
            this.§%">§ = this.§,s§;
         }
         if(this.§%">§)
         {
            _loc1_ = this.§%">§.getFrame(this.§!"'§);
            if(this.§#!5§ && _loc1_)
            {
               this.§#!5§.texture = _loc1_.texture;
               this.§#!5§.x = -_loc1_.pivotX - this.§ "5§;
               this.§#!5§.y = -_loc1_.pivotY - this.§]!h§;
               this.§#!5§.scaleX = _loc1_.scale;
               this.§#!5§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §=!P§() : void
      {
         this.§3^§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§0!A§ < 0)
         {
            this.§7"!§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§7!B§.§[" § / this.§7!B§.§@!h§) * this.§0!A§;
         if(_loc1_ != this.§>!3§)
         {
            this.§>!3§ = _loc1_;
            this.§!"'§ = this.§>!3§;
            this.§[!k§();
         }
      }
      
      public function §7"!§() : void
      {
         if(this.§,s§)
         {
            this.§0!A§ = this.§,s§.getFrameCount();
         }
      }
      
      public function §!!&§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§[y§ = new GlowFilter();
         this.§[y§.blurX = param2;
         this.§[y§.blurY = param3;
         this.§[y§.color = param1;
      }
      
      public function §@"%§() : void
      {
         this.§[y§ = null;
      }
      
      public function §8!C§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§7!B§.§;!"§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§&"C§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §#"E§(param1:Number) : void
      {
         var _loc2_:int = this.§9!4§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§9!4§[_loc2_].updateLifeTime(param1);
            if(this.§9!4§[_loc2_].lifeTime < 0)
            {
               this.§&"C§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §&"C§(param1:int) : void
      {
         if(!this.§`R§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§3!K§ = this.§`R§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§<m§ = null;
         if(param1 < this.§9!4§.length)
         {
            (_loc5_ = this.§9!4§[param1]).§<!?§(_loc4_);
            _loc5_.§ !C§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §<m§(_loc3_.texture,_loc4_);
            this.§9!4§.push(_loc5_);
            this.§3^§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§#!5§.width / 2 + Math.random() * this.§#!5§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§#!5§.height / 2 + Math.random() * this.§#!5§.height;
      }
      
      public function §]"'§() : §0!N§
      {
         return this.§#!5§;
      }
   }
}
