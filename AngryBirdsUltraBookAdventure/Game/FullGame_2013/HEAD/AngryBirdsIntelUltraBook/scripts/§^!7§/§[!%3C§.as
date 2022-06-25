package §^!7§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §[!<§ extends URLLoader
   {
       
      
      [Event(name="thirdPartyCookiesDisabled",type="com.rovio.server.RetryingURLLoaderErrorEvent")]
      protected var §>O§:int;
      
      protected var §=8§:URLRequest;
      
      protected var §>!d§:Number;
      
      protected var §0!d§:Timer;
      
      protected var §0!h§:Boolean = false;
      
      public function §[!<§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§>O§ = param2;
            while(true)
            {
               this.§=8§ = param1;
               loop1:
               while(_loc5_ || param1)
               {
                  loop2:
                  while(true)
                  {
                     this.§>!d§ = param3;
                     while(true)
                     {
                        super(param1);
                        while(_loc5_)
                        {
                           addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§]!5§);
                           if(_loc5_ || param3)
                           {
                              if(!_loc4_)
                              {
                                 break loop2;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr91);
      }
      
      protected function §]!5§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.status == 403)
            {
               if(_loc3_ || _loc3_)
               {
                  addr104:
                  this.§>O§ = 0;
               }
               loop1:
               while(true)
               {
                  this.§0!h§ = true;
                  addr85:
                  while(_loc2_ && _loc2_)
                  {
                     continue loop1;
                  }
                  addr80:
                  super.dispatchEvent(new RetryingURLLoaderErrorEvent(RetryingURLLoaderErrorEvent.§6!O§));
               }
            }
            else if(param1.status == 400)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§>O§ = 0;
               }
               if(_loc3_)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr20);
                  }
                  else
                  {
                     §§goto(addr85);
                  }
               }
               §§goto(addr80);
            }
            addr20:
            return;
         }
         §§goto(addr104);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && param1))
               {
                  addr40:
                  §§push(§§pop());
                  if(_loc5_ || _loc2_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc5_ || param1)
                     {
                        if(!§§pop())
                        {
                           if(_loc5_)
                           {
                              §§pop();
                              if(!(_loc4_ && param1))
                              {
                                 §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                                 if(_loc5_ || this)
                                 {
                                    addr80:
                                    §§push(Boolean(§§pop()));
                                    if(!_loc4_)
                                    {
                                       addr83:
                                       §§push(§§pop());
                                       if(!(_loc4_ && param1))
                                       {
                                          addr91:
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§pop();
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr118:
                                                §§push(this.§>O§ > 0);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§goto(addr137);
                                                   }
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr219);
                                          }
                                       }
                                       addr137:
                                       if(§§pop())
                                       {
                                          if(_loc5_ || this)
                                          {
                                             addr145:
                                             var _loc2_:*;
                                             §§push((_loc2_ = this).§>O§);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             var _loc3_:* = §§pop();
                                             if(_loc5_ || this)
                                             {
                                                _loc2_.§>O§ = _loc3_;
                                             }
                                             if(!(_loc4_ && this))
                                             {
                                                super.load(this.§=8§);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr181);
                                                }
                                             }
                                             §§goto(addr229);
                                          }
                                          §§goto(addr213);
                                       }
                                       addr181:
                                       §§goto(addr222);
                                    }
                                    §§goto(addr188);
                                 }
                                 addr222:
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§0!h§);
                                    if(_loc5_)
                                    {
                                       if(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             §§goto(addr188);
                                          }
                                          addr187:
                                       }
                                       break;
                                    }
                                    addr188:
                                    addr213:
                                    loop4:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          if(!_loc5_)
                                          {
                                             §§push(true);
                                             break loop3;
                                             addr229:
                                          }
                                          while(true)
                                          {
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(true);
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       return §§pop();
                                    }
                                    return super.dispatchEvent(param1);
                                    continue loop5;
                                 }
                                 return §§pop();
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr83);
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr80);
            }
            §§goto(addr40);
         }
         §§goto(addr145);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=8§ = param1;
         }
         loop0:
         while(true)
         {
            if(this.§>!d§ <= 0)
            {
               super.load(param1);
               if(!_loc3_)
               {
                  if(_loc3_)
                  {
                     addr92:
                     if(!_loc2_)
                     {
                        continue;
                     }
                     this.§0!d§.addEventListener(TimerEvent.TIMER,this.§3!Y§);
                     while(true)
                     {
                        this.§0!d§.start();
                        break loop0;
                     }
                  }
                  return;
               }
               break;
            }
            if(!(_loc3_ && _loc2_))
            {
               this.§0!d§ = new Timer(this.§>!d§);
            }
            §§goto(addr92);
         }
         while(true)
         {
            if(!_loc2_)
            {
               §§goto(addr73);
            }
            §§goto(addr52);
         }
      }
      
      protected function §3!Y§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§0!d§.removeEventListener(TimerEvent.TIMER,this.§3!Y§);
            while(true)
            {
               this.§0!d§.reset();
               while(_loc3_)
               {
                  this.§0!d§ = null;
                  loop2:
                  while(_loc3_ || param1)
                  {
                     while(true)
                     {
                        super.load(this.§=8§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr69);
      }
   }
}
