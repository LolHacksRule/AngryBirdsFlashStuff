package §_-Hb§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §_-ur§ extends URLLoader
   {
       
      
      protected var §_-GO§:int;
      
      protected var §_-No§:URLRequest;
      
      protected var §_-9B§:Number;
      
      protected var §_-X9§:Timer;
      
      protected var §_-hp§:Boolean = false;
      
      public function §_-ur§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§_-GO§ = param2;
         }
         while(true)
         {
            this.§_-No§ = param1;
            while(!(_loc5_ && param1))
            {
               this.§_-9B§ = param3;
               while(_loc4_)
               {
                  super(param1);
                  while(!_loc5_)
                  {
                     addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-6I§);
                     if(!_loc5_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      protected function §_-6I§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.status != 403)
            {
               if(param1.status == 400)
               {
                  if(!_loc2_)
                  {
                     if(_loc3_ || this)
                     {
                        if(_loc3_)
                        {
                           this.§_-GO§ = 0;
                           §§goto(addr65);
                        }
                        while(true)
                        {
                           this.§_-hp§ = true;
                           §§goto(addr87);
                           §§goto(addr92);
                        }
                     }
                     §§goto(addr80);
                  }
                  addr65:
                  if(_loc3_ || this)
                  {
                     §§goto(addr20);
                  }
                  else
                  {
                     while(true)
                     {
                        super.dispatchEvent(new §_-a5§(§_-a5§.§_-Gy§));
                        addr80:
                        addr82:
                        while(!_loc3_)
                        {
                           while(true)
                           {
                              this.§_-GO§ = 0;
                           }
                        }
                        §§goto(addr20);
                     }
                     addr87:
                  }
                  §§goto(addr20);
               }
               addr20:
               return;
            }
            §§goto(addr92);
         }
         §§goto(addr82);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(!_loc4_)
            {
               §§push(§§pop());
               if(!(_loc4_ && this))
               {
                  if(!§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        addr47:
                        §§pop();
                        if(!_loc4_)
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(!_loc4_)
                           {
                              addr57:
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    addr61:
                                    §§pop();
                                    if(_loc5_)
                                    {
                                       §§push(this.§_-GO§ > 0);
                                       if(!_loc4_)
                                       {
                                          addr80:
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                addr83:
                                                var _loc2_:*;
                                                §§push((_loc2_ = this).§_-GO§);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc3_:* = §§pop();
                                                if(!(_loc4_ && this))
                                                {
                                                   _loc2_.§_-GO§ = _loc3_;
                                                }
                                                if(!_loc4_)
                                                {
                                                   super.load(this.§_-No§);
                                                   addr105:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             loop0:
                                             while(true)
                                             {
                                                §§push(this.§_-hp§);
                                                while(!_loc4_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         return super.dispatchEvent(param1);
                                                      }
                                                      if(!(_loc5_ || _loc3_))
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                         §§push(true);
                                                         break;
                                                         addr163:
                                                      }
                                                   }
                                                   §§push(true);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                                §§goto(addr157);
                                             }
                                          }
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr163);
                                 }
                                 addr157:
                                 return §§pop();
                              }
                           }
                           §§goto(addr80);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr61);
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr47);
         }
         §§goto(addr83);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-No§ = param1;
            do
            {
               if(this.§_-9B§ <= 0)
               {
                  super.load(param1);
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && this))
                        {
                           addr19:
                           return;
                           addr50:
                        }
                        addr84:
                        this.§_-X9§ = new Timer(this.§_-9B§);
                     }
                     this.§_-X9§.addEventListener(TimerEvent.TIMER,this.§_-Sq§);
                     while(true)
                     {
                        this.§_-X9§.start();
                     }
                     addr78:
                  }
                  while(!_loc2_)
                  {
                     §§goto(addr78);
                  }
                  continue;
               }
               §§goto(addr84);
            }
            while(!_loc2_);
            
            §§goto(addr19);
         }
         §§goto(addr50);
      }
      
      protected function §_-Sq§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§_-X9§.removeEventListener(TimerEvent.TIMER,this.§_-Sq§);
            while(true)
            {
               this.§_-X9§.reset();
            }
            addr83:
         }
         loop1:
         do
         {
            this.§_-X9§ = null;
            while(_loc3_)
            {
               super.load(this.§_-No§);
               if(!(_loc2_ && _loc2_))
               {
                  continue loop1;
               }
            }
            §§goto(addr83);
         }
         while(_loc2_);
         
      }
   }
}
