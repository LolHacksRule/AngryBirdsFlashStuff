package §<-§
{
   import §-^§.§4-§;
   import §-^§.§45§;
   import §-^§.§7!6§;
   import §^!m§.§4!i§;
   import §^!m§.§;0§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §-!h§
   {
      
      public static const §9g§:int = 300.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9g§ = 5 * 60;
         }
      }
      
      private var §6!2§:String = "";
      
      private var §4r§:int = 300.0;
      
      private var §4!K§:Timer;
      
      private var §[t§:§45§;
      
      private var §5!#§:Boolean = false;
      
      private var § !=§:Boolean = false;
      
      public function §-!h§(param1:String, param2:int = 300.0)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super();
            while(true)
            {
               this.§6!2§ = param1;
               while(!(_loc3_ && this))
               {
                  this.§4r§ = param2;
                  if(_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!this.§4!K§)
            {
               do
               {
                  this.§4!K§ = new Timer(this.§4r§ * 1000);
                  do
                  {
                     this.§4!K§.addEventListener(TimerEvent.TIMER,this.§;h§);
                     do
                     {
                        this.§4!K§.start();
                     }
                     while(_loc1_);
                     
                  }
                  while(!_loc2_);
                  
               }
               while(!_loc2_);
               
               addr72:
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§4!K§)
            {
               if(_loc2_)
               {
                  this.§4!K§.stop();
                  addr75:
                  while(true)
                  {
                     this.§4!K§.removeEventListener(TimerEvent.TIMER,this.§;h§);
                     while(!_loc1_)
                     {
                        this.§4!K§ = null;
                        if(_loc2_)
                        {
                           §§goto(addr45);
                        }
                     }
                  }
                  addr75:
               }
               §§goto(addr75);
            }
            addr45:
            return;
         }
         §§goto(addr75);
      }
      
      public function set §!r§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5!#§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§5!#§);
               if(_loc3_ || this)
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           loop3:
                           while(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §4!i§.§<"§();
                              }
                              if(!_loc2_)
                              {
                                 addr72:
                                 break;
                              }
                              loop4:
                              while(_loc3_)
                              {
                                 §§push(this.§ !=§);
                                 if(_loc3_)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop4;
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                           return;
                        }
                        continue;
                        addr64:
                     }
                  }
               }
               §§goto(addr86);
            }
         }
         §§goto(addr72);
      }
      
      public function §7Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§[t§);
            loop0:
            while(!§§pop())
            {
               if(!_loc1_)
               {
                  this.§[t§ = new §45§();
               }
               loop8:
               while(true)
               {
                  if(!(_loc2_ || _loc1_))
                  {
                     continue loop0;
                  }
                  §§pop().addEventListener(§4-§.§4!m§,this.onError);
                  loop9:
                  while(true)
                  {
                     if(!(_loc1_ && this))
                     {
                        addr87:
                        if(_loc1_ && _loc1_)
                        {
                           break;
                        }
                        continue loop8;
                     }
                     loop5:
                     while(true)
                     {
                        §§push(this.§[t§);
                        while(true)
                        {
                           §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                           addr103:
                           while(_loc2_)
                           {
                              §§push(this.§[t§);
                              continue loop8;
                           }
                           addr29:
                           loop3:
                           while(true)
                           {
                              §§push(this.§[t§);
                              addr109:
                              addr135:
                              while(_loc2_ || _loc1_)
                              {
                                 §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                 continue loop5;
                              }
                              while(true)
                              {
                                 §§pop().addEventListener(Event.COMPLETE,this.§+r§);
                                 continue loop3;
                                 §§goto(addr109);
                              }
                           }
                           if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           }
                           if(!_loc1_)
                           {
                              §§pop().load(§7!6§.§7V§(AngryBirdsFP11.§[!S§ + "/serverversion"));
                              if(!_loc2_)
                              {
                                 continue loop9;
                              }
                              if(_loc2_ || _loc1_)
                              {
                                 break loop0;
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr109);
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr135);
                     §§goto(addr87);
                  }
               }
            }
            return;
         }
         §§goto(addr150);
      }
      
      private function §;h§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§7Q§();
         }
      }
      
      private function §+r§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = this.§[t§.data;
         if(_loc3_)
         {
            §§push(this.§6!2§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(!(_loc4_ && param1))
               {
                  if(!§§pop())
                  {
                     loop19:
                     while(true)
                     {
                        §§pop();
                        addr224:
                        while(true)
                        {
                           §§push(this.§6!2§);
                           addr184:
                           while(true)
                           {
                              §§push(§§pop().length == 0);
                              continue loop19;
                           }
                           continue loop19;
                        }
                     }
                     addr223:
                  }
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           this.§6!2§ = _loc2_;
                           addr209:
                           while(true)
                           {
                           }
                        }
                        addr206:
                     }
                     while(true)
                     {
                        §§push(this.§[t§);
                        loop5:
                        while(true)
                        {
                           §§pop().removeEventListener(Event.COMPLETE,this.§+r§);
                           while(true)
                           {
                              §§push(this.§[t§);
                              while(true)
                              {
                                 §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                 addr171:
                                 while(true)
                                 {
                                    §§push(this.§[t§);
                                    continue loop5;
                                 }
                                 addr132:
                                 if(_loc4_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §§pop().removeEventListener(§4-§.§4!m§,this.onError);
                                 loop11:
                                 while(!_loc4_)
                                 {
                                    this.§[t§ = null;
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(_loc2_);
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(§§pop() != this.§6!2§)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(this.§5!#§);
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         while(!_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               this.§ !=§ = true;
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  addr45:
                                                                  addr42:
                                                                  while(true)
                                                                  {
                                                                     this.§6!2§ = _loc2_;
                                                                     addr49:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr27);
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr209);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§[t§);
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                         continue loop5;
                                                         addr112:
                                                         addr162:
                                                      }
                                                      §4!i§.§<"§();
                                                      while(true)
                                                      {
                                                         §§goto(addr45);
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                addr27:
                                             }
                                             continue loop0;
                                             return;
                                          }
                                          break;
                                       }
                                       §§goto(addr206);
                                       §§goto(addr209);
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr171);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr223);
            }
         }
         §§goto(addr224);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.type == §4-§.§4!m§)
            {
               while(true)
               {
                  §4!i§.§>t§(§;0§.§-!W§);
                  addr103:
                  while(true)
                  {
                  }
               }
               addr99:
            }
            while(true)
            {
               §§push(this.§[t§);
               addr88:
               while(true)
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§+r§);
               }
               §§goto(addr103);
            }
         }
         loop4:
         while(true)
         {
            §§push(this.§[t§);
            loop5:
            while(_loc2_)
            {
               §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               while(!_loc3_)
               {
                  §§push(this.§[t§);
                  if(!_loc2_)
                  {
                     continue loop5;
                  }
                  §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr99);
                        }
                        break;
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr103);
                  continue loop5;
               }
               continue loop4;
            }
            §§goto(addr88);
         }
      }
   }
}
