package §1!k§
{
   import § "'§.§3@§;
   import §<!3§.§'+§;
   import §=b§.§%"2§;
   import §=b§.§,7§;
   import §`!Y§.§&!H§;
   import flash.events.Event;
   
   public class §^!B§ extends §,7§ implements §?H§
   {
       
      
      protected var §=!r§:uint = 0;
      
      protected var §<!=§:Number = 0;
      
      protected var §#e§:Boolean = false;
      
      protected var §1!I§:§%"2§;
      
      protected var §&!t§:§'+§;
      
      protected var §8q§:Number;
      
      protected var §]R§:ClassicHandlers;
      
      protected var §[m§:Number = 0;
      
      protected var §;,§:Boolean = true;
      
      public function §^!B§(param1:§%"2§, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§1!I§ = param1;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§<!=§ = param2;
            if(_loc4_ || param1)
            {
               if(_loc4_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get onStop() : Function
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§]R§);
            if(!(_loc1_ && _loc1_))
            {
               return §§pop() != null ? this.§]R§.onStop : null;
            }
         }
         §§goto(addr52);
      }
      
      public function set onStop(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§%!'§().onStop = param1;
         }
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§&!t§);
            if(!(_loc3_ && param1))
            {
               if(§§pop() != null)
               {
                  if(!(_loc3_ && param1))
                  {
                     §§push(this.§&!t§);
                  }
                  else
                  {
                     §§goto(addr61);
                  }
               }
               §§goto(addr61);
            }
            return §§pop().willTrigger(param1);
         }
         addr61:
         return false;
      }
      
      protected function newInstance() : §^!B§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§]R§);
            if(_loc1_)
            {
               return §§pop() != null ? this.§]R§.onUpdate : null;
            }
         }
         §§goto(addr46);
      }
      
      public function get §3!-§() : §%"2§
      {
         return this.§1!I§;
      }
      
      public function get duration() : Number
      {
         return this.§[m§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() < 0)
               {
                  while(true)
                  {
                     §§push(0);
                     addr233:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr234:
                        while(true)
                        {
                           param1 = §§pop();
                           addr235:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr232:
               }
               while(true)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
                  if(§§pop() > this.§[m§)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(this.§[m§);
                        if(_loc2_ && this)
                        {
                           while(!(_loc2_ && _loc3_))
                           {
                              param1 = §§pop();
                              loop7:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    while(true)
                                    {
                                       this.§<!=§ = param1;
                                       while(true)
                                       {
                                          this.internalUpdate(param1);
                                          continue loop7;
                                          addr77:
                                          if(!(_loc3_ || param1))
                                          {
                                             continue;
                                          }
                                          §§push(this.§]R§);
                                          loop16:
                                          while(true)
                                          {
                                             §§push(§§pop().onUpdate);
                                             addr87:
                                             loop17:
                                             while(true)
                                             {
                                                §§push(null);
                                                addr88:
                                                while(true)
                                                {
                                                   §§pop().apply(§§pop(),this.§]R§.onUpdateParams);
                                                   addr92:
                                                   loop19:
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && this))
                                                      {
                                                         addr99:
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               while(true)
                                                               {
                                                                  this.stop();
                                                                  if(!_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               return;
                                                               addr29:
                                                            }
                                                            break;
                                                         }
                                                         continue loop7;
                                                      }
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         addr152:
                                                         addr152:
                                                         while(true)
                                                         {
                                                            this.§&!t§.dispatchEvent(new §&!H§(§&!H§.§5Y§));
                                                            continue loop6;
                                                         }
                                                         addr134:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop20;
                                                         }
                                                      }
                                                      continue loop17;
                                                   }
                                                   §§goto(addr235);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr179:
                                 }
                                 else
                                 {
                                    §§goto(addr232);
                                 }
                              }
                              §§goto(addr233);
                           }
                        }
                        else
                        {
                           addr208:
                        }
                        continue loop0;
                     }
                     §§goto(addr234);
                  }
                  §§goto(addr179);
               }
            }
         }
         §§goto(addr152);
      }
      
      public function get onPlayParams() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§]R§);
            if(_loc1_)
            {
               return §§pop() != null ? this.§]R§.onPlayParams : null;
            }
         }
         §§goto(addr51);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§#e§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  this.§#e§ = false;
                  addr153:
                  loop2:
                  while(true)
                  {
                     if((this.§=!r§ & 2) != 0)
                     {
                        while(_loc2_ || _loc1_)
                        {
                           this.§&!t§.dispatchEvent(new §&!H§(§&!H§.§^r§));
                           while(true)
                           {
                           }
                        }
                        continue loop1;
                        addr122:
                     }
                     loop5:
                     while(true)
                     {
                        §§push(this.§]R§);
                        loop6:
                        while(true)
                        {
                           §§push(§§pop() == null);
                           if(_loc2_)
                           {
                              §§push(!§§pop());
                           }
                           loop7:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop5;
                                       }
                                       if(_loc2_)
                                       {
                                          §§push(this.§]R§);
                                          if(_loc1_)
                                          {
                                             continue loop6;
                                          }
                                          §§push(§§pop().onStop);
                                          if(_loc2_)
                                          {
                                             §§push(null);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc1_ && this))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(!§§pop());
                                                }
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   while(§§pop())
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         if(!(_loc2_ || _loc1_))
                                                         {
                                                            break;
                                                         }
                                                         §§push(this.§]R§);
                                                         continue loop6;
                                                      }
                                                   }
                                                   break loop0;
                                                   continue loop2;
                                                   addr60:
                                                }
                                                continue loop7;
                                             }
                                             while(true)
                                             {
                                                §§pop().apply(§§pop(),this.§]R§.onStopParams);
                                             }
                                             addr92:
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   break loop9;
                                                }
                                                continue loop9;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr91:
                                          }
                                          §§goto(addr92);
                                       }
                                       else
                                       {
                                          §§goto(addr122);
                                       }
                                    }
                                    break loop0;
                                 }
                              }
                              §§goto(addr60);
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr153);
      }
      
      public function set onUpdate(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§%!'§().onUpdate = param1;
         }
      }
      
      public function firePlay() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if((this.§=!r§ & 1) != 0)
            {
               if(!_loc2_)
               {
                  this.§&!t§.dispatchEvent(new §&!H§(§&!H§.PLAY));
               }
               loop0:
               while(true)
               {
                  addr93:
                  while(true)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        §§goto(addr24);
                     }
                     continue loop0;
                  }
               }
               addr138:
            }
            while(true)
            {
               §§push(this.§]R§);
               loop2:
               while(true)
               {
                  §§push(§§pop() == null);
                  loop3:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr112:
                              loop6:
                              while(true)
                              {
                                 §§push(this.§]R§);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(§§pop().onPlay);
                                    if(!_loc2_)
                                    {
                                       §§push(null);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc1_)
                                          {
                                             if(_loc2_ && _loc1_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(!§§pop());
                                          }
                                          if(!_loc2_)
                                          {
                                             while(§§pop())
                                             {
                                                if(_loc1_ || _loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(this.§]R§);
                                                   while(true)
                                                   {
                                                      §§push(§§pop().onPlay);
                                                      addr88:
                                                      while(true)
                                                      {
                                                         §§push(null);
                                                         addr89:
                                                         while(true)
                                                         {
                                                            §§pop().apply(§§pop(),this.§]R§.onPlayParams);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr93);
                                             }
                                             addr24:
                                          }
                                          continue;
                                          return;
                                       }
                                       §§goto(addr89);
                                    }
                                    §§goto(addr88);
                                 }
                                 §§goto(addr87);
                              }
                           }
                           addr111:
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr138);
            }
         }
         §§goto(addr112);
      }
      
      public function get §if §() : Boolean
      {
         return this.§#e§;
      }
      
      public function get onUpdateParams() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§]R§);
            if(_loc1_ || _loc2_)
            {
               return §§pop() != null ? this.§]R§.onUpdateParams : null;
            }
         }
         §§goto(addr56);
      }
      
      public function get position() : Number
      {
         return this.§<!=§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§%!'§().onPlayParams = param1;
         }
      }
      
      public function get onPlay() : Function
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§]R§);
            if(!(_loc1_ && this))
            {
               return §§pop() != null ? this.§]R§.onPlay : null;
            }
         }
         §§goto(addr57);
      }
      
      public function set §!^§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§;,§ = param1;
         }
      }
      
      protected function §5!u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§&!t§);
            loop0:
            while(true)
            {
               §§push(§&!H§.PLAY);
               loop1:
               while(true)
               {
                  if(!§§pop().willTrigger(§§pop()))
                  {
                     §§push(this);
                     §§push(this.§=!r§);
                     §§push(1);
                     if(_loc2_)
                     {
                        §§push(~§§pop());
                     }
                     §§pop().§=!r§ = §§pop() & §§pop();
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§&!t§);
                           loop4:
                           while(true)
                           {
                              §§push(§&!H§.§^r§);
                              addr190:
                              while(true)
                              {
                                 if(!§§pop().willTrigger(§§pop()))
                                 {
                                    §§push(this);
                                    §§push(this.§=!r§);
                                    §§push(2);
                                    if(!_loc1_)
                                    {
                                       §§push(~§§pop());
                                    }
                                    §§pop().§=!r§ = §§pop() & §§pop();
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§push(this.§&!t§);
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(§&!H§.§5Y§);
                                                   addr155:
                                                   while(!_loc1_)
                                                   {
                                                      if(§§pop().willTrigger(§§pop()))
                                                      {
                                                         while(_loc2_)
                                                         {
                                                            this.§=!r§ |= 4;
                                                            while(true)
                                                            {
                                                               addr60:
                                                               addr129:
                                                               while(true)
                                                               {
                                                                  §§push(this.§&!t§);
                                                                  if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(_loc1_ && this)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr60);
                                                                        continue loop19;
                                                                     }
                                                                     addr149:
                                                                  }
                                                                  §§goto(addr25);
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop3;
                                                         }
                                                         addr234:
                                                         addr159:
                                                      }
                                                      else
                                                      {
                                                         §§push(this);
                                                         §§push(this.§=!r§);
                                                         §§push(4);
                                                         if(_loc2_)
                                                         {
                                                            §§push(~§§pop());
                                                         }
                                                         §§pop().§=!r§ = §§pop() & §§pop();
                                                      }
                                                      §§goto(addr149);
                                                   }
                                                   continue loop1;
                                                }
                                                addr198:
                                                while(true)
                                                {
                                                   continue loop7;
                                                }
                                             }
                                             addr150:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§=!r§ |= 1;
                                             }
                                             addr228:
                                          }
                                          §§goto(addr234);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§=!r§ |= 2;
                                             §§goto(addr198);
                                          }
                                          addr192:
                                       }
                                       §§goto(addr150);
                                       addr106:
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          this.§=!r§ |= 8;
                                          §§goto(addr129);
                                       }
                                    }
                                 }
                                 §§goto(addr192);
                              }
                           }
                        }
                        addr52:
                        if(_loc2_ || _loc1_)
                        {
                           addr25:
                        }
                        continue;
                        return;
                     }
                  }
                  §§goto(addr228);
               }
            }
         }
         §§goto(addr123);
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§%!'§().onCompleteParams = param1;
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§&!t§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr58);
                  }
               }
               return false;
            }
            §§goto(addr58);
         }
         addr58:
         return this.§&!t§.dispatchEvent(param1);
      }
      
      public function get onComplete() : Function
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§]R§);
            if(!(_loc2_ && this))
            {
               return §§pop() != null ? this.§]R§.onComplete : null;
            }
         }
         §§goto(addr56);
      }
      
      public function §!"5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(!this.§#e§)
            {
               this.play();
               if(!_loc2_)
               {
                  addr55:
               }
               else
               {
                  addr63:
               }
               return;
            }
            if(!_loc2_)
            {
               this.stop();
            }
            §§goto(addr63);
         }
         §§goto(addr55);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(!_loc3_)
         {
            §§push(this.§<!=§);
            loop0:
            while(true)
            {
               §§push(this.§[m§);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr449:
                              while(true)
                              {
                                 §§push(this.§[m§);
                                 addr417:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(_loc3_ && _loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() <= §§pop());
                                    addr413:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           addr448:
                        }
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              §§push(§§pop());
                              loop9:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§pop();
                                       loop11:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(§§pop() < this.§<!=§);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop14:
                                                while(!_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr413);
                                                         addr169:
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(!§§pop());
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               addr181:
                                                               §§push(§§pop());
                                                               if(_loc4_ || this)
                                                               {
                                                                  if(!(_loc4_ || _loc2_))
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     loop58:
                                                                     while(!_loc3_)
                                                                     {
                                                                        addr199:
                                                                        §§pop();
                                                                        loop57:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 addr209:
                                                                                 §§push(this.§]R§);
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop().onComplete);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr39:
                                                                                       §§push(null);
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr60:
                                                                                                   §§push(!§§pop());
                                                                                                   if(!(_loc4_ || param1))
                                                                                                   {
                                                                                                      continue loop58;
                                                                                                   }
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         loop52:
                                                                                                         while(§§pop())
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(this.§]R§);
                                                                                                               loop53:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(§§pop().onComplete);
                                                                                                                        loop54:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(null);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§]R§);
                                                                                                                                    if(!(_loc3_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().onCompleteParams);
                                                                                                                                       if(_loc4_ || param1)
                                                                                                                                       {
                                                                                                                                          §§pop().apply(§§pop(),§§pop());
                                                                                                                                          addr387:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc3_ && param1)
                                                                                                                                             {
                                                                                                                                                continue loop57;
                                                                                                                                             }
                                                                                                                                             if(!(_loc3_ && param1))
                                                                                                                                             {
                                                                                                                                                addr134:
                                                                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr143:
                                                                                                                                                      if(_loc4_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         break loop52;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr367:
                                                                                                                                                         loop22:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§<!=§ = param1;
                                                                                                                                                            addr371:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  this.internalUpdate(param1);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§=!r§);
                                                                                                                                                                     addr339:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(4);
                                                                                                                                                                        addr340:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() & §§pop());
                                                                                                                                                                           addr341:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              addr342:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc4_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§&!t§);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().dispatchEvent(new §&!H§(§&!H§.§5Y§));
                                                                                                                                                                                          }
                                                                                                                                                                                          addr354:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr413);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop11;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr359:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§]R§);
                                                                                                                                                                                    addr314:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(null);
                                                                                                                                                                                       addr315:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                                                                          if(_loc4_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(!§§pop());
                                                                                                                                                                                             break loop57;
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop57;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr366:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(true);
                                                                                                                                                                     addr392:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           _loc2_ = §§pop();
                                                                                                                                                                           continue loop22;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop10;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop11;
                                                                                                                                                                  }
                                                                                                                                                                  addr391:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr143);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(_loc4_ || param1)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                         break loop58;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr359);
                                                                                                                                                   addr303:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc3_ && this))
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§&!t§);
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().dispatchEvent(new §&!H§(§&!H§.COMPLETE));
                                                                                                                                                                     loop65:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr151:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§]R§);
                                                                                                                                                                           addr154:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(null);
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                    loop51:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr169);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr392);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr290:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                          addr291:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr292:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop51;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr210);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§]R§);
                                                                                                                                                                                       break loop53;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr165:
                                                                                                                                                                                    addr293:
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              addr285:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().onUpdate);
                                                                                                                                                                                 break loop54;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr315);
                                                                                                                                                                           continue loop65;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr281:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr354);
                                                                                                                                                               }
                                                                                                                                                               addr272:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr449);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      addr333:
                                                                                                                                                      while(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr285);
                                                                                                                                                         §§push(this.§]R§);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr134);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr371);
                                                                                                                                                   addr261:
                                                                                                                                                }
                                                                                                                                                §§goto(addr366);
                                                                                                                                             }
                                                                                                                                             §§goto(addr281);
                                                                                                                                          }
                                                                                                                                          while(!_loc3_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr391);
                                                                                                                                                }
                                                                                                                                                §§goto(addr367);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop8;
                                                                                                                                          addr120:
                                                                                                                                          addr387:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().apply(§§pop(),§§pop());
                                                                                                                                          §§goto(addr303);
                                                                                                                                       }
                                                                                                                                       addr302:
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                    §§goto(addr39);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr302);
                                                                                                                                 }
                                                                                                                                 addr301:
                                                                                                                                 addr102:
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           addr298:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(null);
                                                                                                                              addr299:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr301);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(null);
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              §§goto(addr290);
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                           }
                                                                                                                           §§goto(addr299);
                                                                                                                        }
                                                                                                                        addr92:
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr154);
                                                                                                                  §§goto(addr209);
                                                                                                               }
                                                                                                               while(_loc4_)
                                                                                                               {
                                                                                                                  §§goto(addr298);
                                                                                                                  §§push(§§pop().onUpdate);
                                                                                                               }
                                                                                                               §§goto(addr314);
                                                                                                               addr77:
                                                                                                            }
                                                                                                            §§goto(addr120);
                                                                                                         }
                                                                                                         addr22:
                                                                                                         return;
                                                                                                         addr71:
                                                                                                      }
                                                                                                      §§goto(addr387);
                                                                                                      §§goto(addr389);
                                                                                                   }
                                                                                                   §§goto(addr165);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr60);
                                                                                          }
                                                                                          §§goto(addr299);
                                                                                       }
                                                                                       §§goto(addr102);
                                                                                    }
                                                                                    §§goto(addr92);
                                                                                 }
                                                                                 §§goto(addr77);
                                                                              }
                                                                              §§goto(addr293);
                                                                           }
                                                                           addr230:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§=!r§);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(8);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(§§pop() & §§pop());
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    §§goto(addr341);
                                                                                 }
                                                                                 §§goto(addr340);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        while(_loc4_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§pop();
                                                                                       §§goto(addr333);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr448);
                                                                                    }
                                                                                 }
                                                                                 continue loop13;
                                                                                 addr328:
                                                                              }
                                                                              §§goto(addr291);
                                                                              §§goto(addr181);
                                                                           }
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     while(!(_loc3_ && _loc3_))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr230);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr22);
                                                                        }
                                                                     }
                                                                     §§goto(addr292);
                                                                     addr197:
                                                                  }
                                                                  §§goto(addr71);
                                                               }
                                                               §§goto(addr327);
                                                            }
                                                            §§goto(addr328);
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr389);
                                                   }
                                                   §§goto(addr417);
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr389);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr272);
      }
      
      public function play() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = NaN;
         if(_loc2_)
         {
            §§push(this.§#e§);
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§<!=§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() >= this.§[m§)
                     {
                        while(true)
                        {
                           this.§<!=§ = 0;
                           addr235:
                           while(true)
                           {
                           }
                        }
                        addr232:
                     }
                     while(true)
                     {
                        §§push(this.§1!I§);
                        loop6:
                        while(true)
                        {
                           §§push(§§pop().time);
                           if(!(_loc3_ && this))
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§push(Number(§§pop()));
                           }
                           _loc1_ = §§pop();
                           while(true)
                           {
                              §§push(this);
                              §§push(_loc1_);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() - this.§<!=§);
                              }
                              §§pop().§8q§ = §§pop();
                              addr197:
                              while(true)
                              {
                                 this.§#e§ = true;
                                 continue loop6;
                              }
                              addr40:
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              if(_loc2_ || _loc1_)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop0;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr235);
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr102);
      }
      
      public function set onStopParams(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§%!'§().onStopParams = param1;
         }
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() < 0)
               {
                  while(true)
                  {
                     §§push(Number(0));
                     addr96:
                     while(true)
                     {
                        param1 = §§pop();
                        addr97:
                        while(true)
                        {
                        }
                     }
                  }
                  addr94:
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     if(§§pop() > this.§[m§)
                     {
                        if(!_loc2_)
                        {
                           §§push(this.§[m§);
                           if(_loc3_)
                           {
                              addr65:
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(Number(§§pop()));
                           }
                           if(_loc3_ || _loc2_)
                           {
                              param1 = §§pop();
                              loop5:
                              for(; !_loc2_; while(true)
                              {
                                 this.§<!=§ = param1;
                                 do
                                 {
                                    this.play();
                                 }
                                 while(_loc2_);
                                 
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              },return)
                              {
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr97);
                              addr76:
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr37);
                  }
                  §§goto(addr65);
               }
            }
         }
         §§goto(addr36);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §§push(this.§&!t§);
            if(!_loc4_)
            {
               if(§§pop() != null)
               {
                  if(_loc5_ || param2)
                  {
                     addr75:
                     this.§&!t§.removeEventListener(param1,param2,param3);
                  }
                  do
                  {
                     this.§5!u§();
                  }
                  while(!(_loc5_ || param2));
                  
                  addr49:
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr49);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            §§push(this.§&!t§);
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§&!t§ = new §'+§(this);
                     addr94:
                     while(true)
                     {
                     }
                  }
                  addr89:
               }
               while(true)
               {
                  §§push(this.§&!t§);
                  if(_loc7_)
                  {
                     break;
                  }
                  §§pop().addEventListener(param1,param2,param3,param4,param5);
                  while(_loc6_ || this)
                  {
                     if(!(_loc7_ && this))
                     {
                        continue;
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr94);
               }
            }
         }
         while(true)
         {
            this.§5!u§();
            if(!(_loc7_ && param3))
            {
               break;
            }
            §§goto(addr60);
         }
      }
      
      public function fireStop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if((this.§=!r§ & 2) != 0)
            {
               while(true)
               {
                  this.§&!t§.dispatchEvent(new §&!H§(§&!H§.§^r§));
                  addr138:
                  while(true)
                  {
                  }
               }
               addr131:
            }
            loop2:
            while(true)
            {
               §§push(this.§]R§);
               loop3:
               while(true)
               {
                  §§push(§§pop() == null);
                  loop4:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§pop();
                              loop7:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(this.§]R§);
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue loop3;
                                    }
                                    §§push(§§pop().onStop);
                                    if(_loc1_)
                                    {
                                       §§push(null);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc1_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   loop8:
                                                   while(§§pop())
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         §§push(this.§]R§);
                                                         continue loop3;
                                                      }
                                                      addr93:
                                                      while(true)
                                                      {
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               addr102:
                                                               break loop8;
                                                            }
                                                            break loop7;
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                   return;
                                                   addr74:
                                                }
                                                continue loop4;
                                             }
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                          §§pop().apply(§§pop(),this.§]R§.onStopParams);
                                       }
                                       addr89:
                                       §§goto(addr93);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr88:
                                    }
                                    §§goto(addr89);
                                 }
                                 else
                                 {
                                    §§goto(addr131);
                                 }
                              }
                              continue loop2;
                           }
                        }
                        §§goto(addr74);
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function get §!^§() : Boolean
      {
         return this.§;,§;
      }
      
      public function clone() : §3@§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§^!B§ = this.newInstance();
         if(_loc2_ || _loc1_)
         {
            if(_loc1_ != null)
            {
               if(!_loc3_)
               {
                  _loc1_.copyFrom(this);
               }
            }
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§]R§);
            if(_loc1_)
            {
               return §§pop() != null ? this.§]R§.onCompleteParams : null;
            }
         }
         §§goto(addr46);
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§%!'§().onUpdateParams = param1;
         }
      }
      
      public function get onStopParams() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§]R§);
            if(!_loc1_)
            {
               return §§pop() != null ? this.§]R§.onStopParams : null;
            }
         }
         §§goto(addr47);
      }
      
      protected function §%!'§() : ClassicHandlers
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            return this.§]R§ || (this.§]R§ = new ClassicHandlers());
         }
         §§goto(addr35);
      }
      
      public function set onPlay(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§%!'§().onPlay = param1;
         }
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%!'§().onComplete = param1;
         }
      }
      
      override public function tick(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§#e§);
            if(_loc4_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr37);
                  }
               }
               §§push(param1);
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop() - this.§8q§);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(!_loc3_)
               {
                  this.§<!=§ = _loc2_;
                  while(true)
                  {
                     this.internalUpdate(_loc2_);
                     loop1:
                     for(; _loc4_ || this; if(_loc3_ && this)
                     {
                        continue;
                     },§§goto(addr389))
                     {
                        §§push(this.§=!r§);
                        loop2:
                        while(true)
                        {
                           §§push(4);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop() & §§pop());
                              loop4:
                              while(true)
                              {
                                 §§push(0);
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.§&!t§);
                                          addr644:
                                          while(true)
                                          {
                                             §§pop().dispatchEvent(new §&!H§(§&!H§.§5Y§));
                                             addr649:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                       addr642:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§]R§);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(null);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(this.§]R§);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().onUpdate);
                                                                  addr611:
                                                                  while(true)
                                                                  {
                                                                     §§push(null);
                                                                     addr612:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        addr613:
                                                                        while(true)
                                                                        {
                                                                           §§push(!§§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  addr167:
                                                                  if(_loc3_ && _loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(§§pop().onComplete);
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(null);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              loop54:
                                                                              while(true)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 loop56:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr200:
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             loop45:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop46:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_ || this)
                                                                                                      {
                                                                                                         §§push(this.§]R§);
                                                                                                         loop47:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().onComplete);
                                                                                                            addr219:
                                                                                                            loop48:
                                                                                                            while(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(null);
                                                                                                               loop49:
                                                                                                               while(_loc4_)
                                                                                                               {
                                                                                                                  §§push(this.§]R§);
                                                                                                                  if(_loc4_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(_loc4_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop().onCompleteParams);
                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§pop().apply(§§pop(),§§pop());
                                                                                                                           if(!(_loc3_ && param1))
                                                                                                                           {
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this);
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       if(!(_loc3_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - this.§[m§);
                                                                                                                                       }
                                                                                                                                       §§pop().§<!=§ = §§pop();
                                                                                                                                       loop51:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this);
                                                                                                                                                   §§push(param1);
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - this.§<!=§);
                                                                                                                                                   }
                                                                                                                                                   §§pop().§8q§ = §§pop();
                                                                                                                                                   if(_loc4_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         continue loop51;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         this.§#e§ = false;
                                                                                                                                                         addr586:
                                                                                                                                                         while(_loc4_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§=!r§);
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         break loop47;
                                                                                                                                                      }
                                                                                                                                                      addr583:
                                                                                                                                                   }
                                                                                                                                                   addr368:
                                                                                                                                                   while(!(_loc3_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         continue loop1;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr649);
                                                                                                                                                   }
                                                                                                                                                   loop41:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               loop42:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§]R§);
                                                                                                                                                                  loop43:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(null);
                                                                                                                                                                              if(!(_loc3_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc4_ || param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc3_ && param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop12;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                    loop44:
                                                                                                                                                                                    while(_loc4_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(!(_loc3_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop14;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop45;
                                                                                                                                                                                             }
                                                                                                                                                                                             loop52:
                                                                                                                                                                                             while(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr353:
                                                                                                                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc3_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      continue loop41;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr613);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§]R§);
                                                                                                                                                                                                         addr618:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().onUpdate);
                                                                                                                                                                                                            addr619:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(null);
                                                                                                                                                                                                               addr620:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§]R§);
                                                                                                                                                                                                                  addr622:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().onUpdateParams);
                                                                                                                                                                                                                     addr623:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().apply(§§pop(),§§pop());
                                                                                                                                                                                                                        addr624:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr616:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§#e§);
                                                                                                                                                                                                      while(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(true);
                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc3_ && _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop56;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop52;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  return §§pop();
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                               addr495:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr503:
                                                                                                                                                                                                                              §§push(this.§]R§.onComplete);
                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(null);
                                                                                                                                                                                                                                 break loop49;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr619);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr586);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr612);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr472:
                                                                                                                                                                                                                     return true;
                                                                                                                                                                                                                     addr470:
                                                                                                                                                                                                                     addr497:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr582:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§=!r§);
                                                                                                                                                                                                                           if(!(_loc4_ || _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop2;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(8);
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc4_ || this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() & §§pop());
                                                                                                                                                                                                                              if(!(_loc3_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc3_ && this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop5;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop42;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§&!t§);
                                                                                                                                                                                                                                       if(_loc3_ && this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr573:
                                                                                                                                                                                                                                          §§pop().dispatchEvent(new §&!H§(§&!H§.COMPLETE));
                                                                                                                                                                                                                                          §§push(this.§]R§);
                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr537:
                                                                                                                                                                                                                                             §§push(§§pop() == null);
                                                                                                                                                                                                                                             if(_loc4_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(!§§pop());
                                                                                                                                                                                                                                                break loop44;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                                                                          addr578:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc4_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().dispatchEvent(new §&!H§(§&!H§.COMPLETE));
                                                                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr644);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr470);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr616);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr568:
                                                                                                                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr569:
                                                                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop16;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr573);
                                                                                                                                                                                                                                       §§push(this.§&!t§);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr573);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr565:
                                                                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr568);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr564:
                                                                                                                                                                                                                              §§push(§§pop() & §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr565);
                                                                                                                                                                                                                           addr473:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop3;
                                                                                                                                                                                                                        addr391:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr583);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr493:
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop45;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop54;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr83:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr598:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc2_ < this.§[m§)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop46;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§<!=§ = this.§[m§;
                                                                                                                                                                                                            break loop47;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr353);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr547:
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§]R§);
                                                                                                                                                                                                break loop43;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr578);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr546:
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr547);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr497);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr537);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr546);
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr351);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr537);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr573);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr503);
                                                                                                                                                                     addr160:
                                                                                                                                                                     if(!(_loc4_ || this))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr167);
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc3_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().onComplete);
                                                                                                                                                                     break loop48;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr618);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr642);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr644);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr550);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr473);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr649);
                                                                                                                                                }
                                                                                                                                                addr154:
                                                                                                                                             }
                                                                                                                                             §§goto(addr624);
                                                                                                                                          }
                                                                                                                                          §§goto(addr430);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr136:
                                                                                                                                 }
                                                                                                                                 §§goto(addr602);
                                                                                                                              }
                                                                                                                              §§goto(addr569);
                                                                                                                           }
                                                                                                                           §§goto(addr499);
                                                                                                                        }
                                                                                                                        addr519:
                                                                                                                        if(!(_loc3_ && param1))
                                                                                                                        {
                                                                                                                           §§pop().apply(§§pop(),§§pop());
                                                                                                                           §§goto(addr527);
                                                                                                                        }
                                                                                                                        §§goto(addr623);
                                                                                                                     }
                                                                                                                     §§goto(addr622);
                                                                                                                  }
                                                                                                                  §§goto(addr519);
                                                                                                                  §§push(§§pop().onCompleteParams);
                                                                                                               }
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§goto(addr518);
                                                                                                                     §§push(this.§]R§);
                                                                                                                  }
                                                                                                                  §§goto(addr612);
                                                                                                               }
                                                                                                               §§goto(addr620);
                                                                                                            }
                                                                                                            §§push(null);
                                                                                                            if(!(_loc3_ && this))
                                                                                                            {
                                                                                                               §§goto(addr493);
                                                                                                            }
                                                                                                            addr389:
                                                                                                            §§goto(addr507);
                                                                                                            §§push(this.§]R§);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§goto(addr160);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr582);
                                                                                                            §§goto(addr602);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr598);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr83);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr136);
                                                                                             }
                                                                                             return §§pop();
                                                                                          }
                                                                                          §§goto(addr495);
                                                                                       }
                                                                                       §§goto(addr472);
                                                                                    }
                                                                                    §§goto(addr321);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr227);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr611);
                                                                        }
                                                                     }
                                                                     §§goto(addr503);
                                                                  }
                                                                  §§goto(addr219);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr615);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr154);
            }
            §§goto(addr37);
         }
         addr37:
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§&!t§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(this.§&!t§);
                  }
                  else
                  {
                     §§goto(addr62);
                  }
               }
               §§goto(addr62);
            }
            return §§pop().hasEventListener(param1);
         }
         addr62:
         return false;
      }
      
      protected function copyFrom(param1:§^!B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1!I§ = param1.§1!I§;
            loop0:
            while(true)
            {
               this.§[m§ = param1.§[m§;
               loop1:
               while(true)
               {
                  this.§;,§ = param1.§;,§;
                  loop2:
                  while(true)
                  {
                     §§push(param1.§]R§);
                     loop3:
                     while(true)
                     {
                        if(§§pop() == null)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(param1.§&!t§);
                              while(true)
                              {
                                 if(§§pop() != null)
                                 {
                                    if(!_loc2_)
                                    {
                                       this.§&!t§ = new §'+§(this);
                                    }
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(this.§&!t§);
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             break;
                                             addr51:
                                          }
                                          §§pop().copyFrom(param1.§&!t§);
                                          while(!_loc2_)
                                          {
                                          }
                                          continue loop2;
                                       }
                                       continue loop1;
                                    }
                                    continue;
                                    addr76:
                                 }
                                 while(true)
                                 {
                                    this.§=!r§ = param1.§=!r§;
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr76);
                                    }
                                    §§goto(addr51);
                                 }
                                 if(!_loc3_)
                                 {
                                    while(!(_loc3_ || param1))
                                    {
                                       continue loop0;
                                    }
                                    continue loop6;
                                    addr87:
                                 }
                                 if(!_loc2_)
                                 {
                                    break loop6;
                                 }
                              }
                           }
                           return;
                        }
                        while(true)
                        {
                           this.§]R§ = new ClassicHandlers();
                           continue loop0;
                        }
                        addr111:
                        while(true)
                        {
                           §§push(this.§]R§);
                           if(!_loc3_)
                           {
                              continue loop3;
                           }
                           §§pop().copyFrom(param1.§]R§);
                           §§goto(addr87);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      protected function internalUpdate(param1:Number) : void
      {
      }
   }
}

class ClassicHandlers
{
    
   
   public var onStop:Function;
   
   public var onStopParams:Array;
   
   public var onUpdate:Function;
   
   public var onUpdateParams:Array;
   
   public var onPlay:Function;
   
   public var onComplete:Function;
   
   public var onPlayParams:Array;
   
   public var onCompleteParams:Array;
   
   function ClassicHandlers()
   {
      super();
   }
   
   public function copyFrom(param1:ClassicHandlers) : void
   {
      this.onPlay = param1.onPlay;
      this.onPlayParams = param1.onPlayParams;
      this.onStop = param1.onStop;
      this.onStopParams = param1.onStopParams;
      this.onUpdate = param1.onUpdate;
      this.onUpdateParams = param1.onUpdateParams;
      this.onComplete = param1.onComplete;
      this.onCompleteParams = param1.onCompleteParams;
   }
}
