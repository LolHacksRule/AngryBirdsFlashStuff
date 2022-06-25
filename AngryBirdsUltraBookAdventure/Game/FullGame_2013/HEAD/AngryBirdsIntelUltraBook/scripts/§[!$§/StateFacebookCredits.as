package §[!$§
{
   import §0!Q§.UIEventListenerRovio;
   import §7t§.StateChapterSelection;
   import §7t§.StateCreditsNew;
   import §91§.§4!"§;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §?!Y§.§`S§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class StateFacebookCredits extends StateCreditsNew
   {
       
      
      public function StateFacebookCredits(initState:Boolean = false, name:String = "CreditsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(!(_loc4_ && this))
         {
            while(true)
            {
               addr89:
               addr68:
               while(true)
               {
               }
               if(_loc4_ && _loc3_)
               {
                  continue;
               }
               return;
               addr75:
            }
         }
         loop2:
         while(true)
         {
            super(initState,name);
            while(!_loc4_)
            {
               if(!(_loc4_ && this))
               {
                  continue loop2;
               }
            }
            §§goto(addr89);
         }
         §§goto(addr75);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && _loc1_)
         {
         }
         while(true)
         {
            super.activate();
            while(!_loc2_)
            {
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               §`=§ = new §`X§(this);
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §`=§.init(§+q§.§%M§.Views.View_Credits[0]);
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §`=§.getItemByName("MovieClip_Loading").setVisibility(true);
                           while(_loc1_)
                           {
                              while(_loc1_ || this)
                              {
                                 continue loop2;
                                 addr50:
                                 if(_loc1_ || this)
                                 {
                                    addr57:
                                    if(!_loc2_)
                                    {
                                       addr94:
                                       return;
                                       addr120:
                                    }
                                    while(!(_loc2_ && _loc1_))
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr50);
                                       §§goto(addr57);
                                    }
                                    while(_loc1_ || _loc2_)
                                    {
                                       continue loop4;
                                       §§goto(addr41);
                                    }
                                    addr41:
                                    while(_loc1_ || _loc2_)
                                    {
                                       §§goto(addr60);
                                    }
                                    addr60:
                                    while(!_loc2_)
                                    {
                                       continue loop1;
                                       §§goto(addr94);
                                    }
                                    addr94:
                                    continue loop3;
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §&!C§ = true;
            §§goto(addr94);
         }
      }
      
      override protected function readyToShowCredits() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         do
         {
            §`=§.getItemByName("MovieClip_Loading").setVisibility(false);
            while(!(_loc2_ || this))
            {
            }
         }
         while(!_loc2_);
         
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && eventIndex)
         {
         }
         if(_loc5_ || this)
         {
            while(true)
            {
               while(_loc5_ || eventName)
               {
                  while(!(_loc6_ && this))
                  {
                     loop3:
                     while(_loc5_ || this)
                     {
                        while(true)
                        {
                           super.uiInteractionHandler(eventIndex,eventName,component);
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        var _loc4_:* = eventName;
                        if(_loc5_)
                        {
                           §§push("CREDITS_CLOSE_BUTTON");
                           if(_loc5_)
                           {
                              if(!(_loc6_ && this))
                              {
                                 §§push(_loc4_);
                                 if(_loc5_ || this)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          addr193:
                                          §§push(0);
                                          if(!(_loc5_ || eventName))
                                          {
                                             addr234:
                                          }
                                       }
                                       else
                                       {
                                          addr231:
                                          §§push(2);
                                          if(!_loc6_)
                                          {
                                             §§goto(addr234);
                                          }
                                       }
                                       §§goto(addr236);
                                    }
                                    else
                                    {
                                       §§push("APP_ENGINE_BUTTON");
                                       if(_loc5_)
                                       {
                                          addr216:
                                          if(§§pop() !== _loc4_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr231);
                                             }
                                             else
                                             {
                                                §§push(2);
                                             }
                                             addr236:
                                             loop10:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   StateFacebookEpisodeSelection.sPreviousState = STATE_NAME;
                                                   do
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         mNextState = StateChapterSelection.STATE_NAME;
                                                         addr90:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || component)
                                                            {
                                                               break loop6;
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                   while(_loc6_);
                                                   
                                                   break;
                                                   addr105:
                                                   addr100:
                                                case 1:
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && eventIndex))
                                                      {
                                                         while(true)
                                                         {
                                                            navigateToURL(new URLRequest("https://developers.google.com/appengine/"),"_blank");
                                                            if(!(_loc6_ && component))
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§goto(addr90);
                                                         }
                                                         break loop10;
                                                         addr44:
                                                      }
                                                      §§goto(addr105);
                                                   }
                                                   §§goto(addr100);
                                             }
                                             return;
                                          }
                                          if(_loc5_)
                                          {
                                             §§push(1);
                                             if(_loc6_ && eventIndex)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr231);
                                          }
                                          §§goto(addr236);
                                          addr215:
                                       }
                                       §§goto(addr216);
                                    }
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr215);
                           }
                           §§goto(addr216);
                        }
                        §§goto(addr193);
                     }
                  }
               }
            }
         }
         §§goto(addr135);
      }
   }
}
