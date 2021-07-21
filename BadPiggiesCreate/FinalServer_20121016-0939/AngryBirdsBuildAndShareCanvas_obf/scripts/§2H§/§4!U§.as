package §2H§
{
   import §+h§.Popup;
   import §1"2§.§'s§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   
   public class §4!U§ extends Popup implements IEventDispatcher
   {
       
      
      private var §"!v§:int;
      
      private var §8k§:int = 0;
      
      private var §&!T§:EventDispatcher;
      
      public function §4!U§(param1:XML, param2:§'s§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super(param1,param2);
            while(true)
            {
               (mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§<7§);
               addr106:
               while(true)
               {
                  (mClip.getChildByName("Button_Next") as MovieClip).gotoAndStop(1);
               }
               addr44:
               if(_loc3_)
               {
                  continue;
               }
               return;
               addr56:
            }
         }
         loop2:
         while(true)
         {
            this.§"!v§ = mClip.totalFrames;
            while(true)
            {
               if(_loc4_)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  this.§&!T§ = new EventDispatcher(this);
                  while(_loc4_)
                  {
                     goToFrame(this.§8k§ + 1,false);
                     if(!(_loc4_ || param2))
                     {
                        continue;
                     }
                     §§goto(addr44);
                  }
                  continue;
               }
               continue loop2;
            }
            §§goto(addr106);
         }
         §§goto(addr56);
      }
      
      public function §<7§(param1:Event = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§8k§);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               _loc2_.§8k§ = _loc3_;
            }
            if(_loc5_ || param1)
            {
               if(this.§8k§ >= this.§"!v§)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     this.dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
               else
               {
                  goToFrame(this.§8k§ + 1,false);
                  do
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                  }
                  while((mClip.getChildByName("Button_Next") as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§<7§), do
                  {
                     (mClip.getChildByName("Button_Next") as MovieClip).stop();
                  }
                  while(!_loc5_);
                  , _loc4_);
                  
                  §§goto(addr47);
               }
            }
         }
         addr47:
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            this.§&!T§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§&!T§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§&!T§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            this.§&!T§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§&!T§.willTrigger(param1);
      }
   }
}
