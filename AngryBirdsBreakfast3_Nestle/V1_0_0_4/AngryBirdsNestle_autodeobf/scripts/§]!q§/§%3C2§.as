package §]!q§
{
   import §-!f§.DisplayObject;
   import §-!f§.Sprite;
   import §0I§.§!!p§;
   import §5!7§.§2!E§;
   import §5!7§.§[2§;
   import §6_§.§6k§;
   
   public class §<2§
   {
       
      
      protected var §'!j§:Number;
      
      protected var §0!&§:Number;
      
      protected var §!y§:Number;
      
      protected var §?!@§:Number;
      
      protected var §>@§:int = -1;
      
      protected var §?!W§:§6k§;
      
      protected var §&!u§:§6k§;
      
      protected var §!!2§:§6k§;
      
      protected var § y§:int;
      
      protected var §9"§:Number = 0.0;
      
      protected var §^I§:DisplayObject;
      
      protected var §,S§:Sprite;
      
      protected var §<!q§:Number = 0;
      
      protected var §<!b§:Number = 0;
      
      protected var §7!g§:Number = 0.0;
      
      protected var §]!c§:Sprite = null;
      
      protected var §3t§:Boolean = false;
      
      protected var §0!Q§:Boolean = false;
      
      public function §<2§(param1:§6k§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§?!W§ = param1;
         this.§]!c§ = param2;
         this.§0!Q§ = param3;
         if(this.§0!Q§)
         {
            this.§]!c§.scaleX = -this.§]!c§.scaleX;
         }
         this.§'N§();
      }
      
      public function get width() : Number
      {
         return this.§'!j§;
      }
      
      public function get height() : Number
      {
         return this.§0!&§;
      }
      
      public function get §<1§() : Number
      {
         return this.§!y§;
      }
      
      protected function §'N§() : void
      {
         if(this.§?!W§)
         {
            this.§&!u§ = this.§?!W§.getSubAnimation(§,[§.§0h§);
         }
         if(!this.§&!u§)
         {
            this.§&!u§ = this.§?!W§;
         }
         this.setDamageState(0);
         this.§,"5§(0);
         if(this.§!!2§)
         {
            this.§^I§ = this.§!!2§.getFrameWithOffset(0,this.§^I§);
            if(!this.§^I§)
            {
               return;
            }
            this.§'!j§ = this.§^I§.width;
            this.§0!&§ = this.§^I§.height;
            if(this.§,S§)
            {
               this.§,S§.addChild(this.§^I§);
               this.§]!c§.addChild(this.§,S§);
            }
            else
            {
               this.§]!c§.addChild(this.§^I§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§?!W§ || this.§&!u§ && this.§&!u§.name == param1)
         {
            return;
         }
         this.§&!u§ = this.§?!W§.getSubAnimation(param1);
         this.§3t§ = true;
         this.setDamageState(this.§9"§,param2);
      }
      
      protected function §@t§(param1:Boolean) : void
      {
         this.§7!g§ = 0;
         if(param1 && this.§!!2§)
         {
            this.§7!g§ = Math.random() * this.§!!2§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§]!c§ = null;
      }
      
      public function §2-§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§]!c§.addChild(param1);
         }
         else
         {
            this.§]!c§.addChildAt(param1,0);
         }
      }
      
      public function §8! §(param1:DisplayObject) : void
      {
         if(this.§]!c§ && param1.parent == this.§]!c§)
         {
            this.§]!c§.removeChild(param1);
         }
      }
      
      public function §^%§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§!y§ = 1;
            return;
         }
         this.§!y§ = this.§'!j§ / this.§0!&§;
         if(this.§!y§ < 1)
         {
            this.§!y§ = 1 / this.§!y§;
         }
         this.§!y§ = Math.min(11,this.§!y§);
      }
      
      public function §`r§(param1:§[2§) : void
      {
         var _loc2_:§2!E§ = null;
         if(param1 is §2!E§)
         {
            _loc2_ = §2!E§(param1);
            this.§<!q§ = -_loc2_.§!!L§.x / §!!p§.§6L§;
            this.§<!b§ = -_loc2_.§!!L§.y / §!!p§.§6L§;
            if(this.§^I§)
            {
               this.§^I§.x = this.§<!q§;
               this.§^I§.y = this.§<!b§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§]!c§.scaleX = param1;
         this.§]!c§.scaleY = param1;
         if(this.§0!Q§)
         {
            this.§]!c§.scaleX = -param1;
         }
      }
      
      protected function §6!u§() : void
      {
      }
      
      public function get §[8§() : Number
      {
         if(this.§!!2§)
         {
            return this.§!!2§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§?!W§)
         {
            return;
         }
         this.§7!g§ += param1;
         if(this.§7!g§ >= this.§!!2§.animationLengthMilliSeconds)
         {
            this.§7!g§ -= this.§!!2§.animationLengthMilliSeconds;
            this.§6!u§();
         }
         if(this.§3t§ || this.§!!2§.frameCount > 1)
         {
            this.§3t§ = false;
            if(this.§!!2§)
            {
               this.§^I§ = this.§!!2§.getFrameWithOffset(this.§7!g§,this.§^I§);
               this.§^I§.x = this.§<!q§;
               this.§^I§.y = this.§<!b§;
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§9"§ = param1;
         if(this.§&!u§)
         {
            _loc3_ = this.§&!u§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§ y§;
            this.§,"5§(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function §,"5§(param1:int, param2:Boolean = true) : void
      {
         if(!this.§&!u§)
         {
            return;
         }
         var _loc3_:§6k§ = this.§!!2§;
         var _loc4_:int = this.§&!u§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§ y§ != param1)
            {
               this.§ y§ = param1;
               this.§3t§ = true;
            }
            this.§!!2§ = this.§&!u§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.§,"5§(0,param2);
               return;
            }
            this.§!!2§ = this.§&!u§;
         }
         if(this.§!!2§ != _loc3_)
         {
            if(param2)
            {
               this.§7!g§ = Math.random() * this.§!!2§.animationLengthMilliSeconds;
            }
            else
            {
               this.§7!g§ = 0;
            }
         }
      }
   }
}
