package §&E§
{
   import §@!"§.§?l§;
   
   public class §0!E§ extends §]6§
   {
       
      
      private var §#8§:int;
      
      public function §0!E§(param1:Number, param2:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push("EARTHQUAKE_PARTICLE_");
         if(!_loc6_)
         {
            §§push(§§pop() + Math.round(6 * Math.random()));
         }
         var _loc3_:String = §§pop();
         §§push(10 * Math.random());
         if(_loc7_)
         {
            if(Math.random() > 0.5)
            {
               if(_loc7_)
               {
                  §§push(-1 * (!(_loc6_ && param2) ? §§pop() : §§pop()));
                  if(_loc7_ || this)
                  {
                     addr62:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc4_:* = §§pop();
               §§push(-2 * Math.random());
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc7_)
               {
                  §§push(this);
                  §§push(3 + 7 * Math.random());
                  if(!(_loc6_ && _loc3_))
                  {
                     if(Math.random() > 0.5)
                     {
                        if(!_loc6_)
                        {
                           addr183:
                           §§pop().§#8§ = -1 * (_loc7_ || param2 ? §§pop() : §§pop());
                           do
                           {
                              super(§?l§.§'h§.animationManager,§?l§.§'h§.textureManager,§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.§,G§,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,3000,"",§0i§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc4_,_loc5_,25,0,0.75 + Math.random() * 0.5,-1,false,_loc3_);
                              do
                              {
                                 §="3§ = -500;
                              }
                              while(!(_loc7_ || param2));
                              
                           }
                           while(!_loc7_);
                           
                           return;
                           addr102:
                        }
                        §§goto(addr183);
                     }
                     else
                     {
                        §§push(1);
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr183);
               }
               §§goto(addr102);
            }
            else
            {
               §§push(1);
            }
            §§goto(addr53);
         }
         §§goto(addr62);
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §!"W§ += this.§#8§;
         }
         return super.update(param1);
      }
   }
}
