package §]r§
{
   import §-!G§.b2Vec2;
   import §3>§.§4D§;
   import §7q§.§0!§;
   import §7q§.Sprite;
   import §8Y§.Texture;
   import §;!<§.§!!F§;
   import §;!<§.§9B§;
   import §;!<§.§<!D§;
   import §=b§.§-!K§;
   import §=b§.§<"0§;
   import flash.filters.GlowFilter;
   
   public class §+c§
   {
      
      public static const §]![§:Number = 1000;
      
      public static const §#!V§:Number = 500;
      
      private static var § U§:Array = null;
       
      
      private var override:§9!R§;
      
      public var §#!@§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §8!`§:Number;
      
      public var §,O§:Number;
      
      public var §"!m§:int = -1;
      
      private var §<"3§:String;
      
      private var §3O§:§9B§;
      
      private var §'"§:§9B§;
      
      private var §5!w§:§0!§;
      
      private var §&U§:Number = 0;
      
      private var §`4§:Number = 0;
      
      public var §>N§:int = -1;
      
      private var §,!§:int = -1;
      
      private var §-h§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §-O§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §-c§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §@m§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var § X§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §'"$§:String = "fly";
      
      public var §"?§:String = "fly_yell";
      
      public var §1l§:GlowFilter;
      
      private var §%K§:Vector.<§<"0§>;
      
      private var § !z§:§9B§;
      
      private var §5H§:Sprite = null;
      
      private var §;!x§:§-!K§;
      
      public function §+c§(param1:§9!R§, param2:Sprite, param3:§-!K§)
      {
         super();
         this.§;!x§ = param3;
         this.override = param1;
         this.§<"3§ = this.override.§@!'§;
         this.§%K§ = new Vector.<§<"0§>();
         this.§5H§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<"0§ = null;
         this.§4]§();
         if(this.§%K§)
         {
            while(this.§%K§.length > 0)
            {
               _loc1_ = this.§%K§.pop();
               _loc1_.dispose();
            }
            this.§%K§ = null;
         }
      }
      
      public function §9!i§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§"!m§ = param1;
         this.§,O§ = param2;
         this.§ use§();
      }
      
      public function §^!x§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8!`§ = 1;
            return;
         }
         this.§8!`§ = this.mW / this.mH;
         if(this.§8!`§ < 1)
         {
            this.§8!`§ = 1 / this.§8!`§;
         }
         this.§8!`§ = Math.min(11,this.§8!`§);
      }
      
      public function §"&§(param1:§!!F§) : Boolean
      {
         var _loc2_:§<!D§ = null;
         var _loc3_:Texture = null;
         if(this.override.isGround())
         {
            return false;
         }
         this.§ !z§ = param1.§]@§("SPARKLES");
         this.§3O§ = param1.§]@§(this.§<"3§);
         this.§'"§ = this.§3O§;
         var _loc4_:Number = 1;
         if(this.§'"§)
         {
            _loc2_ = this.§'"§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§;!x§.§20§.§-!s§();
         }
         this.§5!w§ = new §0!§(_loc3_);
         if(_loc2_)
         {
            this.§5!w§.x = -_loc2_.pivotX;
            this.§5!w§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§5!w§.x = -this.§5!w§.width / 2;
            this.§5!w§.y = -this.§5!w§.height / 2;
         }
         this.§5!w§.scaleX = _loc4_;
         this.§5!w§.scaleY = _loc4_;
         this.mW = this.§5!w§.width / 2;
         this.mH = this.§5!w§.height / 2;
         this.§5H§.addChild(this.§5!w§);
         return true;
      }
      
      public function §0H§(param1:§4D§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§7!6§)
         {
            case §4D§.§ !G§:
               _loc2_ = param1.§9>§();
               _loc3_ = _loc2_[0];
               this.§&U§ = _loc3_.x / §-!K§.§"!C§;
               this.§`4§ = _loc3_.y / §-!K§.§"!C§;
               break;
            case §4D§.§>v§:
         }
         this.§>K§();
      }
      
      public function §^!%§() : Array
      {
         return §;!L§.§^!%§(null,this.override.§#!y§());
      }
      
      public function §2!s§() : Array
      {
         return §;!L§.§2!s§(null,this.override.§#!y§());
      }
      
      public function §[5§() : Array
      {
         return §;!L§.§[5§(null);
      }
      
      public function § use§() : void
      {
      }
      
      public function §[!n§(param1:Number) : void
      {
         this.§5H§.scaleX = this.§5H§.scaleY = param1;
      }
      
      public function §>K§() : void
      {
         var _loc1_:§<!D§ = null;
         if(!this.§3O§)
         {
            return;
         }
         if(this.§-c§)
         {
            this.§-h§ = 1;
         }
         else if(this.override.getSpecialAnimationProgress() >= 0 && this.§3O§.getSubAnimation(this.§-O§))
         {
            this.§'"§ = this.§3O§.getSubAnimation(this.§-O§);
            this.§-h§ = this.§'"§.getFrameCount() * this.override.getSpecialAnimationProgress();
            if(this.§-h§ == this.§'"§.getFrameCount() - 1 && this.override.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§-h§;
            }
         }
         else if(this.mTryToSpecial && this.§3O§.getSubAnimation(this.§-O§))
         {
            this.§'"§ = this.§3O§.getSubAnimation(this.§-O§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§3O§.getSubAnimation(this.§"?§))
         {
            this.§'"§ = this.§3O§.getSubAnimation(this.§"?§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§3O§.getSubAnimation(this.§@m§))
         {
            this.§'"§ = this.§3O§.getSubAnimation(this.§@m§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§3O§.getSubAnimation(this.§ X§))
         {
            this.§'"§ = this.§3O§.getSubAnimation(this.§ X§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§3O§.getSubAnimation(this.§'"$§))
         {
            this.§'"§ = this.§3O§.getSubAnimation(this.§'"$§);
            this.mIsFlying = true;
         }
         else
         {
            this.§'"§ = this.§3O§;
         }
         if(this.§'"§)
         {
            _loc1_ = this.§'"§.getFrame(this.§-h§);
            if(this.§5!w§ && _loc1_)
            {
               this.§5!w§.texture = _loc1_.texture;
               this.§5!w§.x = -_loc1_.pivotX - this.§&U§;
               this.§5!w§.y = -_loc1_.pivotY - this.§`4§;
               this.§5!w§.scaleX = _loc1_.scale;
               this.§5!w§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §3!@§() : void
      {
         this.§5H§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§>N§ < 0)
         {
            this.§3u§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.override.§7!D§ / this.override.§@!#§) * this.§>N§;
         if(_loc1_ != this.§,!§)
         {
            this.§,!§ = _loc1_;
            this.§-h§ = this.§,!§;
            this.§>K§();
         }
      }
      
      public function §3u§() : void
      {
         if(this.§3O§)
         {
            this.§>N§ = this.§3O§.getFrameCount();
         }
      }
      
      public function §#!A§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§1l§ = new GlowFilter();
         this.§1l§.blurX = param2;
         this.§1l§.blurY = param3;
         this.§1l§.color = param1;
      }
      
      public function §4]§() : void
      {
         this.§1l§ = null;
      }
      
      public function §]!I§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.override.§2!Q§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§7!p§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §5Q§(param1:Number) : void
      {
         var _loc2_:int = this.§%K§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§%K§[_loc2_].updateLifeTime(param1);
            if(this.§%K§[_loc2_].lifeTime < 0)
            {
               this.§7!p§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §7!p§(param1:int) : void
      {
         if(!this.§ !z§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§<!D§ = this.§ !z§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§<"0§ = null;
         if(param1 < this.§%K§.length)
         {
            (_loc5_ = this.§%K§[param1]).§]-§(_loc4_);
            _loc5_.§2f§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §<"0§(_loc3_.texture,_loc4_);
            this.§%K§.push(_loc5_);
            this.§5H§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§5!w§.width / 2 + Math.random() * this.§5!w§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§5!w§.height / 2 + Math.random() * this.§5!w§.height;
      }
      
      public function §-!,§() : §0!§
      {
         return this.§5!w§;
      }
   }
}
