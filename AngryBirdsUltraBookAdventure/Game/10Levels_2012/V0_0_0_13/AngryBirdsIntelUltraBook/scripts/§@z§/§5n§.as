package §@z§
{
   import § D§.§]!B§;
   import §7p§.§+!N§;
   import §<!S§.StateCreditsNew;
   import §<!S§.StateCutScene;
   import §>!-§.UIEventListenerRovio;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.events.Event;
   
   public class §5n§ extends StateCutScene
   {
       
      
      public function §5n§(initState:Boolean = true, name:String = "StateCutScene")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     super(initState,name);
                     loop3:
                     while(!(_loc3_ && name))
                     {
                        if(_loc4_)
                        {
                           while(true)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 continue loop0;
                              }
                              continue loop3;
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
      
      override public function activate() : void
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
               super.activate();
               loop1:
               while(!(_loc2_ && _loc1_))
               {
                  while(true)
                  {
                     (§]!B§.§%h§ as AngryBirdsUltraBook).§8$§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
                     while(_loc2_ && this)
                     {
                     }
                     if(_loc1_ || _loc1_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr86);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
            while(true)
            {
               super.init();
            }
            addr113:
         }
         loop1:
         while(true)
         {
            loop2:
            while(!_loc1_)
            {
               §5!M§.getItemByName("Button_Fullscreen").setVisibility(false);
               loop3:
               while(true)
               {
                  loop4:
                  while(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        §5!M§.getItemByName("Button_Fullscreen").setVisibility(false);
                        while(_loc2_)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 return;
                              }
                              continue loop4;
                              continue loop4;
                           }
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
                  continue loop2;
               }
            }
            §§goto(addr113);
         }
      }
      
      override protected function onCutSceneNotAvailable(e:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_ || e)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(_loc3_ || _loc3_)
                  {
                     while(true)
                     {
                        super.onCutSceneNotAvailable(e);
                        continue loop0;
                     }
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     if(false)
                     {
                        §§goto(addr41);
                     }
                     else
                     {
                        addr79:
                        var cutSceneName:String = §0n§();
                        if(_loc3_)
                        {
                           while(true)
                           {
                              §§push(§+!N§);
                              §§push("cutscene-");
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + cutSceneName);
                              }
                              §§pop().§4!-§(§§pop());
                              loop7:
                              while(_loc3_ || _loc3_)
                              {
                                 while(!_loc3_)
                                 {
                                    continue loop7;
                                 }
                                 return;
                              }
                           }
                        }
                        §§goto(addr122);
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(!_loc4_)
            {
               §§goto(addr32);
            }
            §§goto(addr56);
         }
         §§goto(addr79);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && component)
         {
         }
         if(_loc6_ || eventIndex)
         {
            while(true)
            {
               loop1:
               while(_loc6_ || component)
               {
                  loop2:
                  while(true)
                  {
                     while(_loc6_ || eventName)
                     {
                        super.uiInteractionHandler(eventIndex,eventName,component);
                        if(_loc6_ || component)
                        {
                           if(_loc6_)
                           {
                              break loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
                  var _loc4_:* = eventName;
                  if(!_loc5_)
                  {
                     §§push("showCredits");
                     if(!_loc6_)
                     {
                     }
                     if(§§pop() === _loc4_)
                     {
                        if(_loc6_)
                        {
                           addr155:
                           §§push(0);
                           if(!(_loc6_ || this))
                           {
                              addr169:
                           }
                        }
                        else
                        {
                           addr166:
                           §§push(1);
                           if(_loc6_)
                           {
                              §§goto(addr169);
                           }
                        }
                        §§goto(addr171);
                     }
                     if(false)
                     {
                        §§goto(addr166);
                     }
                     else
                     {
                        §§push(1);
                     }
                     addr171:
                     loop9:
                     switch(§§pop())
                     {
                        case 0:
                           while(true)
                           {
                              mNextState = StateCreditsNew.STATE_NAME;
                              loop5:
                              while(!(_loc5_ && this))
                              {
                                 loop6:
                                 while(true)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       trace("Really going to credits screen");
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             if(!(_loc5_ && eventName))
                                             {
                                                if(true)
                                                {
                                                   break loop7;
                                                }
                                                continue loop7;
                                             }
                                             continue;
                                          }
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                    break loop9;
                                 }
                              }
                           }
                     }
                     return;
                     §§goto(addr166);
                  }
                  §§goto(addr155);
               }
            }
         }
         §§goto(addr116);
      }
   }
}
