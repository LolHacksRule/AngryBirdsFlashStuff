package §&c§
{
   import §"a§.§#c§;
   import §"a§.§8P§;
   import §"a§.§^>§;
   import §#;§.§%>§;
   import §#;§.§4!8§;
   import §5@§.Texture;
   import §;q§.Sprite;
   import §;q§.§[E§;
   import §^V§.§4a§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §+`§
   {
      
      public static const §0;§:Number = 1000;
      
      public static const §'O§:Number = 500;
      
      private static var §2W§:Array = null;
       
      
      private var §+!D§:§9h§;
      
      public var §1!?§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §;&§:Number;
      
      public var §&!@§:Number;
      
      public var §,E§:int = -1;
      
      private var §%t§:String;
      
      private var §=>§:§#c§;
      
      private var §>m§:§#c§;
      
      private var § T§:§[E§;
      
      private var §;!>§:Number = 0;
      
      private var §=8§:Number = 0;
      
      public var §6d§:int = -1;
      
      private var §[!,§:int = -1;
      
      private var §=!'§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §>b§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §@!9§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §'!>§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §''§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §91§:String = "fly";
      
      public var §%!7§:String = "fly_yell";
      
      public var §[!A§:GlowFilter;
      
      private var §&!,§:Vector.<§%>§>;
      
      private var §8z§:§#c§;
      
      private var §]?§:Sprite = null;
      
      private var §3!3§:§4!8§;
      
      public function §+`§(param1:§9h§, param2:Sprite, param3:§4!8§)
      {
         super();
         this.§3!3§ = param3;
         this.§+!D§ = param1;
         this.§%t§ = this.§+!D§.§+!!§;
         this.§&!,§ = new Vector.<§%>§>();
         this.§]?§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%>§ = null;
         this.§&z§();
         if(this.§&!,§)
         {
            while(this.§&!,§.length > 0)
            {
               _loc1_ = this.§&!,§.pop();
               _loc1_.dispose();
            }
            this.§&!,§ = null;
         }
      }
      
      public function §><§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§,E§ = param1;
         this.§&!@§ = param2;
         this.§]4§();
      }
      
      public function §4h§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;&§ = 1;
            return;
         }
         this.§;&§ = this.mW / this.mH;
         if(this.§;&§ < 1)
         {
            this.§;&§ = 1 / this.§;&§;
         }
         this.§;&§ = Math.min(11,this.§;&§);
      }
      
      public function §'!I§(param1:§8P§) : Boolean
      {
         var _loc2_:§^>§ = null;
         var _loc3_:Texture = null;
         if(this.§+!D§.isGround())
         {
            return false;
         }
         this.§8z§ = param1.§12§("SPARKLES");
         this.§=>§ = param1.§12§(this.§%t§);
         this.§>m§ = this.§=>§;
         var _loc4_:Number = 1;
         if(this.§>m§)
         {
            _loc2_ = this.§>m§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§3!3§.textureManager.§4Y§();
         }
         this.§ T§ = new §[E§(_loc3_);
         if(_loc2_)
         {
            this.§ T§.x = -_loc2_.pivotX;
            this.§ T§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§ T§.x = -this.§ T§.width / 2;
            this.§ T§.y = -this.§ T§.height / 2;
         }
         this.§ T§.scaleX = _loc4_;
         this.§ T§.scaleY = _loc4_;
         this.mW = this.§ T§.width / 2;
         this.mH = this.§ T§.height / 2;
         this.§]?§.addChild(this.§ T§);
         return true;
      }
      
      public function §`P§(param1:§4a§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§=k§)
         {
            case §4a§.§7!6§:
               _loc2_ = param1.§3!§();
               _loc3_ = _loc2_[0];
               this.§;!>§ = _loc3_.x / §4!8§.§5+§;
               this.§=8§ = _loc3_.y / §4!8§.§5+§;
               break;
            case §4a§.§9!C§:
         }
         this.§#D§();
      }
      
      public function §[h§() : Array
      {
         return §6j§.§[h§(null,this.§+!D§.§=!?§());
      }
      
      public function §+Q§() : Array
      {
         return §6j§.§+Q§(null,this.§+!D§.§=!?§());
      }
      
      public function § !D§() : Array
      {
         return §6j§.§ !D§(null);
      }
      
      public function §]4§() : void
      {
      }
      
      public function §0'§(param1:Number) : void
      {
         this.§]?§.scaleX = this.§]?§.scaleY = param1;
      }
      
      public function §#D§() : void
      {
         var _loc1_:§^>§ = null;
         if(!this.§=>§)
         {
            return;
         }
         if(this.§@!9§)
         {
            this.§=!'§ = 1;
         }
         else if(this.§+!D§.getSpecialAnimationProgress() >= 0 && this.§=>§.getSubAnimation(this.§>b§))
         {
            this.§>m§ = this.§=>§.getSubAnimation(this.§>b§);
            this.§=!'§ = this.§>m§.getFrameCount() * this.§+!D§.getSpecialAnimationProgress();
            if(this.§=!'§ == this.§>m§.getFrameCount() - 1 && this.§+!D§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§=!'§;
            }
         }
         else if(this.mTryToSpecial && this.§=>§.getSubAnimation(this.§>b§))
         {
            this.§>m§ = this.§=>§.getSubAnimation(this.§>b§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§=>§.getSubAnimation(this.§%!7§))
         {
            this.§>m§ = this.§=>§.getSubAnimation(this.§%!7§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§=>§.getSubAnimation(this.§'!>§))
         {
            this.§>m§ = this.§=>§.getSubAnimation(this.§'!>§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§=>§.getSubAnimation(this.§''§))
         {
            this.§>m§ = this.§=>§.getSubAnimation(this.§''§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§=>§.getSubAnimation(this.§91§))
         {
            this.§>m§ = this.§=>§.getSubAnimation(this.§91§);
            this.mIsFlying = true;
         }
         else
         {
            this.§>m§ = this.§=>§;
         }
         if(this.§>m§)
         {
            _loc1_ = this.§>m§.getFrame(this.§=!'§);
            if(this.§ T§ && _loc1_)
            {
               this.§ T§.texture = _loc1_.texture;
               this.§ T§.x = -_loc1_.pivotX - this.§;!>§;
               this.§ T§.y = -_loc1_.pivotY - this.§=8§;
               this.§ T§.scaleX = _loc1_.scale;
               this.§ T§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §>!5§() : void
      {
         this.§]?§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§6d§ < 0)
         {
            this.§for§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§+!D§.§<Y§ / this.§+!D§.§;u§) * this.§6d§;
         if(_loc1_ != this.§[!,§)
         {
            this.§[!,§ = _loc1_;
            this.§=!'§ = this.§[!,§;
            this.§#D§();
         }
      }
      
      public function §for§() : void
      {
         if(this.§=>§)
         {
            this.§6d§ = this.§=>§.getFrameCount();
         }
      }
      
      public function §2!5§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§[!A§ = new GlowFilter();
         this.§[!A§.blurX = param2;
         this.§[!A§.blurY = param3;
         this.§[!A§.color = param1;
      }
      
      public function §&z§() : void
      {
         this.§[!A§ = null;
      }
      
      public function §,S§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§+!D§.§`M§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§#0§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §4!§(param1:Number) : void
      {
         var _loc2_:int = this.§&!,§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§&!,§[_loc2_].updateLifeTime(param1);
            if(this.§&!,§[_loc2_].lifeTime < 0)
            {
               this.§#0§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §#0§(param1:int) : void
      {
         if(!this.§8z§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§^>§ = this.§8z§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§%>§ = null;
         if(param1 < this.§&!,§.length)
         {
            (_loc5_ = this.§&!,§[param1]).§44§(_loc4_);
            _loc5_.§7T§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §%>§(_loc3_.texture,_loc4_);
            this.§&!,§.push(_loc5_);
            this.§]?§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§ T§.width / 2 + Math.random() * this.§ T§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§ T§.height / 2 + Math.random() * this.§ T§.height;
      }
      
      public function §"D§() : §[E§
      {
         return this.§ T§;
      }
   }
}
