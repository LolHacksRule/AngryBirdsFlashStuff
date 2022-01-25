package §^!$§
{
   import §%!a§.§0m§;
   import §&!9§.§,,§;
   import §&!9§.Sprite;
   import §&F§.§>!2§;
   import §&F§.§`8§;
   import §48§.§#i§;
   import §48§.§6!Z§;
   import §48§.§8!'§;
   import §6!4§.Texture;
   import §6V§.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §4<§
   {
      
      public static const §]7§:Number = 1000;
      
      public static const §7!V§:Number = 500;
      
      private static var §-!2§:Array = null;
       
      
      private var §2!J§:§?![§;
      
      public var §#!f§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var § !8§:Number;
      
      public var §&!^§:Number;
      
      public var §1!4§:int = -1;
      
      private var §'!6§:String;
      
      private var §4k§:§8!'§;
      
      private var §6!C§:§8!'§;
      
      private var §&J§:§,,§;
      
      private var §`!4§:Number = 0;
      
      private var §"b§:Number = 0;
      
      public var §[!-§:int = -1;
      
      private var §@!B§:int = -1;
      
      private var §5]§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §]!2§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §]J§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §3=§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §6§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §;0§:String = "fly";
      
      public var §`j§:String = "fly_yell";
      
      public var §,4§:GlowFilter;
      
      private var §>!F§:Vector.<§`8§>;
      
      private var §03§:§8!'§;
      
      private var §@!Y§:Sprite = null;
      
      private var mLevelMain:§>!2§;
      
      public function §4<§(param1:§?![§, param2:Sprite, param3:§>!2§)
      {
         super();
         this.mLevelMain = param3;
         this.§2!J§ = param1;
         this.§'!6§ = this.§2!J§.§=^§;
         this.§>!F§ = new Vector.<§`8§>();
         this.§@!Y§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`8§ = null;
         this.§%§();
         if(this.§>!F§)
         {
            while(this.§>!F§.length > 0)
            {
               _loc1_ = this.§>!F§.pop();
               _loc1_.dispose();
            }
            this.§>!F§ = null;
         }
      }
      
      public function §@!J§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§1!4§ = param1;
         this.§&!^§ = param2;
         this.§ p§();
      }
      
      public function §?P§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !8§ = 1;
            return;
         }
         this.§ !8§ = this.mW / this.mH;
         if(this.§ !8§ < 1)
         {
            this.§ !8§ = 1 / this.§ !8§;
         }
         this.§ !8§ = Math.min(11,this.§ !8§);
      }
      
      public function §8U§(param1:§#i§) : Boolean
      {
         var _loc2_:§6!Z§ = null;
         var _loc3_:Texture = null;
         if(this.§2!J§.isGround())
         {
            return false;
         }
         this.§03§ = param1.§@d§("SPARKLES");
         this.§4k§ = param1.§@d§(this.§'!6§);
         this.§6!C§ = this.§4k§;
         var _loc4_:Number = 1;
         if(this.§6!C§)
         {
            _loc2_ = this.§6!C§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.mLevelMain.textureManager.§9!X§();
         }
         this.§&J§ = new §,,§(_loc3_);
         if(_loc2_)
         {
            this.§&J§.x = -_loc2_.pivotX;
            this.§&J§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§&J§.x = -this.§&J§.width / 2;
            this.§&J§.y = -this.§&J§.height / 2;
         }
         this.§&J§.scaleX = _loc4_;
         this.§&J§.scaleY = _loc4_;
         this.mW = this.§&J§.width / 2;
         this.mH = this.§&J§.height / 2;
         this.§@!Y§.addChild(this.§&J§);
         return true;
      }
      
      public function §?!^§(param1:§0m§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§=5§)
         {
            case §0m§.§+!8§:
               _loc2_ = param1.§[8§();
               _loc3_ = _loc2_[0];
               this.§`!4§ = _loc3_.x / §>!2§.§9d§;
               this.§"b§ = _loc3_.y / §>!2§.§9d§;
               break;
            case §0m§.§;U§:
         }
         this.§!h§();
      }
      
      public function §<!>§() : Array
      {
         return §,W§.§<!>§(null,this.§2!J§.§9!D§());
      }
      
      public function §9z§() : Array
      {
         return §,W§.§9z§(null,this.§2!J§.§9!D§());
      }
      
      public function §`!!§() : Array
      {
         return §,W§.§`!!§(null);
      }
      
      public function § p§() : void
      {
      }
      
      public function §6_§(param1:Number) : void
      {
         this.§@!Y§.scaleX = this.§@!Y§.scaleY = param1;
      }
      
      public function §!h§() : void
      {
         var _loc1_:§6!Z§ = null;
         if(!this.§4k§)
         {
            return;
         }
         if(this.§]J§)
         {
            this.§5]§ = 1;
         }
         else if(this.§2!J§.getSpecialAnimationProgress() >= 0 && this.§4k§.getSubAnimation(this.§]!2§))
         {
            this.§6!C§ = this.§4k§.getSubAnimation(this.§]!2§);
            this.§5]§ = this.§6!C§.getFrameCount() * this.§2!J§.getSpecialAnimationProgress();
            if(this.§5]§ == this.§6!C§.getFrameCount() - 1 && this.§2!J§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§5]§;
            }
         }
         else if(this.mTryToSpecial && this.§4k§.getSubAnimation(this.§]!2§))
         {
            this.§6!C§ = this.§4k§.getSubAnimation(this.§]!2§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§4k§.getSubAnimation(this.§`j§))
         {
            this.§6!C§ = this.§4k§.getSubAnimation(this.§`j§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§4k§.getSubAnimation(this.§3=§))
         {
            this.§6!C§ = this.§4k§.getSubAnimation(this.§3=§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§4k§.getSubAnimation(this.§6§))
         {
            this.§6!C§ = this.§4k§.getSubAnimation(this.§6§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§4k§.getSubAnimation(this.§;0§))
         {
            this.§6!C§ = this.§4k§.getSubAnimation(this.§;0§);
            this.mIsFlying = true;
         }
         else
         {
            this.§6!C§ = this.§4k§;
         }
         if(this.§6!C§)
         {
            _loc1_ = this.§6!C§.getFrame(this.§5]§);
            if(this.§&J§ && _loc1_)
            {
               this.§&J§.texture = _loc1_.texture;
               this.§&J§.x = -_loc1_.pivotX - this.§`!4§;
               this.§&J§.y = -_loc1_.pivotY - this.§"b§;
               this.§&J§.scaleX = _loc1_.scale;
               this.§&J§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §2!"§() : void
      {
         this.§@!Y§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§[!-§ < 0)
         {
            this.§7p§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§2!J§.§+m§ / this.§2!J§.§>!`§) * this.§[!-§;
         if(_loc1_ != this.§@!B§)
         {
            this.§@!B§ = _loc1_;
            this.§5]§ = this.§@!B§;
            this.§!h§();
         }
      }
      
      public function §7p§() : void
      {
         if(this.§4k§)
         {
            this.§[!-§ = this.§4k§.getFrameCount();
         }
      }
      
      public function §40§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§,4§ = new GlowFilter();
         this.§,4§.blurX = param2;
         this.§,4§.blurY = param3;
         this.§,4§.color = param1;
      }
      
      public function §%§() : void
      {
         this.§,4§ = null;
      }
      
      public function §;S§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§2!J§.§>e§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§>!a§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §,<§(param1:Number) : void
      {
         var _loc2_:int = this.§>!F§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§>!F§[_loc2_].updateLifeTime(param1);
            if(this.§>!F§[_loc2_].lifeTime < 0)
            {
               this.§>!a§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §>!a§(param1:int) : void
      {
         if(!this.§03§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§6!Z§ = this.§03§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§`8§ = null;
         if(param1 < this.§>!F§.length)
         {
            (_loc5_ = this.§>!F§[param1]).§!!&§(_loc4_);
            _loc5_.§3r§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §`8§(_loc3_.texture,_loc4_);
            this.§>!F§.push(_loc5_);
            this.§@!Y§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§&J§.width / 2 + Math.random() * this.§&J§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§&J§.height / 2 + Math.random() * this.§&J§.height;
      }
      
      public function §!0§() : §,,§
      {
         return this.§&J§;
      }
   }
}
