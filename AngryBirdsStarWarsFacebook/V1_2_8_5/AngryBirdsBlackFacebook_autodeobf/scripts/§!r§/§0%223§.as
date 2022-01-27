package §!r§
{
   import §!!k§.§1!^§;
   import §"§.§;!E§;
   import §#g§.§'<§;
   import §#g§.§<b§;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §0"3§
   {
       
      
      protected var §19§:Number;
      
      protected var §7!!§:Number;
      
      protected var §]!$§:Number;
      
      protected var §+A§:Number;
      
      protected var §6!Q§:int = -1;
      
      protected var §#!9§:§1!^§;
      
      protected var §`'§:§1!^§;
      
      protected var §0Z§:§1!^§;
      
      protected var §>"0§:int;
      
      protected var §>"g§:Number = 0.0;
      
      protected var §&"#§:DisplayObject;
      
      protected var §-"e§:Sprite;
      
      protected var §@"s§:Number = 0;
      
      protected var §`%§:Number = 0;
      
      protected var §"!I§:Number = 0.0;
      
      protected var §0v§:Sprite = null;
      
      protected var §#!w§:Boolean = false;
      
      protected var §5B§:Boolean = false;
      
      public function §0"3§(param1:§1!^§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§#!9§ = param1;
         this.§0v§ = param2;
         this.§5B§ = param3;
         if(this.§5B§)
         {
            this.§0v§.scaleX = -this.§0v§.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.§19§;
      }
      
      public function get height() : Number
      {
         return this.§7!!§;
      }
      
      public function get §>"O§() : Number
      {
         return this.§]!$§;
      }
      
      protected function initializeImage() : void
      {
         if(this.§#!9§)
         {
            this.§`'§ = this.§#!9§.getSubAnimation(§0N§.§'"T§);
         }
         if(!this.§`'§)
         {
            this.§`'§ = this.§#!9§;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.§0Z§)
         {
            this.§&"#§ = this.§0Z§.getFrameWithOffset(0,this.§&"#§);
            if(!this.§&"#§)
            {
               return;
            }
            this.§19§ = this.§&"#§.width;
            this.§7!!§ = this.§&"#§.height;
            if(this.§-"e§)
            {
               this.§-"e§.addChild(this.§&"#§);
               this.§0v§.addChild(this.§-"e§);
            }
            else
            {
               this.§0v§.addChild(this.§&"#§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§#!9§ || this.§`'§ && this.§`'§.name == param1)
         {
            return;
         }
         this.§`'§ = this.§#!9§.getSubAnimation(param1);
         this.§#!w§ = true;
         this.setDamageState(this.§>"g§,param2);
      }
      
      protected function §>1§(param1:Boolean) : void
      {
         this.§"!I§ = 0;
         if(param1 && this.§0Z§)
         {
            this.§"!I§ = Math.random() * this.§0Z§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§0v§ = null;
      }
      
      public function §<m§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§0v§.addChild(param1);
         }
         else
         {
            this.§0v§.addChildAt(param1,0);
         }
      }
      
      public function §9!V§(param1:DisplayObject) : void
      {
         if(this.§0v§ && param1.parent == this.§0v§)
         {
            this.§0v§.removeChild(param1);
         }
      }
      
      public function §<"J§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!$§ = 1;
            return;
         }
         this.§]!$§ = this.§19§ / this.§7!!§;
         if(this.§]!$§ < 1)
         {
            this.§]!$§ = 1 / this.§]!$§;
         }
         this.§]!$§ = Math.min(11,this.§]!$§);
      }
      
      public function §#X§(param1:§'<§) : void
      {
         var _loc2_:§<b§ = null;
         if(param1 is §<b§)
         {
            _loc2_ = §<b§(param1);
            this.§@"s§ = -_loc2_.§ !4§.x / §;!E§.§0"?§;
            this.§`%§ = -_loc2_.§ !4§.y / §;!E§.§0"?§;
            if(this.§&"#§)
            {
               this.§&"#§.x = this.§@"s§;
               this.§&"#§.y = this.§`%§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§0v§.scaleX = param1;
         this.§0v§.scaleY = param1;
         if(this.§5B§)
         {
            this.§0v§.scaleX = -param1;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§0v§)
         {
            this.§0v§.color = param1;
         }
      }
      
      protected function handleAnimationEnd() : void
      {
      }
      
      public function get currentAnimationLengthMilliSeconds() : Number
      {
         if(this.§0Z§)
         {
            return this.§0Z§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§#!9§)
         {
            return;
         }
         this.§"!I§ += param1;
         if(this.§"!I§ >= this.§0Z§.animationLengthMilliSeconds)
         {
            this.§"!I§ -= this.§0Z§.animationLengthMilliSeconds;
            this.handleAnimationEnd();
         }
         if(this.§#!w§ || this.§0Z§.frameCount > 1)
         {
            this.§#!w§ = false;
            if(this.§0Z§ && this.§&"#§)
            {
               this.§&"#§ = this.§0Z§.getFrameWithOffset(this.§"!I§,this.§&"#§);
               if(this.§&"#§)
               {
                  this.§&"#§.x = this.§@"s§;
                  this.§&"#§.y = this.§`%§;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§>"g§ = param1;
         if(this.§`'§)
         {
            _loc3_ = this.§`'§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§>"0§;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         if(!this.§`'§)
         {
            return;
         }
         var _loc3_:§1!^§ = this.§0Z§;
         var _loc4_:int = this.§`'§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§>"0§ != param1)
            {
               this.§>"0§ = param1;
               this.§#!w§ = true;
            }
            this.§0Z§ = this.§`'§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.§0Z§ = this.§`'§;
         }
         if(this.§0Z§ != _loc3_)
         {
            if(param2)
            {
               this.§"!I§ = Math.random() * this.§0Z§.animationLengthMilliSeconds;
            }
            else
            {
               this.§"!I§ = 0;
            }
         }
      }
      
      public function getCurrentAnimationName() : String
      {
         if(!this.§#!9§)
         {
            return "none";
         }
         return this.§#!9§.name;
      }
   }
}
