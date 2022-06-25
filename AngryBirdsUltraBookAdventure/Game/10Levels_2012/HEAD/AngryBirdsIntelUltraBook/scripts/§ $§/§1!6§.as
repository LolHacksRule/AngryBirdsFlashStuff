package § $§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §1!6§ extends URLLoader
   {
       
      
      [Event(name="thirdPartyCookiesDisabled",type="com.rovio.server.RetryingURLLoaderErrorEvent")]
      protected var § !1§:int;
      
      protected var §1!M§:URLRequest;
      
      protected var §+!S§:Number;
      
      protected var §8g§:Timer;
      
      protected var §1x§:Boolean = false;
      
      public function §1!6§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§ !1§ = param2;
            while(true)
            {
               this.§1!M§ = param1;
               addr59:
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               return;
               addr66:
            }
         }
         while(true)
         {
            this.§+!S§ = param3;
            while(!_loc5_)
            {
               super(param1);
               while(_loc4_)
               {
                  addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&S§);
                  if(!(_loc4_ || param2))
                  {
                     continue;
                  }
                  §§goto(addr59);
               }
            }
         }
         §§goto(addr66);
      }
      
      protected function §&S§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.status != 403)
            {
               if(param1.status == 400)
               {
                  if(!(_loc2_ && param1))
                  {
                     if(_loc3_)
                     {
                        this.§ !1§ = 0;
                        addr53:
                        if(_loc3_ || _loc3_)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr20);
                           }
                           else
                           {
                              loop1:
                              while(true)
                              {
                                 this.§1x§ = true;
                                 addr94:
                                 addr89:
                                 while(true)
                                 {
                                    super.dispatchEvent(new RetryingURLLoaderErrorEvent(RetryingURLLoaderErrorEvent.§9#§));
                                    continue loop1;
                                 }
                                 addr89:
                                 §§goto(addr20);
                              }
                              addr102:
                           }
                           §§goto(addr20);
                        }
                        while(true)
                        {
                           if(_loc2_ && _loc2_)
                           {
                              while(true)
                              {
                                 this.§ !1§ = 0;
                                 §§goto(addr102);
                              }
                              addr99:
                           }
                           §§goto(addr89);
                        }
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr53);
               }
               addr20:
               return;
            }
            §§goto(addr99);
         }
         §§goto(addr89);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(!(_loc4_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(_loc5_ || param1)
               {
                  §§push(§§pop());
                  if(_loc5_ || _loc2_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc4_ && param1))
                     {
                        if(!§§pop())
                        {
                           if(!_loc4_)
                           {
                              addr59:
                              §§pop();
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                                 if(!_loc4_)
                                 {
                                    addr75:
                                    §§push(Boolean(§§pop()));
                                    if(_loc5_)
                                    {
                                       addr78:
                                       §§push(§§pop());
                                       if(_loc5_ || _loc2_)
                                       {
                                          addr87:
                                          if(§§pop())
                                          {
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§pop();
                                                if(_loc5_ || this)
                                                {
                                                   §§push(this.§ !1§ > 0);
                                                   if(_loc5_)
                                                   {
                                                      addr119:
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc5_ || param1)
                                                      {
                                                         addr127:
                                                         if(!§§pop())
                                                         {
                                                            loop0:
                                                            while(true)
                                                            {
                                                               §§push(this.§1x§);
                                                               do
                                                               {
                                                                  §§push(!§§pop());
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              break loop0;
                                                                           }
                                                                           if(!(_loc4_ && param1))
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr219);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr202:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr202:
                                                                        }
                                                                        §§goto(addr205);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(true);
                                                                        if(_loc5_)
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     §§goto(addr205);
                                                                  }
                                                               }
                                                               while(!(_loc5_ || param1));
                                                               
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr205);
                                                               }
                                                            }
                                                            addr198:
                                                            return super.dispatchEvent(param1);
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            var _loc2_:*;
                                                            §§push((_loc2_ = this).§ !1§);
                                                            if(!(_loc4_ && this))
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            var _loc3_:* = §§pop();
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               _loc2_.§ !1§ = _loc3_;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               super.load(this.§1!M§);
                                                               addr205:
                                                               return true;
                                                               addr157:
                                                               addr219:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr198);
                                                            }
                                                         }
                                                         §§goto(addr157);
                                                         §§goto(addr205);
                                                      }
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr202);
                                             }
                                             §§goto(addr205);
                                          }
                                          §§goto(addr127);
                                       }
                                       §§goto(addr87);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr87);
               }
               §§goto(addr59);
            }
            §§goto(addr75);
         }
         §§goto(addr205);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1!M§ = param1;
            loop0:
            for(; this.§+!S§ <= 0; if(!(_loc3_ || param1))
            {
               continue;
            })
            {
               super.load(param1);
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc2_)
                  {
                     if(_loc3_ || param1)
                     {
                        continue;
                     }
                     addr105:
                     while(true)
                     {
                        this.§8g§.addEventListener(TimerEvent.TIMER,this.§7u§);
                        break loop0;
                     }
                     return;
                     addr82:
                  }
                  while(true)
                  {
                     this.§8g§.start();
                  }
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     break loop0;
                  }
                  §§goto(addr82);
               }
            }
            while(true)
            {
               this.§8g§ = new Timer(this.§+!S§);
               §§goto(addr105);
            }
         }
         §§goto(addr105);
      }
      
      protected function §7u§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§8g§.removeEventListener(TimerEvent.TIMER,this.§7u§);
         }
         loop0:
         do
         {
            this.§8g§.reset();
            while(true)
            {
               this.§8g§ = null;
               while(_loc2_ || param1)
               {
                  super.load(this.§1!M§);
                  if(!(_loc3_ && _loc2_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc3_);
         
      }
   }
}
