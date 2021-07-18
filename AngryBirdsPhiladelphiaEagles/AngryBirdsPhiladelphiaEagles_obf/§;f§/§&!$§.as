package §;f§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §&!$§ extends URLLoader
   {
       
      
      protected var §2!-§:int;
      
      protected var §[!L§:URLRequest;
      
      protected var §^!&§:Number;
      
      protected var §;0§:Timer;
      
      protected var §8W§:Boolean = false;
      
      public function §&!$§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§2!-§ = param2;
            loop0:
            do
            {
               this.§[!L§ = param1;
               loop1:
               while(true)
               {
                  this.§^!&§ = param3;
                  loop2:
                  do
                  {
                     super(param1);
                     while(_loc4_)
                     {
                        addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<! §);
                        if(_loc4_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(!(_loc4_ || param2));
                  
                  continue loop0;
               }
            }
            while(!(_loc4_ || param3));
            
         }
      }
      
      protected function §<! §(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(param1.status == 403)
         {
            this.§2!-§ = 0;
            this.§8W§ = true;
            super.dispatchEvent(new §3X§(§3X§.§7k§));
            addr69:
            addr64:
         }
         else if(param1.status == 400)
         {
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  this.§2!-§ = 0;
                  §§goto(addr18);
               }
               else
               {
                  §§goto(addr69);
               }
            }
            §§goto(addr64);
         }
         addr18:
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(!(_loc4_ && this))
            {
               if(!§§pop())
               {
                  §§pop();
                  §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                  if(_loc5_)
                  {
                     addr46:
                     if(§§pop())
                     {
                        §§goto(addr48);
                     }
                     §§goto(addr70);
                  }
                  addr48:
                  §§pop();
                  if(_loc5_ || this)
                  {
                     addr70:
                     if(this.§2!-§ > 0)
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§2!-§);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc3_:* = §§pop();
                        if(!_loc4_)
                        {
                           _loc2_.§2!-§ = _loc3_;
                        }
                        if(_loc5_ || _loc2_)
                        {
                           super.load(this.§[!L§);
                        }
                        return true;
                     }
                     addr115:
                     if(!this.§8W§)
                     {
                        return super.dispatchEvent(param1);
                     }
                  }
                  return true;
               }
            }
            §§goto(addr46);
         }
         §§goto(addr115);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§[!L§ = param1;
         if(this.§^!&§ > 0)
         {
            this.§;0§ = new Timer(this.§^!&§);
            this.§;0§.addEventListener(TimerEvent.TIMER,this.§?1§);
            this.§;0§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §?1§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§;0§.removeEventListener(TimerEvent.TIMER,this.§?1§);
            loop0:
            while(true)
            {
               this.§;0§.reset();
               while(true)
               {
                  this.§;0§ = null;
                  loop2:
                  while(_loc2_ || this)
                  {
                     if(_loc2_)
                     {
                        while(true)
                        {
                           super.load(this.§[!L§);
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr74);
      }
   }
}
