package §%!4§
{
   import §2!i§.§7"§;
   import §4H§.StateBase;
   import §>!-§.UIEventListenerRovio;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends StateBase implements IEventDispatcher
   {
      
      public static const STATE_NAME:String = "StatePopupManager";
      
      {
         var STATE_NAME:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || STATE_NAME)
         {
         }
         do
         {
            STATE_NAME = "StatePopupManager";
         }
         while(!_loc2_);
         
      }
      
      protected var §2K§:EventDispatcher;
      
      public function StatePopupManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            loop0:
            while(true)
            {
               super(false,STATE_NAME);
               while(true)
               {
                  loop2:
                  while(_loc2_ || _loc1_)
                  {
                     while(true)
                     {
                        this.§2K§ = new EventDispatcher();
                        while(!(_loc1_ && this))
                        {
                           if(_loc1_ && this)
                           {
                              continue;
                           }
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           §§goto(addr59);
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(_loc5_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop3:
                     while(_loc5_)
                     {
                        continue loop1;
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                  }
               }
               if(!(_loc5_ || eventIndex))
               {
                  continue;
               }
               this.dispatchEvent(new §7"§(§7"§.UI_INTERACTION,eventIndex,eventName,component));
               §§goto(addr67);
            }
         }
         §§goto(addr67);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && type)
         {
         }
         if(_loc6_ && this)
         {
         }
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  do
                  {
                     while(true)
                     {
                        continue loop2;
                        addr77:
                        while(!(_loc6_ && type))
                        {
                           continue loop1;
                           if(_loc7_ || listener)
                           {
                              addr47:
                              if(!(_loc6_ && type))
                              {
                                 continue loop3;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(_loc6_);
                  
                  return;
               }
            }
            if(!(_loc7_ || listener))
            {
               continue;
            }
            this.§2K§.addEventListener(type,listener,useCapture,priority,useWeakReference);
            §§goto(addr77);
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(_loc4_)
         {
            while(true)
            {
            }
            addr89:
         }
         while(true)
         {
            loop2:
            for(; _loc4_; if(!(_loc4_ || listener))
            {
               continue;
            },§§goto(addr74))
            {
               if(!_loc5_)
               {
                  loop3:
                  while(true)
                  {
                     this.§2K§.removeEventListener(type,listener,useCapture);
                     while(true)
                     {
                        if(!(_loc5_ && type))
                        {
                           continue loop2;
                        }
                        continue loop3;
                        addr74:
                        if(_loc4_)
                        {
                           return;
                        }
                     }
                     continue loop2;
                  }
               }
               else
               {
                  §§goto(addr89);
               }
            }
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc3_)
         {
         }
         while(!(_loc2_ || _loc3_))
         {
         }
         return this.§2K§.dispatchEvent(event);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc3_ && this)
         {
         }
         while(!_loc2_)
         {
         }
         return this.§2K§.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || type)
         {
         }
         if(_loc3_ || _loc2_)
         {
            while(!_loc3_)
            {
            }
         }
         return this.§2K§.willTrigger(type);
      }
   }
}
