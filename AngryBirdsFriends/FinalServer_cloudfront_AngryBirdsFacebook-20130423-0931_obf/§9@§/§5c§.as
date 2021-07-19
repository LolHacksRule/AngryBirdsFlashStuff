package §9@§
{
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §5c§
   {
      
      public static const §+">§:int = 300.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+">§ = 5 * 60;
         }
      }
      
      private var §<"<§:String = "";
      
      private var §`,§:int = 300.0;
      
      private var §;z§:Timer;
      
      private var §4S§:§3d§;
      
      private var §4!#§:Boolean = false;
      
      private var §]"P§:Boolean = false;
      
      public function §5c§(param1:String, param2:int = 300.0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super();
         }
         while(true)
         {
            this.§<"<§ = param1;
            while(!(_loc4_ && this))
            {
               this.§`,§ = param2;
               if(_loc3_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§;z§)
            {
               loop0:
               while(true)
               {
                  this.§;z§ = new Timer(this.§`,§ * 1000);
                  loop1:
                  while(true)
                  {
                     this.§;z§.addEventListener(TimerEvent.TIMER,this.§7!9§);
                     addr68:
                     while(true)
                     {
                        this.§;z§.start();
                        if(_loc2_)
                        {
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                     addr59:
                  }
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§;z§)
            {
               do
               {
                  this.§;z§.stop();
                  do
                  {
                     this.§;z§.removeEventListener(TimerEvent.TIMER,this.§7!9§);
                     do
                     {
                        this.§;z§ = null;
                     }
                     while(_loc2_ && _loc2_);
                     
                  }
                  while(_loc2_ && this);
                  
               }
               while(!_loc1_);
               
               addr76:
            }
            return;
         }
         §§goto(addr76);
      }
      
      public function set §<!J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§4!#§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§4!#§);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§push(this.§]"P§);
                                          if(_loc3_)
                                          {
                                             continue loop6;
                                          }
                                          if(_loc2_)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                continue loop1;
                                             }
                                             continue loop2;
                                          }
                                          addr87:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop4;
                                          }
                                       }
                                       §§goto(addr24);
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    §9"6§.§&",§();
                                    §§goto(addr24);
                                 }
                              }
                              addr24:
                              return;
                           }
                        }
                        addr70:
                     }
                     §§goto(addr87);
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §[!k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§4S§);
            loop0:
            for(; !§§pop(); while(!(_loc2_ && _loc1_))
            {
               §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               §§goto(addr119);
            })
            {
               loop1:
               while(true)
               {
                  this.§4S§ = new §3d§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§4S§);
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,this.§ !m§);
                        addr139:
                        while(_loc1_)
                        {
                           §§push(this.§4S§);
                           while(true)
                           {
                              §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                              addr130:
                              while(true)
                              {
                                 §§push(this.§4S§);
                                 continue loop0;
                              }
                           }
                        }
                        continue loop2;
                        addr37:
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                        §§pop().load(§9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/serverversion"));
                        if(!(_loc1_ || _loc1_))
                        {
                           loop11:
                           while(!(_loc2_ && this))
                           {
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              addr93:
                              §§push(this.§4S§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc2_)
                                 {
                                    §§goto(addr37);
                                 }
                                 else
                                 {
                                    §§goto(addr125);
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§pop().addEventListener(§9G§.§33§,this.onError);
                                    continue loop11;
                                    §§goto(addr93);
                                 }
                                 addr79:
                              }
                           }
                           while(_loc1_)
                           {
                              while(true)
                              {
                                 §§goto(addr79);
                              }
                              §§goto(addr84);
                           }
                           addr84:
                           §§goto(addr139);
                           addr119:
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           break loop0;
                        }
                        §§goto(addr130);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr121);
      }
      
      private function §7!9§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[!k§();
         }
      }
      
      private function § !m§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = this.§4S§.data;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§<"<§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(!(_loc4_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     addr253:
                     while(true)
                     {
                        §§pop();
                        addr254:
                        while(true)
                        {
                           §§push(this.§<"<§);
                           addr229:
                           while(_loc3_)
                           {
                              §§push(§§pop().length == 0);
                           }
                           continue loop0;
                        }
                     }
                     addr253:
                  }
                  while(true)
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§<"<§ = _loc2_;
                              addr239:
                              while(true)
                              {
                              }
                           }
                           addr236:
                        }
                        while(true)
                        {
                           §§push(this.§4S§);
                           loop6:
                           while(true)
                           {
                              §§pop().removeEventListener(Event.COMPLETE,this.§ !m§);
                              loop7:
                              while(_loc3_ || _loc3_)
                              {
                                 §§push(this.§4S§);
                                 loop8:
                                 while(true)
                                 {
                                    §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                    loop9:
                                    while(!_loc4_)
                                    {
                                       §§push(this.§4S§);
                                       loop10:
                                       while(true)
                                       {
                                          §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                          while(true)
                                          {
                                             §§push(this.§4S§);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                if(_loc3_)
                                                {
                                                   §§pop().removeEventListener(§9G§.§33§,this.onError);
                                                   loop12:
                                                   while(!(_loc4_ && _loc3_))
                                                   {
                                                      this.§4S§ = null;
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§push(_loc2_);
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            if(§§pop() == this.§<"<§)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            while(!(_loc4_ && _loc2_))
                                                            {
                                                               this.§]"P§ = true;
                                                               §§goto(addr145);
                                                               §§goto(addr72);
                                                            }
                                                            continue loop12;
                                                         }
                                                         §§goto(addr229);
                                                      }
                                                      return;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop6;
                                             }
                                             continue loop10;
                                          }
                                          continue loop8;
                                       }
                                    }
                                    §§goto(addr239);
                                 }
                              }
                              §§goto(addr254);
                           }
                        }
                     }
                     §§goto(addr231);
                  }
               }
               §§goto(addr253);
            }
         }
         §§goto(addr145);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.type == §9G§.§33§)
            {
               while(true)
               {
                  §9"6§.§>_§(§]!I§.§`'§);
                  addr129:
                  while(true)
                  {
                  }
                  addr35:
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr42:
               }
            }
            loop2:
            while(true)
            {
               §§push(this.§4S§);
               while(true)
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§ !m§);
                  while(_loc3_ || _loc2_)
                  {
                     §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     loop6:
                     while(true)
                     {
                        §§push(this.§4S§);
                        if(!(_loc3_ || _loc2_))
                        {
                           break;
                        }
                        §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                        while(true)
                        {
                           if(!(_loc3_ || _loc2_))
                           {
                              continue loop6;
                           }
                           if(!_loc2_)
                           {
                              if(!(_loc3_ || _loc3_))
                              {
                                 break;
                              }
                              continue;
                           }
                           addr119:
                           while(true)
                           {
                              break loop6;
                           }
                           §§goto(addr42);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr119);
      }
   }
}
