package §&!P§
{
   import §%!0§.§,4§;
   import §%!0§.§>"+§;
   import §+!-§.§7"#§;
   import §+!-§.Sprite;
   import §0!%§.Texture;
   import §;"7§.§"!B§;
   import §;"7§.§+!I§;
   import §;"7§.§5!O§;
   import §<!a§.b2Vec2;
   import §]";§.§1Y§;
   import flash.filters.GlowFilter;
   
   public class §0;§
   {
      
      public static const §2!_§:Number = 1000;
      
      public static const §]!7§:Number = 500;
      
      private static var §"Q§:Array = null;
       
      
      private var §!!0§:§``§;
      
      public var §0@§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §@i§:Number;
      
      public var §?3§:Number;
      
      public var §@!=§:int = -1;
      
      private var §6"3§:String;
      
      private var §,0§:§"!B§;
      
      private var §'"9§:§"!B§;
      
      private var §>i§:§7"#§;
      
      private var §4!_§:Number = 0;
      
      private var §^i§:Number = 0;
      
      public var §[!%§:int = -1;
      
      private var §6X§:int = -1;
      
      private var §3!d§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §5!;§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §!t§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §;"§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §]!?§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §9!X§:String = "fly";
      
      public var §;""§:String = "fly_yell";
      
      public var §9!K§:GlowFilter;
      
      private var §;;§:Vector.<§>"+§>;
      
      private var §0!y§:§"!B§;
      
      private var § D§:Sprite = null;
      
      private var §`!G§:§,4§;
      
      public function §0;§(param1:§``§, param2:Sprite, param3:§,4§)
      {
         super();
         this.§`!G§ = param3;
         this.§!!0§ = param1;
         this.§6"3§ = this.§!!0§.§+!A§;
         this.§;;§ = new Vector.<§>"+§>();
         this.§ D§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>"+§ = null;
         this.§3X§();
         if(this.§;;§)
         {
            while(this.§;;§.length > 0)
            {
               _loc1_ = this.§;;§.pop();
               _loc1_.dispose();
            }
            this.§;;§ = null;
         }
      }
      
      public function §'!m§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§@!=§ = param1;
         this.§?3§ = param2;
         this.§`T§();
      }
      
      public function §^!v§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@i§ = 1;
            return;
         }
         this.§@i§ = this.mW / this.mH;
         if(this.§@i§ < 1)
         {
            this.§@i§ = 1 / this.§@i§;
         }
         this.§@i§ = Math.min(11,this.§@i§);
      }
      
      public function §@N§(param1:§5!O§) : Boolean
      {
         var _loc2_:§+!I§ = null;
         var _loc3_:Texture = null;
         if(this.§!!0§.isGround())
         {
            return false;
         }
         this.§0!y§ = param1.§`" §("SPARKLES");
         this.§,0§ = param1.§`" §(this.§6"3§);
         this.§'"9§ = this.§,0§;
         var _loc4_:Number = 1;
         if(this.§'"9§)
         {
            _loc2_ = this.§'"9§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§`!G§.§8=§.§-t§();
         }
         this.§>i§ = new §7"#§(_loc3_);
         if(_loc2_)
         {
            this.§>i§.x = -_loc2_.pivotX;
            this.§>i§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§>i§.x = -this.§>i§.width / 2;
            this.§>i§.y = -this.§>i§.height / 2;
         }
         this.§>i§.scaleX = _loc4_;
         this.§>i§.scaleY = _loc4_;
         this.mW = this.§>i§.width / 2;
         this.mH = this.§>i§.height / 2;
         this.§ D§.addChild(this.§>i§);
         return true;
      }
      
      public function §[!Q§(param1:§1Y§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§^!^§)
         {
            case §1Y§.§;&§:
               _loc2_ = param1.§=`§();
               _loc3_ = _loc2_[0];
               this.§4!_§ = _loc3_.x / §,4§.§,^§;
               this.§^i§ = _loc3_.y / §,4§.§,^§;
               break;
            case §1Y§.§0R§:
         }
         this.§^!+§();
      }
      
      public function §0!_§() : Array
      {
         return §9!v§.§0!_§(null,this.§!!0§.§^_§());
      }
      
      public function §-!A§() : Array
      {
         return §9!v§.§-!A§(null,this.§!!0§.§^_§());
      }
      
      public function §`C§() : Array
      {
         return §9!v§.§`C§(null);
      }
      
      public function §`T§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§ D§.scaleX = this.§ D§.scaleY = param1;
      }
      
      public function §^!+§() : void
      {
         var _loc1_:§+!I§ = null;
         if(!this.§,0§)
         {
            return;
         }
         if(this.§!t§)
         {
            this.§3!d§ = 1;
         }
         else if(this.§!!0§.getSpecialAnimationProgress() >= 0 && this.§,0§.getSubAnimation(this.§5!;§))
         {
            this.§'"9§ = this.§,0§.getSubAnimation(this.§5!;§);
            this.§3!d§ = this.§'"9§.getFrameCount() * this.§!!0§.getSpecialAnimationProgress();
            if(this.§3!d§ == this.§'"9§.getFrameCount() - 1 && this.§!!0§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§3!d§;
            }
         }
         else if(this.mTryToSpecial && this.§,0§.getSubAnimation(this.§5!;§))
         {
            this.§'"9§ = this.§,0§.getSubAnimation(this.§5!;§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§,0§.getSubAnimation(this.§;""§))
         {
            this.§'"9§ = this.§,0§.getSubAnimation(this.§;""§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§,0§.getSubAnimation(this.§;"§))
         {
            this.§'"9§ = this.§,0§.getSubAnimation(this.§;"§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§,0§.getSubAnimation(this.§]!?§))
         {
            this.§'"9§ = this.§,0§.getSubAnimation(this.§]!?§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§,0§.getSubAnimation(this.§9!X§))
         {
            this.§'"9§ = this.§,0§.getSubAnimation(this.§9!X§);
            this.mIsFlying = true;
         }
         else
         {
            this.§'"9§ = this.§,0§;
         }
         if(this.§'"9§)
         {
            _loc1_ = this.§'"9§.getFrame(this.§3!d§);
            if(this.§>i§ && _loc1_)
            {
               this.§>i§.texture = _loc1_.texture;
               this.§>i§.x = -_loc1_.pivotX - this.§4!_§;
               this.§>i§.y = -_loc1_.pivotY - this.§^i§;
               this.§>i§.scaleX = _loc1_.scale;
               this.§>i§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §1!<§() : void
      {
         this.§ D§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§[!%§ < 0)
         {
            this.§6G§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§!!0§.§8W§ / this.§!!0§.§%5§) * this.§[!%§;
         if(_loc1_ != this.§6X§)
         {
            this.§6X§ = _loc1_;
            this.§3!d§ = this.§6X§;
            this.§^!+§();
         }
      }
      
      public function §6G§() : void
      {
         if(this.§,0§)
         {
            this.§[!%§ = this.§,0§.getFrameCount();
         }
      }
      
      public function §0X§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§9!K§ = new GlowFilter();
         this.§9!K§.blurX = param2;
         this.§9!K§.blurY = param3;
         this.§9!K§.color = param1;
      }
      
      public function §3X§() : void
      {
         this.§9!K§ = null;
      }
      
      public function §@4§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§!!0§.§9!3§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§&o§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §1t§(param1:Number) : void
      {
         var _loc2_:int = this.§;;§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§;;§[_loc2_].updateLifeTime(param1);
            if(this.§;;§[_loc2_].lifeTime < 0)
            {
               this.§&o§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §&o§(param1:int) : void
      {
         if(!this.§0!y§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§+!I§ = this.§0!y§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§>"+§ = null;
         if(param1 < this.§;;§.length)
         {
            (_loc5_ = this.§;;§[param1]).§[@§(_loc4_);
            _loc5_.§ "§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §>"+§(_loc3_.texture,_loc4_);
            this.§;;§.push(_loc5_);
            this.§ D§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§>i§.width / 2 + Math.random() * this.§>i§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§>i§.height / 2 + Math.random() * this.§>i§.height;
      }
      
      public function §-W§() : §7"#§
      {
         return this.§>i§;
      }
   }
}
