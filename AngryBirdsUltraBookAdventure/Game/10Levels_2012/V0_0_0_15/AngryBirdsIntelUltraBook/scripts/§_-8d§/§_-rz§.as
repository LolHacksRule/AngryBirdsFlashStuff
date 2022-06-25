package §_-8d§
{
   public class §_-rz§ extends §_-Ew§
   {
       
      
      public function §_-rz§(param1:§_-0FF§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super(param1);
         }
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.initializeAnimations(param1);
            loop0:
            while(true)
            {
               §_-06j§("POWERUP_BOMB",["POWERUP_DROP_01"]);
               loop1:
               while(true)
               {
                  §_-06j§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
                  while(true)
                  {
                     §_-06j§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
                     continue loop0;
                     addr75:
                     loop4:
                     while(!(_loc3_ && this))
                     {
                        if(!_loc3_)
                        {
                           while(true)
                           {
                              §_-06j§("LASER_DOT",["LASER_DOT"]);
                              do
                              {
                                 §_-06j§("INTEL_SMOKE_CLOUD",["INTEL_SMOKE_CLOUD_1","INTEL_SMOKE_CLOUD_2","INTEL_SMOKE_CLOUD_3","INTEL_SMOKE_CLOUD_4","INTEL_SMOKE_CLOUD_5","INTEL_SMOKE_CLOUD_6"]);
                              }
                              while(!_loc2_);
                              
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                                 addr48:
                              }
                              continue loop4;
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.initializeBirdAnimations();
         }
      }
      
      override protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.initializePigAnimations();
            while(true)
            {
               §§push(§§findproperty(§_-x4§));
               §§push("PIG_INTEL_PIGLETTE_SMALL");
               §§push(["normal",["PIG_INTEL_PIGLETTE_SMALL_01","PIG_INTEL_PIGLETTE_SMALL_02","PIG_INTEL_PIGLETTE_SMALL_03"]]);
               if(!_loc2_)
               {
                  §§push(null);
               }
               §§pop().§_-x4§(§§pop(),§§pop());
               loop1:
               while(true)
               {
                  §§push(§§findproperty(§_-x4§));
                  §§push("PIG_INTEL_PIGLETTE_MEDIUM");
                  §§push(["normal",["PIG_INTEL_PIGLETTE_MEDIUM_01","PIG_INTEL_PIGLETTE_MEDIUM_02","PIG_INTEL_PIGLETTE_MEDIUM_03"]]);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(null);
                  }
                  §§pop().§_-x4§(§§pop(),§§pop());
                  addr214:
                  while(true)
                  {
                     §§push(§§findproperty(§_-x4§));
                     §§push("PIG_INTEL_PIGLETTE_BIG");
                     §§push(["normal",["PIG_INTEL_PIGLETTE_BIG_01","PIG_INTEL_PIGLETTE_BIG_02","PIG_INTEL_PIGLETTE_BIG_03"]]);
                     if(!_loc2_)
                     {
                        §§push(null);
                     }
                     §§pop().§_-x4§(§§pop(),§§pop());
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §§push(§§findproperty(§_-x4§));
            §§push("PIG_INTEL_PIGLETTE_GRANDPA");
            §§push(["normal",["PIG_INTEL_PIGLETTE_GRANDPA_01","PIG_INTEL_PIGLETTE_GRANDPA_02","PIG_INTEL_PIGLETTE_GRANDPA_03"]]);
            if(!(_loc2_ && this))
            {
               §§push(null);
            }
            §§pop().§_-x4§(§§pop(),§§pop());
            §§goto(addr93);
         }
         §§goto(addr62);
      }
   }
}
