package §4W§
{
   import §?P§.§;y§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §9@§ extends EventDispatcher
   {
       
      
      private var §<,§:String = "";
      
      private var §!k§:String;
      
      private var §6!B§:URLLoader;
      
      private var §+n§:Dictionary;
      
      private var §=!M§:String = null;
      
      private var §"!§:String = null;
      
      private var §3`§:String = null;
      
      private var §9!+§:Boolean;
      
      private var § ?§:§;y§;
      
      private var §5<§:§!]§;
      
      private var §&!9§:String = "pak";
      
      private var §^e§:Boolean = true;
      
      public function §9@§(param1:String, param2:String, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§+n§ = new Dictionary();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§<,§ = param2;
                  while(!_loc5_)
                  {
                     this.§!k§ = param1;
                     loop3:
                     while(!(_loc5_ && param3))
                     {
                        while(true)
                        {
                           this.§^e§ = param3;
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function get §#G§() : §!]§
      {
         return this.§5<§;
      }
      
      public function §[?§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc2_ && this))
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§+n§[param1] == null);
         if(!(_loc2_ && _loc3_))
         {
            return !§§pop();
         }
      }
      
      public function §9=§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
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
                     §§push(this.§"X§());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§"!%§());
                              addr174:
                              addr185:
                              while(§§pop())
                              {
                              }
                              this.§3`§ = param1;
                              §§goto(addr188);
                           }
                           addr172:
                        }
                        loop6:
                        while(true)
                        {
                           §§push(this.§[?§(param1));
                           loop7:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§,x§(param1);
                                 if(!(_loc2_ || this))
                                 {
                                    loop8:
                                    for(; !_loc3_; this.§=F§(param1,false))
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(_loc3_ && _loc3_)
                                          {
                                             if(_loc2_ || param1)
                                             {
                                                continue loop6;
                                             }
                                             continue loop2;
                                          }
                                          if(_loc2_)
                                          {
                                             §§goto(addr28);
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(!_loc2_)
                                             {
                                                continue loop1;
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(§§pop() == this.§=!M§);
                                             if(_loc2_ || _loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      addr156:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr157);
                                                         §§goto(addr80);
                                                      }
                                                      addr156:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  dispatchEvent(new Event(Event.COMPLETE));
                                                                  break loop8;
                                                               }
                                                               break;
                                                            }
                                                            break loop8;
                                                         }
                                                         continue loop8;
                                                      }
                                                      addr188:
                                                      return;
                                                      addr107:
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr156);
                                          }
                                          §§goto(addr174);
                                          addr137:
                                       }
                                       §§goto(addr185);
                                    }
                                    while(!(_loc2_ || this))
                                    {
                                       §§goto(addr172);
                                    }
                                    addr28:
                                    addr24:
                                    return;
                                 }
                                 if(_loc2_ || param1)
                                 {
                                    §§goto(addr24);
                                 }
                                 else
                                 {
                                    addr157:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§^e§);
                                    if(_loc2_)
                                    {
                                       addr80:
                                       if(!(_loc3_ && this))
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(!§§pop());
                                             continue loop3;
                                          }
                                          continue loop7;
                                       }
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 addr157:
                                 §§goto(addr156);
                              }
                              §§goto(addr137);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr157);
      }
      
      private function §,x§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = "";
         if(!_loc4_)
         {
            §§push(this.§<,§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr186:
                           loop15:
                           while(true)
                           {
                              §§push(this.§<,§);
                              if(!(_loc4_ && this))
                              {
                                 §§push(§§pop().length > 0);
                                 if(!(_loc3_ || param1))
                                 {
                                    continue;
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push("?version=" + this.§<,§);
                                          addr164:
                                          while(!_loc4_)
                                          {
                                             _loc2_ = §§pop();
                                             while(true)
                                             {
                                             }
                                          }
                                          continue loop0;
                                       }
                                       addr159:
                                    }
                                    while(true)
                                    {
                                       this.§"!§ = param1;
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             this.§6!B§ = new URLLoader();
                                             while(true)
                                             {
                                                this.§6!B§.dataFormat = URLLoaderDataFormat.BINARY;
                                                while(true)
                                                {
                                                   this.§6!B§.addEventListener(Event.COMPLETE,this.onComplete);
                                                   while(!_loc4_)
                                                   {
                                                      this.§6!B§.addEventListener(IOErrorEvent.IO_ERROR,this.§9?§);
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            this.§6!B§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9?§);
                                                            continue;
                                                         }
                                                         §§goto(addr159);
                                                      }
                                                      §§goto(addr164);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         return;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          break;
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop15;
                                          }
                                          §§goto(addr80);
                                       }
                                       §§goto(addr167);
                                    }
                                 }
                              }
                              §§goto(addr164);
                           }
                        }
                     }
                     §§goto(addr157);
                  }
               }
            }
         }
         §§goto(addr186);
      }
      
      private function §"X§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(Boolean(this.§6!B§));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§pop();
                     addr59:
                     §§push(this.§9!+§);
                     if(!_loc1_)
                     {
                        addr63:
                        §§push(Boolean(§§pop()));
                     }
                  }
                  §§goto(addr63);
               }
               return §§pop();
            }
            §§goto(addr63);
         }
         §§goto(addr59);
      }
      
      private function §"!%§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§6!B§)
            {
               loop0:
               while(true)
               {
                  this.§6!B§.removeEventListener(Event.COMPLETE,this.onComplete);
                  loop1:
                  while(true)
                  {
                     this.§6!B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9?§);
                     loop2:
                     while(true)
                     {
                        this.§6!B§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9?§);
                        loop3:
                        while(!_loc1_)
                        {
                           this.§6!B§.close();
                           while(_loc2_)
                           {
                              this.§6!B§ = null;
                              continue loop0;
                              if(!(_loc1_ && this))
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr20);
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this.§9!+§);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§push(false);
                        break;
                     }
                     §§goto(addr47);
                  }
                  addr20:
                  §§push(true);
                  if(!(_loc1_ && _loc1_))
                  {
                     return §§pop();
                  }
                  addr46:
                  return §§pop();
               }
               break;
            }
            §§goto(addr46);
         }
         §§goto(addr85);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6!B§.removeEventListener(Event.COMPLETE,this.onComplete);
            loop0:
            while(true)
            {
               this.§6!B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9?§);
               while(true)
               {
                  this.§6!B§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9?§);
                  while(!_loc2_)
                  {
                     this.§+n§[this.§"!§] = this.§6!B§.data;
                     continue loop0;
                     addr44:
                     if(_loc3_ || this)
                     {
                        this.§=F§(this.§"!§,true);
                        addr61:
                        if(_loc3_ || _loc2_)
                        {
                           return;
                           addr42:
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           §§goto(addr44);
                           §§goto(addr61);
                        }
                        addr37:
                     }
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      private function §=F§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§9!+§ = true;
            while(true)
            {
               this.§"!§ = param1;
               loop1:
               while(true)
               {
                  §§push(this.§5<§);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        addr134:
                        while(true)
                        {
                           §§push(this.§5<§);
                           addr136:
                           while(true)
                           {
                              §§pop().dispose();
                              addr147:
                              while(true)
                              {
                              }
                           }
                        }
                        addr134:
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.§ ?§);
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || param2)
                              {
                                 continue loop1;
                              }
                              addr120:
                              while(true)
                              {
                                 if(_loc3_ && param1)
                                 {
                                    §§goto(addr134);
                                 }
                              }
                              continue loop2;
                              addr120:
                           }
                           while(true)
                           {
                              this.§5<§ = new §!]§();
                              loop7:
                              do
                              {
                                 this.§ ?§ = new §;y§();
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(this.§ ?§);
                                       loop9:
                                       for(; !_loc3_; §§push(this.§ ?§),if(_loc3_ && param1)
                                       {
                                          continue;
                                       },if(!_loc3_)
                                       {
                                          §§goto(addr36);
                                       },while(true)
                                       {
                                          §§pop().dispose();
                                          §§goto(addr120);
                                       })
                                       {
                                          §§pop().addEventListener(Event.COMPLETE,this.§2S§);
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!(_loc4_ || param1))
                                                {
                                                   break;
                                                }
                                                continue loop9;
                                             }
                                             continue loop8;
                                             addr36:
                                             §§pop().§ !=§(this.§+n§[this.§"!§],param2);
                                             if(!(_loc3_ && this))
                                             {
                                                continue loop7;
                                             }
                                          }
                                          §§goto(addr120);
                                       }
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                              }
                              while(_loc3_);
                              
                              return;
                           }
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr136);
               }
            }
         }
         §§goto(addr134);
      }
      
      private function §9?§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§6!B§.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         loop0:
         while(true)
         {
            this.§6!B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9?§);
            loop1:
            while(true)
            {
               this.§6!B§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9?§);
               while(true)
               {
                  this.§6!B§.close();
                  while(true)
                  {
                     this.§6!B§ = null;
                     while(!(_loc3_ && param1))
                     {
                        continue loop1;
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc3_)
                           {
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr56:
                  while(!(_loc3_ && _loc3_))
                  {
                     dispatchEvent(new Event(Event.CANCEL));
                     if(!(_loc2_ || param1))
                     {
                        continue;
                     }
                     §§goto(addr42);
                  }
               }
            }
         }
      }
      
      private function §2S§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§9!+§ = false;
         }
         loop0:
         while(true)
         {
            §§push(this.§ ?§);
            if(_loc4_)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§2S§);
               while(this.§3`§)
               {
                  continue loop0;
               }
               §§push(this.§ ?§);
               break;
               addr62:
            }
            break;
         }
         §§push(§§pop().§#!J§.§2"§);
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc4_)
               {
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  if(!(_loc5_ && _loc3_))
                  {
                     this.§8!K§();
                     break;
                  }
                  _loc3_++;
                  continue;
                  addr143:
               }
               break;
            }
            this.§5<§.§?1§(this.§ ?§.§#!J§.§0!L§(_loc3_));
            §§goto(addr143);
         }
      }
      
      public function §8!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§"X§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr138:
                        while(true)
                        {
                           §§push(this.§ ?§);
                           addr112:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              addr114:
                              while(!_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  loop6:
                  while(!§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§push(this.§5<§.§8!K§());
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    §§push(this.§ ?§);
                                    if(_loc2_)
                                    {
                                       §§pop().dispose();
                                       loop9:
                                       while(true)
                                       {
                                          if(!(_loc2_ || this))
                                          {
                                             continue loop7;
                                          }
                                          if(_loc1_)
                                          {
                                             break loop6;
                                          }
                                          this.§ ?§ = null;
                                          while(true)
                                          {
                                             this.§=!M§ = this.§"!§;
                                             while(!_loc1_)
                                             {
                                                this.§"!§ = null;
                                                while(true)
                                                {
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr138);
                                                }
                                             }
                                             continue loop8;
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                if(_loc2_)
                                                {
                                                   §§goto(addr20);
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                       continue loop7;
                                    }
                                    §§goto(addr112);
                                 }
                                 addr94:
                              }
                              addr20:
                           }
                           continue loop0;
                           return;
                        }
                        break;
                     }
                     §§goto(addr114);
                  }
                  return;
               }
            }
         }
         §§goto(addr94);
      }
   }
}
