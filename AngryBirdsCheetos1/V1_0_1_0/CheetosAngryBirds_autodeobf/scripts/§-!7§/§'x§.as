package §-!7§
{
   import §2!-§.Texture;
   import §4W§.§2f§;
   import §4W§.§3!@§;
   import §4W§.§>c§;
   import §9"§.b2Vec2;
   import §9N§.§9!%§;
   import §9N§.§>!%§;
   import §?7§.§!S§;
   import §`a§.§>?§;
   import §`a§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §'x§
   {
      
      public static const § H§:Number = 1000;
      
      public static const §@x§:Number = 500;
      
      private static var §`q§:Array = null;
       
      
      private var § 7§:§@m§;
      
      public var §2!E§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §#i§:Number;
      
      public var §^0§:Number;
      
      public var §5$§:int = -1;
      
      private var §5!K§:String;
      
      private var §]3§:§2f§;
      
      private var §`!Q§:§2f§;
      
      private var §<^§:§>?§;
      
      private var §]e§:Number = 0;
      
      private var §0h§:Number = 0;
      
      public var §+!1§:int = -1;
      
      private var §^Q§:int = -1;
      
      private var §=W§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §6!S§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §+l§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §&!8§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §^!"§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §7y§:String = "fly";
      
      public var §<5§:String = "fly_yell";
      
      public var §6?§:GlowFilter;
      
      private var §^i§:Vector.<§>!%§>;
      
      private var §"e§:§2f§;
      
      private var §9!A§:Sprite = null;
      
      private var §8@§:§9!%§;
      
      public function §'x§(param1:§@m§, param2:Sprite, param3:§9!%§)
      {
         super();
         this.§8@§ = param3;
         this.§ 7§ = param1;
         this.§5!K§ = this.§ 7§.§ h§;
         this.§^i§ = new Vector.<§>!%§>();
         this.§9!A§ = param2;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>!%§ = null;
         this.§!!S§();
         if(this.§^i§)
         {
            while(this.§^i§.length > 0)
            {
               _loc1_ = this.§^i§.pop();
               _loc1_.dispose();
            }
            this.§^i§ = null;
         }
      }
      
      public function §?!7§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.mW = param3;
         this.mH = param4;
         this.§5$§ = param1;
         this.§^0§ = param2;
         this.§]!&§();
      }
      
      public function §;D§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#i§ = 1;
            return;
         }
         this.§#i§ = this.mW / this.mH;
         if(this.§#i§ < 1)
         {
            this.§#i§ = 1 / this.§#i§;
         }
         this.§#i§ = Math.min(11,this.§#i§);
      }
      
      public function §#?§(param1:§3!@§) : Boolean
      {
         var _loc2_:§>c§ = null;
         var _loc3_:Texture = null;
         if(this.§ 7§.isGround())
         {
            return false;
         }
         this.§"e§ = param1.§2!'§("SPARKLES");
         this.§]3§ = param1.§2!'§(this.§5!K§);
         this.§`!Q§ = this.§]3§;
         var _loc4_:Number = 1;
         if(this.§`!Q§)
         {
            _loc2_ = this.§`!Q§.getFrame(0);
            _loc4_ = _loc2_.scale;
            _loc3_ = _loc2_.texture;
         }
         else
         {
            _loc3_ = this.§8@§.§#G§.§83§();
         }
         this.§<^§ = new §>?§(_loc3_);
         if(_loc2_)
         {
            this.§<^§.x = -_loc2_.pivotX;
            this.§<^§.y = -_loc2_.pivotY;
         }
         else
         {
            this.§<^§.x = -this.§<^§.width / 2;
            this.§<^§.y = -this.§<^§.height / 2;
         }
         this.§<^§.scaleX = _loc4_;
         this.§<^§.scaleY = _loc4_;
         this.mW = this.§<^§.width / 2;
         this.mH = this.§<^§.height / 2;
         this.§9!A§.addChild(this.§<^§);
         return true;
      }
      
      public function §%!W§(param1:§!S§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         switch(param1.§>!B§)
         {
            case §!S§.§=§:
               _loc2_ = param1.§-w§();
               _loc3_ = _loc2_[0];
               this.§]e§ = _loc3_.x / §9!%§.§catch§;
               this.§0h§ = _loc3_.y / §9!%§.§catch§;
               break;
            case §!S§.§1F§:
         }
         this.§3f§();
      }
      
      public function §53§() : Array
      {
         return §@w§.§53§(null,this.§ 7§.§?!<§());
      }
      
      public function §1!K§() : Array
      {
         return §@w§.§1!K§(null,this.§ 7§.§?!<§());
      }
      
      public function §#C§() : Array
      {
         return §@w§.§#C§(null);
      }
      
      public function §]!&§() : void
      {
      }
      
      public function §;!Q§(param1:Number) : void
      {
         this.§9!A§.scaleX = this.§9!A§.scaleY = param1;
      }
      
      public function §3f§() : void
      {
         var _loc1_:§>c§ = null;
         if(!this.§]3§)
         {
            return;
         }
         if(this.§+l§)
         {
            this.§=W§ = 1;
         }
         else if(this.§ 7§.getSpecialAnimationProgress() >= 0 && this.§]3§.getSubAnimation(this.§6!S§))
         {
            this.§`!Q§ = this.§]3§.getSubAnimation(this.§6!S§);
            this.§=W§ = this.§`!Q§.getFrameCount() * this.§ 7§.getSpecialAnimationProgress();
            if(this.§=W§ == this.§`!Q§.getFrameCount() - 1 && this.§ 7§.getSpecialAnimationTimeLeft() > 100)
            {
               --this.§=W§;
            }
         }
         else if(this.mTryToSpecial && this.§]3§.getSubAnimation(this.§6!S§))
         {
            this.§`!Q§ = this.§]3§.getSubAnimation(this.§6!S§);
            this.mIsSpecial = true;
         }
         else if(this.mTryToScream > 0 && this.mTryToFly > 0 && this.§]3§.getSubAnimation(this.§<5§))
         {
            this.§`!Q§ = this.§]3§.getSubAnimation(this.§<5§);
            this.mIsScreaming = true;
            this.mIsFlying = true;
         }
         else if(this.mTryToScream > 0 && this.§]3§.getSubAnimation(this.§&!8§))
         {
            this.§`!Q§ = this.§]3§.getSubAnimation(this.§&!8§);
            this.mIsScreaming = true;
         }
         else if(this.mTryToBlink > 0 && this.§]3§.getSubAnimation(this.§^!"§))
         {
            this.§`!Q§ = this.§]3§.getSubAnimation(this.§^!"§);
            this.mIsBlinking = true;
         }
         else if(this.mTryToFly && this.§]3§.getSubAnimation(this.§7y§))
         {
            this.§`!Q§ = this.§]3§.getSubAnimation(this.§7y§);
            this.mIsFlying = true;
         }
         else
         {
            this.§`!Q§ = this.§]3§;
         }
         if(this.§`!Q§)
         {
            _loc1_ = this.§`!Q§.getFrame(this.§=W§);
            if(this.§<^§ && _loc1_)
            {
               this.§<^§.texture = _loc1_.texture;
               this.§<^§.x = -_loc1_.pivotX - this.§]e§;
               this.§<^§.y = -_loc1_.pivotY - this.§0h§;
               this.§<^§.scaleX = _loc1_.scale;
               this.§<^§.scaleY = _loc1_.scale;
            }
         }
      }
      
      public function §>s§() : void
      {
         this.§9!A§.visible = false;
      }
      
      public function setDamagedFrame() : void
      {
         if(this.§+!1§ < 0)
         {
            this.§9;§();
         }
         var _loc1_:int = 0;
         _loc1_ = (1 - this.§ 7§.§4^§ / this.§ 7§.§,>§) * this.§+!1§;
         if(_loc1_ != this.§^Q§)
         {
            this.§^Q§ = _loc1_;
            this.§=W§ = this.§^Q§;
            this.§3f§();
         }
      }
      
      public function §9;§() : void
      {
         if(this.§]3§)
         {
            this.§+!1§ = this.§]3§.getFrameCount();
         }
      }
      
      public function §7f§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         this.§6?§ = new GlowFilter();
         this.§6?§.blurX = param2;
         this.§6?§.blurY = param3;
         this.§6?§.color = param1;
      }
      
      public function §!!S§() : void
      {
         this.§6?§ = null;
      }
      
      public function §6!F§() : void
      {
         var _loc1_:int = Math.min(8,Math.max(this.§ 7§.§>!&§(false),1));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§1!&§(_loc2_);
            _loc2_++;
         }
      }
      
      public function §1-§(param1:Number) : void
      {
         var _loc2_:int = this.§^i§.length - 1;
         while(_loc2_ >= 0)
         {
            this.§^i§[_loc2_].updateLifeTime(param1);
            if(this.§^i§[_loc2_].lifeTime < 0)
            {
               this.§1!&§(_loc2_);
            }
            _loc2_--;
         }
      }
      
      private function §1!&§(param1:int) : void
      {
         if(!this.§"e§)
         {
            return;
         }
         var _loc2_:int = 0;
         if(Math.random() < 0.5)
         {
            _loc2_ = 1;
         }
         var _loc3_:§>c§ = this.§"e§.getFrame(_loc2_);
         var _loc4_:Number = 100 + Math.random() * 100;
         var _loc5_:§>!%§ = null;
         if(param1 < this.§^i§.length)
         {
            (_loc5_ = this.§^i§[param1]).§[!J§(_loc4_);
            _loc5_.§1Z§(_loc3_.texture);
         }
         else
         {
            _loc5_ = new §>!%§(_loc3_.texture,_loc4_);
            this.§^i§.push(_loc5_);
            this.§9!A§.addChild(_loc5_.image);
         }
         _loc5_.image.x = -_loc3_.pivotX - this.§<^§.width / 2 + Math.random() * this.§<^§.width;
         _loc5_.image.y = -_loc3_.pivotY - this.§<^§.height / 2 + Math.random() * this.§<^§.height;
      }
      
      public function §7`§() : §>?§
      {
         return this.§<^§;
      }
   }
}
