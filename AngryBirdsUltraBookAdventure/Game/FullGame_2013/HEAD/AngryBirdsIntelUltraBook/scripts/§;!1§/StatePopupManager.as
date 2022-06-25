package §;!1§
{
   import § +§.§`!U§;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends StateBase implements IEventDispatcher
   {
      
      public static const STATE_NAME:String = "StatePopupManager";
      
      {
         var STATE_NAME:Boolean = true;
         var _loc2_:Boolean = false;
         if(STATE_NAME || StatePopupManager)
         {
            do
            {
               STATE_NAME = "StatePopupManager";
            }
            while(_loc2_);
            
         }
      }
      
      protected var § !j§:EventDispatcher;
      
      public function StatePopupManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            while(true)
            {
               super(false,STATE_NAME);
               loop1:
               while(_loc2_ || _loc2_)
               {
                  do
                  {
                     this.§ !j§ = new EventDispatcher();
                     while(!(_loc1_ && _loc1_))
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        §§goto(addr52);
                     }
                     continue loop1;
                  }
                  while(!(_loc2_ || _loc1_));
                  
                  return;
               }
            }
         }
         §§goto(addr85);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && this)
         {
         }
         if(!_loc4_)
         {
            while(true)
            {
               loop1:
               for(; _loc5_; if(_loc4_ && this)
               {
                  continue;
               },§§goto(addr54))
               {
                  while(true)
                  {
                     addr79:
                     if(_loc5_ || eventIndex)
                     {
                        addr86:
                        if(!_loc4_)
                        {
                           continue loop1;
                        }
                        loop4:
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              while(true)
                              {
                                 this.dispatchEvent(new §`!U§(§`!U§.UI_INTERACTION,eventIndex,eventName,component));
                                 continue loop4;
                              }
                              return;
                              addr54:
                              addr89:
                           }
                           §§goto(addr79);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         if(!(_loc6_ && type))
         {
            while(true)
            {
               addr110:
               while(true)
               {
                  addr107:
                  while(true)
                  {
                  }
               }
               addr89:
               if(!(_loc7_ || this))
               {
                  continue;
               }
               this.§ !j§.addEventListener(type,listener,useCapture,priority,useWeakReference);
               while(!(_loc7_ || listener))
               {
               }
               addr96:
               if(_loc7_ || this)
               {
                  if(_loc6_)
                  {
                     loop4:
                     while(!_loc6_)
                     {
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              §§goto(addr89);
                           }
                           addr104:
                           while(true)
                           {
                              continue loop4;
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr110);
                  }
                  return;
               }
               §§goto(addr85);
            }
         }
         §§goto(addr104);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc4_ || type)
         {
            while(true)
            {
               loop1:
               for(; !(_loc5_ && listener); if(!(_loc5_ && useCapture))
               {
                  addr77:
                  return;
               })
               {
                  loop2:
                  while(true)
                  {
                     addr89:
                     while(true)
                     {
                        this.§ !j§.removeEventListener(type,listener,useCapture);
                        while(_loc5_)
                        {
                        }
                        if(!(_loc5_ && listener))
                        {
                           if(_loc4_ || this)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr77);
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc3_ || _loc2_)
         {
         }
         while(_loc2_ && _loc2_)
         {
         }
         return this.§ !j§.dispatchEvent(event);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(!(_loc3_ && this))
         {
            while(_loc3_ && type)
            {
            }
         }
         return this.§ !j§.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(!(_loc3_ && this))
         {
            while(_loc3_ && _loc2_)
            {
            }
         }
         return this.§ !j§.willTrigger(type);
      }
   }
}
