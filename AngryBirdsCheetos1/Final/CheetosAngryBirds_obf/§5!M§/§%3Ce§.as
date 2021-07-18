package §5!M§
{
   import § `§.§2w§;
   import § `§.§5L§;
   import §!X§.§#K§;
   import §!X§.§86§;
   import §#![§.§7v§;
   import §,h§.§6M§;
   import §9! §.§%e§;
   import §<!Z§.§&!B§;
   import §]!F§.§&!]§;
   import §]!F§.§7e§;
   import §]@§.Sprite;
   import flash.display.Stage;
   
   public class §<e§ extends §86§
   {
       
      
      public function §<e§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super(param1);
         }
      }
      
      override public function init(param1:§&!]§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.init(param1);
         }
      }
      
      override protected function initReplay() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §;_§ = new §&!B§(§7e§.§^"§);
         }
      }
      
      override protected function loadPreviousReplayData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§#l§)
            {
               if(_loc2_ || _loc2_)
               {
                  §5!>§ = §&!B§.§&O§(§#l§);
               }
               loop0:
               while(true)
               {
                  §5!>§.speed = 1;
                  while(true)
                  {
                     §5!>§.play();
                     addr56:
                     while(!_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      override protected function initLevelSlingshot(param1:§&!]§) : §#K§
      {
         return new §7!0§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§2w§) : §5L§
      {
         return new §%e§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§&!]§) : §6M§
      {
         return new §7v§(this,param1,new Sprite());
      }
      
      public function §>E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§;_§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr47:
                  (§;_§ as §&!B§).§^p§(mLevelEngine.currentStep);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §#n§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§7e§.§^"§);
            loop0:
            while(true)
            {
               §§push(§§pop() == "1-1");
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr116:
                              while(true)
                              {
                                 §§push(§7e§.§^"§);
                                 addr79:
                                 while(true)
                                 {
                                    §§push(§§pop() == "1-2");
                                    addr81:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(!§§pop());
                                    }
                                 }
                              }
                           }
                           addr115:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc2_ || _loc1_))
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    if(!_loc1_)
                                    {
                                       §§push(§7e§.§^"§);
                                       if(_loc2_ || this)
                                       {
                                          if(_loc1_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(§§pop() == "1-3");
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(_loc1_)
                                             {
                                                continue;
                                             }
                                             §§push(!§§pop());
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop6;
                                          }
                                          if(_loc2_)
                                          {
                                             if(_loc2_ || _loc1_)
                                             {
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   §§goto(addr72);
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr115);
                                          }
                                          §§goto(addr81);
                                       }
                                       §§goto(addr79);
                                    }
                                    break;
                                 }
                                 §§goto(addr116);
                              }
                              addr72:
                              return §§pop();
                           }
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr116);
      }
   }
}
