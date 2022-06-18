package §^0§
{
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §-!j§.§%!a§;
   import §-!j§.§,#V§;
   import §9#M§.§,`§;
   import §?$#§.§<d§;
   
   public class § "Q§
   {
       
      
      protected var §6o§:Number;
      
      protected var §7e§:Number;
      
      protected var §@"$§:Number;
      
      protected var §5#n§:Number;
      
      protected var §"!&§:int = -1;
      
      protected var §&"J§:§,`§;
      
      protected var §'#Q§:§,`§;
      
      protected var §4"v§:§,`§;
      
      protected var §-#<§:int;
      
      protected var §<V§:Number = 0.0;
      
      protected var §8"`§:DisplayObject;
      
      protected var §'"i§:Sprite;
      
      protected var §<#v§:Number = 0;
      
      protected var §;h§:Number = 0;
      
      protected var §'"K§:Number = 0.0;
      
      protected var §]#+§:Sprite = null;
      
      protected var §8"R§:Boolean = false;
      
      protected var § t§:Boolean = false;
      
      protected var §=#7§:§1!J§;
      
      public function § "Q§(param1:§,`§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§&"J§ = param1;
         this.§]#+§ = param2;
         this.§ t§ = param3;
         if(this.§ t§)
         {
            this.§]#+§.scaleX = -this.§]#+§.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.§6o§;
      }
      
      public function get height() : Number
      {
         return this.§7e§;
      }
      
      public function get §#$6§() : Number
      {
         return this.§@"$§;
      }
      
      public function set §%#[§(param1:§1!J§) : void
      {
         this.§=#7§ = param1;
      }
      
      protected function initializeImage() : void
      {
         if(this.§&"J§)
         {
            this.§'#Q§ = this.§&"J§.getSubAnimation(§=Q§.§6!t§);
         }
         if(!this.§'#Q§)
         {
            this.§'#Q§ = this.§&"J§;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.§4"v§)
         {
            this.§8"`§ = this.§4"v§.getFrameWithOffset(0,this.§8"`§);
            if(!this.§8"`§)
            {
               return;
            }
            this.§6o§ = this.§8"`§.width;
            this.§7e§ = this.§8"`§.height;
            if(this.§'"i§)
            {
               this.§'"i§.addChild(this.§8"`§);
               this.§]#+§.addChild(this.§'"i§);
            }
            else
            {
               this.§]#+§.addChild(this.§8"`§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§&"J§ || this.§'#Q§ && this.§'#Q§.name == param1)
         {
            return;
         }
         this.§'#Q§ = this.§&"J§.getSubAnimation(param1);
         this.§8"R§ = true;
         this.setDamageState(this.§<V§,param2);
      }
      
      protected function §>#V§(param1:Boolean) : void
      {
         this.§'"K§ = 0;
         if(param1 && this.§4"v§)
         {
            this.§'"K§ = Math.random() * this.§4"v§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§]#+§ = null;
      }
      
      public function §""j§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§]#+§.addChild(param1);
         }
         else
         {
            this.§]#+§.addChildAt(param1,0);
         }
      }
      
      public function §]#]§(param1:DisplayObject) : void
      {
         if(this.§]#+§ && param1.parent == this.§]#+§)
         {
            this.§]#+§.removeChild(param1);
         }
      }
      
      public function §+#b§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@"$§ = 1;
            return;
         }
         this.§@"$§ = this.§6o§ / this.§7e§;
         if(this.§@"$§ < 1)
         {
            this.§@"$§ = 1 / this.§@"$§;
         }
         this.§@"$§ = Math.min(11,this.§@"$§);
      }
      
      public function §4"Z§(param1:§%!a§) : void
      {
         var _loc2_:§,#V§ = null;
         if(param1 is §,#V§)
         {
            _loc2_ = §,#V§(param1);
            this.§<#v§ = -_loc2_.pivot.x / §<d§.§6@§;
            this.§;h§ = -_loc2_.pivot.y / §<d§.§6@§;
            if(this.§8"`§)
            {
               this.§8"`§.x = this.§<#v§;
               this.§8"`§.y = this.§;h§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§]#+§.scaleX = param1;
         this.§]#+§.scaleY = param1;
         if(this.§ t§)
         {
            this.§]#+§.scaleX = -param1;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§]#+§)
         {
            this.§]#+§.color = param1;
         }
      }
      
      protected function §8u§() : void
      {
         if(this.§=#7§ && this.§'#Q§)
         {
            this.§=#7§.§8u§(this.§'#Q§.name,this.§-#<§,this.§'#Q§.subAnimationCount);
         }
      }
      
      public function get §1#L§() : Number
      {
         if(this.§4"v§)
         {
            return this.§4"v§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§&"J§)
         {
            return;
         }
         this.§'"K§ += param1;
         if(this.§'"K§ >= this.§4"v§.animationLengthMilliSeconds)
         {
            if(this.§4"v§.isLooping)
            {
               while(this.§'"K§ >= this.§4"v§.animationLengthMilliSeconds)
               {
                  this.§'"K§ -= this.§4"v§.animationLengthMilliSeconds;
               }
            }
            else
            {
               this.§8u§();
            }
         }
         if(this.§8"R§ || this.§4"v§.frameCount > 1)
         {
            this.§8"R§ = false;
            if(this.§4"v§ && this.§8"`§)
            {
               this.§8"`§ = this.§4"v§.getFrameWithOffset(this.§'"K§,this.§8"`§);
               if(this.§8"`§)
               {
                  this.§8"`§.x = this.§<#v§;
                  this.§8"`§.y = this.§;h§;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§<V§ = param1;
         if(this.§'#Q§)
         {
            _loc3_ = this.§'#Q§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§-#<§;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         if(!this.§'#Q§)
         {
            return;
         }
         var _loc3_:§,`§ = this.§4"v§;
         var _loc4_:int = this.§'#Q§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§-#<§ != param1)
            {
               this.§-#<§ = param1;
               this.§8"R§ = true;
            }
            this.§4"v§ = this.§'#Q§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.§4"v§ = this.§'#Q§;
         }
         if(this.§4"v§ != _loc3_)
         {
            if(param2)
            {
               this.§'"K§ = Math.random() * this.§4"v§.animationLengthMilliSeconds;
            }
            else
            {
               this.§'"K§ = 0;
            }
         }
      }
      
      public function §?F§() : String
      {
         if(!this.§&"J§)
         {
            return "none";
         }
         return this.§&"J§.name;
      }
      
      public function §5!D§(param1:String) : Boolean
      {
         if(this.§&"J§)
         {
            return this.§&"J§.hasSubAnimation(param1);
         }
         return false;
      }
      
      public function §?#w§(param1:Boolean) : void
      {
         this.§4"v§.§?#w§(param1);
      }
      
      public function §=#Y§() : String
      {
         if(this.§&"J§)
         {
            return this.§&"J§.startAnimationName;
         }
         return null;
      }
   }
}
