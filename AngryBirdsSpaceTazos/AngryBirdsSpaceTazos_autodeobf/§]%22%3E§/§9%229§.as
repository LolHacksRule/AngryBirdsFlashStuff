package §]">§
{
   import §"!&§.§]!C§;
   import §'4§.§^g§;
   
   public class §9"9§ extends §"!B§
   {
       
      
      protected var §!!l§:Number = 0.0;
      
      public function §9"9§(param1:§]!C§, param2:Number)
      {
         super(param1);
         §&!B§ = param2;
         §%"1§ = true;
      }
      
      override public function update(param1:Number, param2:§;U§, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         super.update(param1,param2,param3,param4);
         if(§2"!§.loopingParticleCount > 0 && param2)
         {
            this.§!!l§ += param1;
            if(this.§!!l§ > 1000 / 60)
            {
               this.§!!l§ = 0;
               _loc5_ = 0;
               while(_loc5_ < §2"!§.loopingParticleCount)
               {
                  _loc6_ = §2"!§.getLoopingParticle(_loc5_);
                  param2.addObject(_loc6_,param3 * §^g§.§5!-§,param4 * §^g§.§5!-§,0,§-%§.§;!J§,false,true,false,1,true);
                  _loc5_++;
               }
            }
         }
      }
   }
}
