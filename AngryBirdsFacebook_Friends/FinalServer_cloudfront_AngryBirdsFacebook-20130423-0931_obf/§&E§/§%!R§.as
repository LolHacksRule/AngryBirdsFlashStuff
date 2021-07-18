package §&E§
{
   import §@!"§.§?l§;
   
   public class §%!R§ extends §]6§
   {
       
      
      private var §#8§:int;
      
      public function §%!R§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this);
            §§push(5 * Math.random());
            if(!_loc3_)
            {
               if(Math.random() > 0.5)
               {
                  if(!_loc3_)
                  {
                     addr96:
                     §§push(-1 * (!(_loc3_ && param2) ? §§pop() : §§pop()));
                  }
                  §§pop().§#8§ = §§pop();
                  do
                  {
                     super(§?l§.§'h§.animationManager,§?l§.§'h§.textureManager,§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.§,G§,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§0i§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0.5,0,1,-1,false,"EARTHQUAKE_DUST_CLOUD");
                  }
                  while(_loc3_);
                  
                  return;
                  addr110:
               }
               else
               {
                  §§push(1);
               }
               §§goto(addr107);
            }
            §§goto(addr96);
         }
         §§goto(addr110);
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §!"W§ += this.§#8§;
         }
         do
         {
            §"$§.alpha -= 0.0025;
         }
         while(_loc3_ && this);
         
         return super.update(param1);
      }
   }
}
