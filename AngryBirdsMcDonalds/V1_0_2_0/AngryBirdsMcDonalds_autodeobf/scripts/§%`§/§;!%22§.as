package §%`§
{
   import §",§.Texture;
   import §"U§.b2Vec2;
   import §'a§.§0!8§;
   import §'a§.§0!f§;
   import §4s§.§[!_§;
   import §5!l§.§!,§;
   import §5!l§.§8!_§;
   import §5!l§.§9Z§;
   import §5x§.§2!K§;
   import §5x§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §;!"§
   {
      
      public static const §]l§:Number = 1000;
      
      public static const §&!K§:Number = 500;
      
      private static var §'! §:Array = null;
       
      
      private var §=![§:§"s§;
      
      public var §0e§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §>!k§:Number;
      
      public var §=s§:Number;
      
      public var §<!,§:int = -1;
      
      private var §<%§:String;
      
      private var §5!U§:§8!_§;
      
      private var §2!m§:§8!_§;
      
      private var §!F§:§2!K§;
      
      private var §>!8§:Number = 0;
      
      private var §1!F§:Number = 0;
      
      public var §1!C§:int = -1;
      
      private var §0!Z§:int = -1;
      
      private var §9!$§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §^!"§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §^g§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §26§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §6^§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §8m§:String = "fly";
      
      public var § W§:String = "fly_yell";
      
      public var §+i§:GlowFilter;
      
      private var §=!O§:Vector.<§0!8§>;
      
      private var §6?§:§8!_§;
      
      private var §`n§:Sprite = null;
      
      private var mLevelMain:§0!f§;
      
      public function §;!"§(param1:§"s§, param2:Sprite, param3:§0!f§)
      {
         super();
         this.mLevelMain = param3;
         this.§=![§ = param1;
         this.§<%§ = this.§=![§.§6!?§;
         this.§=!O§ = new Vector.<§0!8§>();
         this.§`n§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0!8§ = null;
         this.§5!g§();
         if(this.§=!O§)
         {
            while(this.§=!O§.length > 0)
            {
               _loc1_ = this.§=!O§.pop();
               _loc1_.dispose();
            }
            this.§=!O§ = null;
         }
      }
      
      public function §9!0§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§<!,§ = param1;
         this.§=s§ = param2;
         this.§-!;§();
      }
      
      public function §4!n§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§>!k§ = 1;
            return;
         }
         this.§>!k§ = this.mW / this.mH;
         if(this.§>!k§ < 1)
         {
            this.§>!k§ = 1 / this.§>!k§;
         }
         this.§>!k§ = Math.min(11,this.§>!k§);
      }
      
      public function §+p§(param1:§!,§) : Boolean
      {
         var _loc2_:§9Z§ = null;
         var _loc3_:Texture = null;
         if(this.§=![§.isGround())
         {
            return false;
         }
         this.§6?§ = param1.getAnimation("SPARKLES");
         this.§5!U§ = param1.getAnimation(this.§<%§);
         this.§2!m§ = this.§5!U§;
         var _loc4_:Number = 1;
         if(this.§2!m§)
         {
            _loc2_ = this.§2!m§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.mLevelMain.textureManager.§+!=§();
         }
         this.§!F§ = new §2!K§(_loc3_);
         if(_loc2_)
         {
            this.§!F§.x = -_loc2_.pivotX;
            this.§!F§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§!F§.x = -this.§!F§.width / 2;
            this.§!F§.y = -this.§!F§.height / 2;
         }
         this.§!F§.scaleX = _loc4_;
         this.§!F§.scaleY = _loc4_;
         this.mW = this.§!F§.width / 2;
         this.mH = this.§!F§.height / 2;
         this.§`n§.addChild(this.§!F§);
         return true;
      }
      
      public function §<V§(param1:§[!_§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§<!J§)
         {
            case §[!_§.§!!H§:
               _loc2_ = param1.§-q§();
               _loc3_ = _loc2_[0];
               this.§>!8§ = _loc3_.x / §0!f§.§<C§;
               this.§1!F§ = _loc3_.y / §0!f§.§<C§;
               break;
            case §[!_§.§1!1§:
         }
         this.§ J§();
      }
      
      public function §3!`§() : Array
      {
         return § !4§.§3!`§(null,this.§=![§.§,!-§());
      }
      
      public function §?!2§() : Array
      {
         return § !4§.§?!2§(null,this.§=![§.§,!-§());
      }
      
      public function §=v§() : Array
      {
         return § !4§.§=v§(null);
      }
      
      public function §-!;§() : void
      {
      }
      
      public function §50§(param1:Number) : void
      {
         this.§`n§.scaleX = this.§`n§.scaleY = param1;
      }
      
      public function § J§() : void
      {
         var _loc1_:§9Z§ = null;
         if(!this.§5!U§)
         {
            return;
         }
         if(this.§^g§)
         {
            this.§9!$§ = 1;
         }
         else if(this.§=![§.getSpecialAnimationProgress() >= 0 && this.§5!U§.getSubAnimation(this.§^!"§))
         {
            this.§2!m§ = this.§5!U§.getSubAnimation(this.§^!"§);
            this.§9!$§ = this.§2!m§.getFrameCount() * this.§=![§.getSpecialAnimationProgress();
            if(this.§9!$§ == this.§2!m§.getFrameCount() - 1 && this.§=![§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§9!$§;
            }
         }
         else if(this.mTryToSpecial && this.§5!U§.getSubAnimation(this.§^!"§))
         {
            this.§2!m§ = this.§5!U§.getSubAnimation(this.§^!"§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§5!U§.getSubAnimation(this.§ W§))
         {
            this.§2!m§ = this.§5!U§.getSubAnimation(this.§ W§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§5!U§.getSubAnimation(this.§26§))
         {
            this.§2!m§ = this.§5!U§.getSubAnimation(this.§26§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§5!U§.getSubAnimation(this.§6^§))
         {
            this.§2!m§ = this.§5!U§.getSubAnimation(this.§6^§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§5!U§.getSubAnimation(this.§8m§))
         {
            this.§2!m§ = this.§5!U§.getSubAnimation(this.§8m§);
            this.mIsFlying = true;
         }
         else
         {
            this.§2!m§ = this.§5!U§;
         }
         if(this.§2!m§)
         {
            _loc1_ = this.§2!m§.getFrame(this.§9!$§);
            if(this.§!F§ && _loc1_)
            {
               this.§!F§.texture = _loc1_.texture;
               this.§!F§.x = -_loc1_.pivotX - this.§>!8§;
               this.§!F§.y = -_loc1_.pivotY - this.§1!F§;
               this.§!F§.scaleX = _loc1_.scale;
               this.§!F§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §5g§() : void
      {
         this.§`n§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§1!C§ < 0)
         {
            this.§8!4§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§=![§.§%!a§ / this.§=![§.§"!j§) * this.§1!C§;
         if(_loc1_ != this.§0!Z§)
         {
            this.§0!Z§ = _loc1_;
            this.§9!$§ = this.§0!Z§;
            this.§ J§();
         }
      }
      
      public function §8!4§() : void
      {
         if(this.§5!U§)
         {
            this.§1!C§ = this.§5!U§.getFrameCount();
         }
      }
      
      public function §+!5§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§+i§ = new GlowFilter();
         this.§+i§.blurX = param2;
         this.§+i§.blurY = param3;
         this.§+i§.color = param1;
      }
      
      public function §5!g§() : void
      {
         this.§+i§ = null;
      }
      
      public function §4@§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§=![§.§'k§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§8!&§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §5!2§(param1:Number) : void
      {
         var _loc2_:int = this.§=!O§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§=!O§[_loc2_].updateLifeTime(param1);
            if(this.§=!O§[_loc2_].lifeTime < 0)
            {
               this.§8!&§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §8!&§(param1:int) : void
      {
         if(!this.§6?§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§9Z§ = this.§6?§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§0!8§ = null;
         if(param1 < this.§=!O§.length)
         {
            (_loc5_ = this.§=!O§[param1]).§ y§(_loc4_);
            _loc5_.§8§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §0!8§(_loc3_.texture,_loc4_);
            this.§=!O§.push(_loc5_);
            this.§`n§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§!F§.width / 2 + Math.random() * this.§!F§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§!F§.height / 2 + Math.random() * this.§!F§.height;
      }
      
      public function §4o§() : §2!K§
      {
         return this.§!F§;
      }
   }
}
