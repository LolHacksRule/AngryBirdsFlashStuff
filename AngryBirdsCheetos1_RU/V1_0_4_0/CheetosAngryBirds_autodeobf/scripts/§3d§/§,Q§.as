package §3d§
{
   import §&C§.§![§;
   import §+![§.Texture;
   import §0V§.§^F§;
   import §0V§.§`!O§;
   import §3§.§4!!§;
   import §3§.Sprite;
   import §^q§.b2Vec2;
   import §`n§.§-!D§;
   import §`n§.§2!"§;
   import §`n§.§6o§;
   import flash.filters.GlowFilter;
   
   public class §,Q§
   {
      
      public static const §<!&§:Number = 1000;
      
      public static const §+!]§:Number = 500;
      
      private static var §'j§:Array = null;
       
      
      private var §=i§:§20§;
      
      public var §"!9§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §>W§:Number;
      
      public var §9y§:Number;
      
      public var § j§:int = -1;
      
      private var §7!&§:String;
      
      private var §5!U§:§-!D§;
      
      private var §"x§:§-!D§;
      
      private var §0>§:§4!!§;
      
      private var §?!^§:Number = 0;
      
      private var §!!B§:Number = 0;
      
      public var §9!E§:int = -1;
      
      private var §;!6§:int = -1;
      
      private var §2!_§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §@!@§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §0!A§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §-;§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §>!1§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §!!$§:String = "fly";
      
      public var §>N§:String = "fly_yell";
      
      public var §;!`§:GlowFilter;
      
      private var §8!Q§:Vector.<§^F§>;
      
      private var §@![§:§-!D§;
      
      private var §;!5§:Sprite = null;
      
      private var §!q§:§`!O§;
      
      public function §,Q§(param1:§20§, param2:Sprite, param3:§`!O§)
      {
         super();
         this.§!q§ = param3;
         this.§=i§ = param1;
         this.§7!&§ = this.§=i§.§6O§;
         this.§8!Q§ = new Vector.<§^F§>();
         this.§;!5§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^F§ = null;
         this.§^t§();
         if(this.§8!Q§)
         {
            while(this.§8!Q§.length > 0)
            {
               _loc1_ = this.§8!Q§.pop();
               _loc1_.dispose();
            }
            this.§8!Q§ = null;
         }
      }
      
      public function §@!7§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§ j§ = param1;
         this.§9y§ = param2;
         this.§"4§();
      }
      
      public function §=C§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§>W§ = 1;
            return;
         }
         this.§>W§ = this.mW / this.mH;
         if(this.§>W§ < 1)
         {
            this.§>W§ = 1 / this.§>W§;
         }
         this.§>W§ = Math.min(11,this.§>W§);
      }
      
      public function §3!O§(param1:§2!"§) : Boolean
      {
         var _loc2_:§6o§ = null;
         var _loc3_:Texture = null;
         if(this.§=i§.isGround())
         {
            return false;
         }
         this.§@![§ = param1.§7!<§("SPARKLES");
         this.§5!U§ = param1.§7!<§(this.§7!&§);
         this.§"x§ = this.§5!U§;
         var _loc4_:Number = 1;
         if(this.§"x§)
         {
            _loc2_ = this.§"x§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§!q§.§1S§.§6!]§();
         }
         this.§0>§ = new §4!!§(_loc3_);
         if(_loc2_)
         {
            this.§0>§.x = -_loc2_.pivotX;
            this.§0>§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§0>§.x = -this.§0>§.width / 2;
            this.§0>§.y = -this.§0>§.height / 2;
         }
         this.§0>§.scaleX = _loc4_;
         this.§0>§.scaleY = _loc4_;
         this.mW = this.§0>§.width / 2;
         this.mH = this.§0>§.height / 2;
         this.§;!5§.addChild(this.§0>§);
         return true;
      }
      
      public function §-k§(param1:§![§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§>B§)
         {
            case §![§.§"M§:
               _loc2_ = param1.§=<§();
               _loc3_ = _loc2_[0];
               this.§?!^§ = _loc3_.x / §`!O§.§?!O§;
               this.§!!B§ = _loc3_.y / §`!O§.§?!O§;
               break;
            case §![§.§<!6§:
         }
         this.§?E§();
      }
      
      public function §"!E§() : Array
      {
         return §-o§.§"!E§(null,this.§=i§.§"!7§());
      }
      
      public function §]!W§() : Array
      {
         return §-o§.§]!W§(null,this.§=i§.§"!7§());
      }
      
      public function §>i§() : Array
      {
         return §-o§.§>i§(null);
      }
      
      public function §"4§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§;!5§.scaleX = this.§;!5§.scaleY = param1;
      }
      
      public function §?E§() : void
      {
         var _loc1_:§6o§ = null;
         if(!this.§5!U§)
         {
            return;
         }
         if(this.§0!A§)
         {
            this.§2!_§ = 1;
         }
         else if(this.§=i§.getSpecialAnimationProgress() >= 0 && this.§5!U§.getSubAnimation(this.§@!@§))
         {
            this.§"x§ = this.§5!U§.getSubAnimation(this.§@!@§);
            this.§2!_§ = this.§"x§.getFrameCount() * this.§=i§.getSpecialAnimationProgress();
            if(this.§2!_§ == this.§"x§.getFrameCount() - 1 && this.§=i§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§2!_§;
            }
         }
         else if(this.mTryToSpecial && this.§5!U§.getSubAnimation(this.§@!@§))
         {
            this.§"x§ = this.§5!U§.getSubAnimation(this.§@!@§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§5!U§.getSubAnimation(this.§>N§))
         {
            this.§"x§ = this.§5!U§.getSubAnimation(this.§>N§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§5!U§.getSubAnimation(this.§-;§))
         {
            this.§"x§ = this.§5!U§.getSubAnimation(this.§-;§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§5!U§.getSubAnimation(this.§>!1§))
         {
            this.§"x§ = this.§5!U§.getSubAnimation(this.§>!1§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§5!U§.getSubAnimation(this.§!!$§))
         {
            this.§"x§ = this.§5!U§.getSubAnimation(this.§!!$§);
            this.mIsFlying = true;
         }
         else
         {
            this.§"x§ = this.§5!U§;
         }
         if(this.§"x§)
         {
            _loc1_ = this.§"x§.getFrame(this.§2!_§);
            if(this.§0>§ && _loc1_)
            {
               this.§0>§.texture = _loc1_.texture;
               this.§0>§.x = -_loc1_.pivotX - this.§?!^§;
               this.§0>§.y = -_loc1_.pivotY - this.§!!B§;
               this.§0>§.scaleX = _loc1_.scale;
               this.§0>§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §@i§() : void
      {
         this.§;!5§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§9!E§ < 0)
         {
            this.§7H§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§=i§.§2>§ / this.§=i§.§,!,§) * this.§9!E§;
         if(_loc1_ != this.§;!6§)
         {
            this.§;!6§ = _loc1_;
            this.§2!_§ = this.§;!6§;
            this.§?E§();
         }
      }
      
      public function §7H§() : void
      {
         if(this.§5!U§)
         {
            this.§9!E§ = this.§5!U§.getFrameCount();
         }
      }
      
      public function §8!9§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§;!`§ = new GlowFilter();
         this.§;!`§.blurX = param2;
         this.§;!`§.blurY = param3;
         this.§;!`§.color = param1;
      }
      
      public function §^t§() : void
      {
         this.§;!`§ = null;
      }
      
      public function §+'§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§=i§.§6p§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§-!;§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §6l§(param1:Number) : void
      {
         var _loc2_:int = this.§8!Q§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§8!Q§[_loc2_].updateLifeTime(param1);
            if(this.§8!Q§[_loc2_].lifeTime < 0)
            {
               this.§-!;§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §-!;§(param1:int) : void
      {
         if(!this.§@![§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§6o§ = this.§@![§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§^F§ = null;
         if(param1 < this.§8!Q§.length)
         {
            (_loc5_ = this.§8!Q§[param1]).§;F§(_loc4_);
            _loc5_.§[6§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §^F§(_loc3_.texture,_loc4_);
            this.§8!Q§.push(_loc5_);
            this.§;!5§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§0>§.width / 2 + Math.random() * this.§0>§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§0>§.height / 2 + Math.random() * this.§0>§.height;
      }
      
      public function §7!S§() : §4!!§
      {
         return this.§0>§;
      }
   }
}
