package §,!7§
{
   public class §%$§ extends AnimationManager
   {
       
      
      public function §%$§(textureManager:TextureManager)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               while(!_loc3_)
               {
                  while(!(_loc3_ && this))
                  {
                     if(!_loc3_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            super(textureManager);
            §§goto(addr46);
         }
      }
      
      override public function initializeAnimations(itemNames:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  super.initializeAnimations(itemNames);
                  addr165:
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §`,§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
                     continue loop0;
                     addr39:
                     if(_loc3_ || _loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr204);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               super.initializeBirdAnimations();
               while(!_loc2_)
               {
                  if(!_loc2_)
                  {
                     return;
                     addr46:
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      override protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc1_)
         {
            loop0:
            while(true)
            {
               super.initializePigAnimations();
               addr407:
               while(true)
               {
                  while(true)
                  {
                     §§push(§§findproperty(§"!O§));
                     §§push("PIG_INTEL_PIGLETTE_SMALL");
                     §§push("normal");
                     §§push("PIG_INTEL_PIGLETTE_SMALL_01");
                     §§push("PIG_INTEL_PIGLETTE_SMALL_02");
                     §§push("PIG_INTEL_PIGLETTE_SMALL_03");
                     if(!_loc2_)
                     {
                     }
                     §§push(null);
                     if(_loc2_)
                     {
                        §§push("blink");
                        §§push("PIG_INTEL_PIGLETTE_SMALL_01_BLINK");
                        §§push("PIG_INTEL_PIGLETTE_SMALL_02_BLINK");
                        §§push("PIG_INTEL_PIGLETTE_SMALL_02_BLINK");
                        if(_loc1_)
                        {
                        }
                        §§push(null);
                        §§push("yell");
                        §§push("PIG_INTEL_PIGLETTE_SMALL_01_SMILE");
                        §§push("PIG_INTEL_PIGLETTE_SMALL_02_SMILE");
                        §§push("PIG_INTEL_PIGLETTE_SMALL_03_SMILE");
                        if(!_loc2_)
                        {
                        }
                        §§push(null);
                     }
                     §§pop().§"!O§(§§pop(),§§pop());
                     addr399:
                     addr56:
                     while(true)
                     {
                        continue loop0;
                     }
                     if(_loc2_ || _loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(§§findproperty(§"!O§));
            §§push("PIG_INTEL_PIGLETTE_MEDIUM");
            §§push("normal");
            §§push("PIG_INTEL_PIGLETTE_MEDIUM_01");
            §§push("PIG_INTEL_PIGLETTE_MEDIUM_02");
            §§push("PIG_INTEL_PIGLETTE_MEDIUM_03");
            if(!_loc2_)
            {
            }
            §§push(null);
            if(!_loc1_)
            {
               §§push("blink");
               §§push("PIG_INTEL_PIGLETTE_MEDIUM_01_BLINK");
               §§push("PIG_INTEL_PIGLETTE_MEDIUM_02_BLINK");
               §§push("PIG_INTEL_PIGLETTE_MEDIUM_03_BLINK");
               if(_loc1_)
               {
               }
               §§push(null);
               §§push("yell");
               §§push("PIG_INTEL_PIGLETTE_MEDIUM_01_SMILE");
               §§push("PIG_INTEL_PIGLETTE_MEDIUM_02_SMILE");
               §§push("PIG_INTEL_PIGLETTE_MEDIUM_03_SMILE");
               if(!_loc2_)
               {
               }
               §§push(null);
            }
            §§pop().§"!O§(§§pop(),§§pop());
            loop6:
            while(true)
            {
               addr307:
               while(true)
               {
                  §§push(§§findproperty(§"!O§));
                  §§push("PIG_INTEL_PIGLETTE_BIG");
                  §§push("normal");
                  §§push("PIG_INTEL_PIGLETTE_BIG_01");
                  §§push("PIG_INTEL_PIGLETTE_BIG_02");
                  §§push("PIG_INTEL_PIGLETTE_BIG_03");
                  if(_loc1_)
                  {
                  }
                  §§push(null);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push("blink");
                     §§push("PIG_INTEL_PIGLETTE_BIG_01_BLINK");
                     §§push("PIG_INTEL_PIGLETTE_BIG_02_BLINK");
                     §§push("PIG_INTEL_PIGLETTE_BIG_03_BLINK");
                     if(_loc2_ || this)
                     {
                     }
                     §§push(null);
                     §§push("yell");
                     §§push("PIG_INTEL_PIGLETTE_BIG_01_SMILE");
                     §§push("PIG_INTEL_PIGLETTE_BIG_02_SMILE");
                     §§push("PIG_INTEL_PIGLETTE_BIG_03_SMILE");
                     if(_loc2_ || this)
                     {
                     }
                     §§push(null);
                  }
                  §§pop().§"!O§(§§pop(),§§pop());
                  continue loop6;
               }
            }
         }
      }
   }
}
