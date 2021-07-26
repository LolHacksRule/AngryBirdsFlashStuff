package §;!=§
{
   import §#g§.§8§;
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§46§;
   import §8#K§.§=$'§;
   
   public class §1!"§
   {
       
      
      protected var §6"<§:Number;
      
      protected var §3$4§:Number;
      
      protected var §6"t§:Number;
      
      protected var §?$D§:Number;
      
      protected var §>!`§:int = -1;
      
      protected var §#"T§:§7b§;
      
      protected var §1d§:§7b§;
      
      protected var §9#b§:§7b§;
      
      protected var §3]§:int;
      
      protected var §2J§:Number = 0.0;
      
      protected var §6"z§:DisplayObject;
      
      protected var §9#C§:Sprite;
      
      protected var §,!A§:Number = 0;
      
      protected var §]#S§:Number = 0;
      
      protected var §;!P§:Number = 0.0;
      
      protected var §&"h§:Sprite = null;
      
      protected var §[m§:Boolean = false;
      
      protected var §9!q§:Boolean = false;
      
      protected var §@#q§:§^9§;
      
      public function §1!"§(param1:§7b§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§#"T§ = param1;
         this.§&"h§ = param2;
         this.§9!q§ = param3;
         if(this.§9!q§)
         {
            this.§&"h§.scaleX = -this.§&"h§.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.§6"<§;
      }
      
      public function get height() : Number
      {
         return this.§3$4§;
      }
      
      public function get §<#Z§() : Number
      {
         return this.§6"t§;
      }
      
      public function set §1#P§(param1:§^9§) : void
      {
         this.§@#q§ = param1;
      }
      
      protected function initializeImage() : void
      {
         if(this.§#"T§)
         {
            this.§1d§ = this.§#"T§.getSubAnimation(§>"G§.§+$=§);
         }
         if(!this.§1d§)
         {
            this.§1d§ = this.§#"T§;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.§9#b§)
         {
            this.§6"z§ = this.§9#b§.getFrameWithOffset(0,this.§6"z§);
            if(!this.§6"z§)
            {
               return;
            }
            this.§6"<§ = this.§6"z§.width;
            this.§3$4§ = this.§6"z§.height;
            if(this.§9#C§)
            {
               this.§9#C§.addChild(this.§6"z§);
               this.§&"h§.addChild(this.§9#C§);
            }
            else
            {
               this.§&"h§.addChild(this.§6"z§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§#"T§ || this.§1d§ && this.§1d§.name == param1)
         {
            return;
         }
         this.§1d§ = this.§#"T§.getSubAnimation(param1);
         this.§[m§ = true;
         this.setDamageState(this.§2J§,param2);
      }
      
      protected function §%#n§(param1:Boolean) : void
      {
         this.§;!P§ = 0;
         if(param1 && this.§9#b§)
         {
            this.§;!P§ = Math.random() * this.§9#b§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§&"h§ = null;
      }
      
      public function §9$D§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§&"h§.addChild(param1);
         }
         else
         {
            this.§&"h§.addChildAt(param1,0);
         }
      }
      
      public function §7"g§(param1:DisplayObject) : void
      {
         if(this.§&"h§ && param1.parent == this.§&"h§)
         {
            this.§&"h§.removeChild(param1);
         }
      }
      
      public function §##F§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6"t§ = 1;
            return;
         }
         this.§6"t§ = this.§6"<§ / this.§3$4§;
         if(this.§6"t§ < 1)
         {
            this.§6"t§ = 1 / this.§6"t§;
         }
         this.§6"t§ = Math.min(11,this.§6"t§);
      }
      
      public function §^"j§(param1:§46§) : void
      {
         var _loc2_:§=$'§ = null;
         if(param1 is §=$'§)
         {
            _loc2_ = §=$'§(param1);
            this.§,!A§ = -_loc2_.pivot.x / §8#3§.§2K§;
            this.§]#S§ = -_loc2_.pivot.y / §8#3§.§2K§;
            if(this.§6"z§)
            {
               this.§6"z§.x = this.§,!A§;
               this.§6"z§.y = this.§]#S§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§&"h§.scaleX = param1;
         this.§&"h§.scaleY = param1;
         if(this.§9!q§)
         {
            this.§&"h§.scaleX = -param1;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§&"h§)
         {
            this.§&"h§.color = param1;
         }
      }
      
      protected function §1#%§() : void
      {
         if(this.§@#q§ && this.§1d§)
         {
            this.§@#q§.§1#%§(this.§1d§.name,this.§3]§,this.§1d§.subAnimationCount);
         }
      }
      
      public function get §'"9§() : Number
      {
         if(this.§9#b§)
         {
            return this.§9#b§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§#"T§)
         {
            return;
         }
         this.§;!P§ += param1;
         if(this.§;!P§ >= this.§9#b§.animationLengthMilliSeconds)
         {
            if(this.§9#b§.isLooping)
            {
               while(this.§;!P§ >= this.§9#b§.animationLengthMilliSeconds)
               {
                  this.§;!P§ -= this.§9#b§.animationLengthMilliSeconds;
               }
            }
            else
            {
               this.§1#%§();
            }
         }
         if(this.§[m§ || this.§9#b§.frameCount > 1)
         {
            this.§[m§ = false;
            if(this.§9#b§ && this.§6"z§)
            {
               this.§6"z§ = this.§9#b§.getFrameWithOffset(this.§;!P§,this.§6"z§);
               if(this.§6"z§)
               {
                  this.§6"z§.x = this.§,!A§;
                  this.§6"z§.y = this.§]#S§;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§2J§ = param1;
         if(this.§1d§)
         {
            _loc3_ = this.§1d§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§3]§;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         if(!this.§1d§)
         {
            return;
         }
         var _loc3_:§7b§ = this.§9#b§;
         var _loc4_:int = this.§1d§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§3]§ != param1)
            {
               this.§3]§ = param1;
               this.§[m§ = true;
            }
            this.§9#b§ = this.§1d§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.§9#b§ = this.§1d§;
         }
         if(this.§9#b§ != _loc3_)
         {
            if(param2)
            {
               this.§;!P§ = Math.random() * this.§9#b§.animationLengthMilliSeconds;
            }
            else
            {
               this.§;!P§ = 0;
            }
         }
      }
      
      public function §6!a§() : String
      {
         if(!this.§#"T§)
         {
            return "none";
         }
         return this.§#"T§.name;
      }
      
      public function §`#p§(param1:String) : Boolean
      {
         if(this.§#"T§)
         {
            return this.§#"T§.hasSubAnimation(param1);
         }
         return false;
      }
      
      public function §;O§(param1:Boolean) : void
      {
         this.§9#b§.§;O§(param1);
      }
      
      public function §4#R§() : String
      {
         if(this.§#"T§)
         {
            return this.§#"T§.startAnimationName;
         }
         return null;
      }
   }
}
