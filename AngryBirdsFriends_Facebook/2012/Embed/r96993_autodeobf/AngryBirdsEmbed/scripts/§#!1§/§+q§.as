package §#!1§
{
   import §6u§.§!B§;
   import §6u§.§@N§;
   import §6u§.§@h§;
   import §<!<§.§2!@§;
   import §>u§.Texture;
   import §]!6§.§>T§;
   import §]!6§.Sprite;
   import §`i§.§2W§;
   import §`i§.§>6§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §+q§
   {
      
      public static const §+!§:Number = 1000;
      
      public static const §6!8§:Number = 500;
      
      private static var §6W§:Array = null;
       
      
      private var §'8§:§4!,§;
      
      public var §^!&§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §get §:Number;
      
      public var §`E§:Number;
      
      public var §[g§:int = -1;
      
      private var §?!%§:String;
      
      private var §2!?§:§@h§;
      
      private var §8h§:§@h§;
      
      private var §@q§:§>T§;
      
      private var §`y§:Number = 0;
      
      private var §=!§:Number = 0;
      
      public var §1!F§:int = -1;
      
      private var §?!-§:int = -1;
      
      private var §!V§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §`r§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §=!G§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §07§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §^v§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §;y§:String = "fly";
      
      public var §7"§:String = "fly_yell";
      
      public var §#R§:GlowFilter;
      
      private var §[!"§:Vector.<§>6§>;
      
      private var §[!6§:§@h§;
      
      private var §^!>§:Sprite = null;
      
      private var §"8§:§2W§;
      
      public function §+q§(param1:§4!,§, param2:Sprite, param3:§2W§)
      {
         super();
         this.§"8§ = param3;
         this.§'8§ = param1;
         this.§?!%§ = this.§'8§.§=p§;
         this.§[!"§ = new Vector.<§>6§>();
         this.§^!>§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>6§ = null;
         this.§1s§();
         if(this.§[!"§)
         {
            while(this.§[!"§.length > 0)
            {
               _loc1_ = this.§[!"§.pop();
               _loc1_.dispose();
            }
            this.§[!"§ = null;
         }
      }
      
      public function §#9§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§[g§ = param1;
         this.§`E§ = param2;
         this.§0!+§();
      }
      
      public function §@0§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§get § = 1;
            return;
         }
         this.§get § = this.mW / this.mH;
         if(this.§get § < 1)
         {
            this.§get § = 1 / this.§get §;
         }
         this.§get § = Math.min(11,this.§get §);
      }
      
      public function §,P§(param1:§@N§) : Boolean
      {
         var _loc2_:§!B§ = null;
         var _loc3_:Texture = null;
         if(this.§'8§.isGround())
         {
            return false;
         }
         this.§[!6§ = param1.§`Y§("SPARKLES");
         this.§2!?§ = param1.§`Y§(this.§?!%§);
         this.§8h§ = this.§2!?§;
         var _loc4_:Number = 1;
         if(this.§8h§)
         {
            _loc2_ = this.§8h§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§"8§.textureManager.§9h§();
         }
         this.§@q§ = new §>T§(_loc3_);
         if(_loc2_)
         {
            this.§@q§.x = -_loc2_.pivotX;
            this.§@q§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§@q§.x = -this.§@q§.width / 2;
            this.§@q§.y = -this.§@q§.height / 2;
         }
         this.§@q§.scaleX = _loc4_;
         this.§@q§.scaleY = _loc4_;
         this.mW = this.§@q§.width / 2;
         this.mH = this.§@q§.height / 2;
         this.§^!>§.addChild(this.§@q§);
         return true;
      }
      
      public function §9S§(param1:§2!@§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§9J§)
         {
            case §2!@§.§=$§:
               _loc2_ = param1.§`_§();
               _loc3_ = _loc2_[0];
               this.§`y§ = _loc3_.x / §2W§.§0;§;
               this.§=!§ = _loc3_.y / §2W§.§0;§;
               break;
            case §2!@§.§%W§:
         }
         this.§#[§();
      }
      
      public function §,a§() : Array
      {
         return §1!H§.§,a§(null,this.§'8§.§!A§());
      }
      
      public function §null§() : Array
      {
         return §1!H§.§null§(null,this.§'8§.§!A§());
      }
      
      public function §[R§() : Array
      {
         return §1!H§.§[R§(null);
      }
      
      public function §0!+§() : void
      {
      }
      
      public function §`!$§(param1:Number) : void
      {
         this.§^!>§.scaleX = this.§^!>§.scaleY = param1;
      }
      
      public function §#[§() : void
      {
         var _loc1_:§!B§ = null;
         if(!this.§2!?§)
         {
            return;
         }
         if(this.§=!G§)
         {
            this.§!V§ = 1;
         }
         else if(this.§'8§.getSpecialAnimationProgress() >= 0 && this.§2!?§.getSubAnimation(this.§`r§))
         {
            this.§8h§ = this.§2!?§.getSubAnimation(this.§`r§);
            this.§!V§ = this.§8h§.getFrameCount() * this.§'8§.getSpecialAnimationProgress();
            if(this.§!V§ == this.§8h§.getFrameCount() - 1 && this.§'8§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§!V§;
            }
         }
         else if(this.mTryToSpecial && this.§2!?§.getSubAnimation(this.§`r§))
         {
            this.§8h§ = this.§2!?§.getSubAnimation(this.§`r§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§2!?§.getSubAnimation(this.§7"§))
         {
            this.§8h§ = this.§2!?§.getSubAnimation(this.§7"§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§2!?§.getSubAnimation(this.§07§))
         {
            this.§8h§ = this.§2!?§.getSubAnimation(this.§07§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§2!?§.getSubAnimation(this.§^v§))
         {
            this.§8h§ = this.§2!?§.getSubAnimation(this.§^v§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§2!?§.getSubAnimation(this.§;y§))
         {
            this.§8h§ = this.§2!?§.getSubAnimation(this.§;y§);
            this.mIsFlying = true;
         }
         else
         {
            this.§8h§ = this.§2!?§;
         }
         if(this.§8h§)
         {
            _loc1_ = this.§8h§.getFrame(this.§!V§);
            if(this.§@q§ && _loc1_)
            {
               this.§@q§.texture = _loc1_.texture;
               this.§@q§.x = -_loc1_.pivotX - this.§`y§;
               this.§@q§.y = -_loc1_.pivotY - this.§=!§;
               this.§@q§.scaleX = _loc1_.scale;
               this.§@q§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §?`§() : void
      {
         this.§^!>§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§1!F§ < 0)
         {
            this.§@m§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§'8§.§,s§ / this.§'8§.§?!+§) * this.§1!F§;
         if(_loc1_ != this.§?!-§)
         {
            this.§?!-§ = _loc1_;
            this.§!V§ = this.§?!-§;
            this.§#[§();
         }
      }
      
      public function §@m§() : void
      {
         if(this.§2!?§)
         {
            this.§1!F§ = this.§2!?§.getFrameCount();
         }
      }
      
      public function §!!@§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§#R§ = new GlowFilter();
         this.§#R§.blurX = param2;
         this.§#R§.blurY = param3;
         this.§#R§.color = param1;
      }
      
      public function §1s§() : void
      {
         this.§#R§ = null;
      }
      
      public function §8$§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§'8§.§%!F§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§4x§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §;5§(param1:Number) : void
      {
         var _loc2_:int = this.§[!"§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§[!"§[_loc2_].updateLifeTime(param1);
            if(this.§[!"§[_loc2_].lifeTime < 0)
            {
               this.§4x§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §4x§(param1:int) : void
      {
         if(!this.§[!6§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§!B§ = this.§[!6§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§>6§ = null;
         if(param1 < this.§[!"§.length)
         {
            (_loc5_ = this.§[!"§[param1]).§`5§(_loc4_);
            _loc5_.§#G§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §>6§(_loc3_.texture,_loc4_);
            this.§[!"§.push(_loc5_);
            this.§^!>§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§@q§.width / 2 + Math.random() * this.§@q§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§@q§.height / 2 + Math.random() * this.§@q§.height;
      }
      
      public function §^q§() : §>T§
      {
         return this.§@q§;
      }
   }
}
