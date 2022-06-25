package §9c§
{
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   
   public class StateFeed extends StateBase
   {
      
      public static const STATE_NAME:String = "FeedState";
      
      {
         var STATE_NAME:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && StateFeed))
         {
            do
            {
               STATE_NAME = "FeedState";
            }
            while(!STATE_NAME);
            
         }
      }
      
      private var §7!^§:Boolean = false;
      
      public function StateFeed(initState:Boolean = false, name:String = "FeedState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc3_ && _loc3_)
         {
         }
         while(true)
         {
            while(_loc4_ || _loc3_)
            {
               do
               {
                  super(initState,name);
                  while(!_loc4_)
                  {
                  }
               }
               while(_loc3_);
               
               if(!(_loc3_ && name))
               {
                  return;
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            while(true)
            {
               super.init();
               addr81:
               if(_loc1_ && this)
               {
                  continue;
               }
               addr88:
               if(!_loc1_)
               {
                  addr37:
                  if(_loc1_ && _loc1_)
                  {
                     loop3:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           loop4:
                           while(true)
                           {
                              §^,§.init(§3!5§.§4@§.Views.View_Feed[0]);
                              addr67:
                              addr108:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr81);
                                 §§goto(addr88);
                              }
                              while(true)
                              {
                                 break loop3;
                              }
                           }
                        }
                        break;
                        §§goto(addr37);
                     }
                     while(true)
                     {
                        §^,§ = new §-!H§(this);
                        §§goto(addr98);
                     }
                     addr98:
                  }
                  return;
               }
               §§goto(addr67);
            }
         }
         §§goto(addr108);
      }
      
      override public function activate() : void
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
               super.activate();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        continue loop1;
                     }
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     if(StateStart.§3w§ == null)
                     {
                        break;
                     }
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                  }
                  return;
               }
            }
         }
         while(true)
         {
            §§goto(addr67);
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               addr34:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(_loc3_ || deltaTime)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr34);
         }
         §§push(super.run(deltaTime));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var superReturn:* = §§pop();
         if(_loc3_ || this)
         {
            loop4:
            do
            {
               for(§§push(superReturn); §§pop() != StateBase.STATE_STATUS_RUNNING; )
               {
                  §§push(superReturn);
                  if(!(_loc4_ && _loc3_))
                  {
                     return §§pop();
                  }
               }
               while(mNextState.length > 0)
               {
                  if(!_loc4_)
                  {
                     continue loop4;
                  }
               }
            }
            while(!(_loc3_ || this));
            
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         loop0:
         while(true)
         {
            this.§7!^§ = false;
            while(true)
            {
               addr79:
               while(!_loc1_)
               {
                  super.deActivate();
                  continue loop0;
               }
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(true)
            {
               super.cleanup();
               while(!(_loc2_ && _loc2_))
               {
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  return;
                  addr61:
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(_loc6_ || this)
         {
         }
         do
         {
            while(_loc5_)
            {
            }
         }
         while(_loc5_ && eventIndex);
         
         var _loc4_:* = eventName;
         if(_loc6_ || eventIndex)
         {
            §§push("CLOSE_FEED");
            if(_loc5_)
            {
            }
            if(§§pop() !== _loc4_)
            {
               if(false)
               {
                  §§goto(addr121);
               }
               else
               {
                  §§push(1);
               }
               addr126:
               loop4:
               switch(§§pop())
               {
                  case 0:
                     while(true)
                     {
                        while(true)
                        {
                           mNextState = StatePlay.STATE_NAME;
                           if(!(_loc6_ || eventName))
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
            if(_loc6_)
            {
               §§push(0);
               if(_loc5_ && component)
               {
               }
            }
            else
            {
               addr121:
               §§push(1);
               if(_loc5_)
               {
               }
            }
            §§goto(addr126);
         }
         §§goto(addr121);
      }
   }
}
