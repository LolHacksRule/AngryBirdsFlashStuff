package §#!'§
{
   import §!"e§.§1y§;
   import §!"e§.§`"W§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §`!o§.§2,§;
   import §`!o§.§<9§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §+!D§
   {
      
      public static const §,"e§:int = 300.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §+!D§)
         {
            §,"e§ = 5 * 60;
         }
      }
      
      private var §=h§:String = "";
      
      private var §']§:int = 300.0;
      
      private var §1J§:Timer;
      
      private var §+>§:§2,§;
      
      private var §%"i§:Boolean = false;
      
      private var §'"D§:Boolean = false;
      
      public function §+!D§(param1:String, param2:int = 300.0)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§=h§ = param1;
               while(!_loc4_)
               {
                  this.§']§ = param2;
                  if(!(_loc4_ && this))
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§1J§)
            {
               loop0:
               while(true)
               {
                  this.§1J§ = new Timer(this.§']§ * 1000);
                  while(true)
                  {
                     this.§1J§.addEventListener(TimerEvent.TIMER,this.§-K§);
                     while(_loc1_ || _loc2_)
                     {
                        continue loop0;
                        this.§1J§.start();
                        if(!_loc2_)
                        {
                           §§goto(addr19);
                        }
                     }
                  }
               }
               addr76:
            }
            addr19:
            return;
         }
         §§goto(addr76);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§1J§)
            {
               loop0:
               while(true)
               {
                  this.§1J§.stop();
                  loop1:
                  while(true)
                  {
                     this.§1J§.removeEventListener(TimerEvent.TIMER,this.§-K§);
                     do
                     {
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                        this.§1J§ = null;
                     }
                     while(_loc2_);
                     
                     addr44:
                  }
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function set §""O§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§%"i§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§%"i§);
               if(_loc2_ || this)
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
                                 addr78:
                                 break;
                              }
                              if(!(_loc3_ && this))
                              {
                                 continue loop0;
                              }
                              addr103:
                              while(true)
                              {
                                 §§push(this.§'"D§);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                           }
                           return;
                        }
                        addr58:
                     }
                  }
               }
               §§goto(addr102);
            }
         }
         §§goto(addr103);
      }
      
      public function §9O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§+>§);
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  this.§+>§ = new §2,§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§+>§);
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,this.§]!s§);
                        loop4:
                        while(_loc2_ || this)
                        {
                           if(_loc1_)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              §§push(this.§+>§);
                              loop6:
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                    while(!_loc1_)
                                    {
                                       §§push(this.§+>§);
                                       continue loop6;
                                       while(_loc2_ || _loc2_)
                                       {
                                          §§push(this.§+>§);
                                          if(_loc2_)
                                          {
                                             §§pop().load(§<9§.§""I§(§4#;§.SERVER_ROOT + "/serverversion"));
                                             if(_loc2_ || _loc1_)
                                             {
                                                break loop0;
                                             }
                                             continue;
                                             continue;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    continue loop4;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        continue loop2;
                        if(!(_loc2_ || this))
                        {
                           continue;
                        }
                        §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                        §§goto(addr81);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr129);
      }
      
      private function §-K§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§9O§();
         }
      }
      
      private function §]!s§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = this.§+>§.data;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§=h§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§=h§);
                           loop4:
                           while(!_loc4_)
                           {
                              §§push(§§pop().length == 0);
                              loop15:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc3_ || param1))
                                 {
                                    continue loop4;
                                 }
                                 if(§§pop() == this.§=h§)
                                 {
                                    break;
                                 }
                                 if(_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§%"i§);
                                             if(!_loc4_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop2;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                if(!§§pop())
                                                {
                                                   this.§^#@§();
                                                   loop21:
                                                   while(true)
                                                   {
                                                      addr62:
                                                      loop18:
                                                      while(true)
                                                      {
                                                         this.§=h§ = _loc2_;
                                                         while(!_loc4_)
                                                         {
                                                            this.stop();
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  break loop18;
                                                               }
                                                               continue loop21;
                                                            }
                                                         }
                                                         continue loop21;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         addr54:
                                                         if(!(_loc4_ && this))
                                                         {
                                                            addr112:
                                                            break loop15;
                                                            addr112:
                                                         }
                                                         while(!_loc4_)
                                                         {
                                                            this.§'"D§ = true;
                                                            while(_loc3_)
                                                            {
                                                               §§goto(addr62);
                                                            }
                                                            continue loop15;
                                                            §§goto(addr54);
                                                         }
                                                         continue loop3;
                                                      }
                                                      §§goto(addr117);
                                                   }
                                                }
                                                §§goto(addr112);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         this.§=h§ = _loc2_;
                                                         addr193:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr180:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§+>§);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§pop().removeEventListener(Event.COMPLETE,this.§]!s§);
                                                         addr162:
                                                         while(true)
                                                         {
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               §§push(this.§+>§);
                                                               loop12:
                                                               for(; !_loc4_; §§push(this.§+>§),if(!_loc3_)
                                                               {
                                                                  continue;
                                                               },§§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError),while(true)
                                                               {
                                                                  this.§+>§ = null;
                                                                  continue loop15;
                                                               })
                                                               {
                                                                  §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                                                  while(_loc3_ || this)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               continue loop10;
                                                            }
                                                            §§goto(addr180);
                                                            §§goto(addr193);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr179:
                                             }
                                             §§goto(addr135);
                                          }
                                          addr103:
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr112);
                              }
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr179);
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§+>§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§]!s§);
            }
            addr93:
         }
         loop1:
         while(true)
         {
            §§push(this.§+>§);
            while(!_loc3_)
            {
               §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               while(true)
               {
                  §§push(this.§+>§);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  do
                  {
                     this.§+>§ = null;
                  }
                  while(!(_loc2_ || this));
                  
                  if(_loc2_)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
            }
            §§goto(addr93);
         }
      }
      
      private function §^#@§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§[!j§ = new §1y§(§`"W§.ERROR,§+5§.TOP);
         if(!(_loc3_ && this))
         {
            §4#;§.singleton.popupManager.openPopup(_loc1_);
         }
      }
   }
}
