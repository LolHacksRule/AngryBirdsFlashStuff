package §9"!§
{
   import §3"#§.§`"8§;
   import §3>§.§-f§;
   
   public class §3"A§ extends §-!6§
   {
       
      
      protected var §+!5§:Number = 0.0;
      
      public function §3"A§(param1:§-f§, param2:Number)
      {
         super(param1);
         §;z§ = param2;
         §&F§ = true;
      }
      
      override public function update(param1:Number, param2:§0!s§, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         super.update(param1,param2,param3,param4);
         if(§>!+§.loopingParticleCount > 0 && param2)
         {
            this.§+!5§ += param1;
            if(this.§+!5§ > 1000 / 60)
            {
               this.§+!5§ = 0;
               _loc5_ = 0;
               while(_loc5_ < §>!+§.loopingParticleCount)
               {
                  _loc6_ = §>!+§.getLoopingParticle(_loc5_);
                  param2.addObject(_loc6_,param3 * §`"8§.§3!=§,param4 * §`"8§.§3!=§,0,§"" §.§%A§,false,true,false,1,true);
                  _loc5_++;
               }
            }
         }
      }
   }
}
