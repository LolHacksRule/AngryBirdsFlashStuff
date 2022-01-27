package §[,§
{
   import §""<§.§#N§;
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §;"=§.§]"<§;
   import §?!<§.§'!1§;
   
   public class §,[§ extends §1d§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §,`§:Number = Math.PI * 2;
       
      
      private var §,"3§:Number;
      
      private var §1",§:Number;
      
      private var §'l§:Number;
      
      private var §"!P§:Number;
      
      private var §[!r§:Number;
      
      private var §;J§:Number;
      
      private var §;!8§:Number = 0.0;
      
      private var §<m§:Number = 0;
      
      private var §'! §:Number = 0;
      
      protected var §>!J§:Number = 0;
      
      protected var §;`§:Number = 0;
      
      protected var §^8§:Number = 0;
      
      public function §,[§(param1:Sprite, param2:b2World, param3:§]"<§, param4:Number, param5:Number, param6:Number)
      {
         super(param1,param2,param3);
         this.§;J§ = param6;
         this.§'l§ = param6;
         this.§"!P§ = param4 / §'!1§.§<!@§;
         this.§[!r§ = param5 / §'!1§.§<!@§;
         this.§,"3§ = param4 / §'!1§.§<!@§;
         this.§1",§ = param5 / §'!1§.§<!@§;
      }
      
      public function get §8Y§() : Number
      {
         return this.§;!8§;
      }
      
      public function §%p§() : Number
      {
         return this.§>!J§ * §'!1§.§<!@§;
      }
      
      public function §%!!§() : Number
      {
         return this.§;`§ * §'!1§.§<!@§;
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = § <§().GetPosition().x;
         var _loc4_:Number = § <§().GetPosition().y;
         this.§^!?§(this.§'l§);
         this.§"!P§ = this.§,"3§;
         this.§[!r§ = this.§1",§;
         this.§'l§ = § <§().GetAngle();
         this.§,"3§ = _loc3_ / §'!1§.§<!@§;
         this.§1",§ = _loc4_ / §'!1§.§<!@§;
         this.§;!8§ += param1;
      }
      
      protected function §^!?§(param1:Number) : void
      {
         this.§;J§ = param1;
         this.§'l§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§+!3§(param2,param3);
      }
      
      protected function §+!3§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §#N§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§,"3§ == this.§"!P§ || param2 == 0)
         {
            this.§<m§ = 0;
            this.§>!J§ = this.§,"3§;
         }
         else
         {
            this.§<m§ = param2 * (this.§"!P§ - this.§,"3§) / param1;
            this.§>!J§ = this.§,"3§ + this.§<m§;
         }
         if(this.§1",§ == this.§[!r§ || param2 == 0)
         {
            this.§'! § = 0;
            this.§;`§ = this.§1",§;
         }
         else
         {
            this.§'! § = param2 * (this.§[!r§ - this.§1",§) / param1;
            this.§;`§ = this.§1",§ + this.§'! §;
         }
         if(this.§'l§ == this.§;J§ || param2 == 0)
         {
            this.§^8§ = this.§'l§;
         }
         else
         {
            _loc3_ = this.§'l§ - this.§;J§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §,`§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §,`§;
            }
            this.§^8§ = this.§;J§ + (param1 - param2) / param1 * _loc3_;
            if(this.§^8§ >= §,`§)
            {
               this.§^8§ -= §,`§;
            }
            else if(this.§^8§ < 0)
            {
               this.§^8§ += §,`§;
            }
         }
      }
   }
}
