package §%!&§
{
   import § !V§.§%!T§;
   import § !V§.§=!g§;
   import § !V§.§]"5§;
   import §%!<§.§`f§;
   import §%h§.§5X§;
   import §%h§.§=!W§;
   import §3!U§.Texture;
   import §9v§.b2Vec2;
   import §]!2§.§,!n§;
   import §]!2§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §5",§
   {
      
      public static const §-!5§:Number = 1000;
      
      public static const §&M§:Number = 500;
      
      private static var §[!=§:Array = null;
       
      
      private var §8!9§:§;!x§;
      
      public var §3@§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §+!$§:Number;
      
      public var §%v§:Number;
      
      public var §,"-§:int = -1;
      
      private var §`"2§:String;
      
      private var §="%§:§%!T§;
      
      private var §=!6§:§%!T§;
      
      private var §6!y§:§,!n§;
      
      private var §9!d§:Number = 0;
      
      private var §&!F§:Number = 0;
      
      public var §5$§:int = -1;
      
      private var §`!l§:int = -1;
      
      private var §9"5§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §!'§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §;?§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §,!8§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §]G§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §<"4§:String = "fly";
      
      public var §#!d§:String = "fly_yell";
      
      public var §"!C§:GlowFilter;
      
      private var §&k§:Vector.<§=!W§>;
      
      private var §!k§:§%!T§;
      
      private var §`!-§:Sprite = null;
      
      private var §>"2§:§5X§;
      
      public function §5",§(param1:§;!x§, param2:Sprite, param3:§5X§)
      {
         super();
         this.§>"2§ = param3;
         this.§8!9§ = param1;
         this.§`"2§ = this.§8!9§.§6u§;
         this.§&k§ = new Vector.<§=!W§>();
         this.§`!-§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=!W§ = null;
         this.§#!q§();
         if(this.§&k§)
         {
            while(this.§&k§.length > 0)
            {
               _loc1_ = this.§&k§.pop();
               _loc1_.dispose();
            }
            this.§&k§ = null;
         }
      }
      
      public function §=!#§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§,"-§ = param1;
         this.§%v§ = param2;
         this.§1!k§();
      }
      
      public function §,<§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+!$§ = 1;
            return;
         }
         this.§+!$§ = this.mW / this.mH;
         if(this.§+!$§ < 1)
         {
            this.§+!$§ = 1 / this.§+!$§;
         }
         this.§+!$§ = Math.min(11,this.§+!$§);
      }
      
      public function §`!?§(param1:§]"5§) : Boolean
      {
         var _loc2_:§=!g§ = null;
         var _loc3_:Texture = null;
         if(this.§8!9§.isGround())
         {
            return false;
         }
         this.§!k§ = param1.§%!^§("SPARKLES");
         this.§="%§ = param1.§%!^§(this.§`"2§);
         this.§=!6§ = this.§="%§;
         var _loc4_:Number = 1;
         if(this.§=!6§)
         {
            _loc2_ = this.§=!6§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§>"2§.§7<§.§0q§();
         }
         this.§6!y§ = new §,!n§(_loc3_);
         if(_loc2_)
         {
            this.§6!y§.x = -_loc2_.pivotX;
            this.§6!y§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§6!y§.x = -this.§6!y§.width / 2;
            this.§6!y§.y = -this.§6!y§.height / 2;
         }
         this.§6!y§.scaleX = _loc4_;
         this.§6!y§.scaleY = _loc4_;
         this.mW = this.§6!y§.width / 2;
         this.mH = this.§6!y§.height / 2;
         this.§`!-§.addChild(this.§6!y§);
         return true;
      }
      
      public function §'!;§(param1:§`f§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§?X§)
         {
            case §`f§.§`,§:
               _loc2_ = param1.§?!a§();
               _loc3_ = _loc2_[0];
               this.§9!d§ = _loc3_.x / §5X§.§,!m§;
               this.§&!F§ = _loc3_.y / §5X§.§,!m§;
               break;
            case §`f§.§7" §:
         }
         this.§91§();
      }
      
      public function §?n§() : Array
      {
         return §'M§.§?n§(null,this.§8!9§.§;!M§());
      }
      
      public function §"6§() : Array
      {
         return §'M§.§"6§(null,this.§8!9§.§;!M§());
      }
      
      public function §'!m§() : Array
      {
         return §'M§.§'!m§(null);
      }
      
      public function §1!k§() : void
      {
      }
      
      public function §6§(param1:Number) : void
      {
         this.§`!-§.scaleX = this.§`!-§.scaleY = param1;
      }
      
      public function §91§() : void
      {
         var _loc1_:§=!g§ = null;
         if(!this.§="%§)
         {
            return;
         }
         if(this.§;?§)
         {
            this.§9"5§ = 1;
         }
         else if(this.§8!9§.getSpecialAnimationProgress() >= 0 && this.§="%§.getSubAnimation(this.§!'§))
         {
            this.§=!6§ = this.§="%§.getSubAnimation(this.§!'§);
            this.§9"5§ = this.§=!6§.getFrameCount() * this.§8!9§.getSpecialAnimationProgress();
            if(this.§9"5§ == this.§=!6§.getFrameCount() - 1 && this.§8!9§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§9"5§;
            }
         }
         else if(this.mTryToSpecial && this.§="%§.getSubAnimation(this.§!'§))
         {
            this.§=!6§ = this.§="%§.getSubAnimation(this.§!'§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§="%§.getSubAnimation(this.§#!d§))
         {
            this.§=!6§ = this.§="%§.getSubAnimation(this.§#!d§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§="%§.getSubAnimation(this.§,!8§))
         {
            this.§=!6§ = this.§="%§.getSubAnimation(this.§,!8§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§="%§.getSubAnimation(this.§]G§))
         {
            this.§=!6§ = this.§="%§.getSubAnimation(this.§]G§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§="%§.getSubAnimation(this.§<"4§))
         {
            this.§=!6§ = this.§="%§.getSubAnimation(this.§<"4§);
            this.mIsFlying = true;
         }
         else
         {
            this.§=!6§ = this.§="%§;
         }
         if(this.§=!6§)
         {
            _loc1_ = this.§=!6§.getFrame(this.§9"5§);
            if(this.§6!y§ && _loc1_)
            {
               this.§6!y§.texture = _loc1_.texture;
               this.§6!y§.x = -_loc1_.pivotX - this.§9!d§;
               this.§6!y§.y = -_loc1_.pivotY - this.§&!F§;
               this.§6!y§.scaleX = _loc1_.scale;
               this.§6!y§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §8!!§() : void
      {
         this.§`!-§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§5$§ < 0)
         {
            this.§?!"§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§8!9§.§^!n§ / this.§8!9§.§?!`§) * this.§5$§;
         if(_loc1_ != this.§`!l§)
         {
            this.§`!l§ = _loc1_;
            this.§9"5§ = this.§`!l§;
            this.§91§();
         }
      }
      
      public function §?!"§() : void
      {
         if(this.§="%§)
         {
            this.§5$§ = this.§="%§.getFrameCount();
         }
      }
      
      public function §!p§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§"!C§ = new GlowFilter();
         this.§"!C§.blurX = param2;
         this.§"!C§.blurY = param3;
         this.§"!C§.color = param1;
      }
      
      public function §#!q§() : void
      {
         this.§"!C§ = null;
      }
      
      public function §=x§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§8!9§.§""&§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§6"+§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §&!<§(param1:Number) : void
      {
         var _loc2_:int = this.§&k§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§&k§[_loc2_].updateLifeTime(param1);
            if(this.§&k§[_loc2_].lifeTime < 0)
            {
               this.§6"+§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §6"+§(param1:int) : void
      {
         if(!this.§!k§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§=!g§ = this.§!k§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§=!W§ = null;
         if(param1 < this.§&k§.length)
         {
            (_loc5_ = this.§&k§[param1]).§<x§(_loc4_);
            _loc5_.§;K§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §=!W§(_loc3_.texture,_loc4_);
            this.§&k§.push(_loc5_);
            this.§`!-§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§6!y§.width / 2 + Math.random() * this.§6!y§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§6!y§.height / 2 + Math.random() * this.§6!y§.height;
      }
      
      public function §!!#§() : §,!n§
      {
         return this.§6!y§;
      }
   }
}
