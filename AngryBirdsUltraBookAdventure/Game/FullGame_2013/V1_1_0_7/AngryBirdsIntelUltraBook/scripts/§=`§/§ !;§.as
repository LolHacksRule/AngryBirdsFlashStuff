package §=`§
{
   import §]!+§.§5!1§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class § !;§ extends EventDispatcher
   {
       
      
      private var §`!f§:String = "";
      
      protected var § 6§:String;
      
      private var §>n§:URLLoader;
      
      private var §3!M§:Dictionary;
      
      private var §4!f§:String = null;
      
      private var §04§:String = null;
      
      private var §;!!§:String = null;
      
      private var §'! §:Boolean;
      
      private var §=!Q§:§5!1§;
      
      private var §&!k§:§6!I§;
      
      private var §5]§:Vector.<§6!I§>;
      
      protected var §;!L§:String = "pak";
      
      private var §+!I§:Boolean = true;
      
      private var §4c§:int = 1;
      
      public function § !;§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§3!M§ = new Dictionary();
            loop0:
            while(true)
            {
               this.§5]§ = new Vector.<§6!I§>();
               while(true)
               {
                  super();
                  while(_loc5_)
                  {
                     this.§`!f§ = param2;
                     continue loop0;
                     addr71:
                     if(!(_loc6_ && this))
                     {
                        loop6:
                        while(true)
                        {
                           this.§4c§ = Math.max(1,param4);
                           if(!(_loc6_ && param2))
                           {
                              addr42:
                              if(!(_loc6_ && param1))
                              {
                                 break;
                              }
                              addr93:
                              while(true)
                              {
                                 this.§+!I§ = param3;
                                 §§goto(addr42);
                              }
                           }
                           addr64:
                           while(_loc5_ || param3)
                           {
                              §§goto(addr71);
                              continue loop6;
                           }
                           continue loop0;
                        }
                        return;
                        addr78:
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function get textureManager() : §6!I§
      {
         return this.§&!k§;
      }
      
      public function §6j§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§3!M§[param1] == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      private function §`!!§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§6!I§ = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§5]§.length)
            {
               return false;
            }
            _loc3_ = this.§5]§[_loc2_];
            if(!_loc4_)
            {
               if(_loc3_.id != param1)
               {
                  while(true)
                  {
                     _loc2_++;
                     if(_loc5_ || param1)
                     {
                        if(false)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     if(!(_loc5_ || _loc3_))
                     {
                        do
                        {
                           if(!(_loc5_ || param1))
                           {
                              continue;
                           }
                        }
                        while(!_loc5_);
                        
                        break;
                     }
                     addr71:
                  }
                  return true;
               }
               if(!_loc4_)
               {
                  this.§&!k§ = _loc3_;
               }
               while(true)
               {
                  this.§4!f§ = param1;
               }
               addr114:
               while(_loc4_)
               {
                  §§goto(addr114);
               }
               this.§5]§.splice(_loc2_,1);
               break;
            }
            break;
         }
         while(true)
         {
            this.§5]§.unshift(this.§&!k§);
            §§goto(addr71);
         }
      }
      
      public function §-!a§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().toLowerCase());
               loop1:
               while(true)
               {
                  param1 = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§6;§());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§push(this.§ !i§());
                              loop4:
                              while(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§6j§(param1));
                                    loop6:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§[e§(param1);
                                          if(_loc3_)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                if(_loc2_)
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§push(this.§+!I§);
                                                            if(!(_loc3_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            addr130:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  addr25:
                                                                  addr54:
                                                                  this.§^!3§(param1,false);
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        return;
                                                                        addr181:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr108:
                                                                     if(!(_loc3_ || param1))
                                                                     {
                                                                        break loop4;
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr100:
                                                               }
                                                               continue loop7;
                                                               return;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr158:
                                                            while(true)
                                                            {
                                                               this.§`!!§(param1);
                                                            }
                                                            addr158:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§push(param1);
                                                            if(!_loc2_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop1;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            break loop5;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§goto(addr100);
                                                   continue loop4;
                                                }
                                                §§goto(addr25);
                                             }
                                             break;
                                          }
                                          §§goto(addr54);
                                       }
                                       §§goto(addr158);
                                    }
                                    dispatchEvent(new Event(Event.COMPLETE));
                                    §§goto(addr108);
                                 }
                                 continue loop2;
                              }
                           }
                           this.§;!!§ = param1;
                           §§goto(addr181);
                        }
                        §§goto(addr143);
                     }
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      protected function §[e§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:String = "";
         if(!_loc5_)
         {
            §§push(this.§`!f§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc4_ || _loc3_)
               {
                  §§push(!§§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        loop9:
                        while(true)
                        {
                           §§pop();
                           addr255:
                           while(true)
                           {
                              §§push(this.§`!f§);
                              continue loop9;
                           }
                        }
                        addr254:
                     }
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              this.§04§ = param1;
                              while(true)
                              {
                                 this.§>n§ = new URLLoader();
                                 loop8:
                                 while(true)
                                 {
                                    this.§>n§.dataFormat = URLLoaderDataFormat.BINARY;
                                    addr180:
                                    loop12:
                                    while(true)
                                    {
                                       this.§>n§.addEventListener(Event.COMPLETE,this.onComplete);
                                       loop13:
                                       while(true)
                                       {
                                          this.§>n§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                          loop14:
                                          while(_loc4_)
                                          {
                                             this.§>n§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                             loop15:
                                             while(_loc4_)
                                             {
                                                §§push(param1);
                                                if(!(_loc5_ && this))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push("crossdomain.xml");
                                                   loop16:
                                                   for(; §§pop().indexOf(§§pop()) != -1; §§push("/crossdomain.xml"),if(_loc5_ && param1)
                                                   {
                                                      continue;
                                                   },addr73:,§§push(§§pop() + §§pop()),if(_loc4_ || this)
                                                   {
                                                      _loc3_ = §§pop();
                                                      §§goto(addr82);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         continue loop0;
                                                         §§goto(addr73);
                                                      }
                                                      addr228:
                                                   })
                                                   {
                                                      §§push(this.§ 6§);
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr138:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§>n§.load(new URLRequest(_loc3_ + _loc2_));
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        return;
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           if(_loc5_ && _loc2_)
                                                                           {
                                                                              break loop16;
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     addr82:
                                                                  }
                                                               }
                                                               addr28:
                                                            }
                                                            addr237:
                                                            while(true)
                                                            {
                                                               continue loop6;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      §§push(this.§5!F§(param1));
                                                   }
                                                }
                                                §§goto(addr138);
                                             }
                                             continue loop12;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push("?version=");
                           if(_loc4_ || param1)
                           {
                              §§push(§§pop() + this.§`!f§);
                           }
                           §§goto(addr228);
                        }
                     }
                  }
               }
               §§goto(addr254);
            }
         }
         §§goto(addr180);
      }
      
      protected function §5!F§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§ 6§);
            if(_loc3_ || param1)
            {
               §§push(§§pop());
               if(_loc3_ || this)
               {
                  addr50:
                  if(!§§pop())
                  {
                     if(_loc3_)
                     {
                        addr54:
                        §§pop();
                        addr56:
                        §§push("");
                     }
                     var _loc2_:* = §§pop();
                     §§push(_loc2_ + "packages/");
                     if(_loc3_)
                     {
                        §§push(param1);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc3_ || _loc3_)
                           {
                           }
                           §§goto(addr101);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     addr101:
                     §§push(§§pop() + ".");
                     if(!(_loc4_ && param1))
                     {
                        return this.§;!L§;
                     }
                  }
                  §§goto(addr56);
               }
               §§goto(addr54);
            }
            §§goto(addr50);
         }
         §§goto(addr54);
      }
      
      private function §6;§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(Boolean(this.§>n§));
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     addr38:
                     §§push(this.§'! §);
                     if(_loc1_ || this)
                     {
                        addr47:
                        §§push(Boolean(§§pop()));
                     }
                  }
                  §§goto(addr47);
               }
               return §§pop();
            }
            §§goto(addr47);
         }
         §§goto(addr38);
      }
      
      private function § !i§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§>n§)
            {
               loop0:
               while(true)
               {
                  this.§>n§.removeEventListener(Event.COMPLETE,this.onComplete);
                  addr132:
                  loop6:
                  while(true)
                  {
                     this.§>n§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     addr112:
                     addr121:
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop6;
                     }
                     this.§>n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                     loop2:
                     while(true)
                     {
                        this.§>n§.close();
                        loop3:
                        while(!_loc2_)
                        {
                           this.§>n§ = null;
                           addr70:
                           addr77:
                           while(_loc2_ && this)
                           {
                              continue loop3;
                           }
                           while(true)
                           {
                              §§push(this.§'! §);
                              if(_loc1_ || this)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc1_ || _loc1_)
                                    {
                                       §§push(false);
                                       break;
                                    }
                                    if(!_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr70);
                                    }
                                 }
                                 §§push(true);
                                 if(!_loc2_)
                                 {
                                    return §§pop();
                                 }
                                 break;
                              }
                              break;
                              §§goto(addr77);
                           }
                           return §§pop();
                        }
                        §§goto(addr112);
                     }
                  }
               }
            }
            §§goto(addr31);
         }
         §§goto(addr132);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§>n§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§>n§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               while(_loc3_)
               {
                  this.§>n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  while(true)
                  {
                     this.§3!M§[this.§04§] = this.§>n§.data;
                  }
                  if(!_loc2_)
                  {
                     return;
                     addr51:
                  }
               }
            }
         }
         while(true)
         {
            this.§>n§ = null;
            while(_loc3_ || this)
            {
               this.§^!3§(this.§04§,true);
               if(_loc2_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  §§goto(addr39);
               }
               §§goto(addr92);
            }
         }
         §§goto(addr51);
      }
      
      private function §^!3§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§6!I§ = null;
         if(!_loc4_)
         {
            this.§'! § = true;
            if(!(_loc4_ && param2))
            {
               this.§04§ = param1;
            }
         }
         while(this.§5]§.length >= this.§4c§)
         {
            _loc3_ = this.§5]§.pop();
            if(!_loc4_)
            {
               _loc3_.dispose();
            }
         }
         if(_loc5_)
         {
            §§push(this.§=!Q§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§push(this.§=!Q§);
                     if(_loc5_ || param2)
                     {
                        addr85:
                        §§pop().dispose();
                        if(!_loc4_)
                        {
                           addr177:
                           this.§&!k§ = new §6!I§(param1);
                        }
                        loop6:
                        while(true)
                        {
                           this.§5]§.unshift(this.§&!k§);
                           addr174:
                           while(!_loc5_)
                           {
                              continue loop6;
                           }
                           addr167:
                           this.§=!Q§ = new §5!1§();
                           while(true)
                           {
                              §§push(this.§=!Q§);
                           }
                        }
                     }
                     loop1:
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,this.§]w§);
                        loop2:
                        while(true)
                        {
                           if(_loc5_ || param1)
                           {
                              §§push(this.§=!Q§);
                              while(!(_loc4_ && _loc3_))
                              {
                                 §§pop().§#!-§(this.§04§);
                                 while(true)
                                 {
                                    §§push(this.§=!Q§);
                                    if(!(_loc5_ || param1))
                                    {
                                       break;
                                    }
                                    §§pop().§?O§(this.§3!M§[this.§04§],param2);
                                    if(!_loc4_)
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                              continue loop1;
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr167);
                     }
                  }
                  return;
               }
               §§goto(addr177);
            }
            §§goto(addr85);
         }
         §§goto(addr167);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>n§.removeEventListener(Event.COMPLETE,this.onComplete);
            loop0:
            while(true)
            {
               this.§>n§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               loop1:
               while(true)
               {
                  this.§>n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  loop2:
                  while(true)
                  {
                     this.§>n§.close();
                     while(true)
                     {
                        this.§>n§ = null;
                        loop4:
                        while(!(_loc3_ && _loc2_))
                        {
                           continue loop0;
                           while(true)
                           {
                              this.§04§ = null;
                              do
                              {
                                 dispatchEvent(new Event(Event.CANCEL));
                              }
                              while(!_loc2_);
                              
                              if(!_loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      private function §]w§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§'! § = false;
            loop0:
            while(true)
            {
               §§push(this.§=!Q§);
               if(!(_loc5_ && _loc3_))
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§]w§);
                  while(this.§;!!§)
                  {
                     loop2:
                     while(_loc4_)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§;!!§ = null;
                           if(!_loc5_)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                        }
                        return;
                     }
                  }
                  §§push(this.§=!Q§);
                  break;
               }
               break;
            }
            §§push(§§pop().§8!s§.§8L§);
            if(_loc4_ || _loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= _loc2_)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     this.§`R§();
                  }
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               else
               {
                  this.§&!k§.§@!V§(this.§=!Q§.§8!s§.§#%§(_loc3_));
               }
               _loc3_++;
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function §`R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§6;§());
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§&!k§.§`R§());
                              if(_loc1_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          if(!(_loc1_ || _loc2_))
                                          {
                                             §§goto(addr135);
                                          }
                                          §§push(this.§=!Q§);
                                          if(_loc1_ || _loc2_)
                                          {
                                             §§pop().dispose();
                                             this.§=!Q§ = null;
                                             addr57:
                                             if(_loc1_ || this)
                                             {
                                                this.§4!f§ = this.§04§;
                                                this.§04§ = null;
                                                addr52:
                                                if(!_loc2_)
                                                {
                                                   dispatchEvent(new Event(Event.COMPLETE));
                                                   if(_loc1_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         §§goto(addr52);
                                                      }
                                                      addr39:
                                                      break;
                                                   }
                                                   §§goto(addr52);
                                                }
                                                §§goto(addr57);
                                             }
                                             addr118:
                                             §§goto(addr118);
                                          }
                                          else
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                §§push(§§pop() == null);
                                                addr124:
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      break loop3;
                                                   }
                                                   addr146:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop3;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             continue loop1;
                                             addr122:
                                          }
                                       }
                                       else if(_loc1_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr122);
                                       }
                                    }
                                    §§goto(addr57);
                                 }
                                 break;
                              }
                              §§goto(addr124);
                           }
                           return;
                        }
                        addr135:
                        return;
                     }
                     continue;
                     addr133:
                  }
               }
               §§goto(addr146);
            }
         }
         §§goto(addr39);
      }
   }
}
