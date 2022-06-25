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
         if(!(STATE_NAME && _loc2_))
         {
            do
            {
               STATE_NAME = "StatePopupManager";
            }
            while(!(_loc2_ || StatePopupManager));
            
         }
      }
      
      protected var §2K§:EventDispatcher;
      
      public function StatePopupManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               super(false,STATE_NAME);
               loop1:
               for(; _loc1_ || _loc2_; loop3:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     if(!(_loc1_ || this))
                     {
                        continue loop3;
                     }
                     §§goto(addr46);
                  }
                  §§goto(addr53);
               })
               {
                  while(true)
                  {
                     this.§2K§ = new EventDispatcher();
                     continue loop1;
                     addr46:
                     if(_loc1_ || this)
                     {
                        return;
                        addr53:
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && eventIndex)
         {
         }
         if(_loc4_ || this)
         {
            while(true)
            {
               loop1:
               while(!_loc5_)
               {
                  while(true)
                  {
                     do
                     {
                        this.dispatchEvent(new §7"§(§7"§.UI_INTERACTION,eventIndex,eventName,component));
                        while(!(_loc4_ || eventName))
                        {
                        }
                     }
                     while(!(_loc4_ || eventName));
                     
                     if(!(_loc5_ && eventName))
                     {
                        if(_loc4_)
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
         §§goto(addr101);
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(!_loc6_)
                  {
                     continue loop1;
                     loop6:
                     while(!(_loc6_ && useCapture))
                     {
                        this.§2K§.addEventListener(type,listener,useCapture,priority,useWeakReference);
                        while(!(_loc6_ && type))
                        {
                           if(_loc7_)
                           {
                              if(!_loc6_)
                              {
                                 return;
                              }
                              continue loop6;
                           }
                        }
                        while(!_loc6_)
                        {
                           continue loop6;
                           §§goto(addr55);
                        }
                        addr55:
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr85);
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(!_loc5_)
         {
            while(true)
            {
               while(_loc4_ || type)
               {
                  loop3:
                  for(; !(_loc5_ && useCapture); if(_loc4_ || this)
                  {
                     return;
                  })
                  {
                     this.§2K§.removeEventListener(type,listener,useCapture);
                     while(_loc4_ || type)
                     {
                        if(_loc4_ || type)
                        {
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        break loop3;
                        §§goto(addr62);
                     }
                     addr62:
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc2_ || _loc3_)
         {
         }
         while(!_loc2_)
         {
         }
         return this.§2K§.dispatchEvent(event);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
            while(_loc2_ && this)
            {
            }
         }
         return this.§2K§.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || type)
         {
         }
         if(_loc2_ || _loc3_)
         {
            while(_loc3_)
            {
            }
         }
         return this.§2K§.willTrigger(type);
      }
   }
}
