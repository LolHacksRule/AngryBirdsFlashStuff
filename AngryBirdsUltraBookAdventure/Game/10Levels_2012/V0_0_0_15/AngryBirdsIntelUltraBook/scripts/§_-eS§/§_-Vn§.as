package §_-eS§
{
   import §_-7§.§_-42§;
   import §_-7§.§_-EJ§;
   import §_-Hb§.§_-P-§;
   import §_-Hb§.§_-a5§;
   import §_-Hb§.§_-ur§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §_-Vn§
   {
      
      public static const §_-jd§:int = 300.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-jd§ = 5 * 60;
         }
      }
      
      private var §_-TU§:String = "";
      
      private var §_-1f§:int = 300.0;
      
      private var §_-0CK§:Timer;
      
      private var §_-uG§:§_-ur§;
      
      private var §_-NT§:Boolean = false;
      
      private var §_-qo§:Boolean = false;
      
      public function §_-Vn§(param1:String, param2:int = 300.0)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§_-TU§ = param1;
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     this.§_-1f§ = param2;
                     if(!(_loc3_ && param1))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(!this.§_-0CK§)
            {
               loop0:
               while(true)
               {
                  this.§_-0CK§ = new Timer(this.§_-1f§ * 1000);
                  while(true)
                  {
                     this.§_-0CK§.addEventListener(TimerEvent.TIMER,this.§_-jG§);
                     loop2:
                     while(_loc1_ || this)
                     {
                        if(_loc1_)
                        {
                           while(true)
                           {
                              this.§_-0CK§.start();
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§_-0CK§)
            {
               loop0:
               while(true)
               {
                  this.§_-0CK§.stop();
                  addr79:
                  addr56:
                  while(true)
                  {
                     this.§_-0CK§.removeEventListener(TimerEvent.TIMER,this.§_-jG§);
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr79);
      }
      
      public function set §_-LA§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-NT§ = param1;
         }
         loop0:
         do
         {
            §§push(this.§_-NT§);
            if(!(_loc3_ && param1))
            {
               §§push(!§§pop());
               if(!(_loc3_ && _loc2_))
               {
                  addr85:
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(this.§_-qo§);
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                                 continue loop0;
                                 addr31:
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 break loop2;
                              }
                              if(!_loc3_)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    §_-EJ§.§_-L7§();
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr19);
                     }
                     addr87:
                  }
                  §§goto(addr31);
               }
               §§goto(addr87);
            }
            §§goto(addr85);
         }
         while(_loc3_);
         
         addr19:
      }
      
      public function §_-Jz§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§_-uG§);
            while(!§§pop())
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§_-uG§ = new §_-ur§();
               }
               addr77:
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §§pop().addEventListener(§_-a5§.§_-Gy§,this.onError);
               loop9:
               while(true)
               {
                  if(_loc1_)
                  {
                     addr91:
                     §§push(this.§_-uG§);
                     if(_loc1_ || _loc2_)
                     {
                        continue;
                     }
                     addr134:
                     while(_loc1_)
                     {
                        §§goto(addr77);
                        §§goto(addr91);
                     }
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,this.§_-07H§);
                        addr139:
                        while(true)
                        {
                           §§push(this.§_-uG§);
                           addr125:
                           while(true)
                           {
                              §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                              addr130:
                              while(true)
                              {
                                 §§push(this.§_-uG§);
                                 break loop9;
                              }
                           }
                        }
                     }
                     addr75:
                  }
                  addr102:
                  while(_loc1_ || _loc2_)
                  {
                     if(_loc1_)
                     {
                        §§goto(addr75);
                        §§push(this.§_-uG§);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr130);
               }
               while(true)
               {
                  if(_loc1_)
                  {
                     §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                     §§goto(addr102);
                  }
                  break;
                  §§goto(addr38);
               }
               §§goto(addr125);
            }
            return;
         }
         §§goto(addr154);
      }
      
      private function §_-jG§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§_-Jz§();
         }
      }
      
      private function §_-07H§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = this.§_-uG§.data;
         if(!_loc4_)
         {
            §§push(this.§_-TU§);
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc3_ || this)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§_-TU§ = _loc2_;
                                 addr234:
                                 while(true)
                                 {
                                 }
                              }
                              addr231:
                           }
                           while(true)
                           {
                              §§push(this.§_-uG§);
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§_-07H§);
                                 while(true)
                                 {
                                    §§push(this.§_-uG§);
                                    loop7:
                                    while(true)
                                    {
                                       §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                       addr196:
                                       while(true)
                                       {
                                          §§push(this.§_-uG§);
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr226:
                     }
                  }
               }
               §§goto(addr248);
               while(_loc3_ || _loc3_)
               {
                  §§goto(addr226);
               }
            }
         }
         §§goto(addr234);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.type == §_-a5§.§_-Gy§)
            {
               while(true)
               {
                  §_-EJ§.§_-QC§(§_-42§.§_-06o§);
                  addr124:
                  while(true)
                  {
                  }
               }
               addr120:
            }
            loop1:
            while(true)
            {
               §§push(this.§_-uG§);
               loop2:
               while(true)
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§_-07H§);
                  loop3:
                  while(!(_loc2_ && this))
                  {
                     §§push(this.§_-uG§);
                     loop4:
                     while(!_loc2_)
                     {
                        §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        while(_loc3_ || _loc3_)
                        {
                           continue loop4;
                           §§push(this.§_-uG§);
                           if(!(_loc3_ || _loc3_))
                           {
                              continue loop4;
                           }
                           §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                           §§goto(addr61);
                           for(; !(_loc2_ && _loc2_); this.§_-uG§ = null,if(!(_loc2_ && _loc3_))
                           {
                              return;
                           })
                           {
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr120);
                           }
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
         §§goto(addr124);
      }
   }
}
