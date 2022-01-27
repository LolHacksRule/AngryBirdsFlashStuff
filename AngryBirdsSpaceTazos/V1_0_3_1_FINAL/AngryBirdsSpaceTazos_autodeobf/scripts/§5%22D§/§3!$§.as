package §5"D§
{
   import §3R§.§1!R§;
   import §6!M§.§;!4§;
   
   public class §3!$§ extends §4!b§
   {
      
      private static const §^!L§:Number = 5250;
       
      
      protected var §`v§:Number = 0.0;
      
      public function §3!$§(param1:§;!4§)
      {
         super(param1);
         if(param1.definition.indexOf("BLOCK_ASTEROID_BURNING_PIECE") != -1)
         {
            §%!$§ = §^!L§;
            §9!F§ = true;
         }
      }
      
      override public function makeExplosion(param1:§0!5§, param2:Number, param3:Number) : void
      {
         playDestroyedSound();
         super.makeExplosion(param1,param2,param3);
      }
      
      override public function update(param1:Number, param2:§0!5§, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         super.update(param1,param2,param3,param4);
         if(§'!m§.loopingParticleCount > 0 && param2)
         {
            this.§`v§ += param1;
            if(this.§`v§ > 1000 / 60 * 10)
            {
               this.§`v§ = 0;
               _loc5_ = 0;
               while(_loc5_ < §'!m§.loopingParticleCount)
               {
                  if((_loc6_ = §'!m§.getLoopingParticle(_loc5_)) != "burningAsteroidSmoke")
                  {
                     param2.addObject(_loc6_,param3 * §1!R§.§00§,param4 * §1!R§.§00§,0,§3!3§.§'!y§,false,true,false,1,true);
                  }
                  _loc5_++;
               }
            }
         }
      }
   }
}
