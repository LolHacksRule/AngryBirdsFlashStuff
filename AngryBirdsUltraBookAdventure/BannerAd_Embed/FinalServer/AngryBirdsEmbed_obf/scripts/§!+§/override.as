package §!+§
{
   import §'k§.§#k§;
   import §'k§.§2v§;
   import §'k§.§7x§;
   import §5!@§.Texture;
   import §7!0§.§<$§;
   import §9W§.§6!0§;
   import §9W§.Sprite;
   import §?b§.§7!,§;
   import §?b§.§;]§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class override
   {
      
      public static const §`=§:Number = 1000;
      
      public static const §for §:Number = 500;
      
      private static var §2U§:Array = null;
       
      
      private var §?!5§:§>G§;
      
      public var §]0§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §79§:Number;
      
      public var §,X§:Number;
      
      public var §^!D§:int = -1;
      
      private var §+!3§:String;
      
      private var §;&§:§7x§;
      
      private var §"?§:§7x§;
      
      private var §15§:§6!0§;
      
      private var §%W§:Number = 0;
      
      private var §'S§:Number = 0;
      
      public var §%!-§:int = -1;
      
      private var §"+§:int = -1;
      
      private var §4!G§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §'X§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §9+§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §3U§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §?2§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §8Q§:String = "fly";
      
      public var §6f§:String = "fly_yell";
      
      public var §>m§:GlowFilter;
      
      private var §8!'§:Vector.<§;]§>;
      
      private var §]$§:§7x§;
      
      private var §[0§:Sprite = null;
      
      private var §4!%§:§7!,§;
      
      public function override(param1:§>G§, param2:Sprite, param3:§7!,§)
      {
         super();
         this.§4!%§ = param3;
         this.§?!5§ = param1;
         this.§+!3§ = this.§?!5§.§2Z§;
         this.§8!'§ = new Vector.<§;]§>();
         this.§[0§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;]§ = null;
         this.§-c§();
         if(this.§8!'§)
         {
            while(this.§8!'§.length > 0)
            {
               _loc1_ = this.§8!'§.pop();
               _loc1_.dispose();
            }
            this.§8!'§ = null;
         }
      }
      
      public function §1!!§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§^!D§ = param1;
         this.§,X§ = param2;
         this.§@!9§();
      }
      
      public function §0d§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§79§ = 1;
            return;
         }
         this.§79§ = this.mW / this.mH;
         if(this.§79§ < 1)
         {
            this.§79§ = 1 / this.§79§;
         }
         this.§79§ = Math.min(11,this.§79§);
      }
      
      public function § B§(param1:§#k§) : Boolean
      {
         var _loc2_:§2v§ = null;
         var _loc3_:Texture = null;
         if(this.§?!5§.isGround())
         {
            return false;
         }
         this.§]$§ = param1.§`l§("SPARKLES");
         this.§;&§ = param1.§`l§(this.§+!3§);
         this.§"?§ = this.§;&§;
         var _loc4_:Number = 1;
         if(this.§"?§)
         {
            _loc2_ = this.§"?§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§4!%§.textureManager.§"h§();
         }
         this.§15§ = new §6!0§(_loc3_);
         if(_loc2_)
         {
            this.§15§.x = -_loc2_.pivotX;
            this.§15§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§15§.x = -this.§15§.width / 2;
            this.§15§.y = -this.§15§.height / 2;
         }
         this.§15§.scaleX = _loc4_;
         this.§15§.scaleY = _loc4_;
         this.mW = this.§15§.width / 2;
         this.mH = this.§15§.height / 2;
         this.§[0§.addChild(this.§15§);
         return true;
      }
      
      public function § 2§(param1:§<$§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§2! §)
         {
            case §<$§.§]M§:
               _loc2_ = param1.§]X§();
               _loc3_ = _loc2_[0];
               this.§%W§ = _loc3_.x / §7!,§.§ '§;
               this.§'S§ = _loc3_.y / §7!,§.§ '§;
               break;
            case §<$§.§[!"§:
         }
         this.§@3§();
      }
      
      public function §4p§() : Array
      {
         return §'H§.§4p§(null,this.§?!5§.§]!+§());
      }
      
      public function §,y§() : Array
      {
         return §'H§.§,y§(null,this.§?!5§.§]!+§());
      }
      
      public function §4_§() : Array
      {
         return §'H§.§4_§(null);
      }
      
      public function §@!9§() : void
      {
      }
      
      public function §9X§(param1:Number) : void
      {
         this.§[0§.scaleX = this.§[0§.scaleY = param1;
      }
      
      public function §@3§() : void
      {
         var _loc1_:§2v§ = null;
         if(!this.§;&§)
         {
            return;
         }
         if(this.§9+§)
         {
            this.§4!G§ = 1;
         }
         else if(this.§?!5§.getSpecialAnimationProgress() >= 0 && this.§;&§.getSubAnimation(this.§'X§))
         {
            this.§"?§ = this.§;&§.getSubAnimation(this.§'X§);
            this.§4!G§ = this.§"?§.getFrameCount() * this.§?!5§.getSpecialAnimationProgress();
            if(this.§4!G§ == this.§"?§.getFrameCount() - 1 && this.§?!5§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§4!G§;
            }
         }
         else if(this.mTryToSpecial && this.§;&§.getSubAnimation(this.§'X§))
         {
            this.§"?§ = this.§;&§.getSubAnimation(this.§'X§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§;&§.getSubAnimation(this.§6f§))
         {
            this.§"?§ = this.§;&§.getSubAnimation(this.§6f§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§;&§.getSubAnimation(this.§3U§))
         {
            this.§"?§ = this.§;&§.getSubAnimation(this.§3U§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§;&§.getSubAnimation(this.§?2§))
         {
            this.§"?§ = this.§;&§.getSubAnimation(this.§?2§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§;&§.getSubAnimation(this.§8Q§))
         {
            this.§"?§ = this.§;&§.getSubAnimation(this.§8Q§);
            this.mIsFlying = true;
         }
         else
         {
            this.§"?§ = this.§;&§;
         }
         if(this.§"?§)
         {
            _loc1_ = this.§"?§.getFrame(this.§4!G§);
            if(this.§15§ && _loc1_)
            {
               this.§15§.texture = _loc1_.texture;
               this.§15§.x = -_loc1_.pivotX - this.§%W§;
               this.§15§.y = -_loc1_.pivotY - this.§'S§;
               this.§15§.scaleX = _loc1_.scale;
               this.§15§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §#_§() : void
      {
         this.§[0§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§%!-§ < 0)
         {
            this.§^!7§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§?!5§.§`0§ / this.§?!5§.§ !,§) * this.§%!-§;
         if(_loc1_ != this.§"+§)
         {
            this.§"+§ = _loc1_;
            this.§4!G§ = this.§"+§;
            this.§@3§();
         }
      }
      
      public function §^!7§() : void
      {
         if(this.§;&§)
         {
            this.§%!-§ = this.§;&§.getFrameCount();
         }
      }
      
      public function §7!$§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§>m§ = new GlowFilter();
         this.§>m§.blurX = param2;
         this.§>m§.blurY = param3;
         this.§>m§.color = param1;
      }
      
      public function §-c§() : void
      {
         this.§>m§ = null;
      }
      
      public function §<!8§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§?!5§.§[_§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§%v§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §]i§(param1:Number) : void
      {
         var _loc2_:int = this.§8!'§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§8!'§[_loc2_].updateLifeTime(param1);
            if(this.§8!'§[_loc2_].lifeTime < 0)
            {
               this.§%v§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §%v§(param1:int) : void
      {
         if(!this.§]$§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§2v§ = this.§]$§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§;]§ = null;
         if(param1 < this.§8!'§.length)
         {
            (_loc5_ = this.§8!'§[param1]).§6!#§(_loc4_);
            _loc5_.§;a§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §;]§(_loc3_.texture,_loc4_);
            this.§8!'§.push(_loc5_);
            this.§[0§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§15§.width / 2 + Math.random() * this.§15§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§15§.height / 2 + Math.random() * this.§15§.height;
      }
      
      public function §'o§() : §6!0§
      {
         return this.§15§;
      }
   }
}
