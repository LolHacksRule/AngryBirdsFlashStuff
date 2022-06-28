package §8u§
{
   import §,!C§.§6m§;
   import §,_§.§4K§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §3G§.§91§;
   import §5`§.§%F§;
   import §5`§.§+R§;
   import §5`§.§+q§;
   import §7!=§.Texture;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §44§
   {
      
      public static const §;<§:Number = 1000;
      
      public static const §8g§:Number = 500;
      
      private static var §'h§:Array = null;
       
      
      private var §&V§:§0r§;
      
      public var §5H§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §try§:Number;
      
      public var §&!C§:Number;
      
      public var § ,§:int = -1;
      
      private var §&r§:String;
      
      private var §-!C§:§+R§;
      
      private var §>_§:§+R§;
      
      private var §^j§:§4K§;
      
      private var §>Q§:Number = 0;
      
      private var §3W§:Number = 0;
      
      public var §<8§:int = -1;
      
      private var §8$§:int = -1;
      
      private var §-A§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §;!-§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §]m§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §08§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §32§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §7`§:String = "fly";
      
      public var §@l§:String = "fly_yell";
      
      public var § !<§:GlowFilter;
      
      private var §40§:Vector.<§91§>;
      
      private var §9O§:§+R§;
      
      private var §62§:Sprite = null;
      
      private var §33§:§!E§;
      
      public function §44§(param1:§0r§, param2:Sprite, param3:§!E§)
      {
         super();
         this.§33§ = param3;
         this.§&V§ = param1;
         this.§&r§ = this.§&V§.§>!"§;
         this.§40§ = new Vector.<§91§>();
         this.§62§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§91§ = null;
         this.§,x§();
         if(this.§40§)
         {
            while(this.§40§.length > 0)
            {
               _loc1_ = this.§40§.pop();
               _loc1_.dispose();
            }
            this.§40§ = null;
         }
      }
      
      public function §+!>§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§ ,§ = param1;
         this.§&!C§ = param2;
         this.§4!+§();
      }
      
      public function §6x§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§try§ = 1;
            return;
         }
         this.§try§ = this.mW / this.mH;
         if(this.§try§ < 1)
         {
            this.§try§ = 1 / this.§try§;
         }
         this.§try§ = Math.min(11,this.§try§);
      }
      
      public function §#!5§(param1:§+q§) : Boolean
      {
         var _loc2_:§%F§ = null;
         var _loc3_:Texture = null;
         if(this.§&V§.isGround())
         {
            return false;
         }
         this.§9O§ = param1.§,!;§("SPARKLES");
         this.§-!C§ = param1.§,!;§(this.§&r§);
         this.§>_§ = this.§-!C§;
         var _loc4_:Number = 1;
         if(this.§>_§)
         {
            _loc2_ = this.§>_§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§33§.textureManager.§9!?§();
         }
         this.§^j§ = new §4K§(_loc3_);
         if(_loc2_)
         {
            this.§^j§.x = -_loc2_.pivotX;
            this.§^j§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§^j§.x = -this.§^j§.width / 2;
            this.§^j§.y = -this.§^j§.height / 2;
         }
         this.§^j§.scaleX = _loc4_;
         this.§^j§.scaleY = _loc4_;
         this.mW = this.§^j§.width / 2;
         this.mH = this.§^j§.height / 2;
         this.§62§.addChild(this.§^j§);
         return true;
      }
      
      public function §17§(param1:§6m§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§#!+§)
         {
            case §6m§.§#a§:
               _loc2_ = param1.§&!-§();
               _loc3_ = _loc2_[0];
               this.§>Q§ = _loc3_.x / §!E§.§#N§;
               this.§3W§ = _loc3_.y / §!E§.§#N§;
               break;
            case §6m§.§8-§:
         }
         this.§'q§();
      }
      
      public function §-<§() : Array
      {
         return §+x§.§-<§(null,this.§&V§.§%z§());
      }
      
      public function §?B§() : Array
      {
         return §+x§.§?B§(null,this.§&V§.§%z§());
      }
      
      public function §"!G§() : Array
      {
         return §+x§.§"!G§(null);
      }
      
      public function §4!+§() : void
      {
      }
      
      public function §`u§(param1:Number) : void
      {
         this.§62§.scaleX = this.§62§.scaleY = param1;
      }
      
      public function §'q§() : void
      {
         var _loc1_:§%F§ = null;
         if(!this.§-!C§)
         {
            return;
         }
         if(this.§]m§)
         {
            this.§-A§ = 1;
         }
         else if(this.§&V§.getSpecialAnimationProgress() >= 0 && this.§-!C§.getSubAnimation(this.§;!-§))
         {
            this.§>_§ = this.§-!C§.getSubAnimation(this.§;!-§);
            this.§-A§ = this.§>_§.getFrameCount() * this.§&V§.getSpecialAnimationProgress();
            if(this.§-A§ == this.§>_§.getFrameCount() - 1 && this.§&V§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§-A§;
            }
         }
         else if(this.mTryToSpecial && this.§-!C§.getSubAnimation(this.§;!-§))
         {
            this.§>_§ = this.§-!C§.getSubAnimation(this.§;!-§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§-!C§.getSubAnimation(this.§@l§))
         {
            this.§>_§ = this.§-!C§.getSubAnimation(this.§@l§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§-!C§.getSubAnimation(this.§08§))
         {
            this.§>_§ = this.§-!C§.getSubAnimation(this.§08§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§-!C§.getSubAnimation(this.§32§))
         {
            this.§>_§ = this.§-!C§.getSubAnimation(this.§32§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§-!C§.getSubAnimation(this.§7`§))
         {
            this.§>_§ = this.§-!C§.getSubAnimation(this.§7`§);
            this.mIsFlying = true;
         }
         else
         {
            this.§>_§ = this.§-!C§;
         }
         if(this.§>_§)
         {
            _loc1_ = this.§>_§.getFrame(this.§-A§);
            if(this.§^j§ && _loc1_)
            {
               this.§^j§.texture = _loc1_.texture;
               this.§^j§.x = -_loc1_.pivotX - this.§>Q§;
               this.§^j§.y = -_loc1_.pivotY - this.§3W§;
               this.§^j§.scaleX = _loc1_.scale;
               this.§^j§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §-l§() : void
      {
         this.§62§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§<8§ < 0)
         {
            this.§>!C§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§&V§.§@^§ / this.§&V§.§%!J§) * this.§<8§;
         if(_loc1_ != this.§8$§)
         {
            this.§8$§ = _loc1_;
            this.§-A§ = this.§8$§;
            this.§'q§();
         }
      }
      
      public function §>!C§() : void
      {
         if(this.§-!C§)
         {
            this.§<8§ = this.§-!C§.getFrameCount();
         }
      }
      
      public function §&p§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§ !<§ = new GlowFilter();
         this.§ !<§.blurX = param2;
         this.§ !<§.blurY = param3;
         this.§ !<§.color = param1;
      }
      
      public function §,x§() : void
      {
         this.§ !<§ = null;
      }
      
      public function §,9§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§&V§.§;?§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§!F§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §,l§(param1:Number) : void
      {
         var _loc2_:int = this.§40§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§40§[_loc2_].updateLifeTime(param1);
            if(this.§40§[_loc2_].lifeTime < 0)
            {
               this.§!F§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §!F§(param1:int) : void
      {
         if(!this.§9O§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§%F§ = this.§9O§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§91§ = null;
         if(param1 < this.§40§.length)
         {
            (_loc5_ = this.§40§[param1]).§%L§(_loc4_);
            _loc5_.§"A§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §91§(_loc3_.texture,_loc4_);
            this.§40§.push(_loc5_);
            this.§62§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§^j§.width / 2 + Math.random() * this.§^j§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§^j§.height / 2 + Math.random() * this.§^j§.height;
      }
      
      public function §!`§() : §4K§
      {
         return this.§^j§;
      }
   }
}
