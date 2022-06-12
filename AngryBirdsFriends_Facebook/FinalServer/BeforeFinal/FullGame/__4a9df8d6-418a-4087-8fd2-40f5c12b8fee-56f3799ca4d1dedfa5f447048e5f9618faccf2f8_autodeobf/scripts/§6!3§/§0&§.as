package §6!3§
{
   import §'G§.§;D§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   import §>2§.§!6§;
   import §?$<§.§'!s§;
   import §?$<§.§4"F§;
   
   public class §0&§
   {
       
      
      protected var §&#f§:Number;
      
      protected var §[!k§:Number;
      
      protected var §5!v§:Number;
      
      protected var §0!j§:Number;
      
      protected var §4k§:int = -1;
      
      protected var §&#N§:§;D§;
      
      protected var §7!a§:§;D§;
      
      protected var §[D§:§;D§;
      
      protected var §,$"§:int;
      
      protected var §>#Y§:Number = 0.0;
      
      protected var §&#W§:DisplayObject;
      
      protected var §-#;§:Sprite;
      
      protected var §!$?§:Number = 0;
      
      protected var §!"5§:Number = 0;
      
      protected var §]!e§:Number = 0.0;
      
      protected var §'#f§:Sprite = null;
      
      protected var §,#p§:Boolean = false;
      
      protected var § "7§:Boolean = false;
      
      protected var §>!g§:§5<§;
      
      public function §0&§(param1:§;D§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§&#N§ = param1;
         this.§'#f§ = param2;
         this.§ "7§ = param3;
         if(this.§ "7§)
         {
            this.§'#f§.scaleX = -this.§'#f§.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.§&#f§;
      }
      
      public function get height() : Number
      {
         return this.§[!k§;
      }
      
      public function get §`#l§() : Number
      {
         return this.§5!v§;
      }
      
      public function set §#!H§(param1:§5<§) : void
      {
         this.§>!g§ = param1;
      }
      
      protected function initializeImage() : void
      {
         if(this.§&#N§)
         {
            this.§7!a§ = this.§&#N§.getSubAnimation(§;!U§.§,#c§);
         }
         if(!this.§7!a§)
         {
            this.§7!a§ = this.§&#N§;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.§[D§)
         {
            this.§&#W§ = this.§[D§.getFrameWithOffset(0,this.§&#W§);
            if(!this.§&#W§)
            {
               return;
            }
            this.§&#f§ = this.§&#W§.width;
            this.§[!k§ = this.§&#W§.height;
            if(this.§-#;§)
            {
               this.§-#;§.addChild(this.§&#W§);
               this.§'#f§.addChild(this.§-#;§);
            }
            else
            {
               this.§'#f§.addChild(this.§&#W§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§&#N§ || this.§7!a§ && this.§7!a§.name == param1)
         {
            return;
         }
         this.§7!a§ = this.§&#N§.getSubAnimation(param1);
         this.§,#p§ = true;
         this.setDamageState(this.§>#Y§,param2);
      }
      
      protected function §]z§(param1:Boolean) : void
      {
         this.§]!e§ = 0;
         if(param1 && this.§[D§)
         {
            this.§]!e§ = Math.random() * this.§[D§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§'#f§ = null;
      }
      
      public function §@$"§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§'#f§.addChild(param1);
         }
         else
         {
            this.§'#f§.addChildAt(param1,0);
         }
      }
      
      public function §3"<§(param1:DisplayObject) : void
      {
         if(this.§'#f§ && param1.parent == this.§'#f§)
         {
            this.§'#f§.removeChild(param1);
         }
      }
      
      public function § !Q§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!v§ = 1;
            return;
         }
         this.§5!v§ = this.§&#f§ / this.§[!k§;
         if(this.§5!v§ < 1)
         {
            this.§5!v§ = 1 / this.§5!v§;
         }
         this.§5!v§ = Math.min(11,this.§5!v§);
      }
      
      public function §2"S§(param1:§4"F§) : void
      {
         var _loc2_:§'!s§ = null;
         if(param1 is §'!s§)
         {
            _loc2_ = §'!s§(param1);
            this.§!$?§ = -_loc2_.pivot.x / §!6§.§[#v§;
            this.§!"5§ = -_loc2_.pivot.y / §!6§.§[#v§;
            if(this.§&#W§)
            {
               this.§&#W§.x = this.§!$?§;
               this.§&#W§.y = this.§!"5§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§'#f§.scaleX = param1;
         this.§'#f§.scaleY = param1;
         if(this.§ "7§)
         {
            this.§'#f§.scaleX = -param1;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§'#f§)
         {
            this.§'#f§.color = param1;
         }
      }
      
      protected function §?#-§() : void
      {
         if(this.§>!g§ && this.§7!a§)
         {
            this.§>!g§.§?#-§(this.§7!a§.name,this.§,$"§,this.§7!a§.subAnimationCount);
         }
      }
      
      public function get §8"D§() : Number
      {
         if(this.§[D§)
         {
            return this.§[D§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§&#N§)
         {
            return;
         }
         this.§]!e§ += param1;
         if(this.§]!e§ >= this.§[D§.animationLengthMilliSeconds)
         {
            if(this.§[D§.isLooping)
            {
               while(this.§]!e§ >= this.§[D§.animationLengthMilliSeconds)
               {
                  this.§]!e§ -= this.§[D§.animationLengthMilliSeconds;
               }
            }
            else
            {
               this.§?#-§();
            }
         }
         if(this.§,#p§ || this.§[D§.frameCount > 1)
         {
            this.§,#p§ = false;
            if(this.§[D§ && this.§&#W§)
            {
               this.§&#W§ = this.§[D§.getFrameWithOffset(this.§]!e§,this.§&#W§);
               if(this.§&#W§)
               {
                  this.§&#W§.x = this.§!$?§;
                  this.§&#W§.y = this.§!"5§;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§>#Y§ = param1;
         if(this.§7!a§)
         {
            _loc3_ = this.§7!a§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§,$"§;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         if(!this.§7!a§)
         {
            return;
         }
         var _loc3_:§;D§ = this.§[D§;
         var _loc4_:int = this.§7!a§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§,$"§ != param1)
            {
               this.§,$"§ = param1;
               this.§,#p§ = true;
            }
            this.§[D§ = this.§7!a§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.§[D§ = this.§7!a§;
         }
         if(this.§[D§ != _loc3_)
         {
            if(param2)
            {
               this.§]!e§ = Math.random() * this.§[D§.animationLengthMilliSeconds;
            }
            else
            {
               this.§]!e§ = 0;
            }
         }
      }
      
      public function §8#7§() : String
      {
         if(!this.§&#N§)
         {
            return "none";
         }
         return this.§&#N§.name;
      }
      
      public function §="_§(param1:String) : Boolean
      {
         if(this.§&#N§)
         {
            return this.§&#N§.hasSubAnimation(param1);
         }
         return false;
      }
      
      public function §-#T§(param1:Boolean) : void
      {
         this.§[D§.§-#T§(param1);
      }
      
      public function §@"A§() : String
      {
         if(this.§&#N§)
         {
            return this.§&#N§.startAnimationName;
         }
         return null;
      }
   }
}
