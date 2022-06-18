package §!!,§
{
   import §#!@§.§0V§;
   import §#!@§.Sprite;
   import §1#§.Texture;
   import §9s§.§^9§;
   import §9s§.§`S§;
   import §;!'§.§'_§;
   import §[v§.§'P§;
   import §[v§.§03§;
   import §[v§.§7e§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §?q§
   {
      
      public static const §26§:Number = 1000;
      
      public static const §"!B§:Number = 500;
      
      private static var §,!6§:Array = null;
       
      
      private var §^!9§:§`Q§;
      
      public var §0a§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §[a§:Number;
      
      public var §"v§:Number;
      
      public var §=O§:int = -1;
      
      private var §"n§:String;
      
      private var §%!-§:§03§;
      
      private var §2!F§:§03§;
      
      private var §62§:§0V§;
      
      private var §3h§:Number = 0;
      
      private var §&!2§:Number = 0;
      
      public var §2<§:int = -1;
      
      private var §5b§:int = -1;
      
      private var §8Y§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §2f§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §>!=§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §5l§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §&!1§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §-3§:String = "fly";
      
      public var §!4§:String = "fly_yell";
      
      public var §"S§:GlowFilter;
      
      private var §0t§:Vector.<§`S§>;
      
      private var §"c§:§03§;
      
      private var §;e§:Sprite = null;
      
      private var §4!I§:§^9§;
      
      public function §?q§(param1:§`Q§, param2:Sprite, param3:§^9§)
      {
         super();
         this.§4!I§ = param3;
         this.§^!9§ = param1;
         this.§"n§ = this.§^!9§.§#+§;
         this.§0t§ = new Vector.<§`S§>();
         this.§;e§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`S§ = null;
         this.§<!>§();
         if(this.§0t§)
         {
            while(this.§0t§.length > 0)
            {
               _loc1_ = this.§0t§.pop();
               _loc1_.dispose();
            }
            this.§0t§ = null;
         }
      }
      
      public function §!U§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§=O§ = param1;
         this.§"v§ = param2;
         this.§0!&§();
      }
      
      public function §3f§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[a§ = 1;
            return;
         }
         this.§[a§ = this.mW / this.mH;
         if(this.§[a§ < 1)
         {
            this.§[a§ = 1 / this.§[a§;
         }
         this.§[a§ = Math.min(11,this.§[a§);
      }
      
      public function §!i§(param1:§7e§) : Boolean
      {
         var _loc2_:§'P§ = null;
         var _loc3_:Texture = null;
         if(this.§^!9§.isGround())
         {
            return false;
         }
         this.§"c§ = param1.§ +§("SPARKLES");
         this.§%!-§ = param1.§ +§(this.§"n§);
         this.§2!F§ = this.§%!-§;
         var _loc4_:Number = 1;
         if(this.§2!F§)
         {
            _loc2_ = this.§2!F§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§4!I§.textureManager.§&z§();
         }
         this.§62§ = new §0V§(_loc3_);
         if(_loc2_)
         {
            this.§62§.x = -_loc2_.pivotX;
            this.§62§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§62§.x = -this.§62§.width / 2;
            this.§62§.y = -this.§62§.height / 2;
         }
         this.§62§.scaleX = _loc4_;
         this.§62§.scaleY = _loc4_;
         this.mW = this.§62§.width / 2;
         this.mH = this.§62§.height / 2;
         this.§;e§.addChild(this.§62§);
         return true;
      }
      
      public function §#t§(param1:§'_§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§ D§)
         {
            case §'_§.§]!"§:
               _loc2_ = param1.§1p§();
               _loc3_ = _loc2_[0];
               this.§3h§ = _loc3_.x / §^9§.§5T§;
               this.§&!2§ = _loc3_.y / §^9§.§5T§;
               break;
            case §'_§.§use §:
         }
         this.§+!7§();
      }
      
      public function §<!N§() : Array
      {
         return §;c§.§<!N§(null,this.§^!9§.§2d§());
      }
      
      public function §2t§() : Array
      {
         return §;c§.§2t§(null,this.§^!9§.§2d§());
      }
      
      public function §>!J§() : Array
      {
         return §;c§.§>!J§(null);
      }
      
      public function §0!&§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         this.§;e§.scaleX = this.§;e§.scaleY = param1;
      }
      
      public function §+!7§() : void
      {
         var _loc1_:§'P§ = null;
         if(!this.§%!-§)
         {
            return;
         }
         if(this.§>!=§)
         {
            this.§8Y§ = 1;
         }
         else if(this.§^!9§.getSpecialAnimationProgress() >= 0 && this.§%!-§.getSubAnimation(this.§2f§))
         {
            this.§2!F§ = this.§%!-§.getSubAnimation(this.§2f§);
            this.§8Y§ = this.§2!F§.getFrameCount() * this.§^!9§.getSpecialAnimationProgress();
            if(this.§8Y§ == this.§2!F§.getFrameCount() - 1 && this.§^!9§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§8Y§;
            }
         }
         else if(this.mTryToSpecial && this.§%!-§.getSubAnimation(this.§2f§))
         {
            this.§2!F§ = this.§%!-§.getSubAnimation(this.§2f§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§%!-§.getSubAnimation(this.§!4§))
         {
            this.§2!F§ = this.§%!-§.getSubAnimation(this.§!4§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§%!-§.getSubAnimation(this.§5l§))
         {
            this.§2!F§ = this.§%!-§.getSubAnimation(this.§5l§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§%!-§.getSubAnimation(this.§&!1§))
         {
            this.§2!F§ = this.§%!-§.getSubAnimation(this.§&!1§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§%!-§.getSubAnimation(this.§-3§))
         {
            this.§2!F§ = this.§%!-§.getSubAnimation(this.§-3§);
            this.mIsFlying = true;
         }
         else
         {
            this.§2!F§ = this.§%!-§;
         }
         if(this.§2!F§)
         {
            _loc1_ = this.§2!F§.getFrame(this.§8Y§);
            if(this.§62§ && _loc1_)
            {
               this.§62§.texture = _loc1_.texture;
               this.§62§.x = -_loc1_.pivotX - this.§3h§;
               this.§62§.y = -_loc1_.pivotY - this.§&!2§;
               this.§62§.scaleX = _loc1_.scale;
               this.§62§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function § get§() : void
      {
         this.§;e§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§2<§ < 0)
         {
            this.§4X§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§^!9§.§;U§ / this.§^!9§.§!d§) * this.§2<§;
         if(_loc1_ != this.§5b§)
         {
            this.§5b§ = _loc1_;
            this.§8Y§ = this.§5b§;
            this.§+!7§();
         }
      }
      
      public function §4X§() : void
      {
         if(this.§%!-§)
         {
            this.§2<§ = this.§%!-§.getFrameCount();
         }
      }
      
      public function §if§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§"S§ = new GlowFilter();
         this.§"S§.blurX = param2;
         this.§"S§.blurY = param3;
         this.§"S§.color = param1;
      }
      
      public function §<!>§() : void
      {
         this.§"S§ = null;
      }
      
      public function §[e§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§^!9§.§,!@§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§2E§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §0U§(param1:Number) : void
      {
         var _loc2_:int = this.§0t§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§0t§[_loc2_].updateLifeTime(param1);
            if(this.§0t§[_loc2_].lifeTime < 0)
            {
               this.§2E§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §2E§(param1:int) : void
      {
         if(!this.§"c§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§'P§ = this.§"c§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§`S§ = null;
         if(param1 < this.§0t§.length)
         {
            (_loc5_ = this.§0t§[param1]).§;!B§(_loc4_);
            _loc5_.§0Q§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §`S§(_loc3_.texture,_loc4_);
            this.§0t§.push(_loc5_);
            this.§;e§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§62§.width / 2 + Math.random() * this.§62§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§62§.height / 2 + Math.random() * this.§62§.height;
      }
      
      public function §,?§() : §0V§
      {
         return this.§62§;
      }
   }
}
