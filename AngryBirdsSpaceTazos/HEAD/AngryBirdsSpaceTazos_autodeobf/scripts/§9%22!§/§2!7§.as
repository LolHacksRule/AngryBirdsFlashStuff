package §9"!§
{
   import §3"#§.§`"8§;
   import §3>§.§-f§;
   
   public class §2!7§ extends §-!6§
   {
      
      private static const §'p§:Number = 5250;
       
      
      protected var §+!5§:Number = 0.0;
      
      public function §2!7§(param1:§-f§)
      {
         super(param1);
         if(param1.definition.indexOf("BLOCK_ASTEROID_BURNING_PIECE") != -1)
         {
            §;z§ = §'p§;
            §&F§ = true;
         }
      }
      
      override public function makeExplosion(param1:§0!s§, param2:Number, param3:Number) : void
      {
         playDestroyedSound();
         super.makeExplosion(param1,param2,param3);
      }
      
      override public function update(param1:Number, param2:§0!s§, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         super.update(param1,param2,param3,param4);
         if(§>!+§.loopingParticleCount > 0 && param2)
         {
            this.§+!5§ += param1;
            if(this.§+!5§ > 1000 / 60 * 10)
            {
               this.§+!5§ = 0;
               _loc5_ = 0;
               while(_loc5_ < §>!+§.loopingParticleCount)
               {
                  if((_loc6_ = §>!+§.getLoopingParticle(_loc5_)) != "burningAsteroidSmoke")
                  {
                     param2.addObject(_loc6_,param3 * §`"8§.§3!=§,param4 * §`"8§.§3!=§,0,§"" §.§%A§,false,true,false,1,true);
                  }
                  _loc5_++;
               }
            }
         }
      }
   }
}
