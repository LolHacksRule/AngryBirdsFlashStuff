package §`!#§
{
   import §"E§.§""%§;
   import §%!n§.§'!r§;
   import §%!n§.§;!'§;
   import §]6§.§[f§;
   import §^!1§.§`!N§;
   import flash.events.Event;
   
   public class §[!O§ extends §'!r§ implements §?f§
   {
       
      
      protected var §8!X§:uint = 0;
      
      protected var §9r§:Number = 0;
      
      protected var § y§:Boolean = false;
      
      protected var §`!D§:§;!'§;
      
      protected var §,!V§:§""%§;
      
      protected var § ",§:Number;
      
      protected var §^W§:ClassicHandlers;
      
      protected var §!"-§:Number = 0;
      
      protected var §@0§:Boolean = true;
      
      public function §[!O§(param1:§;!'§, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            do
            {
               this.§`!D§ = param1;
               do
               {
                  this.§9r§ = param2;
               }
               while(_loc3_);
               
            }
            while(_loc3_);
            
         }
      }
      
      public function get onStop() : Function
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§^W§);
            if(_loc1_)
            {
               return §§pop() != null ? this.§^W§.onStop : null;
            }
         }
         §§goto(addr51);
      }
      
      public function set onStop(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^"5§().onStop = param1;
         }
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§,!V§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr54);
                  }
               }
               return false;
            }
            §§goto(addr54);
         }
         addr54:
         return this.§,!V§.willTrigger(param1);
      }
      
      protected function newInstance() : §[!O§
      {
         return null;
      }
      
      public function get onUpdate() : Function
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§^W§);
            if(_loc1_ || _loc2_)
            {
               return §§pop() != null ? this.§^W§.onUpdate : null;
            }
         }
         §§goto(addr56);
      }
      
      public function get §!"$§() : §;!'§
      {
         return this.§`!D§;
      }
      
      public function get duration() : Number
      {
         return this.§!"-§;
      }
      
      public function gotoAndStop(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
                     addr218:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr219:
                        while(true)
                        {
                           param1 = §§pop();
                           addr220:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr217:
               }
               while(true)
               {
                  §§push(param1);
                  if(!(_loc2_ && this))
                  {
                     continue loop0;
                  }
                  addr199:
                  §§push(Number(§§pop()));
                  if(!_loc2_)
                  {
                     param1 = §§pop();
                     loop6:
                     while(true)
                     {
                        addr162:
                        while(true)
                        {
                           this.§9r§ = param1;
                           loop8:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 this.internalUpdate(param1);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§8!X§ & 4);
                                    if(!_loc2_)
                                    {
                                       if(§§pop() != 0)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                break;
                                                addr154:
                                             }
                                             this.§,!V§.dispatchEvent(new §`!N§(§`!N§.§7"9§));
                                             while(_loc3_)
                                             {
                                             }
                                             continue loop9;
                                             loop21:
                                             while(true)
                                             {
                                                if(!(_loc3_ || this))
                                                {
                                                   continue loop10;
                                                }
                                                while(true)
                                                {
                                                   loop22:
                                                   while(true)
                                                   {
                                                      this.stop();
                                                      if(_loc2_ && param1)
                                                      {
                                                         continue loop21;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         loop23:
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break loop21;
                                                            }
                                                            continue loop6;
                                                            addr118:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop23;
                                                            }
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(this.§^W§);
                                                         addr82:
                                                         while(!_loc2_)
                                                         {
                                                            §§push(§§pop().onUpdate);
                                                            while(true)
                                                            {
                                                               §§push(null);
                                                               addr86:
                                                               addr54:
                                                               while(true)
                                                               {
                                                                  §§pop().apply(§§pop(),this.§^W§.onUpdateParams);
                                                                  continue loop21;
                                                               }
                                                               §§push(§§pop().onUpdate);
                                                               if(_loc2_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(null);
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(!(_loc2_ && param1))
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr118);
                                                                              }
                                                                           }
                                                                           addr116:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           addr79:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              continue loop22;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr118);
                                                                  }
                                                                  §§goto(addr79);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr86);
                                                               }
                                                            }
                                                         }
                                                         addr111:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == null);
                                                            if(_loc3_)
                                                            {
                                                               §§goto(addr116);
                                                               §§push(!§§pop());
                                                            }
                                                            §§goto(addr118);
                                                         }
                                                      }
                                                   }
                                                   return;
                                                }
                                             }
                                             §§goto(addr154);
                                          }
                                          continue loop8;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr111);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr218);
                                    }
                                    §§goto(addr220);
                                 }
                              }
                              else
                              {
                                 §§goto(addr217);
                              }
                              §§goto(addr218);
                           }
                           continue loop6;
                        }
                     }
                     addr213:
                  }
                  §§goto(addr219);
               }
            }
         }
         §§goto(addr97);
      }
      
      public function get onPlayParams() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§^W§);
            if(!_loc1_)
            {
               return §§pop() != null ? this.§^W§.onPlayParams : null;
            }
         }
         §§goto(addr52);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§ y§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§ y§ = false;
                     loop2:
                     while(true)
                     {
                        if((this.§8!X§ & 2) != 0)
                        {
                           loop3:
                           while(true)
                           {
                              this.§,!V§.dispatchEvent(new §`!N§(§`!N§.§?S§));
                              addr160:
                              while(true)
                              {
                              }
                              loop12:
                              while(true)
                              {
                                 if(!(_loc1_ || _loc2_))
                                 {
                                    continue loop3;
                                 }
                                 if(_loc2_ && this)
                                 {
                                    continue loop2;
                                 }
                                 addr135:
                                 §§push(this.§^W§);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop().onStop);
                                    if(!_loc2_)
                                    {
                                       §§push(null);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc1_)
                                          {
                                             if(_loc2_)
                                             {
                                                continue;
                                             }
                                             addr44:
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                                §§goto(addr44);
                                             }
                                             addr45:
                                          }
                                          loop7:
                                          while(§§pop())
                                          {
                                             if(_loc1_)
                                             {
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   §§push(this.§^W§);
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         §§push(§§pop().onStop);
                                                         break loop12;
                                                      }
                                                      break;
                                                      §§goto(addr135);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == null);
                                                      if(_loc2_ && this)
                                                      {
                                                         continue loop12;
                                                      }
                                                      §§push(!§§pop());
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         continue loop12;
                                                      }
                                                      §§goto(addr45);
                                                   }
                                                   continue loop0;
                                                   addr58:
                                                   addr99:
                                                }
                                                continue loop1;
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc1_ || this)
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      break loop7;
                                                   }
                                                   break;
                                                }
                                                continue loop12;
                                                addr67:
                                                while(true)
                                                {
                                                   §§pop().apply(§§pop(),this.§^W§.onStopParams);
                                                   continue loop11;
                                                }
                                             }
                                             §§goto(addr160);
                                          }
                                          §§goto(addr24);
                                       }
                                       §§goto(addr67);
                                    }
                                    break;
                                 }
                                 §§goto(addr58);
                              }
                              while(true)
                              {
                                 §§goto(addr67);
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr99);
                           §§goto(addr160);
                        }
                     }
                  }
               }
               addr24:
               return;
            }
         }
         §§goto(addr160);
      }
      
      public function set onUpdate(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§^"5§().onUpdate = param1;
         }
      }
      
      public function firePlay() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if((this.§8!X§ & 1) != 0)
            {
               loop0:
               while(true)
               {
                  this.§,!V§.dispatchEvent(new §`!N§(§`!N§.PLAY));
                  addr133:
                  while(true)
                  {
                  }
                  addr85:
                  while(true)
                  {
                     if(_loc1_ || this)
                     {
                        §§goto(addr19);
                     }
                     continue loop0;
                  }
               }
            }
            loop2:
            while(true)
            {
               §§push(this.§^W§);
               loop3:
               while(true)
               {
                  §§push(§§pop() == null);
                  while(true)
                  {
                     §§push(!§§pop());
                     if(_loc1_ || this)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§pop();
                              addr109:
                              while(true)
                              {
                                 §§push(this.§^W§);
                                 if(_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(§§pop().onPlay);
                                 if(_loc1_)
                                 {
                                    §§push(null);
                                    if(!_loc2_)
                                    {
                                       continue loop6;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(null);
                                    }
                                    addr80:
                                 }
                                 while(true)
                                 {
                                    §§pop().apply(§§pop(),this.§^W§.onPlayParams);
                                    §§goto(addr85);
                                 }
                                 continue loop6;
                              }
                           }
                           addr108:
                        }
                        while(§§pop())
                        {
                           if(!_loc2_)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(this.§^W§);
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr85);
                        }
                        addr19:
                        return;
                     }
                     §§goto(addr108);
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      public function get §4C§() : Boolean
      {
         return this.§ y§;
      }
      
      public function get onUpdateParams() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§^W§);
            if(_loc1_ || this)
            {
               return §§pop() != null ? this.§^W§.onUpdateParams : null;
            }
         }
         §§goto(addr51);
      }
      
      public function get position() : Number
      {
         return this.§9r§;
      }
      
      public function set onPlayParams(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§^"5§().onPlayParams = param1;
         }
      }
      
      public function get onPlay() : Function
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§^W§);
            if(!_loc2_)
            {
               return §§pop() != null ? this.§^W§.onPlay : null;
            }
         }
         §§goto(addr46);
      }
      
      public function set §"H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§@0§ = param1;
         }
      }
      
      protected function §6f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§,!V§);
            loop0:
            while(true)
            {
               §§push(§`!N§.PLAY);
               addr226:
               while(true)
               {
                  if(!§§pop().willTrigger(§§pop()))
                  {
                     §§push(this);
                     §§push(this.§8!X§);
                     §§push(1);
                     if(!_loc1_)
                     {
                        §§push(~§§pop());
                     }
                     §§pop().§8!X§ = §§pop() & §§pop();
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§,!V§);
                           loop4:
                           while(true)
                           {
                              §§push(§`!N§.§?S§);
                              addr183:
                              while(true)
                              {
                                 if(!§§pop().willTrigger(§§pop()))
                                 {
                                    §§push(this);
                                    §§push(this.§8!X§);
                                    §§push(2);
                                    if(!(_loc1_ && this))
                                    {
                                       §§push(~§§pop());
                                    }
                                    §§pop().§8!X§ = §§pop() & §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§,!V§);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§`!N§.§7"9§);
                                                addr140:
                                                while(true)
                                                {
                                                   if(§§pop().willTrigger(§§pop()))
                                                   {
                                                      continue loop6;
                                                   }
                                                   addr130:
                                                   §§push(this);
                                                   §§push(this.§8!X§);
                                                   §§push(4);
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      §§push(~§§pop());
                                                   }
                                                   §§pop().§8!X§ = §§pop() & §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc1_ && _loc1_)
                                                               {
                                                                  break loop6;
                                                               }
                                                               this.§8!X§ |= 2;
                                                               continue loop7;
                                                            }
                                                            addr185:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr155:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§,!V§);
                                                         if(_loc2_)
                                                         {
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop8;
                                                         §§goto(addr157);
                                                      }
                                                      addr96:
                                                      addr25:
                                                      this.§8!X§ |= 8;
                                                      return;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§8!X§ |= 1;
                                             break loop6;
                                          }
                                          addr228:
                                       }
                                    }
                                    while(true)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 §§goto(addr185);
                              }
                           }
                        }
                     }
                     addr211:
                  }
                  §§goto(addr228);
               }
            }
         }
         §§goto(addr157);
      }
      
      public function set onCompleteParams(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^"5§().onCompleteParams = param1;
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§,!V§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§,!V§);
                  }
                  else
                  {
                     §§goto(addr57);
                  }
               }
               §§goto(addr57);
            }
            return §§pop().dispatchEvent(param1);
         }
         addr57:
         return false;
      }
      
      public function get onComplete() : Function
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§^W§);
            if(!(_loc2_ && _loc2_))
            {
               return §§pop() != null ? this.§^W§.onComplete : null;
            }
         }
         §§goto(addr51);
      }
      
      public function §,!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§ y§)
            {
               this.play();
               if(!(_loc1_ && _loc2_))
               {
                  if(_loc1_)
                  {
                     addr62:
                     this.stop();
                     addr64:
                  }
                  return;
               }
               §§goto(addr64);
            }
         }
         §§goto(addr62);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§9r§);
            loop0:
            while(true)
            {
               §§push(this.§!"-§);
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
                              addr463:
                              while(true)
                              {
                                 §§push(this.§!"-§);
                                 addr434:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(param1);
                                    if(_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() <= §§pop());
                                 }
                              }
                           }
                           addr462:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              loop7:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          §§push(0);
                                          while(true)
                                          {
                                             §§push(§§pop() < this.§9r§);
                                             addr427:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                addr428:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr430:
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() <= 0);
                                                         }
                                                         §§goto(addr434);
                                                      }
                                                      addr429:
                                                   }
                                                }
                                             }
                                             loop25:
                                             while(!(_loc4_ && _loc3_))
                                             {
                                                §§push(0);
                                                loop26:
                                                while(true)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      loop27:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§push(this.§,!V§);
                                                            loop28:
                                                            while(true)
                                                            {
                                                               §§pop().dispatchEvent(new §`!N§(§`!N§.§7"9§));
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§^W§);
                                                                           loop31:
                                                                           while(true)
                                                                           {
                                                                              §§push(null);
                                                                              loop32:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 loop33:
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    loop34:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop35:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             if(_loc4_ && param1)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop36:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr362:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§^W§);
                                                                                                      addr295:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().onUpdate);
                                                                                                         addr296:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(null);
                                                                                                            addr297:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               addr298:
                                                                                                               addr418:
                                                                                                               while(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               addr418:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(true);
                                                                                                                        break loop27;
                                                                                                                     }
                                                                                                                     addr419:
                                                                                                                  }
                                                                                                                  addr401:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§9r§ = param1;
                                                                                                                     addr405:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.internalUpdate(param1);
                                                                                                                        addr400:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§8!X§);
                                                                                                                           addr366:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(4);
                                                                                                                              addr367:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop25;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr312:
                                                                                                                           if(_loc3_ || this)
                                                                                                                           {
                                                                                                                              §§push(this.§^W§);
                                                                                                                              continue loop31;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   loop56:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_ || _loc2_)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(!§§pop());
                                                                                                            loop57:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc4_ && this)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop58:
                                                                                                                  while(!(_loc4_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(!(_loc4_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           loop59:
                                                                                                                           while(_loc3_ || this)
                                                                                                                           {
                                                                                                                              §§push(this.§^W§);
                                                                                                                              if(!(_loc4_ && param1))
                                                                                                                              {
                                                                                                                                 addr40:
                                                                                                                                 if(!(_loc3_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().onComplete);
                                                                                                                                    if(_loc3_ || param1)
                                                                                                                                    {
                                                                                                                                       addr57:
                                                                                                                                       if(_loc3_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(null);
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop57;
                                                                                                                                                      }
                                                                                                                                                      continue loop58;
                                                                                                                                                   }
                                                                                                                                                   addr93:
                                                                                                                                                   addr93:
                                                                                                                                                   if(_loc3_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            continue loop33;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            loop60:
                                                                                                                                                            while(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  addr115:
                                                                                                                                                                  if(!(_loc4_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc4_ && _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop29;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(this.§^W§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().onComplete);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(null);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§^W§);
                                                                                                                                                                                    if(_loc3_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().onCompleteParams);
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().apply(§§pop(),§§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop59;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc3_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc3_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop60;
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr401);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr150:
                                                                                                                                                                                          addr421:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().apply(§§pop(),§§pop());
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr235:
                                                                                                                                                                                                loop51:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                                                                   addr237:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop60;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc3_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc4_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§8!X§);
                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(8);
                                                                                                                                                                                                               if(_loc3_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() & §§pop());
                                                                                                                                                                                                                  if(_loc4_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop25;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop26;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop51;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(this.§,!V§);
                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop28;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().dispatchEvent(new §`!N§(§`!N§.COMPLETE));
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr167:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§^W§);
                                                                                                                                                                                                                                 addr170:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(null);
                                                                                                                                                                                                                                    if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                    continue loop56;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop32;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop27;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr312);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr400);
                                                                                                                                                                                                                        §§goto(addr115);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr362);
                                                                                                                                                                                                                     addr276:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr167);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr367);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop9;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr93);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr366);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr333:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr291);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       addr332:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr333);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr137:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr296);
                                                                                                                                                                           }
                                                                                                                                                                           addr134:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr170);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr276);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr150);
                                                                                                                                                            }
                                                                                                                                                            return;
                                                                                                                                                            addr111:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr427);
                                                                                                                                                         §§goto(addr418);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr298);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr237);
                                                                                                                                                }
                                                                                                                                                §§goto(addr297);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr330:
                                                                                                                                             }
                                                                                                                                             §§goto(addr332);
                                                                                                                                          }
                                                                                                                                          §§goto(addr137);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr57);
                                                                                                                                          }
                                                                                                                                          addr329:
                                                                                                                                       }
                                                                                                                                       §§goto(addr330);
                                                                                                                                    }
                                                                                                                                    §§goto(addr134);
                                                                                                                                 }
                                                                                                                                 §§goto(addr295);
                                                                                                                              }
                                                                                                                              §§goto(addr131);
                                                                                                                           }
                                                                                                                           §§goto(addr430);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr462);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  break loop27;
                                                                                                                  §§goto(addr429);
                                                                                                               }
                                                                                                               §§goto(addr111);
                                                                                                            }
                                                                                                            continue loop35;
                                                                                                         }
                                                                                                         continue loop34;
                                                                                                      }
                                                                                                      continue loop36;
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§goto(addr235);
                                                                                                }
                                                                                                §§goto(addr305);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr428);
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr335:
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr405);
                                                               }
                                                               §§goto(addr463);
                                                            }
                                                         }
                                                         §§goto(addr419);
                                                      }
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         §§goto(addr421);
                                                      }
                                                   }
                                                   §§goto(addr335);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr418);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr463);
      }
      
      public function play() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = NaN;
         if(!(_loc3_ && this))
         {
            §§push(this.§ y§);
            loop0:
            for(; !§§pop(); while(true)
            {
               if(!(_loc2_ || _loc2_))
               {
                  continue loop0;
               }
               §§goto(addr146);
               §§push(!§§pop());
            },§§goto(addr242))
            {
               loop1:
               while(true)
               {
                  §§push(this.§9r§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() >= this.§!"-§)
                     {
                        while(true)
                        {
                           this.§9r§ = 0;
                           addr250:
                           while(true)
                           {
                           }
                        }
                        addr247:
                     }
                     while(true)
                     {
                        §§push(this.§`!D§);
                        addr216:
                        loop6:
                        while(true)
                        {
                           §§push(§§pop().time);
                           if(_loc2_)
                           {
                              §§push(Number(§§pop()));
                           }
                           if(!(_loc2_ || _loc1_))
                           {
                              break;
                           }
                           _loc1_ = §§pop();
                           while(true)
                           {
                              §§push(this);
                              §§push(_loc1_);
                              if(_loc2_ || this)
                              {
                                 §§push(§§pop() - this.§9r§);
                              }
                              §§pop().§ ",§ = §§pop();
                              loop8:
                              while(true)
                              {
                                 addr211:
                                 if(!(_loc2_ || _loc1_))
                                 {
                                    break;
                                 }
                                 this.§ y§ = true;
                                 while(!(_loc3_ && _loc1_))
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop6;
                                    }
                                    §§goto(addr247);
                                 }
                                 addr105:
                                 §§goto(addr250);
                                 if(_loc3_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 §§push(this.§^W§);
                                 loop23:
                                 while(true)
                                 {
                                    §§push(§§pop().onPlay);
                                    loop22:
                                    while(true)
                                    {
                                       §§push(null);
                                       loop20:
                                       while(true)
                                       {
                                          §§pop().apply(§§pop(),this.§^W§.onPlayParams);
                                          loop21:
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                while(true)
                                                {
                                                   this.tick(_loc1_);
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      break loop21;
                                                   }
                                                   continue loop21;
                                                }
                                                §§goto(addr211);
                                                addr30:
                                             }
                                             addr161:
                                             while(true)
                                             {
                                                this.§,!V§.dispatchEvent(new §`!N§(§`!N§.PLAY));
                                                addr168:
                                                loop13:
                                                while(true)
                                                {
                                                   addr133:
                                                   while(true)
                                                   {
                                                      §§push(this.§^W§);
                                                      addr136:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() == null);
                                                         continue loop0;
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                             }
                                          }
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop1;
                                             }
                                             loop19:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(this.§^W§);
                                                   if(!(_loc2_ || this))
                                                   {
                                                      continue loop23;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop().onPlay);
                                                      if(!_loc2_)
                                                      {
                                                         continue loop22;
                                                      }
                                                      §§push(null);
                                                      if(!_loc2_)
                                                      {
                                                         continue loop20;
                                                      }
                                                      §§push(§§pop() == §§pop());
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         if(_loc3_ && _loc2_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§push(!§§pop());
                                                      }
                                                      if(!(_loc3_ && this))
                                                      {
                                                         addr94:
                                                         if(!(_loc2_ || this))
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop19;
                                                                  }
                                                                  addr148:
                                                               }
                                                               §§goto(addr94);
                                                            }
                                                            addr146:
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§goto(addr30);
                                                            }
                                                            addr103:
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr105);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if((this.§8!X§ & 1) != 0)
                                                                     {
                                                                        §§goto(addr161);
                                                                     }
                                                                     §§goto(addr133);
                                                                  }
                                                                  addr176:
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr148);
                                                   }
                                                   §§goto(addr136);
                                                }
                                                §§goto(addr168);
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr103);
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
            return;
         }
         while(true)
         {
            §§push(this.§`!D§);
            if(!_loc3_)
            {
               §§pop().§]!a§(this);
               §§goto(addr176);
            }
            §§goto(addr216);
         }
      }
      
      public function set onStopParams(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§^"5§().onStopParams = param1;
         }
      }
      
      public function gotoAndPlay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() < 0)
               {
                  while(true)
                  {
                     §§push(Number(0));
                     addr115:
                     while(true)
                     {
                        param1 = §§pop();
                        addr116:
                        while(true)
                        {
                        }
                     }
                  }
                  addr113:
               }
               loop4:
               while(true)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     if(§§pop() > this.§!"-§)
                     {
                        loop5:
                        while(true)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              while(true)
                              {
                                 §§push(this.§!"-§);
                                 if(_loc2_)
                                 {
                                    if(_loc3_ && this)
                                    {
                                       break loop5;
                                    }
                                    continue loop0;
                                 }
                                 addr108:
                                 addr108:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    addr109:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr79:
                           }
                           else
                           {
                              §§goto(addr113);
                           }
                           addr47:
                           while(true)
                           {
                              if(_loc3_ && _loc2_)
                              {
                                 continue loop5;
                              }
                              this.play();
                              if(_loc3_ && _loc2_)
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop4;
                                 }
                                 break;
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr115);
                     }
                     while(true)
                     {
                        this.§9r§ = param1;
                        §§goto(addr47);
                        §§goto(addr109);
                     }
                  }
                  §§goto(addr108);
               }
               return;
            }
         }
         §§goto(addr79);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§,!V§);
            if(!_loc4_)
            {
               if(§§pop() != null)
               {
                  if(_loc5_)
                  {
                     addr60:
                     this.§,!V§.removeEventListener(param1,param2,param3);
                  }
                  do
                  {
                     this.§6f§();
                  }
                  while(!_loc5_);
                  
                  addr39:
               }
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr39);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            §§push(this.§,!V§);
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§,!V§ = new §""%§(this);
                     addr79:
                     while(true)
                     {
                     }
                  }
                  addr74:
               }
               while(true)
               {
                  §§push(this.§,!V§);
                  if(_loc7_)
                  {
                     break;
                  }
                  §§pop().addEventListener(param1,param2,param3,param4,param5);
                  while(true)
                  {
                     if(_loc6_)
                     {
                        continue;
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr79);
               }
            }
         }
      }
      
      public function fireStop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if((this.§8!X§ & 2) != 0)
            {
               while(true)
               {
                  this.§,!V§.dispatchEvent(new §`!N§(§`!N§.§?S§));
                  addr149:
                  while(true)
                  {
                  }
                  addr118:
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  §§push(this.§^W§);
                  if(_loc2_)
                  {
                     if(!(_loc1_ && this))
                     {
                        §§push(§§pop().onStop);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(null);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§push(§§pop() == §§pop());
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr83:
                                    §§push(!§§pop());
                                    if(!_loc1_)
                                    {
                                       loop6:
                                       while(§§pop())
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(this.§^W§);
                                             while(true)
                                             {
                                                §§push(§§pop().onStop);
                                                addr97:
                                                while(true)
                                                {
                                                   §§push(null);
                                                   addr98:
                                                   while(true)
                                                   {
                                                      §§pop().apply(§§pop(),this.§^W§.onStopParams);
                                                   }
                                                }
                                             }
                                             addr96:
                                          }
                                          while(_loc1_)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   §§goto(addr118);
                                                }
                                                else
                                                {
                                                   §§goto(addr149);
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() == null);
                                                   if(_loc2_)
                                                   {
                                                      addr113:
                                                      §§push(!§§pop());
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop6;
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop5;
                                                         }
                                                      }
                                                      addr113:
                                                   }
                                                   §§goto(addr113);
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       return;
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr96);
               }
            }
            while(true)
            {
               §§goto(addr108);
               §§goto(addr149);
            }
         }
         §§goto(addr149);
      }
      
      public function get §"H§() : Boolean
      {
         return this.§@0§;
      }
      
      public function clone() : §[f§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§[!O§ = this.newInstance();
         if(_loc3_)
         {
            if(_loc1_ != null)
            {
               if(!_loc2_)
               {
                  _loc1_.copyFrom(this);
               }
            }
         }
         return _loc1_;
      }
      
      public function get onCompleteParams() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§^W§);
            if(!_loc1_)
            {
               return §§pop() != null ? this.§^W§.onCompleteParams : null;
            }
         }
         §§goto(addr52);
      }
      
      public function set onUpdateParams(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§^"5§().onUpdateParams = param1;
         }
      }
      
      public function get onStopParams() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§^W§);
            if(_loc1_ || this)
            {
               return §§pop() != null ? this.§^W§.onStopParams : null;
            }
         }
         §§goto(addr56);
      }
      
      protected function §^"5§() : ClassicHandlers
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            return this.§^W§ || (this.§^W§ = new ClassicHandlers());
         }
         §§goto(addr40);
      }
      
      public function set onPlay(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§^"5§().onPlay = param1;
         }
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§^"5§().onComplete = param1;
         }
      }
      
      override public function tick(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§ y§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§goto(addr31);
                  }
               }
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(§§pop() - this.§ ",§);
                  if(_loc3_ || _loc3_)
                  {
                     addr45:
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc4_)
                  {
                     this.§9r§ = _loc2_;
                     loop0:
                     while(true)
                     {
                        this.internalUpdate(_loc2_);
                        loop1:
                        while(true)
                        {
                           §§push(this.§8!X§);
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
                                             §§push(this.§,!V§);
                                             addr625:
                                             while(true)
                                             {
                                                §§pop().dispatchEvent(new §`!N§(§`!N§.§7"9§));
                                                addr640:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          addr623:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§^W§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(null);
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
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr615:
                                                               while(true)
                                                               {
                                                                  §§push(this.§^W§);
                                                                  addr580:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().onUpdate);
                                                                     addr581:
                                                                     while(true)
                                                                     {
                                                                        §§push(null);
                                                                        addr582:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                           }
                                                                           addr586:
                                                                           while(_loc3_ || param1)
                                                                           {
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr614:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop22:
                                                               for(; !_loc4_; if(_loc4_ && this)
                                                               {
                                                                  continue;
                                                               },§§push(this.§,!V§),while(true)
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     §§pop().dispatchEvent(new §`!N§(§`!N§.COMPLETE));
                                                                     §§goto(addr544);
                                                                  }
                                                                  §§goto(addr625);
                                                               })
                                                               {
                                                                  §§push(this.§^W§);
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().onUpdate);
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        §§push(null);
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§^W§);
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().onUpdateParams);
                                                                              loop27:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().apply(§§pop(),§§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    addr560:
                                                                                    loop29:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§ y§);
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             §§push(true);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                loop31:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                         {
                                                                                                            if(!(_loc3_ || this))
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            loop32:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop33:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§^W§);
                                                                                                                     loop34:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc4_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().onComplete);
                                                                                                                              loop35:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc4_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(null);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§^W§);
                                                                                                                                          if(_loc3_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().onCompleteParams);
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§pop().apply(§§pop(),§§pop());
                                                                                                                                                   loop37:
                                                                                                                                                   for(; !_loc4_; while(_loc3_ || this)
                                                                                                                                                   {
                                                                                                                                                      this.tick(param1);
                                                                                                                                                      if(!(_loc3_ || param1))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop33;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc4_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr59);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr552);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr479);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr421:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr421:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr307);
                                                                                                                                                   })
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this);
                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - this.§!"-§);
                                                                                                                                                         }
                                                                                                                                                         §§pop().§9r§ = §§pop();
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(param1);
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - this.§9r§);
                                                                                                                                                               }
                                                                                                                                                               §§pop().§ ",§ = §§pop();
                                                                                                                                                               continue loop37;
                                                                                                                                                            }
                                                                                                                                                            addr564:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc2_ >= this.§!"-§)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     this.§9r§ = this.§!"-§;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§@0§);
                                                                                                                                                                     loop70:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§8!X§);
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(8);
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() & §§pop());
                                                                                                                                                                                    if(_loc3_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc3_ || param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() != §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr307:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§^W§);
                                                                                                                                                                                             addr310:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop23;
                                                                                                                                                                                                }
                                                                                                                                                                                                loop59:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().onComplete);
                                                                                                                                                                                                   addr430:
                                                                                                                                                                                                   addr468:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(null);
                                                                                                                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop30;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr456:
                                                                                                                                                                                                               loop43:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  addr487:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break loop43;
                                                                                                                                                                                                                           addr490:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop39:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop70;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc3_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break loop39;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(this.§^W§);
                                                                                                                                                                                                                                 continue loop59;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr500:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr614);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop29;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop14;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr457:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§^W§);
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().onComplete);
                                                                                                                                                                                                                                 break loop35;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr424:
                                                                                                                                                                                                                              addr483:
                                                                                                                                                                                                                              §§goto(addr422);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr462:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr479:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr422:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(null);
                                                                                                                                                                                                                        addr484:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                                                                           addr485:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr486);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     return true;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr486:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop30;
                                                                                                                                                                                                            addr446:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr582);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr470:
                                                                                                                                                                                                   §§push(this.§^W§);
                                                                                                                                                                                                   if(_loc4_ && _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop26;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().apply(§§pop(),§§pop().onCompleteParams);
                                                                                                                                                                                                   §§goto(addr479);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop23;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop5;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(§§pop() != §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc3_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop22;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr544:
                                                                                                                                                                                                addr544:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr513:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr483);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       addr512:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr513);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop3;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() & §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    addr509:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr512);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(8);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr506:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr509);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop4;
                                                                                                                                                                           addr378:
                                                                                                                                                                        }
                                                                                                                                                                        this.§ y§ = false;
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§8!X§);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr640);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr506);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr623);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr640);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(false);
                                                                                                                                                                     addr61:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              return §§pop();
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        addr225:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc4_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop31;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr490);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc3_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc4_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop32;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   break loop37;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr487);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr446);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr457);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr343:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr340:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr424);
                                                                                                                                                                  }
                                                                                                                                                                  addr59:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr485);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr500);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc4_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§^W§);
                                                                                                                                                            if(!(_loc3_ || _loc2_))
                                                                                                                                                            {
                                                                                                                                                               continue loop34;
                                                                                                                                                            }
                                                                                                                                                            if(_loc3_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop10;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr462);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr544);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr378);
                                                                                                                                                      §§goto(addr361);
                                                                                                                                                   }
                                                                                                                                                   continue loop24;
                                                                                                                                                }
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             §§goto(addr478);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr470);
                                                                                                                                       addr209:
                                                                                                                                       §§push(null);
                                                                                                                                       if(!(_loc3_ || _loc2_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc4_ && this)
                                                                                                                                       {
                                                                                                                                          continue loop25;
                                                                                                                                       }
                                                                                                                                       §§goto(addr225);
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().onComplete);
                                                                                                                                 addr192:
                                                                                                                                 break;
                                                                                                                                 if(!(_loc3_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc3_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                    §§goto(addr209);
                                                                                                                                 }
                                                                                                                                 §§goto(addr430);
                                                                                                                              }
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 §§goto(addr468);
                                                                                                                                 §§push(null);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr581);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr310);
                                                                                                                     }
                                                                                                                     §§goto(addr580);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr144);
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr343);
                                                                                                   }
                                                                                                   §§goto(addr361);
                                                                                                }
                                                                                                §§goto(addr586);
                                                                                             }
                                                                                             §§goto(addr61);
                                                                                          }
                                                                                          §§goto(addr564);
                                                                                       }
                                                                                       return §§pop();
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr615);
                                                            }
                                                            §§goto(addr560);
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
                  §§goto(addr421);
               }
               §§goto(addr45);
            }
            §§goto(addr31);
         }
         addr31:
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§,!V§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc3_)
                  {
                     §§goto(addr54);
                  }
               }
               return false;
            }
            §§goto(addr54);
         }
         addr54:
         return this.§,!V§.hasEventListener(param1);
      }
      
      protected function copyFrom(param1:§[!O§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`!D§ = param1.§`!D§;
            loop0:
            while(true)
            {
               this.§!"-§ = param1.§!"-§;
               loop1:
               while(true)
               {
                  this.§@0§ = param1.§@0§;
                  loop2:
                  while(true)
                  {
                     §§push(param1.§^W§);
                     loop3:
                     while(true)
                     {
                        if(§§pop() == null)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(param1.§,!V§);
                              loop8:
                              while(true)
                              {
                                 if(§§pop() == null)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       this.§8!X§ = param1.§8!X§;
                                       if(!_loc2_)
                                       {
                                          addr31:
                                          if(!(_loc2_ && this))
                                          {
                                             break;
                                          }
                                          continue loop8;
                                       }
                                       addr47:
                                       while(_loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             while(true)
                                             {
                                                continue loop11;
                                             }
                                             addr51:
                                          }
                                       }
                                       continue loop7;
                                    }
                                 }
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       break;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    this.§,!V§ = new §""%§(this);
                                 }
                                 §§goto(addr74);
                              }
                              addr109:
                              while(!_loc2_)
                              {
                                 continue loop3;
                                 addr74:
                                 continue loop8;
                                 continue loop8;
                                 return;
                              }
                              continue loop2;
                           }
                        }
                        while(_loc3_)
                        {
                           this.§^W§ = new ClassicHandlers();
                           §§goto(addr109);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr51);
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
