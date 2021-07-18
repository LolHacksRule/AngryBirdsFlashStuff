package §?w§
{
   import §'!"§.§?!6§;
   import §-!7§.§&$§;
   import §1A§.§?!0§;
   import §4W§.§!]§;
   import §4W§.§3!@§;
   import §9N§.§9!%§;
   import §9N§.§;c§;
   import §;!1§.§&!@§;
   import §<!+§.§[!!§;
   import §<!+§.§with§;
   import §`a§.Sprite;
   import flash.display.Stage;
   
   public class §!&§ extends §9!%§
   {
       
      
      public function §!&§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super(param1);
         }
      }
      
      override public function init(param1:§with§) : void
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
         if(!(_loc1_ && _loc2_))
         {
            §&q§ = new §&!@§(§[!!§.§7!F§);
         }
      }
      
      override protected function loadPreviousReplayData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§,$§)
            {
               if(_loc1_)
               {
                  §`@§ = §&!@§.§[I§(§,$§);
               }
               loop0:
               while(true)
               {
                  §`@§.speed = 1;
                  addr69:
                  while(true)
                  {
                     §`@§.play();
                     while(!_loc2_)
                     {
                        §^=§ = -1000;
                        while(_loc1_ || this)
                        {
                           if(_loc1_)
                           {
                              §,$§ = null;
                              if(_loc1_)
                              {
                                 §§goto(addr24);
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr69);
      }
      
      override protected function initLevelSlingshot(param1:§with§) : §;c§
      {
         return new §null§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§!]§) : §3!@§
      {
         return new §?!0§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§with§) : §&$§
      {
         return new §?!6§(this,param1,new Sprite());
      }
      
      public function §@!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(§&q§)
            {
               if(!_loc1_)
               {
                  (§&q§ as §&!@§).§20§(mLevelEngine.currentStep);
               }
            }
         }
      }
      
      public function §`!P§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§[!!§.§7!F§);
            loop0:
            while(true)
            {
               §§push(§§pop() == "1-1");
               addr106:
               while(true)
               {
                  §§push(!§§pop());
                  addr107:
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              addr77:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       break;
                                       addr81:
                                    }
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§pop();
                                          if(_loc1_ || this)
                                          {
                                             §§push(§[!!§.§7!F§);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() == "1-3");
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                if(!_loc2_)
                                                {
                                                   §§push(!§§pop());
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          addr110:
                                          addr110:
                                          while(true)
                                          {
                                             §§push(§[!!§.§7!F§);
                                             continue loop0;
                                          }
                                          addr110:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             §§goto(addr110);
                                          }
                                          addr109:
                                       }
                                       §§goto(addr110);
                                    }
                                    if(_loc1_ || _loc2_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              return §§pop();
                           }
                           addr76:
                        }
                        §§goto(addr109);
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
   }
}
