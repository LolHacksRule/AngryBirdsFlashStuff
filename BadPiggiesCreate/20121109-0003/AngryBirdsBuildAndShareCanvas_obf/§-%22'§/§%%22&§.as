package §-"'§
{
   import §&!<§.§>!V§;
   import §?!'§.Popup;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   
   public class §%"&§ extends Popup implements IEventDispatcher
   {
       
      
      private var §,!C§:int;
      
      private var §`3§:int = 0;
      
      private var §<+§:EventDispatcher;
      
      public function §%"&§(param1:XML, param2:§>!V§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
            while(true)
            {
               (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§#!6§);
               addr69:
               if(_loc3_ || _loc3_)
               {
                  goToFrame(this.§`3§ + 1,false);
                  addr76:
                  if(_loc4_ && _loc3_)
                  {
                     loop4:
                     while(true)
                     {
                        if(_loc3_ || this)
                        {
                           addr62:
                           if(_loc3_ || param2)
                           {
                              §§goto(addr69);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§,!C§ = mClip.totalFrames;
                                 break loop4;
                                 §§goto(addr62);
                              }
                              addr93:
                           }
                        }
                        break;
                        §§goto(addr76);
                     }
                     while(!_loc4_)
                     {
                        this.§<+§ = new EventDispatcher(this);
                        §§goto(addr45);
                     }
                     addr45:
                     while(true)
                     {
                        (mClip.getChildByName("Button_Next") as MovieClip).gotoAndStop(1);
                        §§goto(addr93);
                     }
                     addr115:
                  }
                  return;
               }
            }
         }
         §§goto(addr115);
      }
      
      public function §#!6§(param1:Event = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§`3§);
            if(_loc4_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               _loc2_.§`3§ = _loc3_;
            }
            if(!(_loc5_ && param1))
            {
               if(this.§`3§ < this.§,!C§)
               {
                  goToFrame(this.§`3§ + 1,false);
                  loop0:
                  while(true)
                  {
                     (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§#!6§);
                     loop1:
                     while(!_loc5_)
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(new Event(Event.COMPLETE));
                        }
                        else
                        {
                           addr119:
                        }
                        while(true)
                        {
                           (mClip.getChildByName("Button_Next") as MovieClip).stop();
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        return;
                     }
                     §§goto(addr61);
                  }
               }
               §§goto(addr119);
            }
         }
         §§goto(addr92);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§<+§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§<+§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§<+§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§<+§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§<+§.willTrigger(param1);
      }
   }
}
