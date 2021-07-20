package §+!8§
{
   import §"!I§.§&v§;
   import §"!I§.§^!2§;
   import §2Y§.§7!f§;
   import §2Y§.Sprite;
   import §6A§.b2Vec2;
   import §=!<§.§!x§;
   import §=!<§.§8!!§;
   import §=!<§.§>"§;
   import §@0§.§3U§;
   import flash.filters.GlowFilter;
   
   public class §&!_§
   {
      
      public static const §6!c§:Number = 1000;
      
      public static const §`I§:Number = 500;
      
      private static var §8!R§:Array = null;
       
      
      private var §++§:§,_§;
      
      public var §`r§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §5+§:Number;
      
      public var §`!G§:Number;
      
      public var §6>§:int = -1;
      
      private var §=q§:String;
      
      private var §&!e§:§!x§;
      
      private var §]w§:§!x§;
      
      private var §@!!§:§7!f§;
      
      private var §5!c§:Number = 0;
      
      private var §@l§:Number = 0;
      
      public var §9!F§:int = -1;
      
      private var §+!e§:int = -1;
      
      private var §7!8§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §6Z§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §]!S§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §&!@§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §!!T§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §'1§:String = "fly";
      
      public var §3z§:String = "fly_yell";
      
      public var § ! §:GlowFilter;
      
      private var §,!M§:Vector.<§&v§>;
      
      private var §+^§:§!x§;
      
      private var §;=§:Sprite = null;
      
      private var §=!V§:§^!2§;
      
      public function §&!_§(param1:§,_§, param2:Sprite, param3:§^!2§)
      {
         super();
         this.§=!V§ = param3;
         this.§++§ = param1;
         this.§=q§ = this.§++§.§>R§;
         this.§,!M§ = new Vector.<§&v§>();
         this.§;=§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&v§ = null;
         this.§?!!§();
         if(this.§,!M§)
         {
            while(this.§,!M§.length > 0)
            {
               _loc1_ = this.§,!M§.pop();
               _loc1_.dispose();
            }
            this.§,!M§ = null;
         }
      }
      
      public function §0>§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§6>§ = param1;
         this.§`!G§ = param2;
         this.§,c§();
      }
      
      public function §9p§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5+§ = 1;
            return;
         }
         this.§5+§ = this.mW / this.mH;
         if(this.§5+§ < 1)
         {
            this.§5+§ = 1 / this.§5+§;
         }
         this.§5+§ = Math.min(11,this.§5+§);
      }
      
      public function §`!3§(param1:§>"§) : Boolean
      {
         var _loc2_:§8!!§ = null;
         var _loc3_:Texture = null;
         if(this.§++§.isGround())
         {
            return false;
         }
         this.§+^§ = param1.§!5§("SPARKLES");
         this.§&!e§ = param1.§!5§(this.§=q§);
         this.§]w§ = this.§&!e§;
         var _loc4_:Number = 1;
         if(this.§]w§)
         {
            _loc2_ = this.§]w§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§=!V§.textureManager.§,!A§();
         }
         this.§@!!§ = new §7!f§(_loc3_);
         if(_loc2_)
         {
            this.§@!!§.x = -_loc2_.pivotX;
            this.§@!!§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§@!!§.x = -this.§@!!§.width / 2;
            this.§@!!§.y = -this.§@!!§.height / 2;
         }
         this.§@!!§.scaleX = _loc4_;
         this.§@!!§.scaleY = _loc4_;
         this.mW = this.§@!!§.width / 2;
         this.mH = this.§@!!§.height / 2;
         this.§;=§.addChild(this.§@!!§);
         return true;
      }
      
      public function §3!^§(param1:§3U§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§&!>§)
         {
            case §3U§.§=P§:
               _loc2_ = param1.§^!;§();
               _loc3_ = _loc2_[0];
               this.§5!c§ = _loc3_.x / §^!2§.§3!S§;
               this.§@l§ = _loc3_.y / §^!2§.§3!S§;
               break;
            case §3U§.§?t§:
         }
         this.§8=§();
      }
      
      public function §`!T§() : Array
      {
         return §1!@§.§`!T§(null,this.§++§.§^M§());
      }
      
      public function §>!B§() : Array
      {
         return §1!@§.§>!B§(null,this.§++§.§^M§());
      }
      
      public function §;7§() : Array
      {
         return §1!@§.§;7§(null);
      }
      
      public function §,c§() : void
      {
      }
      
      public function §-!b§(param1:Number) : void
      {
         this.§;=§.scaleX = this.§;=§.scaleY = param1;
      }
      
      public function §8=§() : void
      {
         var _loc1_:§8!!§ = null;
         if(!this.§&!e§)
         {
            return;
         }
         if(this.§]!S§)
         {
            this.§7!8§ = 1;
         }
         else if(this.§++§.getSpecialAnimationProgress() >= 0 && this.§&!e§.getSubAnimation(this.§6Z§))
         {
            this.§]w§ = this.§&!e§.getSubAnimation(this.§6Z§);
            this.§7!8§ = this.§]w§.getFrameCount() * this.§++§.getSpecialAnimationProgress();
            if(this.§7!8§ == this.§]w§.getFrameCount() - 1 && this.§++§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§7!8§;
            }
         }
         else if(this.mTryToSpecial && this.§&!e§.getSubAnimation(this.§6Z§))
         {
            this.§]w§ = this.§&!e§.getSubAnimation(this.§6Z§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§&!e§.getSubAnimation(this.§3z§))
         {
            this.§]w§ = this.§&!e§.getSubAnimation(this.§3z§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§&!e§.getSubAnimation(this.§&!@§))
         {
            this.§]w§ = this.§&!e§.getSubAnimation(this.§&!@§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§&!e§.getSubAnimation(this.§!!T§))
         {
            this.§]w§ = this.§&!e§.getSubAnimation(this.§!!T§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§&!e§.getSubAnimation(this.§'1§))
         {
            this.§]w§ = this.§&!e§.getSubAnimation(this.§'1§);
            this.mIsFlying = true;
         }
         else
         {
            this.§]w§ = this.§&!e§;
         }
         if(this.§]w§)
         {
            _loc1_ = this.§]w§.getFrame(this.§7!8§);
            if(this.§@!!§ && _loc1_)
            {
               this.§@!!§.texture = _loc1_.texture;
               this.§@!!§.x = -_loc1_.pivotX - this.§5!c§;
               this.§@!!§.y = -_loc1_.pivotY - this.§@l§;
               this.§@!!§.scaleX = _loc1_.scale;
               this.§@!!§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §4!-§() : void
      {
         this.§;=§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§9!F§ < 0)
         {
            this.§6!R§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§++§.§[h§ / this.§++§.§'!V§) * this.§9!F§;
         if(_loc1_ != this.§+!e§)
         {
            this.§+!e§ = _loc1_;
            this.§7!8§ = this.§+!e§;
            this.§8=§();
         }
      }
      
      public function §6!R§() : void
      {
         if(this.§&!e§)
         {
            this.§9!F§ = this.§&!e§.getFrameCount();
         }
      }
      
      public function §"! §(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§ ! § = new GlowFilter();
         this.§ ! §.blurX = param2;
         this.§ ! §.blurY = param3;
         this.§ ! §.color = param1;
      }
      
      public function §?!!§() : void
      {
         this.§ ! § = null;
      }
      
      public function § !d§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§++§.§[x§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§>!%§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §super§(param1:Number) : void
      {
         var _loc2_:int = this.§,!M§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§,!M§[_loc2_].updateLifeTime(param1);
            if(this.§,!M§[_loc2_].lifeTime < 0)
            {
               this.§>!%§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §>!%§(param1:int) : void
      {
         if(!this.§+^§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§8!!§ = this.§+^§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§&v§ = null;
         if(param1 < this.§,!M§.length)
         {
            (_loc5_ = this.§,!M§[param1]).§>!I§(_loc4_);
            _loc5_.§!&§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §&v§(_loc3_.texture,_loc4_);
            this.§,!M§.push(_loc5_);
            this.§;=§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§@!!§.width / 2 + Math.random() * this.§@!!§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§@!!§.height / 2 + Math.random() * this.§@!!§.height;
      }
      
      public function §3F§() : §7!f§
      {
         return this.§@!!§;
      }
   }
}
