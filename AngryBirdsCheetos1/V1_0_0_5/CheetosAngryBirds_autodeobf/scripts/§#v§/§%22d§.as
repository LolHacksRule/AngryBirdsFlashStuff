package §#v§
{
   import §!!R§.§#q§;
   import §!!R§.Sprite;
   import §&!W§.§&!$§;
   import §&!W§.§+=§;
   import §&!W§.§2z§;
   import §,B§.§;V§;
   import §2k§.Texture;
   import §=E§.b2Vec2;
   import §?'§.§9N§;
   import §?'§.§]$§;
   import flash.filters.GlowFilter;
   
   public class §"d§
   {
      
      public static const §1!&§:Number = 1000;
      
      public static const §>!G§:Number = 500;
      
      private static var § H§:Array = null;
       
      
      private var §@Z§:§#3§;
      
      public var §0<§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §'x§:Number;
      
      public var §^0§:Number;
      
      public var §#i§:int = -1;
      
      private var §5$§:String;
      
      private var §9!A§:§+=§;
      
      private var §5!K§:§+=§;
      
      private var §]3§:§#q§;
      
      private var §`!Q§:Number = 0;
      
      private var §]e§:Number = 0;
      
      public var §0h§:int = -1;
      
      private var §+!1§:int = -1;
      
      private var §^Q§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §=W§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §6!S§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §+l§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §&!8§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §^!"§:String = "fly";
      
      public var §7y§:String = "fly_yell";
      
      public var §-t§:GlowFilter;
      
      private var §<5§:Vector.<§]$§>;
      
      private var §^i§:§+=§;
      
      private var §=!<§:Sprite = null;
      
      private var §;c§:§9N§;
      
      public function §"d§(param1:§#3§, param2:Sprite, param3:§9N§)
      {
         super();
         this.§;c§ = param3;
         this.§@Z§ = param1;
         this.§5$§ = this.§@Z§.§,!§;
         this.§<5§ = new Vector.<§]$§>();
         this.§=!<§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]$§ = null;
         this.§7f§();
         if(this.§<5§)
         {
            while(this.§<5§.length > 0)
            {
               _loc1_ = this.§<5§.pop();
               _loc1_.dispose();
            }
            this.§<5§ = null;
         }
      }
      
      public function §"e§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§#i§ = param1;
         this.§^0§ = param2;
         this.§#C§();
      }
      
      public function §?!7§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'x§ = 1;
            return;
         }
         this.§'x§ = this.mW / this.mH;
         if(this.§'x§ < 1)
         {
            this.§'x§ = 1 / this.§'x§;
         }
         this.§'x§ = Math.min(11,this.§'x§);
      }
      
      public function § #§(param1:§2z§) : Boolean
      {
         var _loc2_:§&!$§ = null;
         var _loc3_:Texture = null;
         if(this.§@Z§.isGround())
         {
            return false;
         }
         this.§^i§ = param1.§3Z§("SPARKLES");
         this.§9!A§ = param1.§3Z§(this.§5$§);
         this.§5!K§ = this.§9!A§;
         var _loc4_:Number = 1;
         if(this.§5!K§)
         {
            _loc2_ = this.§5!K§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§;c§.§"B§.§=r§();
         }
         this.§]3§ = new §#q§(_loc3_);
         if(_loc2_)
         {
            this.§]3§.x = -_loc2_.pivotX;
            this.§]3§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§]3§.x = -this.§]3§.width / 2;
            this.§]3§.y = -this.§]3§.height / 2;
         }
         this.§]3§.scaleX = _loc4_;
         this.§]3§.scaleY = _loc4_;
         this.mW = this.§]3§.width / 2;
         this.mH = this.§]3§.height / 2;
         this.§=!<§.addChild(this.§]3§);
         return true;
      }
      
      public function §;D§(param1:§;V§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§8!X§)
         {
            case §;V§.§;A§:
               _loc2_ = param1.§5G§();
               _loc3_ = _loc2_[0];
               this.§`!Q§ = _loc3_.x / §9N§.§8!5§;
               this.§]e§ = _loc3_.y / §9N§.§8!5§;
               break;
            case §;V§.§=§:
         }
         this.§;!Q§();
      }
      
      public function §%!W§() : Array
      {
         return §--§.§%!W§(null,this.§@Z§.§?u§());
      }
      
      public function §53§() : Array
      {
         return §--§.§53§(null,this.§@Z§.§?u§());
      }
      
      public function §1!K§() : Array
      {
         return §--§.§1!K§(null);
      }
      
      public function §#C§() : void
      {
      }
      
      public function §]!&§(param1:Number) : void
      {
         this.§=!<§.scaleX = this.§=!<§.scaleY = param1;
      }
      
      public function §;!Q§() : void
      {
         var _loc1_:§&!$§ = null;
         if(!this.§9!A§)
         {
            return;
         }
         if(this.§6!S§)
         {
            this.§^Q§ = 1;
         }
         else if(this.§@Z§.getSpecialAnimationProgress() >= 0 && this.§9!A§.getSubAnimation(this.§=W§))
         {
            this.§5!K§ = this.§9!A§.getSubAnimation(this.§=W§);
            this.§^Q§ = this.§5!K§.getFrameCount() * this.§@Z§.getSpecialAnimationProgress();
            if(this.§^Q§ == this.§5!K§.getFrameCount() - 1 && this.§@Z§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§^Q§;
            }
         }
         else if(this.mTryToSpecial && this.§9!A§.getSubAnimation(this.§=W§))
         {
            this.§5!K§ = this.§9!A§.getSubAnimation(this.§=W§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§9!A§.getSubAnimation(this.§7y§))
         {
            this.§5!K§ = this.§9!A§.getSubAnimation(this.§7y§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§9!A§.getSubAnimation(this.§+l§))
         {
            this.§5!K§ = this.§9!A§.getSubAnimation(this.§+l§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§9!A§.getSubAnimation(this.§&!8§))
         {
            this.§5!K§ = this.§9!A§.getSubAnimation(this.§&!8§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§9!A§.getSubAnimation(this.§^!"§))
         {
            this.§5!K§ = this.§9!A§.getSubAnimation(this.§^!"§);
            this.mIsFlying = true;
         }
         else
         {
            this.§5!K§ = this.§9!A§;
         }
         if(this.§5!K§)
         {
            _loc1_ = this.§5!K§.getFrame(this.§^Q§);
            if(this.§]3§ && _loc1_)
            {
               this.§]3§.texture = _loc1_.texture;
               this.§]3§.x = -_loc1_.pivotX - this.§`!Q§;
               this.§]3§.y = -_loc1_.pivotY - this.§]e§;
               this.§]3§.scaleX = _loc1_.scale;
               this.§]3§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §3f§() : void
      {
         this.§=!<§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§0h§ < 0)
         {
            this.§>s§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§@Z§.§;!A§ / this.§@Z§.§]p§) * this.§0h§;
         if(_loc1_ != this.§+!1§)
         {
            this.§+!1§ = _loc1_;
            this.§^Q§ = this.§+!1§;
            this.§;!Q§();
         }
      }
      
      public function §>s§() : void
      {
         if(this.§9!A§)
         {
            this.§0h§ = this.§9!A§.getFrameCount();
         }
      }
      
      public function §9;§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§-t§ = new GlowFilter();
         this.§-t§.blurX = param2;
         this.§-t§.blurY = param3;
         this.§-t§.color = param1;
      }
      
      public function §7f§() : void
      {
         this.§-t§ = null;
      }
      
      public function §!!S§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§@Z§.§&c§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§1-§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §6!F§(param1:Number) : void
      {
         var _loc2_:int = this.§<5§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§<5§[_loc2_].updateLifeTime(param1);
            if(this.§<5§[_loc2_].lifeTime < 0)
            {
               this.§1-§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §1-§(param1:int) : void
      {
         if(!this.§^i§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§&!$§ = this.§^i§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§]$§ = null;
         if(param1 < this.§<5§.length)
         {
            (_loc5_ = this.§<5§[param1]).§1!!§(_loc4_);
            _loc5_.§[!J§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §]$§(_loc3_.texture,_loc4_);
            this.§<5§.push(_loc5_);
            this.§=!<§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§]3§.width / 2 + Math.random() * this.§]3§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§]3§.height / 2 + Math.random() * this.§]3§.height;
      }
      
      public function §7c§() : §#q§
      {
         return this.§]3§;
      }
   }
}
