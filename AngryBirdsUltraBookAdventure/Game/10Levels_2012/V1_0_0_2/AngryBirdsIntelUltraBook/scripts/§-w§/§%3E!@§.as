package §-w§
{
   public class §>!@§ extends §^!&§
   {
       
      
      public function §>!@§(param1:§,Q§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super(param1);
         }
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.initializeAnimations(param1);
         }
         loop0:
         while(true)
         {
            §1V§("POWERUP_BOMB",["POWERUP_DROP_01"]);
            while(true)
            {
               §1V§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
               while(_loc3_)
               {
                  §1V§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
                  loop3:
                  do
                  {
                     §1V§("INTEL_SLINGSHOT",["INTEL_SLING_SHOT_01_BACK","INTEL_SLING_SHOT_01_FRONT"]);
                     while(true)
                     {
                        §1V§("LASER_DOT",["LASER_DOT"]);
                        while(_loc3_ || _loc3_)
                        {
                           §1V§("INTEL_SMOKE_CLOUD",["INTEL_SMOKE_CLOUD_1","INTEL_SMOKE_CLOUD_2","INTEL_SMOKE_CLOUD_3","INTEL_SMOKE_CLOUD_4","INTEL_SMOKE_CLOUD_5","INTEL_SMOKE_CLOUD_6"]);
                           if(_loc3_)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
                  while(!_loc3_);
                  
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.initializeBirdAnimations();
         }
      }
      
      override protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.initializePigAnimations();
            while(true)
            {
               §§push(§§findproperty(§;!%§));
               §§push("PIG_INTEL_PIGLETTE_SMALL");
               §§push(["normal",["PIG_INTEL_PIGLETTE_SMALL_01","PIG_INTEL_PIGLETTE_SMALL_02","PIG_INTEL_PIGLETTE_SMALL_03"]]);
               if(_loc1_)
               {
                  §§push(null);
               }
               §§pop().§;!%§(§§pop(),§§pop());
               while(_loc1_ || _loc1_)
               {
                  §§push(§§findproperty(§;!%§));
                  §§push("PIG_INTEL_PIGLETTE_MEDIUM");
                  §§push(["normal",["PIG_INTEL_PIGLETTE_MEDIUM_01","PIG_INTEL_PIGLETTE_MEDIUM_02","PIG_INTEL_PIGLETTE_MEDIUM_03"]]);
                  if(_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§;!%§(§§pop(),§§pop());
                  loop2:
                  for(; _loc1_ || _loc2_; loop5:
                  while(_loc1_ || this)
                  {
                     while(true)
                     {
                        §§push(§§findproperty(§;!%§));
                        §§push("PIG_INTEL_PIGLETTE_KING");
                        §§push(["normal",["PIG_INTEL_PIGLETTE_KING_01","PIG_INTEL_PIGLETTE_KING_02","PIG_INTEL_PIGLETTE_KING_03"]]);
                        if(_loc1_)
                        {
                           §§push(null);
                        }
                        §§pop().§;!%§(§§pop(),§§pop());
                        if(_loc2_ && this)
                        {
                           continue loop5;
                        }
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr128);
                     }
                     return;
                  })
                  {
                     §§push(§§findproperty(§;!%§));
                     §§push("PIG_INTEL_PIGLETTE_BIG");
                     §§push(["normal",["PIG_INTEL_PIGLETTE_BIG_01","PIG_INTEL_PIGLETTE_BIG_02","PIG_INTEL_PIGLETTE_BIG_03"]]);
                     if(!_loc2_)
                     {
                        §§push(null);
                     }
                     §§pop().§;!%§(§§pop(),§§pop());
                     while(true)
                     {
                        §§push(§§findproperty(§;!%§));
                        §§push("PIG_INTEL_PIGLETTE_HELMET");
                        §§push(["normal",["PIG_INTEL_PIGLETTE_HELMET_01","PIG_INTEL_PIGLETTE_HELMET_02","PIG_INTEL_PIGLETTE_HELMET_03"]]);
                        if(_loc1_)
                        {
                           §§push(null);
                        }
                        §§pop().§;!%§(§§pop(),§§pop());
                        addr128:
                        while(true)
                        {
                           §§push(§§findproperty(§;!%§));
                           §§push("PIG_INTEL_PIGLETTE_GRANDPA");
                           §§push(["normal",["PIG_INTEL_PIGLETTE_GRANDPA_01","PIG_INTEL_PIGLETTE_GRANDPA_02","PIG_INTEL_PIGLETTE_GRANDPA_03"]]);
                           if(!_loc2_)
                           {
                              §§push(null);
                           }
                           §§pop().§;!%§(§§pop(),§§pop());
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
   }
}
