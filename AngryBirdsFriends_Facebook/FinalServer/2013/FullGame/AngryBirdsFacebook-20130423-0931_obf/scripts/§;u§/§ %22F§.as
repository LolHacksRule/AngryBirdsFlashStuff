package §;u§
{
   import §"a§.§!"J§;
   import §%i§.§7"0§;
   import §1!t§.§""B§;
   import §4;§.§=!^§;
   import §8!^§.§,p§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §9@§.§@q§;
   import §@!"§.§?l§;
   import com.AngryBirds.friendsbar.§]a§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class § "F§ extends StateCutScene
   {
       
      
      private var §]!i§:Loader;
      
      public function § "F§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            (§?l§.§ "G§ as §%"S§).§ b§(§]a§.§!!;§);
            loop1:
            while(true)
            {
               §§push(LevelManager.§ T§);
               loop2:
               while(true)
               {
                  §§push("2000-75");
                  loop3:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc1_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           loop16:
                           while(true)
                           {
                              §§pop();
                              addr211:
                              while(true)
                              {
                                 §§push(!§@"+§);
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop16;
                              }
                           }
                           addr210:
                        }
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§push(LevelManager.§&"V§);
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 §§push("4001-15");
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    continue loop3;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    (§2"@§.getItemByName("Button_Skip") as §7"0§).§[o§(§""B§.LISTENER_EVENT_MOUSE_UP,"SKIP");
                                    loop9:
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §2"@§.getItemByName("Button_Skip").setVisibility(!§@"+§);
                                          while(true)
                                          {
                                             if(_loc1_ || _loc1_)
                                             {
                                                if(_loc1_ || _loc1_)
                                                {
                                                   §2"@§.getItemByName("Button_Close").setVisibility(§@"+§);
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr41:
                                                      if(!(_loc2_ && this))
                                                      {
                                                         return;
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                                addr173:
                                                while(true)
                                                {
                                                   §@"T§(true);
                                                   break loop10;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   (§2"@§.getItemByName("Button_Skip") as §7"0§).§[o§(§""B§.LISTENER_EVENT_MOUSE_UP,"SHOWCREDITS");
                                                }
                                                addr149:
                                             }
                                             while(true)
                                             {
                                                if(_loc2_ && this)
                                                {
                                                   break loop10;
                                                }
                                                continue loop10;
                                             }
                                             addr64:
                                             while(!(_loc2_ && _loc2_))
                                             {
                                                if(_loc1_)
                                                {
                                                   §2"@§.getItemByName("Button_Next1").setVisibility(§@"+§ && §,p§.§'"&§(§"d§ + 1));
                                                   if(_loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr41);
                                                   continue;
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             continue loop1;
                                          }
                                          continue loop4;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              continue loop2;
                              addr135:
                           }
                           §§goto(addr173);
                        }
                     }
                     §§goto(addr210);
                  }
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
         }
         do
         {
            §2"@§.getItemByName("Button_Fullscreen").setVisibility(false);
         }
         while(!_loc2_);
         
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.onCutSceneNotAvailable(param1);
         }
         var _loc2_:String = §5!e§();
         if(!_loc4_)
         {
            §§push(§@q§);
            §§push("cutscene-");
            if(!_loc4_)
            {
               §§push(§§pop() + _loc2_);
            }
            §§pop().§<d§(§§pop());
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("SHOWCREDITS");
            if(!(_loc5_ && this))
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() !== §§pop())
                  {
                     §§push("CLOSE_BUTTON");
                     if(!(_loc5_ && param2))
                     {
                        §§push(_loc4_);
                        if(!_loc5_)
                        {
                           addr143:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(1);
                                 if(!(_loc6_ || param3))
                                 {
                                    §§goto(addr199);
                                 }
                              }
                              else
                              {
                                 §§goto(addr191);
                              }
                              §§goto(addr204);
                           }
                           else
                           {
                              §§push("PREVIOUS_CUTSCENE");
                              if(!_loc5_)
                              {
                                 §§goto(addr158);
                              }
                              §§goto(addr189);
                           }
                        }
                        §§goto(addr166);
                     }
                     addr158:
                     §§push(_loc4_);
                     if(!(_loc5_ && param1))
                     {
                        addr166:
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc5_ && param2))
                           {
                              §§push(2);
                              if(!_loc6_)
                              {
                                 §§goto(addr199);
                              }
                           }
                           else
                           {
                              §§goto(addr191);
                           }
                           §§goto(addr204);
                        }
                        else
                        {
                           addr189:
                           §§push("NEXT_CUTSCENE");
                           §§push(_loc4_);
                        }
                        §§goto(addr191);
                     }
                     if(§§pop() === §§pop())
                     {
                        §§goto(addr191);
                     }
                     else
                     {
                        §§push(4);
                     }
                     addr204:
                     switch(§§pop())
                     {
                        case 0:
                           mNextState = §&"[§.STATE_NAME;
                           loop0:
                           while(true)
                           {
                              §@"T§(false);
                              addr75:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                           }
                           break;
                        case 1:
                           mNextState = §,p§.STATE_NAME;
                           §@"T§(false);
                           addr36:
                           break;
                           addr70:
                           addr62:
                        case 2:
                           §,p§.§6"8§(§"d§ - 1);
                           addr43:
                           if(_loc6_ || param3)
                           {
                              if(!(_loc5_ && param3))
                              {
                                 break;
                              }
                              §§goto(addr70);
                           }
                           §§goto(addr62);
                        case 3:
                           §,p§.§6"8§(§"d§ + 1);
                           if(_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr75);
                                 }
                              }
                              else
                              {
                                 §§goto(addr43);
                              }
                              §§goto(addr36);
                           }
                     }
                     return;
                  }
                  if(!(_loc5_ && param2))
                  {
                     addr128:
                     §§push(0);
                     if(_loc5_)
                     {
                        addr199:
                     }
                  }
                  else
                  {
                     addr191:
                     §§push(3);
                     if(!(_loc5_ && param1))
                     {
                        §§goto(addr199);
                     }
                  }
                  §§goto(addr204);
                  §§goto(addr191);
               }
               §§goto(addr143);
            }
            §§goto(addr189);
         }
         §§goto(addr128);
      }
      
      override protected function startCutScene() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §2"@§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push("cutscene_");
         if(_loc3_)
         {
            §§push(§§pop() + §5!e§());
         }
         var _loc1_:String = §§pop();
         var _loc2_:ByteArray = §=!^§.§#A§(_loc1_);
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §!"J§.§1&§.color = 0;
               }
               §§push(§?l§.§'h§);
               loop10:
               while(true)
               {
                  §§push(false);
                  addr263:
                  while(true)
                  {
                     §§pop().§#"[§(§§pop());
                     continue loop10;
                  }
               }
               addr278:
            }
            else
            {
               §2"@§.getItemByName("MovieClip_Cutscene2").setVisibility(false);
               for(; _loc3_; super.startCutScene(),if(!_loc3_)
               {
                  continue;
               },if(_loc4_ && _loc3_)
               {
                  §§goto(addr135);
               },§§goto(addr49))
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr278);
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr164);
               }
               §§goto(addr144);
            }
            §§goto(addr164);
         }
         §§goto(addr228);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §@"M§.§]!n§();
            loop0:
            do
            {
               if(this.§]!i§)
               {
                  loop1:
                  while(true)
                  {
                     §2"@§.getItemByName("MovieClip_Cutscene2").mClip.removeChild(this.§]!i§);
                     while(true)
                     {
                        this.§]!i§.unloadAndStop();
                        loop3:
                        while(!_loc2_)
                        {
                           continue loop1;
                           addr55:
                           addr67:
                           while(!_loc1_)
                           {
                              continue loop3;
                           }
                           while(true)
                           {
                              super.deActivate();
                              if(_loc1_)
                              {
                                 break;
                              }
                              §§goto(addr55);
                              §§goto(addr67);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr28);
            }
            while(_loc2_ && this);
            
            return;
         }
         §§goto(addr81);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super.setViewSize(param1,param2);
         }
         while(§0!1§)
         {
            if(_loc4_ || _loc3_)
            {
               §0!1§.update(0);
            }
            if(!_loc3_)
            {
               break;
            }
         }
      }
   }
}
