package §?"&§
{
   import § ""§.§["?§;
   import §1!z§.b2Vec2;
   import §8!E§.§?!X§;
   import §8!E§.§`!=§;
   import §@!#§.Texture;
   import §`"2§.§%3§;
   import §`"2§.§>",§;
   import §`"2§.§><§;
   import §`L§.§-;§;
   import §`L§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §"f§
   {
      
      public static const §7X§:Number = 1000;
      
      public static const §,!l§:Number = 500;
      
      private static var §'"9§:Array = null;
       
      
      private var §2!n§:§"!q§;
      
      public var §9y§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §1!O§:Number;
      
      public var §>N§:Number;
      
      public var §=A§:int = -1;
      
      private var §4!^§:String;
      
      private var §&]§:§>",§;
      
      private var §;"&§:§>",§;
      
      private var §8!T§:§-;§;
      
      private var §=!L§:Number = 0;
      
      private var §9]§:Number = 0;
      
      public var §15§:int = -1;
      
      private var §1b§:int = -1;
      
      private var §81§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §@1§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §=!Y§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §0!9§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §>S§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §71§:String = "fly";
      
      public var §7e§:String = "fly_yell";
      
      public var § n§:GlowFilter;
      
      private var §]!9§:Vector.<§`!=§>;
      
      private var §^o§:§>",§;
      
      private var §`B§:Sprite = null;
      
      private var §7!;§:§?!X§;
      
      public function §"f§(param1:§"!q§, param2:Sprite, param3:§?!X§)
      {
         super();
         this.§7!;§ = param3;
         this.§2!n§ = param1;
         this.§4!^§ = this.§2!n§.§=!+§;
         this.§]!9§ = new Vector.<§`!=§>();
         this.§`B§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`!=§ = null;
         this.§4c§();
         if(this.§]!9§)
         {
            while(this.§]!9§.length > 0)
            {
               _loc1_ = this.§]!9§.pop();
               _loc1_.dispose();
            }
            this.§]!9§ = null;
         }
      }
      
      public function §^k§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§=A§ = param1;
         this.§>N§ = param2;
         this.§^!Y§();
      }
      
      public function §+!d§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1!O§ = 1;
            return;
         }
         this.§1!O§ = this.mW / this.mH;
         if(this.§1!O§ < 1)
         {
            this.§1!O§ = 1 / this.§1!O§;
         }
         this.§1!O§ = Math.min(11,this.§1!O§);
      }
      
      public function §#!W§(param1:§><§) : Boolean
      {
         var _loc2_:§%3§ = null;
         var _loc3_:Texture = null;
         if(this.§2!n§.isGround())
         {
            return false;
         }
         this.§^o§ = param1.§ "1§("SPARKLES");
         this.§&]§ = param1.§ "1§(this.§4!^§);
         this.§;"&§ = this.§&]§;
         var _loc4_:Number = 1;
         if(this.§;"&§)
         {
            _loc2_ = this.§;"&§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§7!;§.§4F§.§4v§();
         }
         this.§8!T§ = new §-;§(_loc3_);
         if(_loc2_)
         {
            this.§8!T§.x = -_loc2_.pivotX;
            this.§8!T§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§8!T§.x = -this.§8!T§.width / 2;
            this.§8!T§.y = -this.§8!T§.height / 2;
         }
         this.§8!T§.scaleX = _loc4_;
         this.§8!T§.scaleY = _loc4_;
         this.mW = this.§8!T§.width / 2;
         this.mH = this.§8!T§.height / 2;
         this.§`B§.addChild(this.§8!T§);
         return true;
      }
      
      public function §4!d§(param1:§["?§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§;"3§)
         {
            case §["?§.§2!`§:
               _loc2_ = param1.§&%§();
               _loc3_ = _loc2_[0];
               this.§=!L§ = _loc3_.x / §?!X§.§57§;
               this.§9]§ = _loc3_.y / §?!X§.§57§;
               break;
            case §["?§.§;E§:
         }
         this.§=Y§();
      }
      
      public function §;">§() : Array
      {
         return §`8§.§;">§(null,this.§2!n§.§-E§());
      }
      
      public function §<!?§() : Array
      {
         return §`8§.§<!?§(null,this.§2!n§.§-E§());
      }
      
      public function §<!t§() : Array
      {
         return §`8§.§<!t§(null);
      }
      
      public function §^!Y§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§`B§.scaleX = this.§`B§.scaleY = param1;
      }
      
      public function §=Y§() : void
      {
         var _loc1_:§%3§ = null;
         if(!this.§&]§)
         {
            return;
         }
         if(this.§=!Y§)
         {
            this.§81§ = 1;
         }
         else if(this.§2!n§.getSpecialAnimationProgress() >= 0 && this.§&]§.getSubAnimation(this.§@1§))
         {
            this.§;"&§ = this.§&]§.getSubAnimation(this.§@1§);
            this.§81§ = this.§;"&§.getFrameCount() * this.§2!n§.getSpecialAnimationProgress();
            if(this.§81§ == this.§;"&§.getFrameCount() - 1 && this.§2!n§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§81§;
            }
         }
         else if(this.mTryToSpecial && this.§&]§.getSubAnimation(this.§@1§))
         {
            this.§;"&§ = this.§&]§.getSubAnimation(this.§@1§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§&]§.getSubAnimation(this.§7e§))
         {
            this.§;"&§ = this.§&]§.getSubAnimation(this.§7e§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§&]§.getSubAnimation(this.§0!9§))
         {
            this.§;"&§ = this.§&]§.getSubAnimation(this.§0!9§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§&]§.getSubAnimation(this.§>S§))
         {
            this.§;"&§ = this.§&]§.getSubAnimation(this.§>S§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§&]§.getSubAnimation(this.§71§))
         {
            this.§;"&§ = this.§&]§.getSubAnimation(this.§71§);
            this.mIsFlying = true;
         }
         else
         {
            this.§;"&§ = this.§&]§;
         }
         if(this.§;"&§)
         {
            _loc1_ = this.§;"&§.getFrame(this.§81§);
            if(this.§8!T§ && _loc1_)
            {
               this.§8!T§.texture = _loc1_.texture;
               this.§8!T§.x = -_loc1_.pivotX - this.§=!L§;
               this.§8!T§.y = -_loc1_.pivotY - this.§9]§;
               this.§8!T§.scaleX = _loc1_.scale;
               this.§8!T§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §,""§() : void
      {
         this.§`B§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§15§ < 0)
         {
            this.§,V§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§2!n§.§`X§ / this.§2!n§.§&<§) * this.§15§;
         if(_loc1_ != this.§1b§)
         {
            this.§1b§ = _loc1_;
            this.§81§ = this.§1b§;
            this.§=Y§();
         }
      }
      
      public function §,V§() : void
      {
         if(this.§&]§)
         {
            this.§15§ = this.§&]§.getFrameCount();
         }
      }
      
      public function §!!j§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§ n§ = new GlowFilter();
         this.§ n§.blurX = param2;
         this.§ n§.blurY = param3;
         this.§ n§.color = param1;
      }
      
      public function §4c§() : void
      {
         this.§ n§ = null;
      }
      
      public function § P§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§2!n§.§,!U§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§-9§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §=L§(param1:Number) : void
      {
         var _loc2_:int = this.§]!9§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§]!9§[_loc2_].updateLifeTime(param1);
            if(this.§]!9§[_loc2_].lifeTime < 0)
            {
               this.§-9§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §-9§(param1:int) : void
      {
         if(!this.§^o§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§%3§ = this.§^o§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§`!=§ = null;
         if(param1 < this.§]!9§.length)
         {
            (_loc5_ = this.§]!9§[param1]).§@`§(_loc4_);
            _loc5_.§=!l§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §`!=§(_loc3_.texture,_loc4_);
            this.§]!9§.push(_loc5_);
            this.§`B§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§8!T§.width / 2 + Math.random() * this.§8!T§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§8!T§.height / 2 + Math.random() * this.§8!T§.height;
      }
      
      public function §7"7§() : §-;§
      {
         return this.§8!T§;
      }
   }
}
