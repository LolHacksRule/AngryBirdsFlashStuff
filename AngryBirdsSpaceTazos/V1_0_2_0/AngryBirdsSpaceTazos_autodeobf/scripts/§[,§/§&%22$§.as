package §[,§
{
   import §;"=§.§!!O§;
   import §?!<§.§'!1§;
   
   public class §&"$§ extends §;k§
   {
      
      private static const §5!4§:Number = 5250;
       
      
      protected var §@P§:Number = 0.0;
      
      public function §&"$§(param1:§!!O§)
      {
         super(param1);
         if(param1.definition.indexOf("BLOCK_ASTEROID_BURNING_PIECE") != -1)
         {
            §-"C§ = §5!4§;
            §4C§ = true;
         }
      }
      
      override public function makeExplosion(param1:§class§, param2:Number, param3:Number) : void
      {
         playDestroyedSound();
         super.makeExplosion(param1,param2,param3);
      }
      
      override public function update(param1:Number, param2:§class§, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         super.update(param1,param2,param3,param4);
         if(§^B§.loopingParticleCount > 0 && param2)
         {
            this.§@P§ += param1;
            if(this.§@P§ > 1000 / 60 * 10)
            {
               this.§@P§ = 0;
               _loc5_ = 0;
               while(_loc5_ < §^B§.loopingParticleCount)
               {
                  if((_loc6_ = §^B§.getLoopingParticle(_loc5_)) != "burningAsteroidSmoke")
                  {
                     param2.addObject(_loc6_,param3 * §'!1§.§<!@§,param4 * §'!1§.§<!@§,0,§]j§.§4"1§,false,true,false,1,true);
                  }
                  _loc5_++;
               }
            }
         }
      }
   }
}
