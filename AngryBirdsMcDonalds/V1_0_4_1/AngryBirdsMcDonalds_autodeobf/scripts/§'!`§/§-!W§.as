package §'!`§
{
   import §&!9§.Texture;
   import §0@§.§1]§;
   import §0@§.Sprite;
   import §3G§.§9!g§;
   import §55§.§4!>§;
   import §55§.§>![§;
   import §7! §.§%!h§;
   import §7! §.§6X§;
   import §7! §.§;!7§;
   import §^!%§.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §-!W§
   {
      
      public static const §3!]§:Number = 1000;
      
      public static const §2!a§:Number = 500;
      
      private static var §`!%§:Array = null;
       
      
      private var §;h§:§%!H§;
      
      public var §#!_§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §;!p§:Number;
      
      public var §9!3§:Number;
      
      public var §1!>§:int = -1;
      
      private var §"!q§:String;
      
      private var §"y§:§;!7§;
      
      private var §9x§:§;!7§;
      
      private var §+!B§:§1]§;
      
      private var §'!'§:Number = 0;
      
      private var §0z§:Number = 0;
      
      public var §9W§:int = -1;
      
      private var §5O§:int = -1;
      
      private var §6W§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §+!q§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §>!o§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §5!q§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §5![§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §3P§:String = "fly";
      
      public var §!i§:String = "fly_yell";
      
      public var §&!S§:GlowFilter;
      
      private var §>!§:Vector.<§4!>§>;
      
      private var §`?§:§;!7§;
      
      private var §#Y§:Sprite = null;
      
      private var mLevelMain:§>![§;
      
      public function §-!W§(param1:§%!H§, param2:Sprite, param3:§>![§)
      {
         super();
         this.mLevelMain = param3;
         this.§;h§ = param1;
         this.§"!q§ = this.§;h§.§8+§;
         this.§>!§ = new Vector.<§4!>§>();
         this.§#Y§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4!>§ = null;
         this.§+!@§();
         if(this.§>!§)
         {
            while(this.§>!§.length > 0)
            {
               _loc1_ = this.§>!§.pop();
               _loc1_.dispose();
            }
            this.§>!§ = null;
         }
      }
      
      public function §<9§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§1!>§ = param1;
         this.§9!3§ = param2;
         this.§6!=§();
      }
      
      public function §-!Y§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!p§ = 1;
            return;
         }
         this.§;!p§ = this.mW / this.mH;
         if(this.§;!p§ < 1)
         {
            this.§;!p§ = 1 / this.§;!p§;
         }
         this.§;!p§ = Math.min(11,this.§;!p§);
      }
      
      public function §2j§(param1:§6X§) : Boolean
      {
         var _loc2_:§%!h§ = null;
         var _loc3_:Texture = null;
         if(this.§;h§.isGround())
         {
            return false;
         }
         this.§`?§ = param1.getAnimation("SPARKLES");
         this.§"y§ = param1.getAnimation(this.§"!q§);
         this.§9x§ = this.§"y§;
         var _loc4_:Number = 1;
         if(this.§9x§)
         {
            _loc2_ = this.§9x§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.mLevelMain.textureManager.§9Q§();
         }
         this.§+!B§ = new §1]§(_loc3_);
         if(_loc2_)
         {
            this.§+!B§.x = -_loc2_.pivotX;
            this.§+!B§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§+!B§.x = -this.§+!B§.width / 2;
            this.§+!B§.y = -this.§+!B§.height / 2;
         }
         this.§+!B§.scaleX = _loc4_;
         this.§+!B§.scaleY = _loc4_;
         this.mW = this.§+!B§.width / 2;
         this.mH = this.§+!B§.height / 2;
         this.§#Y§.addChild(this.§+!B§);
         return true;
      }
      
      public function §=V§(param1:§9!g§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§9c§)
         {
            case §9!g§.§]!6§:
               _loc2_ = param1.§'!2§();
               _loc3_ = _loc2_[0];
               this.§'!'§ = _loc3_.x / §>![§.§%!k§;
               this.§0z§ = _loc3_.y / §>![§.§%!k§;
               break;
            case §9!g§.§,d§:
         }
         this.§0%§();
      }
      
      public function §4d§() : Array
      {
         return §#!M§.§4d§(null,this.§;h§.§3!C§());
      }
      
      public function §]!E§() : Array
      {
         return §#!M§.§]!E§(null,this.§;h§.§3!C§());
      }
      
      public function §0"§() : Array
      {
         return §#!M§.§0"§(null);
      }
      
      public function §6!=§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§#Y§.scaleX = this.§#Y§.scaleY = param1;
      }
      
      public function §0%§() : void
      {
         var _loc1_:§%!h§ = null;
         if(!this.§"y§)
         {
            return;
         }
         if(this.§>!o§)
         {
            this.§6W§ = 1;
         }
         else if(this.§;h§.getSpecialAnimationProgress() >= 0 && this.§"y§.getSubAnimation(this.§+!q§))
         {
            this.§9x§ = this.§"y§.getSubAnimation(this.§+!q§);
            this.§6W§ = this.§9x§.getFrameCount() * this.§;h§.getSpecialAnimationProgress();
            if(this.§6W§ == this.§9x§.getFrameCount() - 1 && this.§;h§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§6W§;
            }
         }
         else if(this.mTryToSpecial && this.§"y§.getSubAnimation(this.§+!q§))
         {
            this.§9x§ = this.§"y§.getSubAnimation(this.§+!q§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§"y§.getSubAnimation(this.§!i§))
         {
            this.§9x§ = this.§"y§.getSubAnimation(this.§!i§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§"y§.getSubAnimation(this.§5!q§))
         {
            this.§9x§ = this.§"y§.getSubAnimation(this.§5!q§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§"y§.getSubAnimation(this.§5![§))
         {
            this.§9x§ = this.§"y§.getSubAnimation(this.§5![§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§"y§.getSubAnimation(this.§3P§))
         {
            this.§9x§ = this.§"y§.getSubAnimation(this.§3P§);
            this.mIsFlying = true;
         }
         else
         {
            this.§9x§ = this.§"y§;
         }
         if(this.§9x§)
         {
            _loc1_ = this.§9x§.getFrame(this.§6W§);
            if(this.§+!B§ && _loc1_)
            {
               this.§+!B§.texture = _loc1_.texture;
               this.§+!B§.x = -_loc1_.pivotX - this.§'!'§;
               this.§+!B§.y = -_loc1_.pivotY - this.§0z§;
               this.§+!B§.scaleX = _loc1_.scale;
               this.§+!B§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §>!R§() : void
      {
         this.§#Y§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§9W§ < 0)
         {
            this.§5N§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§;h§.§0!8§ / this.§;h§.§6w§) * this.§9W§;
         if(_loc1_ != this.§5O§)
         {
            this.§5O§ = _loc1_;
            this.§6W§ = this.§5O§;
            this.§0%§();
         }
      }
      
      public function §5N§() : void
      {
         if(this.§"y§)
         {
            this.§9W§ = this.§"y§.getFrameCount();
         }
      }
      
      public function §2!!§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§&!S§ = new GlowFilter();
         this.§&!S§.blurX = param2;
         this.§&!S§.blurY = param3;
         this.§&!S§.color = param1;
      }
      
      public function §+!@§() : void
      {
         this.§&!S§ = null;
      }
      
      public function §-!N§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§;h§.§ !$§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§0!7§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §[!4§(param1:Number) : void
      {
         var _loc2_:int = this.§>!§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§>!§[_loc2_].updateLifeTime(param1);
            if(this.§>!§[_loc2_].lifeTime < 0)
            {
               this.§0!7§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §0!7§(param1:int) : void
      {
         if(!this.§`?§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§%!h§ = this.§`?§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§4!>§ = null;
         if(param1 < this.§>!§.length)
         {
            (_loc5_ = this.§>!§[param1]).§=F§(_loc4_);
            _loc5_.§,U§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §4!>§(_loc3_.texture,_loc4_);
            this.§>!§.push(_loc5_);
            this.§#Y§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§+!B§.width / 2 + Math.random() * this.§+!B§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§+!B§.height / 2 + Math.random() * this.§+!B§.height;
      }
      
      public function §2!i§() : §1]§
      {
         return this.§+!B§;
      }
   }
}
