package §]">§
{
   import §"!&§.§]!C§;
   import §'4§.§^g§;
   
   public class §@#§ extends §"!B§
   {
      
      private static const §17§:Number = 5250;
       
      
      protected var §!!l§:Number = 0.0;
      
      public function §@#§(param1:§]!C§)
      {
         super(param1);
         if(param1.definition.indexOf("BLOCK_ASTEROID_BURNING_PIECE") != -1)
         {
            §&!B§ = §17§;
            §%"1§ = true;
         }
      }
      
      override public function makeExplosion(param1:§;U§, param2:Number, param3:Number) : void
      {
         playDestroyedSound();
         super.makeExplosion(param1,param2,param3);
      }
      
      override public function update(param1:Number, param2:§;U§, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         super.update(param1,param2,param3,param4);
         if(§2"!§.loopingParticleCount > 0 && param2)
         {
            this.§!!l§ += param1;
            if(this.§!!l§ > 1000 / 60 * 10)
            {
               this.§!!l§ = 0;
               _loc5_ = 0;
               while(_loc5_ < §2"!§.loopingParticleCount)
               {
                  if((_loc6_ = §2"!§.getLoopingParticle(_loc5_)) != "burningAsteroidSmoke")
                  {
                     param2.addObject(_loc6_,param3 * §^g§.§5!-§,param4 * §^g§.§5!-§,0,§-%§.§;!J§,false,true,false,1,true);
                  }
                  _loc5_++;
               }
            }
         }
      }
   }
}
