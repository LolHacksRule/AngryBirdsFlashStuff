package §7P§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §2"Y§.§?#Q§;
   import §2"Y§.§?#^§;
   import §7!F§.§>"G§;
   import §^#>§.§#_§;
   
   public class §,D§
   {
       
      
      protected var §8">§:Number;
      
      protected var §2"4§:Number;
      
      protected var §,#B§:Number;
      
      protected var §]H§:Number;
      
      protected var §7"t§:int = -1;
      
      protected var §]!`§:§>"G§;
      
      protected var §##+§:§>"G§;
      
      protected var §6#%§:§>"G§;
      
      protected var §!"]§:int;
      
      protected var §;z§:Number = 0.0;
      
      protected var §&![§:DisplayObject;
      
      protected var §&!!§:Sprite;
      
      protected var §,B§:Number = 0;
      
      protected var §38§:Number = 0;
      
      protected var §0#M§:Number = 0.0;
      
      protected var §%G§:Sprite = null;
      
      protected var §&+§:Boolean = false;
      
      protected var §%!w§:Boolean = false;
      
      public function §,D§(param1:§>"G§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§]!`§ = param1;
         this.§%G§ = param2;
         this.§%!w§ = param3;
         if(this.§%!w§)
         {
            this.§%G§.scaleX = -this.§%G§.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.§8">§;
      }
      
      public function get height() : Number
      {
         return this.§2"4§;
      }
      
      public function get §^l§() : Number
      {
         return this.§,#B§;
      }
      
      protected function initializeImage() : void
      {
         if(this.§]!`§)
         {
            this.§##+§ = this.§]!`§.getSubAnimation(§&#=§.§'%§);
         }
         if(!this.§##+§)
         {
            this.§##+§ = this.§]!`§;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.§6#%§)
         {
            this.§&![§ = this.§6#%§.getFrameWithOffset(0,this.§&![§);
            if(!this.§&![§)
            {
               return;
            }
            this.§8">§ = this.§&![§.width;
            this.§2"4§ = this.§&![§.height;
            if(this.§&!!§)
            {
               this.§&!!§.addChild(this.§&![§);
               this.§%G§.addChild(this.§&!!§);
            }
            else
            {
               this.§%G§.addChild(this.§&![§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§]!`§ || this.§##+§ && this.§##+§.name == param1)
         {
            return;
         }
         this.§##+§ = this.§]!`§.getSubAnimation(param1);
         this.§&+§ = true;
         this.setDamageState(this.§;z§,param2);
      }
      
      protected function §'!!§(param1:Boolean) : void
      {
         this.§0#M§ = 0;
         if(param1 && this.§6#%§)
         {
            this.§0#M§ = Math.random() * this.§6#%§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§%G§ = null;
      }
      
      public function §5<§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§%G§.addChild(param1);
         }
         else
         {
            this.§%G§.addChildAt(param1,0);
         }
      }
      
      public function §8#%§(param1:DisplayObject) : void
      {
         if(this.§%G§ && param1.parent == this.§%G§)
         {
            this.§%G§.removeChild(param1);
         }
      }
      
      public function §<!X§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§,#B§ = 1;
            return;
         }
         this.§,#B§ = this.§8">§ / this.§2"4§;
         if(this.§,#B§ < 1)
         {
            this.§,#B§ = 1 / this.§,#B§;
         }
         this.§,#B§ = Math.min(11,this.§,#B§);
      }
      
      public function §5!s§(param1:§?#^§) : void
      {
         var _loc2_:§?#Q§ = null;
         if(param1 is §?#Q§)
         {
            _loc2_ = §?#Q§(param1);
            this.§,B§ = -_loc2_.§`!`§.x / §#_§.§8]§;
            this.§38§ = -_loc2_.§`!`§.y / §#_§.§8]§;
            if(this.§&![§)
            {
               this.§&![§.x = this.§,B§;
               this.§&![§.y = this.§38§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§%G§.scaleX = param1;
         this.§%G§.scaleY = param1;
         if(this.§%!w§)
         {
            this.§%G§.scaleX = -param1;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§%G§)
         {
            this.§%G§.color = param1;
         }
      }
      
      protected function handleAnimationEnd() : void
      {
      }
      
      public function get currentAnimationLengthMilliSeconds() : Number
      {
         if(this.§6#%§)
         {
            return this.§6#%§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§]!`§)
         {
            return;
         }
         this.§0#M§ += param1;
         if(this.§0#M§ >= this.§6#%§.animationLengthMilliSeconds)
         {
            this.§0#M§ -= this.§6#%§.animationLengthMilliSeconds;
            this.handleAnimationEnd();
         }
         if(this.§&+§ || this.§6#%§.frameCount > 1)
         {
            this.§&+§ = false;
            if(this.§6#%§ && this.§&![§)
            {
               this.§&![§ = this.§6#%§.getFrameWithOffset(this.§0#M§,this.§&![§);
               if(this.§&![§)
               {
                  this.§&![§.x = this.§,B§;
                  this.§&![§.y = this.§38§;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§;z§ = param1;
         if(this.§##+§)
         {
            _loc3_ = this.§##+§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§!"]§;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         if(!this.§##+§)
         {
            return;
         }
         var _loc3_:§>"G§ = this.§6#%§;
         var _loc4_:int = this.§##+§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§!"]§ != param1)
            {
               this.§!"]§ = param1;
               this.§&+§ = true;
            }
            this.§6#%§ = this.§##+§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.§6#%§ = this.§##+§;
         }
         if(this.§6#%§ != _loc3_)
         {
            if(param2)
            {
               this.§0#M§ = Math.random() * this.§6#%§.animationLengthMilliSeconds;
            }
            else
            {
               this.§0#M§ = 0;
            }
         }
      }
      
      public function getCurrentAnimationName() : String
      {
         if(!this.§]!`§)
         {
            return "none";
         }
         return this.§]!`§.name;
      }
   }
}
