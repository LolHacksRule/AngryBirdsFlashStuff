package §^!Y§
{
   import §+K§.§7$§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §]e§ extends EventDispatcher
   {
       
      
      private var §1q§:String = "";
      
      private var §<!0§:String;
      
      private var §[K§:URLLoader;
      
      private var §[k§:Dictionary;
      
      private var §=!;§:String = null;
      
      private var § !e§:String = null;
      
      private var §+y§:String = null;
      
      private var §=q§:Boolean;
      
      private var §#I§:§7$§;
      
      private var §+]§:§'R§;
      
      private var §&5§:Vector.<§'R§>;
      
      private var §4g§:String = "pak";
      
      private var set:Boolean = true;
      
      private var §#J§:int = 1;
      
      public function §]e§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§[k§ = new Dictionary();
            while(true)
            {
               this.§&5§ = new Vector.<§'R§>();
               loop1:
               for(; _loc6_ || param3; if(_loc5_ && param1)
               {
                  continue;
               },this.§<!0§ = param1,loop5:
               while(true)
               {
                  this.set = param3;
                  while(true)
                  {
                     if(!(_loc5_ && this))
                     {
                        if(_loc5_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop5;
                  }
                  §§goto(addr67);
               })
               {
                  while(true)
                  {
                     super();
                     while(true)
                     {
                        this.§1q§ = param2;
                        addr67:
                        while(!(_loc5_ && this))
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function get textureManager() : §'R§
      {
         return this.§+]§;
      }
      
      public function §7!6§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§[k§[param1] == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      private function §,! §(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§'R§ = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§&5§.length)
            {
               return false;
            }
            _loc3_ = this.§&5§[_loc2_];
            if(_loc4_ || _loc2_)
            {
               if(_loc3_.id != param1)
               {
                  while(true)
                  {
                     _loc2_++;
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           while(_loc5_ && _loc3_)
                           {
                              loop3:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    break loop0;
                                 }
                                 addr108:
                                 while(true)
                                 {
                                    this.§=!;§ = param1;
                                    continue loop3;
                                 }
                              }
                              this.§&5§.splice(_loc2_,1);
                           }
                           this.§&5§.unshift(this.§+]§);
                        }
                        continue;
                     }
                     if(_loc5_)
                     {
                        addr53:
                        break;
                     }
                     if(false)
                     {
                        §§goto(addr55);
                     }
                     continue loop0;
                  }
                  addr55:
                  return true;
               }
               break;
            }
            §§goto(addr53);
         }
         while(true)
         {
            this.§+]§ = _loc3_;
            §§goto(addr108);
         }
      }
      
      public function §]6§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop().toLowerCase());
            }
            loop0:
            while(true)
            {
               param1 = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§@B§());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§4!P§());
                           addr179:
                           §§goto(addr180);
                        }
                        addr177:
                     }
                     loop5:
                     while(true)
                     {
                        §§push(this.§7!6§(param1));
                        loop6:
                        while(!(_loc3_ && _loc2_))
                        {
                           if(!§§pop())
                           {
                              this.§=!E§(param1);
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc2_ || param1)
                                       {
                                          continue loop5;
                                       }
                                       §§goto(addr177);
                                    }
                                 }
                                 else
                                 {
                                    addr114:
                                    if(!_loc2_)
                                    {
                                       addr180:
                                       while(§§pop())
                                       {
                                       }
                                       addr180:
                                       §§goto(addr183);
                                    }
                                    else
                                    {
                                       addr23:
                                    }
                                 }
                                 return;
                              }
                              loop7:
                              while(true)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       break;
                                    }
                                    loop8:
                                    while(!_loc3_)
                                    {
                                       §§push(this.set);
                                       if(!_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             if(_loc2_ || _loc3_)
                                             {
                                                continue loop2;
                                             }
                                             continue loop6;
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop8;
                                          }
                                          continue;
                                       }
                                       loop10:
                                       while(§§pop())
                                       {
                                          while(true)
                                          {
                                             continue loop10;
                                          }
                                       }
                                       continue loop7;
                                    }
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop0;
                                    }
                                    if(!_loc3_)
                                    {
                                       if(_loc2_ || param1)
                                       {
                                          dispatchEvent(new Event(Event.COMPLETE));
                                          §§goto(addr114);
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§,! §(param1);
                                          continue loop0;
                                       }
                                       addr149:
                                    }
                                 }
                                 continue loop0;
                              }
                              §§goto(addr23);
                              addr183:
                              this.§+y§ = param1;
                              return;
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr179);
                     }
                  }
               }
            }
         }
         §§goto(addr180);
      }
      
      private function §=!E§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = "";
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§1q§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(!(_loc3_ && param1))
               {
                  §§push(!§§pop());
               }
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§1q§);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop().length > 0);
                              if(!(_loc4_ || _loc2_))
                              {
                                 continue loop2;
                              }
                              if(_loc3_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push("?version=");
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(§§pop() + this.§1q§);
                                       }
                                       §§push(§§pop());
                                       addr185:
                                       while(_loc4_)
                                       {
                                          _loc2_ = §§pop();
                                          while(true)
                                          {
                                          }
                                          continue loop6;
                                       }
                                       continue loop0;
                                    }
                                    addr163:
                                 }
                                 while(true)
                                 {
                                    this.§ !e§ = param1;
                                    while(true)
                                    {
                                       this.§[K§ = new URLLoader();
                                       while(true)
                                       {
                                          this.§[K§.dataFormat = URLLoaderDataFormat.BINARY;
                                          loop10:
                                          while(true)
                                          {
                                             if(_loc3_ && param1)
                                             {
                                                continue loop3;
                                             }
                                             this.§[K§.addEventListener(Event.COMPLETE,this.onComplete);
                                             while(true)
                                             {
                                                this.§[K§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                                continue loop10;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr188);
                                 }
                              }
                           }
                           §§goto(addr185);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr161);
               }
            }
         }
         §§goto(addr188);
      }
      
      private function §@B§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(Boolean(this.§[K§));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     addr38:
                     §§pop();
                     addr39:
                     §§push(this.§=q§);
                     if(_loc1_)
                     {
                     }
                     §§goto(addr44);
                  }
                  §§push(Boolean(§§pop()));
               }
               addr44:
               return §§pop();
            }
            §§goto(addr38);
         }
         §§goto(addr39);
      }
      
      private function §4!P§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§[K§)
            {
               loop0:
               while(true)
               {
                  this.§[K§.removeEventListener(Event.COMPLETE,this.onComplete);
                  addr138:
                  while(true)
                  {
                     this.§[K§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     addr127:
                     while(true)
                     {
                        this.§[K§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                        continue loop0;
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this.§=q§);
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§push(false);
                        break;
                     }
                     if(_loc2_ || this)
                     {
                        if(_loc2_)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              addr25:
                              §§push(true);
                              if(!(_loc2_ || _loc2_))
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 return §§pop();
                              }
                              continue;
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr25);
               }
               return §§pop();
               §§goto(addr92);
            }
         }
         §§goto(addr127);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[K§.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         while(true)
         {
            this.§[K§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            loop1:
            while(true)
            {
               this.§[K§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               while(true)
               {
                  this.§[k§[this.§ !e§] = this.§[K§.data;
                  addr88:
                  while(!_loc2_)
                  {
                     this.§[K§ = null;
                     continue loop1;
                  }
               }
            }
            if(_loc3_ || _loc3_)
            {
               return;
            }
         }
      }
      
      private function §]A§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§'R§ = null;
         if(_loc4_)
         {
            this.§=q§ = true;
            if(!(_loc5_ && this))
            {
               addr31:
               this.§ !e§ = param1;
            }
            while(this.§&5§.length >= this.§#J§)
            {
               _loc3_ = this.§&5§.pop();
               if(_loc4_ || this)
               {
                  _loc3_.dispose();
               }
            }
            if(!(_loc5_ && _loc3_))
            {
               §§push(this.§#I§);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && param1))
                     {
                        §§push(this.§#I§);
                        if(_loc4_ || param1)
                        {
                           §§pop().dispose();
                           if(!(_loc5_ && _loc3_))
                           {
                              addr175:
                              this.§+]§ = new §'R§(param1);
                              loop3:
                              while(true)
                              {
                                 this.§&5§.unshift(this.§+]§);
                                 addr174:
                                 loop5:
                                 while(true)
                                 {
                                    this.§#I§ = new §7$§();
                                    addr165:
                                    while(!_loc4_)
                                    {
                                       continue loop5;
                                    }
                                    addr154:
                                    §§push(this.§#I§);
                                    loop4:
                                    while(true)
                                    {
                                       §§pop().addEventListener(Event.COMPLETE,this.§>!v§);
                                       addr159:
                                       while(true)
                                       {
                                          §§push(this.§#I§);
                                          if(_loc5_)
                                          {
                                             continue loop4;
                                          }
                                          §§pop().§3O§(this.§[k§[this.§ !e§],param2);
                                          if(!(_loc4_ || this))
                                          {
                                             continue;
                                          }
                                          if(!(_loc5_ && param2))
                                          {
                                             if(_loc4_ || param2)
                                             {
                                                break;
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr165);
                                       }
                                    }
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr175);
               }
               §§goto(addr154);
            }
            §§goto(addr174);
         }
         §§goto(addr31);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§[K§.removeEventListener(Event.COMPLETE,this.onComplete);
            loop0:
            while(true)
            {
               this.§[K§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               loop1:
               while(true)
               {
                  this.§[K§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  while(true)
                  {
                     this.§[K§.close();
                     continue loop0;
                     addr72:
                     if(!(_loc2_ && param1))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      private function §>!v§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§=q§ = false;
         }
         loop0:
         while(true)
         {
            §§push(this.§#I§);
            if(!_loc4_)
            {
               break;
            }
            §§pop().removeEventListener(Event.COMPLETE,this.§>!v§);
            while(true)
            {
               if(!this.§+y§)
               {
                  §§push(this.§#I§);
                  break loop0;
               }
               if(_loc5_)
               {
                  break;
               }
               this.§]6§(this.§+y§);
               while(!(_loc5_ && _loc3_))
               {
                  this.§+y§ = null;
                  if(!(_loc5_ && param1))
                  {
                     return;
                  }
               }
            }
         }
         §§push(§§pop().§,!U§.§]t§);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(!(_loc5_ && this))
               {
                  this.§!>§();
               }
               if(_loc4_ || _loc2_)
               {
                  break;
               }
               loop4:
               while(_loc5_ && this)
               {
                  while(true)
                  {
                     _loc3_++;
                     continue loop4;
                  }
               }
               continue;
            }
            this.§+]§.§8!k§(this.§#I§.§,!U§.§0!>§(_loc3_));
            §§goto(addr153);
         }
      }
      
      public function §!>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§@B§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              break;
                           }
                           while(true)
                           {
                           }
                           addr140:
                        }
                        loop8:
                        while(true)
                        {
                           §§push(this.§+]§.§!>§());
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(this.§#I§);
                                          if(_loc1_)
                                          {
                                             §§pop().dispose();
                                             while(true)
                                             {
                                                this.§#I§ = null;
                                                while(_loc1_ || this)
                                                {
                                                   this.§=!;§ = this.§ !e§;
                                                   while(!_loc2_)
                                                   {
                                                      this.§ !e§ = null;
                                                      while(_loc1_)
                                                      {
                                                         dispatchEvent(new Event(Event.COMPLETE));
                                                         if(_loc1_ || this)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§goto(addr24);
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr100:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop() == null);
                                                break loop8;
                                             }
                                             addr104:
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr104);
                                       }
                                       addr147:
                                    }
                                    §§goto(addr100);
                                 }
                                 addr24:
                              }
                              continue loop1;
                              return;
                           }
                           break;
                        }
                        while(true)
                        {
                           if(!(_loc2_ && this))
                           {
                              continue loop0;
                           }
                        }
                        continue loop0;
                     }
                     addr139:
                     return;
                     addr130:
                  }
                  while(true)
                  {
                     §§pop();
                     §§goto(addr147);
                  }
               }
            }
         }
         §§goto(addr139);
      }
   }
}
