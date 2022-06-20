package §-!!§
{
   import § !D§.§'"u§;
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §?§.§+#c§;
   import §?§.§0F§;
   import §^"[§.§4!8§;
   
   public class §+!&§
   {
       
      
      protected var §9$0§:Number;
      
      protected var §@"g§:Number;
      
      protected var §;"<§:Number;
      
      protected var §[l§:Number;
      
      protected var §%" §:int = -1;
      
      protected var §"m§:§4!8§;
      
      protected var §7#T§:§4!8§;
      
      protected var §%"w§:§4!8§;
      
      protected var §3Y§:int;
      
      protected var §2#8§:Number = 0.0;
      
      protected var §^p§:DisplayObject;
      
      protected var §6"!§:Sprite;
      
      protected var §4!'§:Number = 0;
      
      protected var §9#=§:Number = 0;
      
      protected var §6D§:Number = 0.0;
      
      protected var § U§:Sprite = null;
      
      protected var § !K§:Boolean = false;
      
      protected var §[!'§:Boolean = false;
      
      protected var §%#=§:§@B§;
      
      public function §+!&§(param1:§4!8§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§"m§ = param1;
         this.§ U§ = param2;
         this.§[!'§ = param3;
         if(this.§[!'§)
         {
            this.§ U§.scaleX = -this.§ U§.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.§9$0§;
      }
      
      public function get height() : Number
      {
         return this.§@"g§;
      }
      
      public function get §-"6§() : Number
      {
         return this.§;"<§;
      }
      
      public function set §`%§(param1:§@B§) : void
      {
         this.§%#=§ = param1;
      }
      
      protected function initializeImage() : void
      {
         if(this.§"m§)
         {
            this.§7#T§ = this.§"m§.getSubAnimation(§8"J§.§>!N§);
         }
         if(!this.§7#T§)
         {
            this.§7#T§ = this.§"m§;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.§%"w§)
         {
            this.§^p§ = this.§%"w§.getFrameWithOffset(0,this.§^p§);
            if(!this.§^p§)
            {
               return;
            }
            this.§9$0§ = this.§^p§.width;
            this.§@"g§ = this.§^p§.height;
            if(this.§6"!§)
            {
               this.§6"!§.addChild(this.§^p§);
               this.§ U§.addChild(this.§6"!§);
            }
            else
            {
               this.§ U§.addChild(this.§^p§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§"m§ || this.§7#T§ && this.§7#T§.name == param1)
         {
            return;
         }
         this.§7#T§ = this.§"m§.getSubAnimation(param1);
         this.§ !K§ = true;
         this.setDamageState(this.§2#8§,param2);
      }
      
      protected function §]"]§(param1:Boolean) : void
      {
         this.§6D§ = 0;
         if(param1 && this.§%"w§)
         {
            this.§6D§ = Math.random() * this.§%"w§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§ U§ = null;
      }
      
      public function §#!6§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§ U§.addChild(param1);
         }
         else
         {
            this.§ U§.addChildAt(param1,0);
         }
      }
      
      public function §1!6§(param1:DisplayObject) : void
      {
         if(this.§ U§ && param1.parent == this.§ U§)
         {
            this.§ U§.removeChild(param1);
         }
      }
      
      public function §5$=§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;"<§ = 1;
            return;
         }
         this.§;"<§ = this.§9$0§ / this.§@"g§;
         if(this.§;"<§ < 1)
         {
            this.§;"<§ = 1 / this.§;"<§;
         }
         this.§;"<§ = Math.min(11,this.§;"<§);
      }
      
      public function §>#P§(param1:§+#c§) : void
      {
         var _loc2_:§0F§ = null;
         if(param1 is §0F§)
         {
            _loc2_ = §0F§(param1);
            this.§4!'§ = -_loc2_.pivot.x / §'"u§.§'#e§;
            this.§9#=§ = -_loc2_.pivot.y / §'"u§.§'#e§;
            if(this.§^p§)
            {
               this.§^p§.x = this.§4!'§;
               this.§^p§.y = this.§9#=§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§ U§.scaleX = param1;
         this.§ U§.scaleY = param1;
         if(this.§[!'§)
         {
            this.§ U§.scaleX = -param1;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§ U§)
         {
            this.§ U§.color = param1;
         }
      }
      
      protected function §1"^§() : void
      {
         if(this.§%#=§ && this.§7#T§)
         {
            this.§%#=§.§1"^§(this.§7#T§.name,this.§3Y§,this.§7#T§.subAnimationCount);
         }
      }
      
      public function get §^t§() : Number
      {
         if(this.§%"w§)
         {
            return this.§%"w§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§"m§)
         {
            return;
         }
         this.§6D§ += param1;
         if(this.§6D§ >= this.§%"w§.animationLengthMilliSeconds)
         {
            if(this.§%"w§.isLooping)
            {
               while(this.§6D§ >= this.§%"w§.animationLengthMilliSeconds)
               {
                  this.§6D§ -= this.§%"w§.animationLengthMilliSeconds;
               }
            }
            else
            {
               this.§1"^§();
            }
         }
         if(this.§ !K§ || this.§%"w§.frameCount > 1)
         {
            this.§ !K§ = false;
            if(this.§%"w§ && this.§^p§)
            {
               this.§^p§ = this.§%"w§.getFrameWithOffset(this.§6D§,this.§^p§);
               if(this.§^p§)
               {
                  this.§^p§.x = this.§4!'§;
                  this.§^p§.y = this.§9#=§;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§2#8§ = param1;
         if(this.§7#T§)
         {
            _loc3_ = this.§7#T§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§3Y§;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         if(!this.§7#T§)
         {
            return;
         }
         var _loc3_:§4!8§ = this.§%"w§;
         var _loc4_:int = this.§7#T§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§3Y§ != param1)
            {
               this.§3Y§ = param1;
               this.§ !K§ = true;
            }
            this.§%"w§ = this.§7#T§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.§%"w§ = this.§7#T§;
         }
         if(this.§%"w§ != _loc3_)
         {
            if(param2)
            {
               this.§6D§ = Math.random() * this.§%"w§.animationLengthMilliSeconds;
            }
            else
            {
               this.§6D§ = 0;
            }
         }
      }
      
      public function §="_§() : String
      {
         if(!this.§"m§)
         {
            return "none";
         }
         return this.§"m§.name;
      }
      
      public function §"#o§(param1:String) : Boolean
      {
         if(this.§"m§)
         {
            return this.§"m§.hasSubAnimation(param1);
         }
         return false;
      }
      
      public function §;#6§(param1:Boolean) : void
      {
         this.§%"w§.§;#6§(param1);
      }
      
      public function §?"<§() : String
      {
         if(this.§"m§)
         {
            return this.§"m§.startAnimationName;
         }
         return null;
      }
   }
}
