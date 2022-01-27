package §+!#§
{
   import §#!6§.Texture;
   import §0!=§.b2Vec2;
   import §2z§.§2!U§;
   import §2z§.§6!,§;
   import §4!e§.§[l§;
   import §=!E§.Sprite;
   import §=!E§.§try§;
   import §]!C§.§!y§;
   import §]!C§.§'!!§;
   import §]!C§.§<!c§;
   import flash.filters.GlowFilter;
   
   public class §@!!§
   {
      
      public static const §#1§:Number = 1000;
      
      public static const §-h§:Number = 500;
      
      private static var §9G§:Array = null;
       
      
      private var §[j§:§9!5§;
      
      public var §-d§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §><§:Number;
      
      public var §%!%§:Number;
      
      public var §#y§:int = -1;
      
      private var §-!F§:String;
      
      private var §?!F§:§<!c§;
      
      private var §;8§:§<!c§;
      
      private var §9!!§:§try§;
      
      private var §9d§:Number = 0;
      
      private var §^@§:Number = 0;
      
      public var §3!,§:int = -1;
      
      private var §%p§:int = -1;
      
      private var §<7§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §!!>§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §;J§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §%!-§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §]4§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §>!S§:String = "fly";
      
      public var §2!1§:String = "fly_yell";
      
      public var §'X§:GlowFilter;
      
      private var §!!e§:Vector.<§6!,§>;
      
      private var §4s§:§<!c§;
      
      private var §"!B§:Sprite = null;
      
      private var §7o§:§2!U§;
      
      public function §@!!§(param1:§9!5§, param2:Sprite, param3:§2!U§)
      {
         super();
         this.§7o§ = param3;
         this.§[j§ = param1;
         this.§-!F§ = this.§[j§.§@c§;
         this.§!!e§ = new Vector.<§6!,§>();
         this.§"!B§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6!,§ = null;
         this.§]1§();
         if(this.§!!e§)
         {
            while(this.§!!e§.length > 0)
            {
               _loc1_ = this.§!!e§.pop();
               _loc1_.dispose();
            }
            this.§!!e§ = null;
         }
      }
      
      public function §%!Y§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§#y§ = param1;
         this.§%!%§ = param2;
         this.§9K§();
      }
      
      public function §8D§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§><§ = 1;
            return;
         }
         this.§><§ = this.mW / this.mH;
         if(this.§><§ < 1)
         {
            this.§><§ = 1 / this.§><§;
         }
         this.§><§ = Math.min(11,this.§><§);
      }
      
      public function §#!c§(param1:§!y§) : Boolean
      {
         var _loc2_:§'!!§ = null;
         var _loc3_:Texture = null;
         if(this.§[j§.isGround())
         {
            return false;
         }
         this.§4s§ = param1.§7!0§("SPARKLES");
         this.§?!F§ = param1.§7!0§(this.§-!F§);
         this.§;8§ = this.§?!F§;
         var _loc4_:Number = 1;
         if(this.§;8§)
         {
            _loc2_ = this.§;8§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§7o§.textureManager.§do §();
         }
         this.§9!!§ = new §try§(_loc3_);
         if(_loc2_)
         {
            this.§9!!§.x = -_loc2_.pivotX;
            this.§9!!§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§9!!§.x = -this.§9!!§.width / 2;
            this.§9!!§.y = -this.§9!!§.height / 2;
         }
         this.§9!!§.scaleX = _loc4_;
         this.§9!!§.scaleY = _loc4_;
         this.mW = this.§9!!§.width / 2;
         this.mH = this.§9!!§.height / 2;
         this.§"!B§.addChild(this.§9!!§);
         return true;
      }
      
      public function §5%§(param1:§[l§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§ !&§)
         {
            case §[l§.§[!U§:
               _loc2_ = param1.§+!A§();
               _loc3_ = _loc2_[0];
               this.§9d§ = _loc3_.x / §2!U§.§&%§;
               this.§^@§ = _loc3_.y / §2!U§.§&%§;
               break;
            case §[l§.§#M§:
         }
         this.§=d§();
      }
      
      public function §8C§() : Array
      {
         return §[!0§.§8C§(null,this.§[j§.§25§());
      }
      
      public function §@V§() : Array
      {
         return §[!0§.§@V§(null,this.§[j§.§25§());
      }
      
      public function §#w§() : Array
      {
         return §[!0§.§#w§(null);
      }
      
      public function §9K§() : void
      {
      }
      
      public function §"u§(param1:Number) : void
      {
         this.§"!B§.scaleX = this.§"!B§.scaleY = param1;
      }
      
      public function §=d§() : void
      {
         var _loc1_:§'!!§ = null;
         if(!this.§?!F§)
         {
            return;
         }
         if(this.§;J§)
         {
            this.§<7§ = 1;
         }
         else if(this.§[j§.getSpecialAnimationProgress() >= 0 && this.§?!F§.getSubAnimation(this.§!!>§))
         {
            this.§;8§ = this.§?!F§.getSubAnimation(this.§!!>§);
            this.§<7§ = this.§;8§.getFrameCount() * this.§[j§.getSpecialAnimationProgress();
            if(this.§<7§ == this.§;8§.getFrameCount() - 1 && this.§[j§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§<7§;
            }
         }
         else if(this.mTryToSpecial && this.§?!F§.getSubAnimation(this.§!!>§))
         {
            this.§;8§ = this.§?!F§.getSubAnimation(this.§!!>§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§?!F§.getSubAnimation(this.§2!1§))
         {
            this.§;8§ = this.§?!F§.getSubAnimation(this.§2!1§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§?!F§.getSubAnimation(this.§%!-§))
         {
            this.§;8§ = this.§?!F§.getSubAnimation(this.§%!-§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§?!F§.getSubAnimation(this.§]4§))
         {
            this.§;8§ = this.§?!F§.getSubAnimation(this.§]4§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§?!F§.getSubAnimation(this.§>!S§))
         {
            this.§;8§ = this.§?!F§.getSubAnimation(this.§>!S§);
            this.mIsFlying = true;
         }
         else
         {
            this.§;8§ = this.§?!F§;
         }
         if(this.§;8§)
         {
            _loc1_ = this.§;8§.getFrame(this.§<7§);
            if(this.§9!!§ && _loc1_)
            {
               this.§9!!§.texture = _loc1_.texture;
               this.§9!!§.x = -_loc1_.pivotX - this.§9d§;
               this.§9!!§.y = -_loc1_.pivotY - this.§^@§;
               this.§9!!§.scaleX = _loc1_.scale;
               this.§9!!§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §+q§() : void
      {
         this.§"!B§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§3!,§ < 0)
         {
            this.§`!3§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§[j§.§7!M§ / this.§[j§.§+z§) * this.§3!,§;
         if(_loc1_ != this.§%p§)
         {
            this.§%p§ = _loc1_;
            this.§<7§ = this.§%p§;
            this.§=d§();
         }
      }
      
      public function §`!3§() : void
      {
         if(this.§?!F§)
         {
            this.§3!,§ = this.§?!F§.getFrameCount();
         }
      }
      
      public function §?>§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§'X§ = new GlowFilter();
         this.§'X§.blurX = param2;
         this.§'X§.blurY = param3;
         this.§'X§.color = param1;
      }
      
      public function §]1§() : void
      {
         this.§'X§ = null;
      }
      
      public function §3!c§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§[j§.§,!8§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§9!V§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §7!%§(param1:Number) : void
      {
         var _loc2_:int = this.§!!e§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§!!e§[_loc2_].updateLifeTime(param1);
            if(this.§!!e§[_loc2_].lifeTime < 0)
            {
               this.§9!V§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §9!V§(param1:int) : void
      {
         if(!this.§4s§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§'!!§ = this.§4s§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§6!,§ = null;
         if(param1 < this.§!!e§.length)
         {
            (_loc5_ = this.§!!e§[param1]).§"y§(_loc4_);
            _loc5_.§ !H§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §6!,§(_loc3_.texture,_loc4_);
            this.§!!e§.push(_loc5_);
            this.§"!B§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§9!!§.width / 2 + Math.random() * this.§9!!§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§9!!§.height / 2 + Math.random() * this.§9!!§.height;
      }
      
      public function §6s§() : §try§
      {
         return this.§9!!§;
      }
   }
}
