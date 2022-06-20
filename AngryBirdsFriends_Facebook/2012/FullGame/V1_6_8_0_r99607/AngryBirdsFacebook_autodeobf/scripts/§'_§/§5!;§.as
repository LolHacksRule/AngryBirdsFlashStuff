package §'_§
{
   import §!"8§.b2Vec2;
   import §3,§.§1"&§;
   import §3,§.§[!;§;
   import §<%§.§=!D§;
   import §<L§.Texture;
   import §?"<§.§"d§;
   import §?"<§.§&!B§;
   import §?"<§.§?n§;
   import §]&§.§-§;
   import §]&§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §5!;§
   {
      
      public static const §9!8§:Number = 1000;
      
      public static const §<p§:Number = 500;
      
      private static var §-!m§:Array = null;
       
      
      private var §?!N§:§9V§;
      
      public var §extends§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §37§:Number;
      
      public var §?!g§:Number;
      
      public var §&$§:int = -1;
      
      private var §?5§:String;
      
      private var §0!§:§"d§;
      
      private var §[!'§:§"d§;
      
      private var §0" §:§-§;
      
      private var §'O§:Number = 0;
      
      private var §6"$§:Number = 0;
      
      public var §<!T§:int = -1;
      
      private var §<"=§:int = -1;
      
      private var §`!5§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §+!h§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §9!>§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §!b§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §!!F§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §=]§:String = "fly";
      
      public var §]!J§:String = "fly_yell";
      
      public var § o§:GlowFilter;
      
      private var §#q§:Vector.<§1"&§>;
      
      private var §!f§:§"d§;
      
      private var §3!b§:Sprite = null;
      
      private var §0!J§:§[!;§;
      
      public function §5!;§(param1:§9V§, param2:Sprite, param3:§[!;§)
      {
         super();
         this.§0!J§ = param3;
         this.§?!N§ = param1;
         this.§?5§ = this.§?!N§.§+%§;
         this.§#q§ = new Vector.<§1"&§>();
         this.§3!b§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§1"&§ = null;
         this.§=!'§();
         if(this.§#q§)
         {
            while(this.§#q§.length > 0)
            {
               _loc1_ = this.§#q§.pop();
               _loc1_.dispose();
            }
            this.§#q§ = null;
         }
      }
      
      public function §@r§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§&$§ = param1;
         this.§?!g§ = param2;
         this.§;!d§();
      }
      
      public function §<!U§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§37§ = 1;
            return;
         }
         this.§37§ = this.mW / this.mH;
         if(this.§37§ < 1)
         {
            this.§37§ = 1 / this.§37§;
         }
         this.§37§ = Math.min(11,this.§37§);
      }
      
      public function §<!r§(param1:§&!B§) : Boolean
      {
         var _loc2_:§?n§ = null;
         var _loc3_:Texture = null;
         if(this.§?!N§.isGround())
         {
            return false;
         }
         this.§!f§ = param1.getAnimation("SPARKLES");
         this.§0!§ = param1.getAnimation(this.§?5§);
         this.§[!'§ = this.§0!§;
         var _loc4_:Number = 1;
         if(this.§[!'§)
         {
            _loc2_ = this.§[!'§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§0!J§.textureManager.§#!t§();
         }
         this.§0" § = new §-§(_loc3_);
         if(_loc2_)
         {
            this.§0" §.x = -_loc2_.pivotX;
            this.§0" §.y = -_loc2_.pivotY;
         }
         else
         {
            this.§0" §.x = -this.§0" §.width / 2;
            this.§0" §.y = -this.§0" §.height / 2;
         }
         this.§0" §.scaleX = _loc4_;
         this.§0" §.scaleY = _loc4_;
         this.mW = this.§0" §.width / 2;
         this.mH = this.§0" §.height / 2;
         this.§3!b§.addChild(this.§0" §);
         return true;
      }
      
      public function §<!S§(param1:§=!D§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§<!Q§)
         {
            case §=!D§.§<c§:
               _loc2_ = param1.§`!l§();
               _loc3_ = _loc2_[0];
               this.§'O§ = _loc3_.x / §[!;§.§4!O§;
               this.§6"$§ = _loc3_.y / §[!;§.§4!O§;
               break;
            case §=!D§.§+2§:
         }
         this.§;!e§();
      }
      
      public function §+!F§() : Array
      {
         return §=L§.§+!F§(null,this.§?!N§.§=J§());
      }
      
      public function §"!t§() : Array
      {
         return §=L§.§"!t§(null,this.§?!N§.§=J§());
      }
      
      public function §%"'§() : Array
      {
         return §=L§.§%"'§(null);
      }
      
      public function §;!d§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§3!b§.scaleX = this.§3!b§.scaleY = param1;
      }
      
      public function §;!e§() : void
      {
         var _loc1_:§?n§ = null;
         if(!this.§0!§)
         {
            return;
         }
         if(this.§9!>§)
         {
            this.§`!5§ = 1;
         }
         else if(this.§?!N§.getSpecialAnimationProgress() >= 0 && this.§0!§.getSubAnimation(this.§+!h§))
         {
            this.§[!'§ = this.§0!§.getSubAnimation(this.§+!h§);
            this.§`!5§ = this.§[!'§.getFrameCount() * this.§?!N§.getSpecialAnimationProgress();
            if(this.§`!5§ == this.§[!'§.getFrameCount() - 1 && this.§?!N§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§`!5§;
            }
         }
         else if(this.mTryToSpecial && this.§0!§.getSubAnimation(this.§+!h§))
         {
            this.§[!'§ = this.§0!§.getSubAnimation(this.§+!h§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§0!§.getSubAnimation(this.§]!J§))
         {
            this.§[!'§ = this.§0!§.getSubAnimation(this.§]!J§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§0!§.getSubAnimation(this.§!b§))
         {
            this.§[!'§ = this.§0!§.getSubAnimation(this.§!b§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§0!§.getSubAnimation(this.§!!F§))
         {
            this.§[!'§ = this.§0!§.getSubAnimation(this.§!!F§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§0!§.getSubAnimation(this.§=]§))
         {
            this.§[!'§ = this.§0!§.getSubAnimation(this.§=]§);
            this.mIsFlying = true;
         }
         else
         {
            this.§[!'§ = this.§0!§;
         }
         if(this.§[!'§)
         {
            _loc1_ = this.§[!'§.getFrame(this.§`!5§);
            if(this.§0" § && _loc1_)
            {
               this.§0" §.texture = _loc1_.texture;
               this.§0" §.x = -_loc1_.pivotX - this.§'O§;
               this.§0" §.y = -_loc1_.pivotY - this.§6"$§;
               this.§0" §.scaleX = _loc1_.scale;
               this.§0" §.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §,!n§() : void
      {
         this.§3!b§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§<!T§ < 0)
         {
            this.§1!6§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§?!N§.§9"8§ / this.§?!N§.§ i§) * this.§<!T§;
         if(_loc1_ != this.§<"=§)
         {
            this.§<"=§ = _loc1_;
            this.§`!5§ = this.§<"=§;
            this.§;!e§();
         }
      }
      
      public function §1!6§() : void
      {
         if(this.§0!§)
         {
            this.§<!T§ = this.§0!§.getFrameCount();
         }
      }
      
      public function §%7§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§ o§ = new GlowFilter();
         this.§ o§.blurX = param2;
         this.§ o§.blurY = param3;
         this.§ o§.color = param1;
      }
      
      public function §=!'§() : void
      {
         this.§ o§ = null;
      }
      
      public function §@"!§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§?!N§.§+"9§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§6"A§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §>=§(param1:Number) : void
      {
         var _loc2_:int = this.§#q§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§#q§[_loc2_].updateLifeTime(param1);
            if(this.§#q§[_loc2_].lifeTime < 0)
            {
               this.§6"A§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §6"A§(param1:int) : void
      {
         if(!this.§!f§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§?n§ = this.§!f§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§1"&§ = null;
         if(param1 < this.§#q§.length)
         {
            (_loc5_ = this.§#q§[param1]).§@""§(_loc4_);
            _loc5_.§%!q§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §1"&§(_loc3_.texture,_loc4_);
            this.§#q§.push(_loc5_);
            this.§3!b§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§0" §.width / 2 + Math.random() * this.§0" §.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§0" §.height / 2 + Math.random() * this.§0" §.height;
      }
      
      public function §4C§() : §-§
      {
         return this.§0" §;
      }
   }
}
