package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§"a§;
   import §&v§.§each §;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import §@L§.§?!'§;
   
   public class §%!@§
   {
       
      
      protected var §0=§:Number;
      
      protected var §1$§:Number;
      
      protected var §-!4§:Number;
      
      protected var §@=§:Number;
      
      protected var §@!L§:int = -1;
      
      protected var §"!b§:§5!v§;
      
      protected var §;"#§:§5!v§;
      
      protected var §<§:§5!v§;
      
      protected var §-H§:int;
      
      protected var § e§:Number = 0.0;
      
      protected var §;i§:DisplayObject;
      
      protected var §+!d§:Sprite;
      
      protected var § i§:Number = 0;
      
      protected var §>K§:Number = 0;
      
      protected var §&h§:Number = 0.0;
      
      protected var §#e§:Sprite = null;
      
      protected var §3"#§:Boolean = false;
      
      protected var §"! §:Boolean = false;
      
      public function §%!@§(param1:§5!v§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§"!b§ = param1;
         this.§#e§ = param2;
         this.§"! § = param3;
         if(this.§"! §)
         {
            this.§#e§.scaleX = -this.§#e§.scaleX;
         }
         this.§,X§();
      }
      
      public function get width() : Number
      {
         return this.§0=§;
      }
      
      public function get height() : Number
      {
         return this.§1$§;
      }
      
      public function get §^Q§() : Number
      {
         return this.§-!4§;
      }
      
      protected function §,X§() : void
      {
         if(this.§"!b§)
         {
            this.§;"#§ = this.§"!b§.getSubAnimation(§"_§.§=!4§);
         }
         if(!this.§;"#§)
         {
            this.§;"#§ = this.§"!b§;
         }
         this.setDamageState(0);
         this.§&!=§(0);
         if(this.§<§)
         {
            this.§;i§ = this.§<§.getFrameWithOffset(0,this.§;i§);
            if(!this.§;i§)
            {
               return;
            }
            this.§0=§ = this.§;i§.width;
            this.§1$§ = this.§;i§.height;
            if(this.§+!d§)
            {
               this.§+!d§.addChild(this.§;i§);
               this.§#e§.addChild(this.§+!d§);
            }
            else
            {
               this.§#e§.addChild(this.§;i§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§"!b§ || this.§;"#§ && this.§;"#§.name == param1)
         {
            return;
         }
         this.§;"#§ = this.§"!b§.getSubAnimation(param1);
         this.§3"#§ = true;
         this.setDamageState(this.§ e§,param2);
      }
      
      protected function §2!]§(param1:Boolean) : void
      {
         this.§&h§ = 0;
         if(param1 && this.§<§)
         {
            this.§&h§ = Math.random() * this.§<§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§#e§ = null;
      }
      
      public function §4y§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§#e§.addChild(param1);
         }
         else
         {
            this.§#e§.addChildAt(param1,0);
         }
      }
      
      public function §3R§(param1:DisplayObject) : void
      {
         if(this.§#e§ && param1.parent == this.§#e§)
         {
            this.§#e§.removeChild(param1);
         }
      }
      
      public function §]!D§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§-!4§ = 1;
            return;
         }
         this.§-!4§ = this.§0=§ / this.§1$§;
         if(this.§-!4§ < 1)
         {
            this.§-!4§ = 1 / this.§-!4§;
         }
         this.§-!4§ = Math.min(11,this.§-!4§);
      }
      
      public function §'@§(param1:§each §) : void
      {
         var _loc2_:§"a§ = null;
         if(param1 is §"a§)
         {
            _loc2_ = §"a§(param1);
            this.§ i§ = -_loc2_.§0V§.x / §?!'§.§'!i§;
            this.§>K§ = -_loc2_.§0V§.y / §?!'§.§'!i§;
            if(this.§;i§)
            {
               this.§;i§.x = this.§ i§;
               this.§;i§.y = this.§>K§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§#e§.scaleX = param1;
         this.§#e§.scaleY = param1;
         if(this.§"! §)
         {
            this.§#e§.scaleX = -param1;
         }
      }
      
      protected function §&c§() : void
      {
      }
      
      public function get §0_§() : Number
      {
         if(this.§<§)
         {
            return this.§<§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§"!b§)
         {
            return;
         }
         this.§&h§ += param1;
         if(this.§&h§ >= this.§<§.animationLengthMilliSeconds)
         {
            this.§&h§ -= this.§<§.animationLengthMilliSeconds;
            this.§&c§();
         }
         if(this.§3"#§ || this.§<§.frameCount > 1)
         {
            this.§3"#§ = false;
            if(this.§<§ && this.§;i§)
            {
               this.§;i§ = this.§<§.getFrameWithOffset(this.§&h§,this.§;i§);
               if(this.§;i§)
               {
                  this.§;i§.x = this.§ i§;
                  this.§;i§.y = this.§>K§;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§ e§ = param1;
         if(this.§;"#§)
         {
            _loc3_ = this.§;"#§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§-H§;
            this.§&!=§(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function §&!=§(param1:int, param2:Boolean = true) : void
      {
         if(!this.§;"#§)
         {
            return;
         }
         var _loc3_:§5!v§ = this.§<§;
         var _loc4_:int = this.§;"#§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§-H§ != param1)
            {
               this.§-H§ = param1;
               this.§3"#§ = true;
            }
            this.§<§ = this.§;"#§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.§&!=§(0,param2);
               return;
            }
            this.§<§ = this.§;"#§;
         }
         if(this.§<§ != _loc3_)
         {
            if(param2)
            {
               this.§&h§ = Math.random() * this.§<§.animationLengthMilliSeconds;
            }
            else
            {
               this.§&h§ = 0;
            }
         }
      }
      
      public function §?S§() : String
      {
         if(!this.§"!b§)
         {
            return "none";
         }
         return this.§"!b§.name;
      }
   }
}
