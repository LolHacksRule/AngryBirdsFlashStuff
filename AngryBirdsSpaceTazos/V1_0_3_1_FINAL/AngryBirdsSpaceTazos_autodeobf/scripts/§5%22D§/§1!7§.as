package §5"D§
{
   import §3R§.§1!R§;
   import §6!M§.§;!4§;
   
   public class §1!7§ extends §4!b§
   {
       
      
      protected var §`v§:Number = 0.0;
      
      public function §1!7§(param1:§;!4§, param2:Number)
      {
         super(param1);
         §%!$§ = param2;
         §9!F§ = true;
      }
      
      override public function update(param1:Number, param2:§0!5§, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         super.update(param1,param2,param3,param4);
         if(§'!m§.loopingParticleCount > 0 && param2)
         {
            this.§`v§ += param1;
            if(this.§`v§ > 1000 / 60)
            {
               this.§`v§ = 0;
               _loc5_ = 0;
               while(_loc5_ < §'!m§.loopingParticleCount)
               {
                  _loc6_ = §'!m§.getLoopingParticle(_loc5_);
                  param2.addObject(_loc6_,param3 * §1!R§.§00§,param4 * §1!R§.§00§,0,§3!3§.§'!y§,false,true,false,1,true);
                  _loc5_++;
               }
            }
         }
      }
   }
}
