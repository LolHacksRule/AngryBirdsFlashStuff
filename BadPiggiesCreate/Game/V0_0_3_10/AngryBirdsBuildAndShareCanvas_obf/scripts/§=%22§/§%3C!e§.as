package §="§
{
   import §%t§.§#B§;
   import §%t§.§2!D§;
   import §%t§.§^!x§;
   import §&!s§.§,!c§;
   import §4!S§.Texture;
   import §4!s§.§%I§;
   import §4!s§.§<!=§;
   import §?!h§.b2Vec2;
   import §^I§.§=!+§;
   import §^I§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §<!e§
   {
      
      public static const §@!v§:Number = 1000;
      
      public static const §[",§:Number = 500;
      
      private static var §^!F§:Array = null;
       
      
      private var § " §:§`T§;
      
      public var §?!f§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §0q§:Number;
      
      public var §#!j§:Number;
      
      public var §=!4§:int = -1;
      
      private var § -§:String;
      
      private var §7f§:§2!D§;
      
      private var §7!C§:§2!D§;
      
      private var § !t§:§=!+§;
      
      private var §4!<§:Number = 0;
      
      private var §#I§:Number = 0;
      
      public var §=!W§:int = -1;
      
      private var §<!W§:int = -1;
      
      private var §%!"§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §[r§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §7!i§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §@!G§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §`!p§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §26§:String = "fly";
      
      public var §[X§:String = "fly_yell";
      
      public var §^!w§:GlowFilter;
      
      private var §3Y§:Vector.<§<!=§>;
      
      private var §8Y§:§2!D§;
      
      private var §;!E§:Sprite = null;
      
      private var §,!T§:§%I§;
      
      public function §<!e§(param1:§`T§, param2:Sprite, param3:§%I§)
      {
         super();
         this.§,!T§ = param3;
         this.§ " § = param1;
         this.§ -§ = this.§ " §.§'!l§;
         this.§3Y§ = new Vector.<§<!=§>();
         this.§;!E§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<!=§ = null;
         this.§2"-§();
         if(this.§3Y§)
         {
            while(this.§3Y§.length > 0)
            {
               _loc1_ = this.§3Y§.pop();
               _loc1_.dispose();
            }
            this.§3Y§ = null;
         }
      }
      
      public function §%!b§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§=!4§ = param1;
         this.§#!j§ = param2;
         this.§ ",§();
      }
      
      public function § h§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0q§ = 1;
            return;
         }
         this.§0q§ = this.mW / this.mH;
         if(this.§0q§ < 1)
         {
            this.§0q§ = 1 / this.§0q§;
         }
         this.§0q§ = Math.min(11,this.§0q§);
      }
      
      public function §#!_§(param1:§^!x§) : Boolean
      {
         var _loc2_:§#B§ = null;
         var _loc3_:Texture = null;
         if(this.§ " §.isGround())
         {
            return false;
         }
         this.§8Y§ = param1.§5!7§("SPARKLES");
         this.§7f§ = param1.§5!7§(this.§ -§);
         this.§7!C§ = this.§7f§;
         var _loc4_:Number = 1;
         if(this.§7!C§)
         {
            _loc2_ = this.§7!C§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§,!T§.§>=§.§`!E§();
         }
         this.§ !t§ = new §=!+§(_loc3_);
         if(_loc2_)
         {
            this.§ !t§.x = -_loc2_.pivotX;
            this.§ !t§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§ !t§.x = -this.§ !t§.width / 2;
            this.§ !t§.y = -this.§ !t§.height / 2;
         }
         this.§ !t§.scaleX = _loc4_;
         this.§ !t§.scaleY = _loc4_;
         this.mW = this.§ !t§.width / 2;
         this.mH = this.§ !t§.height / 2;
         this.§;!E§.addChild(this.§ !t§);
         return true;
      }
      
      public function §6"6§(param1:§,!c§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§3X§)
         {
            case §,!c§.§6!+§:
               _loc2_ = param1.§8R§();
               _loc3_ = _loc2_[0];
               this.§4!<§ = _loc3_.x / §%I§.§9"4§;
               this.§#I§ = _loc3_.y / §%I§.§9"4§;
               break;
            case §,!c§.§'!'§:
         }
         this.§8!&§();
      }
      
      public function §@!>§() : Array
      {
         return §]!1§.§@!>§(null,this.§ " §.§[!Z§());
      }
      
      public function §2!u§() : Array
      {
         return §]!1§.§2!u§(null,this.§ " §.§[!Z§());
      }
      
      public function § y§() : Array
      {
         return §]!1§.§ y§(null);
      }
      
      public function § ",§() : void
      {
      }
      
      public function §;"&§(param1:Number) : void
      {
         this.§;!E§.scaleX = this.§;!E§.scaleY = param1;
      }
      
      public function §8!&§() : void
      {
         var _loc1_:§#B§ = null;
         if(!this.§7f§)
         {
            return;
         }
         if(this.§7!i§)
         {
            this.§%!"§ = 1;
         }
         else if(this.§ " §.getSpecialAnimationProgress() >= 0 && this.§7f§.getSubAnimation(this.§[r§))
         {
            this.§7!C§ = this.§7f§.getSubAnimation(this.§[r§);
            this.§%!"§ = this.§7!C§.getFrameCount() * this.§ " §.getSpecialAnimationProgress();
            if(this.§%!"§ == this.§7!C§.getFrameCount() - 1 && this.§ " §.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§%!"§;
            }
         }
         else if(this.mTryToSpecial && this.§7f§.getSubAnimation(this.§[r§))
         {
            this.§7!C§ = this.§7f§.getSubAnimation(this.§[r§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§7f§.getSubAnimation(this.§[X§))
         {
            this.§7!C§ = this.§7f§.getSubAnimation(this.§[X§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§7f§.getSubAnimation(this.§@!G§))
         {
            this.§7!C§ = this.§7f§.getSubAnimation(this.§@!G§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§7f§.getSubAnimation(this.§`!p§))
         {
            this.§7!C§ = this.§7f§.getSubAnimation(this.§`!p§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§7f§.getSubAnimation(this.§26§))
         {
            this.§7!C§ = this.§7f§.getSubAnimation(this.§26§);
            this.mIsFlying = true;
         }
         else
         {
            this.§7!C§ = this.§7f§;
         }
         if(this.§7!C§)
         {
            _loc1_ = this.§7!C§.getFrame(this.§%!"§);
            if(this.§ !t§ && _loc1_)
            {
               this.§ !t§.texture = _loc1_.texture;
               this.§ !t§.x = -_loc1_.pivotX - this.§4!<§;
               this.§ !t§.y = -_loc1_.pivotY - this.§#I§;
               this.§ !t§.scaleX = _loc1_.scale;
               this.§ !t§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §4!b§() : void
      {
         this.§;!E§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§=!W§ < 0)
         {
            this.§['§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§ " §.§+!_§ / this.§ " §.§4>§) * this.§=!W§;
         if(_loc1_ != this.§<!W§)
         {
            this.§<!W§ = _loc1_;
            this.§%!"§ = this.§<!W§;
            this.§8!&§();
         }
      }
      
      public function §['§() : void
      {
         if(this.§7f§)
         {
            this.§=!W§ = this.§7f§.getFrameCount();
         }
      }
      
      public function §,r§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§^!w§ = new GlowFilter();
         this.§^!w§.blurX = param2;
         this.§^!w§.blurY = param3;
         this.§^!w§.color = param1;
      }
      
      public function §2"-§() : void
      {
         this.§^!w§ = null;
      }
      
      public function §;!f§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§ " §.§9p§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§!"8§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §;!a§(param1:Number) : void
      {
         var _loc2_:int = this.§3Y§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§3Y§[_loc2_].updateLifeTime(param1);
            if(this.§3Y§[_loc2_].lifeTime < 0)
            {
               this.§!"8§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §!"8§(param1:int) : void
      {
         if(!this.§8Y§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§#B§ = this.§8Y§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§<!=§ = null;
         if(param1 < this.§3Y§.length)
         {
            (_loc5_ = this.§3Y§[param1]).§ H§(_loc4_);
            _loc5_.§0!w§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §<!=§(_loc3_.texture,_loc4_);
            this.§3Y§.push(_loc5_);
            this.§;!E§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§ !t§.width / 2 + Math.random() * this.§ !t§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§ !t§.height / 2 + Math.random() * this.§ !t§.height;
      }
      
      public function §[!@§() : §=!+§
      {
         return this.§ !t§;
      }
   }
}
