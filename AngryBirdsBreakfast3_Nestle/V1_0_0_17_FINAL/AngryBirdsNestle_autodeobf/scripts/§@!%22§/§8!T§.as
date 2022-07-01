package §@!"§
{
   import §%8§.§%!S§;
   import §%8§.§[_§;
   import §2`§.§;!Q§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   import §@V§.§#=§;
   
   public class §8!T§
   {
       
      
      protected var §3!t§:Number;
      
      protected var §^!i§:Number;
      
      protected var §0#§:Number;
      
      protected var §[#§:Number;
      
      protected var §0!S§:int = -1;
      
      protected var §@!5§:§;!Q§;
      
      protected var §9?§:§;!Q§;
      
      protected var §#!z§:§;!Q§;
      
      protected var §<C§:int;
      
      protected var §@!7§:Number = 0.0;
      
      protected var §@!d§:DisplayObject;
      
      protected var §@B§:Sprite;
      
      protected var §[;§:Number = 0;
      
      protected var §`!l§:Number = 0;
      
      protected var §]!N§:Number = 0.0;
      
      protected var §&%§:Sprite = null;
      
      protected var §3q§:Boolean = false;
      
      protected var §[!"§:Boolean = false;
      
      public function §8!T§(param1:§;!Q§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§@!5§ = param1;
         this.§&%§ = param2;
         this.§[!"§ = param3;
         if(this.§[!"§)
         {
            this.§&%§.scaleX = -this.§&%§.scaleX;
         }
         this.§2!>§();
      }
      
      public function get width() : Number
      {
         return this.§3!t§;
      }
      
      public function get height() : Number
      {
         return this.§^!i§;
      }
      
      public function get §@!l§() : Number
      {
         return this.§0#§;
      }
      
      protected function §2!>§() : void
      {
         if(this.§@!5§)
         {
            this.§9?§ = this.§@!5§.getSubAnimation(§@_§.§&P§);
         }
         if(!this.§9?§)
         {
            this.§9?§ = this.§@!5§;
         }
         this.setDamageState(0);
         this.§>#§(0);
         if(this.§#!z§)
         {
            this.§@!d§ = this.§#!z§.getFrameWithOffset(0,this.§@!d§);
            if(!this.§@!d§)
            {
               return;
            }
            this.§3!t§ = this.§@!d§.width;
            this.§^!i§ = this.§@!d§.height;
            if(this.§@B§)
            {
               this.§@B§.addChild(this.§@!d§);
               this.§&%§.addChild(this.§@B§);
            }
            else
            {
               this.§&%§.addChild(this.§@!d§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§@!5§ || this.§9?§ && this.§9?§.name == param1)
         {
            return;
         }
         this.§9?§ = this.§@!5§.getSubAnimation(param1);
         this.§3q§ = true;
         this.setDamageState(this.§@!7§,param2);
      }
      
      protected function §"!V§(param1:Boolean) : void
      {
         this.§]!N§ = 0;
         if(param1 && this.§#!z§)
         {
            this.§]!N§ = Math.random() * this.§#!z§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§&%§ = null;
      }
      
      public function §7V§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§&%§.addChild(param1);
         }
         else
         {
            this.§&%§.addChildAt(param1,0);
         }
      }
      
      public function §&"'§(param1:DisplayObject) : void
      {
         if(this.§&%§ && param1.parent == this.§&%§)
         {
            this.§&%§.removeChild(param1);
         }
      }
      
      public function §!!c§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0#§ = 1;
            return;
         }
         this.§0#§ = this.§3!t§ / this.§^!i§;
         if(this.§0#§ < 1)
         {
            this.§0#§ = 1 / this.§0#§;
         }
         this.§0#§ = Math.min(11,this.§0#§);
      }
      
      public function §'+§(param1:§[_§) : void
      {
         var _loc2_:§%!S§ = null;
         if(param1 is §%!S§)
         {
            _loc2_ = §%!S§(param1);
            this.§[;§ = -_loc2_.§-x§.x / §#=§.§^!2§;
            this.§`!l§ = -_loc2_.§-x§.y / §#=§.§^!2§;
            if(this.§@!d§)
            {
               this.§@!d§.x = this.§[;§;
               this.§@!d§.y = this.§`!l§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§&%§.scaleX = param1;
         this.§&%§.scaleY = param1;
         if(this.§[!"§)
         {
            this.§&%§.scaleX = -param1;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§&%§)
         {
            this.§&%§.color = param1;
         }
      }
      
      protected function §<!k§() : void
      {
      }
      
      public function get §"!"§() : Number
      {
         if(this.§#!z§)
         {
            return this.§#!z§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§@!5§)
         {
            return;
         }
         this.§]!N§ += param1;
         if(this.§]!N§ >= this.§#!z§.animationLengthMilliSeconds)
         {
            this.§]!N§ -= this.§#!z§.animationLengthMilliSeconds;
            this.§<!k§();
         }
         if(this.§3q§ || this.§#!z§.frameCount > 1)
         {
            this.§3q§ = false;
            if(this.§#!z§ && this.§@!d§)
            {
               this.§@!d§ = this.§#!z§.getFrameWithOffset(this.§]!N§,this.§@!d§);
               if(this.§@!d§)
               {
                  this.§@!d§.x = this.§[;§;
                  this.§@!d§.y = this.§`!l§;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§@!7§ = param1;
         if(this.§9?§)
         {
            _loc3_ = this.§9?§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§<C§;
            this.§>#§(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function §>#§(param1:int, param2:Boolean = true) : void
      {
         if(!this.§9?§)
         {
            return;
         }
         var _loc3_:§;!Q§ = this.§#!z§;
         var _loc4_:int = this.§9?§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§<C§ != param1)
            {
               this.§<C§ = param1;
               this.§3q§ = true;
            }
            this.§#!z§ = this.§9?§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.§>#§(0,param2);
               return;
            }
            this.§#!z§ = this.§9?§;
         }
         if(this.§#!z§ != _loc3_)
         {
            if(param2)
            {
               this.§]!N§ = Math.random() * this.§#!z§.animationLengthMilliSeconds;
            }
            else
            {
               this.§]!N§ = 0;
            }
         }
      }
      
      public function §[!P§() : String
      {
         if(!this.§@!5§)
         {
            return "none";
         }
         return this.§@!5§.name;
      }
   }
}
