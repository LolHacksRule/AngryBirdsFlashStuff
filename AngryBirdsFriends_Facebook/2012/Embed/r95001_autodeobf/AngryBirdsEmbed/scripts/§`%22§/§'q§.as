package §`"§
{
   import §!T§.§'2§;
   import §9!?§.§>!C§;
   import §9!?§.§^]§;
   import §<-§.Texture;
   import §<k§.§"!=§;
   import §<k§.Sprite;
   import §[n§.§#H§;
   import §[n§.§2!9§;
   import §[n§.§7!@§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §'q§
   {
      
      public static const §3P§:Number = 1000;
      
      public static const §5N§:Number = 500;
      
      private static var §,]§:Array = null;
       
      
      private var §-;§:§"e§;
      
      public var §7! §:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §6F§:Number;
      
      public var §%L§:Number;
      
      public var §>!$§:int = -1;
      
      private var §!n§:String;
      
      private var §"!+§:§2!9§;
      
      private var §<S§:§2!9§;
      
      private var §]D§:§"!=§;
      
      private var §5S§:Number = 0;
      
      private var §6z§:Number = 0;
      
      public var §'%§:int = -1;
      
      private var §7K§:int = -1;
      
      private var §4S§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var § !C§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §^x§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §[s§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §"!6§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §4"§:String = "fly";
      
      public var §9!#§:String = "fly_yell";
      
      public var §8!B§:GlowFilter;
      
      private var §4@§:Vector.<§>!C§>;
      
      private var § f§:§2!9§;
      
      private var §8!!§:Sprite = null;
      
      private var §]!9§:§^]§;
      
      public function §'q§(param1:§"e§, param2:Sprite, param3:§^]§)
      {
         super();
         this.§]!9§ = param3;
         this.§-;§ = param1;
         this.§!n§ = this.§-;§.§"]§;
         this.§4@§ = new Vector.<§>!C§>();
         this.§8!!§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>!C§ = null;
         this.§9^§();
         if(this.§4@§)
         {
            while(this.§4@§.length > 0)
            {
               _loc1_ = this.§4@§.pop();
               _loc1_.dispose();
            }
            this.§4@§ = null;
         }
      }
      
      public function §-B§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§>!$§ = param1;
         this.§%L§ = param2;
         this.§=S§();
      }
      
      public function § =§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6F§ = 1;
            return;
         }
         this.§6F§ = this.mW / this.mH;
         if(this.§6F§ < 1)
         {
            this.§6F§ = 1 / this.§6F§;
         }
         this.§6F§ = Math.min(11,this.§6F§);
      }
      
      public function §">§(param1:§7!@§) : Boolean
      {
         var _loc2_:§#H§ = null;
         var _loc3_:Texture = null;
         if(this.§-;§.isGround())
         {
            return false;
         }
         this.§ f§ = param1.§ E§("SPARKLES");
         this.§"!+§ = param1.§ E§(this.§!n§);
         this.§<S§ = this.§"!+§;
         var _loc4_:Number = 1;
         if(this.§<S§)
         {
            _loc2_ = this.§<S§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§]!9§.textureManager.§>e§();
         }
         this.§]D§ = new §"!=§(_loc3_);
         if(_loc2_)
         {
            this.§]D§.x = -_loc2_.pivotX;
            this.§]D§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§]D§.x = -this.§]D§.width / 2;
            this.§]D§.y = -this.§]D§.height / 2;
         }
         this.§]D§.scaleX = _loc4_;
         this.§]D§.scaleY = _loc4_;
         this.mW = this.§]D§.width / 2;
         this.mH = this.§]D§.height / 2;
         this.§8!!§.addChild(this.§]D§);
         return true;
      }
      
      public function §8D§(param1:§'2§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§]!3§)
         {
            case §'2§.§?O§:
               _loc2_ = param1.§ !?§();
               _loc3_ = _loc2_[0];
               this.§5S§ = _loc3_.x / §^]§.§ u§;
               this.§6z§ = _loc3_.y / §^]§.§ u§;
               break;
            case §'2§.§#!2§:
         }
         this.§0X§();
      }
      
      public function §9!&§() : Array
      {
         return §&d§.§9!&§(null,this.§-;§.§,&§());
      }
      
      public function §+!&§() : Array
      {
         return §&d§.§+!&§(null,this.§-;§.§,&§());
      }
      
      public function §+!=§() : Array
      {
         return §&d§.§+!=§(null);
      }
      
      public function §=S§() : void
      {
      }
      
      public function §!y§(param1:Number) : void
      {
         this.§8!!§.scaleX = this.§8!!§.scaleY = param1;
      }
      
      public function §0X§() : void
      {
         var _loc1_:§#H§ = null;
         if(!this.§"!+§)
         {
            return;
         }
         if(this.§^x§)
         {
            this.§4S§ = 1;
         }
         else if(this.§-;§.getSpecialAnimationProgress() >= 0 && this.§"!+§.getSubAnimation(this.§ !C§))
         {
            this.§<S§ = this.§"!+§.getSubAnimation(this.§ !C§);
            this.§4S§ = this.§<S§.getFrameCount() * this.§-;§.getSpecialAnimationProgress();
            if(this.§4S§ == this.§<S§.getFrameCount() - 1 && this.§-;§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§4S§;
            }
         }
         else if(this.mTryToSpecial && this.§"!+§.getSubAnimation(this.§ !C§))
         {
            this.§<S§ = this.§"!+§.getSubAnimation(this.§ !C§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§"!+§.getSubAnimation(this.§9!#§))
         {
            this.§<S§ = this.§"!+§.getSubAnimation(this.§9!#§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§"!+§.getSubAnimation(this.§[s§))
         {
            this.§<S§ = this.§"!+§.getSubAnimation(this.§[s§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§"!+§.getSubAnimation(this.§"!6§))
         {
            this.§<S§ = this.§"!+§.getSubAnimation(this.§"!6§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§"!+§.getSubAnimation(this.§4"§))
         {
            this.§<S§ = this.§"!+§.getSubAnimation(this.§4"§);
            this.mIsFlying = true;
         }
         else
         {
            this.§<S§ = this.§"!+§;
         }
         if(this.§<S§)
         {
            _loc1_ = this.§<S§.getFrame(this.§4S§);
            if(this.§]D§ && _loc1_)
            {
               this.§]D§.texture = _loc1_.texture;
               this.§]D§.x = -_loc1_.pivotX - this.§5S§;
               this.§]D§.y = -_loc1_.pivotY - this.§6z§;
               this.§]D§.scaleX = _loc1_.scale;
               this.§]D§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §33§() : void
      {
         this.§8!!§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§'%§ < 0)
         {
            this.§5h§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§-;§.§`h§ / this.§-;§.§'R§) * this.§'%§;
         if(_loc1_ != this.§7K§)
         {
            this.§7K§ = _loc1_;
            this.§4S§ = this.§7K§;
            this.§0X§();
         }
      }
      
      public function §5h§() : void
      {
         if(this.§"!+§)
         {
            this.§'%§ = this.§"!+§.getFrameCount();
         }
      }
      
      public function §1!%§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§8!B§ = new GlowFilter();
         this.§8!B§.blurX = param2;
         this.§8!B§.blurY = param3;
         this.§8!B§.color = param1;
      }
      
      public function §9^§() : void
      {
         this.§8!B§ = null;
      }
      
      public function §<o§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§-;§.§7V§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§!#§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §[`§(param1:Number) : void
      {
         var _loc2_:int = this.§4@§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§4@§[_loc2_].updateLifeTime(param1);
            if(this.§4@§[_loc2_].lifeTime < 0)
            {
               this.§!#§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §!#§(param1:int) : void
      {
         if(!this.§ f§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§#H§ = this.§ f§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§>!C§ = null;
         if(param1 < this.§4@§.length)
         {
            (_loc5_ = this.§4@§[param1]).§+Q§(_loc4_);
            _loc5_.§ true§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §>!C§(_loc3_.texture,_loc4_);
            this.§4@§.push(_loc5_);
            this.§8!!§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§]D§.width / 2 + Math.random() * this.§]D§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§]D§.height / 2 + Math.random() * this.§]D§.height;
      }
      
      public function §28§() : §"!=§
      {
         return this.§]D§;
      }
   }
}
