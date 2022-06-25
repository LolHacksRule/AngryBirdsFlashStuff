package §<!S§
{
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §>!-§.UIEventListenerRovio;
   
   public class StateFeed extends StateBase
   {
      
      public static const STATE_NAME:String = "FeedState";
      
      {
         var STATE_NAME:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && STATE_NAME)
         {
         }
         do
         {
            STATE_NAME = "FeedState";
         }
         while(_loc2_ && StateFeed);
         
      }
      
      private var §6T§:Boolean = false;
      
      public function StateFeed(initState:Boolean = false, name:String = "FeedState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && name)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               while(!(_loc3_ && _loc3_))
               {
                  loop2:
                  while(_loc4_)
                  {
                     super(initState,name);
                     while(true)
                     {
                        if(_loc4_ || name)
                        {
                           if(!(_loc3_ && this))
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(true)
            {
               super.init();
               loop1:
               for(; !(_loc2_ && _loc1_); if(_loc2_ && this)
               {
                  continue;
               },while(true)
               {
                  §§goto(addr81);
               },addr112:)
               {
                  while(true)
                  {
                     §5!M§ = new §6"§(this);
                     while(_loc1_ || _loc2_)
                     {
                        continue loop1;
                        addr71:
                        if(!(_loc2_ && this))
                        {
                           addr78:
                           if(!(_loc1_ || _loc2_))
                           {
                              while(!(_loc2_ && _loc1_))
                              {
                                 §§goto(addr71);
                                 §§goto(addr78);
                              }
                              while(true)
                              {
                                 §5!M§.init(§>!^§.§8'§.Views.View_Feed[0]);
                                 §§goto(addr64);
                              }
                              addr64:
                              addr81:
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               super.activate();
               addr91:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(StateStart.§"!,§ != null)
         {
            if(_loc2_ || _loc1_)
            {
               §§goto(addr66);
            }
            §§goto(addr74);
         }
         §§goto(addr29);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc4_ && _loc3_)
         {
         }
         while(true)
         {
            while(true)
            {
               while(_loc4_)
               {
               }
               if(_loc3_)
               {
                  if(true)
                  {
                     §§push(super.run(deltaTime));
                     if(_loc3_)
                     {
                        §§push(int(§§pop()));
                     }
                     var superReturn:* = §§pop();
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           §§push(superReturn);
                           §§goto(addr129);
                        }
                     }
                  }
                  continue;
                  while(true)
                  {
                     §§push(superReturn);
                     if(!(_loc4_ && deltaTime))
                     {
                        break;
                     }
                     addr129:
                     while(true)
                     {
                        if(§§pop() == StateBase.STATE_STATUS_RUNNING)
                        {
                           if(mNextState.length <= 0)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              if(_loc4_ && superReturn)
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 continue loop3;
                              }
                           }
                           if(!_loc4_)
                           {
                              return StateBase.STATE_STATUS_COMPLETED;
                           }
                        }
                     }
                     return StateBase.STATE_STATUS_RUNNING;
                  }
                  return §§pop();
               }
               break;
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            while(true)
            {
               this.§6T§ = false;
               loop1:
               for(; !_loc1_; if(_loc1_ && this)
               {
                  continue;
               },§§goto(addr76))
               {
                  loop2:
                  while(true)
                  {
                     super.deActivate();
                     while(true)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                        addr76:
                        if(_loc2_)
                        {
                           return;
                           addr57:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               super.cleanup();
               §§goto(addr54);
            }
         }
         addr54:
         while(true)
         {
            if(!(_loc1_ && this))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && component)
         {
         }
         if(_loc5_ || component)
         {
            do
            {
               while(!(_loc5_ || eventName))
               {
               }
            }
            while(!_loc5_);
            
         }
         var _loc4_:* = eventName;
         if(_loc5_)
         {
            §§push("CLOSE_FEED");
            if(_loc6_ && component)
            {
            }
            if(§§pop() !== _loc4_)
            {
               if(false)
               {
                  §§goto(addr130);
               }
               else
               {
                  §§push(1);
               }
               addr140:
               loop4:
               switch(§§pop())
               {
                  case 0:
                     while(true)
                     {
                        while(true)
                        {
                           mNextState = StatePlay.STATE_NAME;
                           if(!(_loc5_ || this))
                           {
                              break;
                           }
                           if(true)
                           {
                              break loop4;
                           }
                        }
                     }
               }
               return;
            }
            if(!(_loc6_ && eventIndex))
            {
               §§push(0);
               if(_loc6_ && eventIndex)
               {
                  addr138:
               }
            }
            else
            {
               addr130:
               §§push(1);
               if(_loc5_ || eventIndex)
               {
                  §§goto(addr138);
               }
            }
            §§goto(addr140);
         }
         §§goto(addr130);
      }
   }
}
