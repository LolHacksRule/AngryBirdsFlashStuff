package §9v§
{
   import §>!<§.UIEventListenerRovio;
   import §[!>§.StateBase;
   import §[i§.§&'§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends StateBase implements IEventDispatcher
   {
      
      public static const STATE_NAME:String = "StatePopupManager";
      
      {
         var STATE_NAME:Boolean = true;
         var _loc2_:Boolean = false;
         if(!STATE_NAME)
         {
         }
         do
         {
            STATE_NAME = "StatePopupManager";
         }
         while(!STATE_NAME);
         
      }
      
      protected var §%q§:EventDispatcher;
      
      public function StatePopupManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            loop0:
            while(true)
            {
               super(false,STATE_NAME);
               do
               {
                  loop2:
                  do
                  {
                     this.§%q§ = new EventDispatcher();
                     while(_loc1_)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  while(!(_loc1_ || this));
                  
               }
               while(_loc2_ && _loc1_);
               
            }
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && eventName)
         {
         }
         if(!_loc4_)
         {
         }
         do
         {
            do
            {
               do
               {
                  do
                  {
                     this.dispatchEvent(new §&'§(§&'§.UI_INTERACTION,eventIndex,eventName,component));
                     while(_loc5_)
                     {
                     }
                  }
                  while(_loc5_ && eventName);
                  
               }
               while(!(_loc4_ || component));
               
            }
            while(_loc5_);
            
         }
         while(_loc5_);
         
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         if(_loc6_)
         {
         }
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  continue loop1;
                  addr92:
                  loop4:
                  while(_loc7_ || this)
                  {
                     while(true)
                     {
                        if(_loc7_)
                        {
                           addr72:
                           if(_loc6_ && this)
                           {
                              break;
                           }
                           this.§%q§.addEventListener(type,listener,useCapture,priority,useWeakReference);
                           continue;
                        }
                        continue loop4;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc4_)
         {
            while(true)
            {
               while(_loc4_ || type)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        this.§%q§.removeEventListener(type,listener,useCapture);
                        continue loop2;
                        addr31:
                        if(!_loc5_)
                        {
                           return;
                           addr43:
                        }
                     }
                  }
                  if(_loc5_ && useCapture)
                  {
                     continue;
                  }
                  §§goto(addr76);
               }
            }
         }
         §§goto(addr76);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc2_ || this)
         {
         }
         while(!(_loc2_ || this))
         {
         }
         return this.§%q§.dispatchEvent(event);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            while(_loc3_)
            {
            }
         }
         return this.§%q§.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc3_)
         {
         }
         while(_loc2_)
         {
         }
         return this.§%q§.willTrigger(type);
      }
   }
}
