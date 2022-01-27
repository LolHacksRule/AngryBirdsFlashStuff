package §[,§
{
   import §;"=§.§!!O§;
   import §?!<§.§'!1§;
   
   public class §"<§ extends §;k§
   {
       
      
      protected var §@P§:Number = 0.0;
      
      public function §"<§(param1:§!!O§, param2:Number)
      {
         super(param1);
         §-"C§ = param2;
         §4C§ = true;
      }
      
      override public function update(param1:Number, param2:§class§, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         super.update(param1,param2,param3,param4);
         if(§^B§.loopingParticleCount > 0 && param2)
         {
            this.§@P§ += param1;
            if(this.§@P§ > 1000 / 60)
            {
               this.§@P§ = 0;
               _loc5_ = 0;
               while(_loc5_ < §^B§.loopingParticleCount)
               {
                  _loc6_ = §^B§.getLoopingParticle(_loc5_);
                  param2.addObject(_loc6_,param3 * §'!1§.§<!@§,param4 * §'!1§.§<!@§,0,§]j§.§4"1§,false,true,false,1,true);
                  _loc5_++;
               }
            }
         }
      }
   }
}
