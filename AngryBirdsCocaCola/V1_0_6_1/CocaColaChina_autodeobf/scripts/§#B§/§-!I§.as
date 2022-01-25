package §#B§
{
   import §+N§.§%H§;
   import §+N§.§,A§;
   import §+N§.§=!+§;
   import §,-§.§;!F§;
   import §2!G§.§2!V§;
   import §2!G§.§8T§;
   import §;h§.b2Vec2;
   import §<!$§.Sprite;
   import §<!$§.§[!5§;
   import §@'§.Texture;
   import flash.filters.GlowFilter;
   
   public class §-!I§
   {
      
      public static const §49§:Number = 1000;
      
      public static const §;!A§:Number = 500;
      
      private static var §'E§:Array = null;
       
      
      private var §>G§:§ ]§;
      
      public var §>!S§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §^b§:Number;
      
      public var §?!,§:Number;
      
      public var §+U§:int = -1;
      
      private var §45§:String;
      
      private var §=r§:§%H§;
      
      private var §2!9§:§%H§;
      
      private var §@K§:§[!5§;
      
      private var §4!U§:Number = 0;
      
      private var §7!8§:Number = 0;
      
      public var § try§:int = -1;
      
      private var §-!X§:int = -1;
      
      private var §^n§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §'K§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §2!S§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §4!!§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §^!+§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §<u§:String = "fly";
      
      public var §0!d§:String = "fly_yell";
      
      public var §3i§:GlowFilter;
      
      private var §>!D§:Vector.<§8T§>;
      
      private var §0p§:§%H§;
      
      private var §1!?§:Sprite = null;
      
      private var mLevelMain:§2!V§;
      
      public function §-!I§(param1:§ ]§, param2:Sprite, param3:§2!V§)
      {
         super();
         this.mLevelMain = param3;
         this.§>G§ = param1;
         this.§45§ = this.§>G§.§3a§;
         this.§>!D§ = new Vector.<§8T§>();
         this.§1!?§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8T§ = null;
         this.§+!E§();
         if(this.§>!D§)
         {
            while(this.§>!D§.length > 0)
            {
               _loc1_ = this.§>!D§.pop();
               _loc1_.dispose();
            }
            this.§>!D§ = null;
         }
      }
      
      public function §-!=§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§+U§ = param1;
         this.§?!,§ = param2;
         this.§<!C§();
      }
      
      public function §=`§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^b§ = 1;
            return;
         }
         this.§^b§ = this.mW / this.mH;
         if(this.§^b§ < 1)
         {
            this.§^b§ = 1 / this.§^b§;
         }
         this.§^b§ = Math.min(11,this.§^b§);
      }
      
      public function §!g§(param1:§,A§) : Boolean
      {
         var _loc2_:§=!+§ = null;
         var _loc3_:Texture = null;
         if(this.§>G§.isGround())
         {
            return false;
         }
         this.§0p§ = param1.§<+§("SPARKLES");
         this.§=r§ = param1.§<+§(this.§45§);
         this.§2!9§ = this.§=r§;
         var _loc4_:Number = 1;
         if(this.§2!9§)
         {
            _loc2_ = this.§2!9§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.mLevelMain.textureManager.§-M§();
         }
         this.§@K§ = new §[!5§(_loc3_);
         if(_loc2_)
         {
            this.§@K§.x = -_loc2_.pivotX;
            this.§@K§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§@K§.x = -this.§@K§.width / 2;
            this.§@K§.y = -this.§@K§.height / 2;
         }
         this.§@K§.scaleX = _loc4_;
         this.§@K§.scaleY = _loc4_;
         this.mW = this.§@K§.width / 2;
         this.mH = this.§@K§.height / 2;
         this.§1!?§.addChild(this.§@K§);
         return true;
      }
      
      public function §=!@§(param1:§;!F§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§]!,§)
         {
            case §;!F§.§"!"§:
               _loc2_ = param1.§7N§();
               _loc3_ = _loc2_[0];
               this.§4!U§ = _loc3_.x / §2!V§.§-!3§;
               this.§7!8§ = _loc3_.y / §2!V§.§-!3§;
               break;
            case §;!F§.§#s§:
         }
         this.§1J§();
      }
      
      public function §2!T§() : Array
      {
         return §6!'§.§2!T§(null,this.§>G§.§]5§());
      }
      
      public function §1k§() : Array
      {
         return §6!'§.§1k§(null,this.§>G§.§]5§());
      }
      
      public function §0U§() : Array
      {
         return §6!'§.§0U§(null);
      }
      
      public function §<!C§() : void
      {
      }
      
      public function §4B§(param1:Number) : void
      {
         this.§1!?§.scaleX = this.§1!?§.scaleY = param1;
      }
      
      public function §1J§() : void
      {
         var _loc1_:§=!+§ = null;
         if(!this.§=r§)
         {
            return;
         }
         if(this.§2!S§)
         {
            this.§^n§ = 1;
         }
         else if(this.§>G§.getSpecialAnimationProgress() >= 0 && this.§=r§.getSubAnimation(this.§'K§))
         {
            this.§2!9§ = this.§=r§.getSubAnimation(this.§'K§);
            this.§^n§ = this.§2!9§.getFrameCount() * this.§>G§.getSpecialAnimationProgress();
            if(this.§^n§ == this.§2!9§.getFrameCount() - 1 && this.§>G§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§^n§;
            }
         }
         else if(this.mTryToSpecial && this.§=r§.getSubAnimation(this.§'K§))
         {
            this.§2!9§ = this.§=r§.getSubAnimation(this.§'K§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§=r§.getSubAnimation(this.§0!d§))
         {
            this.§2!9§ = this.§=r§.getSubAnimation(this.§0!d§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§=r§.getSubAnimation(this.§4!!§))
         {
            this.§2!9§ = this.§=r§.getSubAnimation(this.§4!!§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§=r§.getSubAnimation(this.§^!+§))
         {
            this.§2!9§ = this.§=r§.getSubAnimation(this.§^!+§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§=r§.getSubAnimation(this.§<u§))
         {
            this.§2!9§ = this.§=r§.getSubAnimation(this.§<u§);
            this.mIsFlying = true;
         }
         else
         {
            this.§2!9§ = this.§=r§;
         }
         if(this.§2!9§)
         {
            _loc1_ = this.§2!9§.getFrame(this.§^n§);
            if(this.§@K§ && _loc1_)
            {
               this.§@K§.texture = _loc1_.texture;
               this.§@K§.x = -_loc1_.pivotX - this.§4!U§;
               this.§@K§.y = -_loc1_.pivotY - this.§7!8§;
               this.§@K§.scaleX = _loc1_.scale;
               this.§@K§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §!!b§() : void
      {
         this.§1!?§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§ try§ < 0)
         {
            this.§?[§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§>G§.§=1§ / this.§>G§.§?G§) * this.§ try§;
         if(_loc1_ != this.§-!X§)
         {
            this.§-!X§ = _loc1_;
            this.§^n§ = this.§-!X§;
            this.§1J§();
         }
      }
      
      public function §?[§() : void
      {
         if(this.§=r§)
         {
            this.§ try§ = this.§=r§.getFrameCount();
         }
      }
      
      public function §5!?§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§3i§ = new GlowFilter();
         this.§3i§.blurX = param2;
         this.§3i§.blurY = param3;
         this.§3i§.color = param1;
      }
      
      public function §+!E§() : void
      {
         this.§3i§ = null;
      }
      
      public function §0H§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§>G§.§62§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§>C§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §'7§(param1:Number) : void
      {
         var _loc2_:int = this.§>!D§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§>!D§[_loc2_].updateLifeTime(param1);
            if(this.§>!D§[_loc2_].lifeTime < 0)
            {
               this.§>C§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §>C§(param1:int) : void
      {
         if(!this.§0p§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§=!+§ = this.§0p§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§8T§ = null;
         if(param1 < this.§>!D§.length)
         {
            (_loc5_ = this.§>!D§[param1]).§"D§(_loc4_);
            _loc5_.§<e§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §8T§(_loc3_.texture,_loc4_);
            this.§>!D§.push(_loc5_);
            this.§1!?§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§@K§.width / 2 + Math.random() * this.§@K§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§@K§.height / 2 + Math.random() * this.§@K§.height;
      }
      
      public function §00§() : §[!5§
      {
         return this.§@K§;
      }
   }
}
