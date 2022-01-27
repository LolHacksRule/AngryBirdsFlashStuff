package §"W§
{
   import § !_§.b2Vec2;
   import § 0§.Texture;
   import § d§.§'!"§;
   import § d§.§-4§;
   import §#!f§.§9!,§;
   import §#!f§.Sprite;
   import §3!§.§2!$§;
   import §3!§.§3!W§;
   import §3!§.§9i§;
   import §^-§.§=!B§;
   import flash.filters.GlowFilter;
   
   public class §0f§
   {
      
      public static const §![§:Number = 1000;
      
      public static const §]!e§:Number = 500;
      
      private static var §?!e§:Array = null;
       
      
      private var §8^§:§;N§;
      
      public var §?q§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §^!e§:Number;
      
      public var §4!%§:Number;
      
      public var § !=§:int = -1;
      
      private var §!!Y§:String;
      
      private var §;+§:§3!W§;
      
      private var §=!N§:§3!W§;
      
      private var §6-§:§9!,§;
      
      private var §5%§:Number = 0;
      
      private var §7;§:Number = 0;
      
      public var §^^§:int = -1;
      
      private var §?!9§:int = -1;
      
      private var §2!d§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §%!D§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §2F§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §;!V§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §[n§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §9k§:String = "fly";
      
      public var §;8§:String = "fly_yell";
      
      public var §,^§:GlowFilter;
      
      private var §%!%§:Vector.<§-4§>;
      
      private var §-+§:§3!W§;
      
      private var §3![§:Sprite = null;
      
      private var §"2§:§'!"§;
      
      public function §0f§(param1:§;N§, param2:Sprite, param3:§'!"§)
      {
         super();
         this.§"2§ = param3;
         this.§8^§ = param1;
         this.§!!Y§ = this.§8^§.§]D§;
         this.§%!%§ = new Vector.<§-4§>();
         this.§3![§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-4§ = null;
         this.§&q§();
         if(this.§%!%§)
         {
            while(this.§%!%§.length > 0)
            {
               _loc1_ = this.§%!%§.pop();
               _loc1_.dispose();
            }
            this.§%!%§ = null;
         }
      }
      
      public function §`=§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§ !=§ = param1;
         this.§4!%§ = param2;
         this.§]^§();
      }
      
      public function §?!A§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^!e§ = 1;
            return;
         }
         this.§^!e§ = this.mW / this.mH;
         if(this.§^!e§ < 1)
         {
            this.§^!e§ = 1 / this.§^!e§;
         }
         this.§^!e§ = Math.min(11,this.§^!e§);
      }
      
      public function §7!H§(param1:§9i§) : Boolean
      {
         var _loc2_:§2!$§ = null;
         var _loc3_:Texture = null;
         if(this.§8^§.isGround())
         {
            return false;
         }
         this.§-+§ = param1.§'k§("SPARKLES");
         this.§;+§ = param1.§'k§(this.§!!Y§);
         this.§=!N§ = this.§;+§;
         var _loc4_:Number = 1;
         if(this.§=!N§)
         {
            _loc2_ = this.§=!N§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§"2§.textureManager.§'!V§();
         }
         this.§6-§ = new §9!,§(_loc3_);
         if(_loc2_)
         {
            this.§6-§.x = -_loc2_.pivotX;
            this.§6-§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§6-§.x = -this.§6-§.width / 2;
            this.§6-§.y = -this.§6-§.height / 2;
         }
         this.§6-§.scaleX = _loc4_;
         this.§6-§.scaleY = _loc4_;
         this.mW = this.§6-§.width / 2;
         this.mH = this.§6-§.height / 2;
         this.§3![§.addChild(this.§6-§);
         return true;
      }
      
      public function §<!F§(param1:§=!B§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§=!_§)
         {
            case §=!B§.§5!W§:
               _loc2_ = param1.§&R§();
               _loc3_ = _loc2_[0];
               this.§5%§ = _loc3_.x / §'!"§.§#3§;
               this.§7;§ = _loc3_.y / §'!"§.§#3§;
               break;
            case §=!B§.§6[§:
         }
         this.§[]§();
      }
      
      public function §!o§() : Array
      {
         return §8,§.§!o§(null,this.§8^§.§!`§());
      }
      
      public function §92§() : Array
      {
         return §8,§.§92§(null,this.§8^§.§!`§());
      }
      
      public function §`,§() : Array
      {
         return §8,§.§`,§(null);
      }
      
      public function §]^§() : void
      {
      }
      
      public function §,&§(param1:Number) : void
      {
         this.§3![§.scaleX = this.§3![§.scaleY = param1;
      }
      
      public function §[]§() : void
      {
         var _loc1_:§2!$§ = null;
         if(!this.§;+§)
         {
            return;
         }
         if(this.§2F§)
         {
            this.§2!d§ = 1;
         }
         else if(this.§8^§.getSpecialAnimationProgress() >= 0 && this.§;+§.getSubAnimation(this.§%!D§))
         {
            this.§=!N§ = this.§;+§.getSubAnimation(this.§%!D§);
            this.§2!d§ = this.§=!N§.getFrameCount() * this.§8^§.getSpecialAnimationProgress();
            if(this.§2!d§ == this.§=!N§.getFrameCount() - 1 && this.§8^§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§2!d§;
            }
         }
         else if(this.mTryToSpecial && this.§;+§.getSubAnimation(this.§%!D§))
         {
            this.§=!N§ = this.§;+§.getSubAnimation(this.§%!D§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§;+§.getSubAnimation(this.§;8§))
         {
            this.§=!N§ = this.§;+§.getSubAnimation(this.§;8§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§;+§.getSubAnimation(this.§;!V§))
         {
            this.§=!N§ = this.§;+§.getSubAnimation(this.§;!V§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§;+§.getSubAnimation(this.§[n§))
         {
            this.§=!N§ = this.§;+§.getSubAnimation(this.§[n§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§;+§.getSubAnimation(this.§9k§))
         {
            this.§=!N§ = this.§;+§.getSubAnimation(this.§9k§);
            this.mIsFlying = true;
         }
         else
         {
            this.§=!N§ = this.§;+§;
         }
         if(this.§=!N§)
         {
            _loc1_ = this.§=!N§.getFrame(this.§2!d§);
            if(this.§6-§ && _loc1_)
            {
               this.§6-§.texture = _loc1_.texture;
               this.§6-§.x = -_loc1_.pivotX - this.§5%§;
               this.§6-§.y = -_loc1_.pivotY - this.§7;§;
               this.§6-§.scaleX = _loc1_.scale;
               this.§6-§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §5R§() : void
      {
         this.§3![§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§^^§ < 0)
         {
            this.§^§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§8^§.§>[§ / this.§8^§.§&J§) * this.§^^§;
         if(_loc1_ != this.§?!9§)
         {
            this.§?!9§ = _loc1_;
            this.§2!d§ = this.§?!9§;
            this.§[]§();
         }
      }
      
      public function §^§() : void
      {
         if(this.§;+§)
         {
            this.§^^§ = this.§;+§.getFrameCount();
         }
      }
      
      public function §?S§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§,^§ = new GlowFilter();
         this.§,^§.blurX = param2;
         this.§,^§.blurY = param3;
         this.§,^§.color = param1;
      }
      
      public function §&q§() : void
      {
         this.§,^§ = null;
      }
      
      public function §3!M§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§8^§.§<!R§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§'Y§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §9!$§(param1:Number) : void
      {
         var _loc2_:int = this.§%!%§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§%!%§[_loc2_].updateLifeTime(param1);
            if(this.§%!%§[_loc2_].lifeTime < 0)
            {
               this.§'Y§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §'Y§(param1:int) : void
      {
         if(!this.§-+§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§2!$§ = this.§-+§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§-4§ = null;
         if(param1 < this.§%!%§.length)
         {
            (_loc5_ = this.§%!%§[param1]).§&@§(_loc4_);
            _loc5_.§@!;§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §-4§(_loc3_.texture,_loc4_);
            this.§%!%§.push(_loc5_);
            this.§3![§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§6-§.width / 2 + Math.random() * this.§6-§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§6-§.height / 2 + Math.random() * this.§6-§.height;
      }
      
      public function §3!F§() : §9!,§
      {
         return this.§6-§;
      }
   }
}
