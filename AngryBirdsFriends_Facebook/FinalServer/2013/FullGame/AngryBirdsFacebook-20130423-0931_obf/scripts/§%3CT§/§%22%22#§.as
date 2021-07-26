package §<T§
{
   import §,l§.§0z§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §""#§ extends EventDispatcher
   {
       
      
      private var §>"Y§:String = "";
      
      protected var §%Q§:String;
      
      private var § !"§:URLLoader;
      
      private var §7M§:Dictionary;
      
      private var §0!r§:String = null;
      
      private var §3h§:String = null;
      
      private var §2m§:String = null;
      
      private var §;!L§:Boolean;
      
      private var §0?§:§0z§;
      
      private var §=!2§:§`m§;
      
      private var §0"J§:Vector.<§`m§>;
      
      protected var §'!'§:String = "pak";
      
      private var §=!"§:Boolean = true;
      
      private var §2!2§:int = 1;
      
      public function §""#§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§7M§ = new Dictionary();
            loop0:
            while(true)
            {
               this.§0"J§ = new Vector.<§`m§>();
               while(true)
               {
                  super();
                  loop5:
                  while(_loc6_ || param3)
                  {
                     continue loop0;
                     this.§2!2§ = Math.max(1,param4);
                     if(!_loc6_)
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        return;
                     }
                     loop4:
                     while(!(_loc5_ && param2))
                     {
                        if(_loc6_)
                        {
                           this.§=!"§ = param3;
                           continue loop5;
                        }
                        addr97:
                        while(true)
                        {
                           this.§>"Y§ = param2;
                           break loop4;
                        }
                     }
                     while(true)
                     {
                        this.§%Q§ = param1;
                        §§goto(addr79);
                     }
                     addr79:
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public function get textureManager() : §`m§
      {
         return this.§=!2§;
      }
      
      public function §#`§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§7M§[param1] == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      private function §01§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§`m§ = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§0"J§.length)
            {
               return false;
            }
            _loc3_ = this.§0"J§[_loc2_];
            if(!_loc5_)
            {
               if(_loc3_.id == param1)
               {
                  break;
               }
               loop1:
               do
               {
                  _loc2_++;
                  if(!_loc5_)
                  {
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           this.§0"J§.unshift(this.§=!2§);
                           break loop1;
                           addr100:
                           this.§0"J§.splice(_loc2_,1);
                        }
                     }
                     else
                     {
                        addr86:
                     }
                     continue loop0;
                     return true;
                  }
               }
               while(_loc4_);
               
               while(true)
               {
                  if(!(_loc4_ || _loc2_))
                  {
                     loop3:
                     while(_loc5_)
                     {
                        while(true)
                        {
                           this.§0!r§ = param1;
                           continue loop3;
                        }
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr86);
               }
            }
            break;
         }
         this.§=!2§ = _loc3_;
         §§goto(addr108);
      }
      
      public function §+!K§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
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
                  §§push(this.§each §());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(!(_loc3_ && _loc3_))
                        {
                           §§push(this.§?§());
                           while(§§pop())
                           {
                              addr134:
                              if(!(_loc2_ || _loc3_))
                              {
                                 continue;
                              }
                              if(!§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§pop();
                                    addr144:
                                    while(true)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(this.§=!"§);
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          continue loop9;
                                       }
                                       addr164:
                                       addr164:
                                       while(true)
                                       {
                                          this.§01§(param1);
                                          continue loop0;
                                       }
                                       continue loop9;
                                    }
                                    addr112:
                                    if(!§§pop())
                                    {
                                       this.§ !C§(param1,false);
                                       addr69:
                                       if(_loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             return;
                                             addr198:
                                          }
                                          if(_loc3_ && _loc3_)
                                          {
                                             continue loop3;
                                          }
                                       }
                                       else
                                       {
                                          addr113:
                                          dispatchEvent(new Event(Event.COMPLETE));
                                          addr119:
                                       }
                                       addr24:
                                       return;
                                       addr28:
                                    }
                                    §§goto(addr113);
                                 }
                              }
                              §§goto(addr112);
                           }
                           this.§2m§ = param1;
                           §§goto(addr198);
                        }
                        continue loop1;
                     }
                     addr152:
                     while(true)
                     {
                        §§push(this.§#`§(param1));
                        continue loop2;
                     }
                     §§goto(addr28);
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      protected function §^c§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:* = "";
         if(_loc4_ || _loc3_)
         {
            §§push(this.§>"Y§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(!(_loc5_ && this))
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 §§push("?version=");
                                 while(true)
                                 {
                                    §§push(§§pop() + this.§>"Y§);
                                    addr237:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr238:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                       }
                                    }
                                    addr78:
                                    if(_loc5_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    _loc3_ = §§pop();
                                    loop18:
                                    while(true)
                                    {
                                       loop19:
                                       while(true)
                                       {
                                          this.§ !"§.load(new URLRequest(_loc3_ + _loc2_));
                                          if(_loc5_)
                                          {
                                             continue loop18;
                                          }
                                          if(!_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr50:
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      return;
                                                   }
                                                   addr203:
                                                   while(true)
                                                   {
                                                      this.§ !"§ = new URLLoader();
                                                      addr198:
                                                      while(true)
                                                      {
                                                         this.§ !"§.dataFormat = URLLoaderDataFormat.BINARY;
                                                         break loop19;
                                                      }
                                                      §§goto(addr50);
                                                   }
                                                   addr203:
                                                }
                                                loop15:
                                                while(!(_loc5_ && this))
                                                {
                                                   this.§ !"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            §§push(param1);
                                                            if(_loc4_ || param1)
                                                            {
                                                               §§push("crossdomain.xml");
                                                               while(true)
                                                               {
                                                                  if(§§pop().indexOf(§§pop()) == -1)
                                                                  {
                                                                     addr130:
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(this.getFullFilename(param1));
                                                                           if(_loc4_)
                                                                           {
                                                                              addr109:
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    break;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              addr254:
                                                                              addr207:
                                                                              addr254:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().length > 0);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 break loop16;
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr198);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ && param1)
                                                                        {
                                                                           break loop19;
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     addr130:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.§%Q§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        §§push("/crossdomain.xml");
                                                                        if(_loc5_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§goto(addr78);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr237);
                                                                        }
                                                                     }
                                                                     §§goto(addr238);
                                                                  }
                                                               }
                                                               _loc3_ = §§pop();
                                                               §§goto(addr130);
                                                            }
                                                            §§goto(addr109);
                                                         }
                                                         break;
                                                      }
                                                      addr185:
                                                      while(true)
                                                      {
                                                         this.§ !"§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                                         continue loop15;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr207);
                                                      §§goto(addr254);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   addr199:
                                                   while(true)
                                                   {
                                                      this.§3h§ = param1;
                                                      §§goto(addr203);
                                                   }
                                                }
                                                addr239:
                                             }
                                             §§goto(addr146);
                                          }
                                          §§goto(addr130);
                                       }
                                       while(true)
                                       {
                                          this.§ !"§.addEventListener(Event.COMPLETE,this.onComplete);
                                          §§goto(addr185);
                                          §§goto(addr130);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr239);
                           }
                           §§goto(addr199);
                        }
                        addr229:
                     }
                  }
               }
               §§goto(addr254);
            }
         }
         §§goto(addr203);
      }
      
      protected function getFullFilename(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§%Q§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop());
               if(_loc4_ || param1)
               {
                  addr51:
                  if(!§§pop())
                  {
                     §§goto(addr58);
                  }
                  §§push(§§pop());
               }
               addr58:
               if(_loc4_)
               {
                  §§pop();
                  addr56:
                  §§push("");
               }
               var _loc2_:* = §§pop();
               §§push(_loc2_ + "packages/");
               if(!_loc3_)
               {
                  §§push(param1);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc4_ || this)
                     {
                        §§goto(addr90);
                     }
                  }
                  §§goto(addr99);
               }
               addr90:
               §§push(§§pop() + ".");
               if(!(_loc3_ && param1))
               {
                  addr99:
                  return §§pop() + this.§'!'§;
               }
            }
            §§goto(addr51);
         }
         §§goto(addr56);
      }
      
      private function §each §() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(Boolean(this.§ !"§));
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     §§pop();
                     addr48:
                     §§push(this.§;!L§);
                     if(!(_loc2_ && _loc1_))
                     {
                        addr57:
                        §§push(Boolean(§§pop()));
                     }
                  }
                  §§goto(addr57);
               }
               return §§pop();
            }
            §§goto(addr57);
         }
         §§goto(addr48);
      }
      
      private function §?§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§ !"§)
            {
               loop0:
               while(true)
               {
                  this.§ !"§.removeEventListener(Event.COMPLETE,this.onComplete);
                  addr137:
                  while(true)
                  {
                     this.§ !"§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     addr126:
                     loop5:
                     while(true)
                     {
                        this.§ !"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                        addr108:
                        addr117:
                        addr82:
                        while(true)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop5;
                        }
                        this.§ !"§.close();
                        while(_loc2_ && _loc1_)
                        {
                           §§goto(addr108);
                           §§goto(addr117);
                        }
                        addr77:
                        this.§ !"§ = null;
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this.§;!L§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           if(!(_loc2_ && this))
                           {
                              §§push(false);
                              break;
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr82);
                     }
                  }
                  §§push(true);
                  if(_loc1_)
                  {
                     return §§pop();
                  }
                  break;
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr126);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ !"§.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         loop0:
         while(true)
         {
            this.§ !"§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            while(true)
            {
               this.§ !"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               loop2:
               while(!_loc3_)
               {
                  this.§7M§[this.§3h§] = this.§ !"§.data;
                  loop3:
                  while(true)
                  {
                     this.§ !"§ = null;
                     while(true)
                     {
                        if(!(_loc3_ && param1))
                        {
                           continue loop0;
                        }
                        continue loop3;
                        addr62:
                        this.§ !C§(this.§3h§,true);
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              return;
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function § !C§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§`m§ = null;
         if(_loc4_)
         {
            this.§;!L§ = true;
            if(!_loc5_)
            {
               this.§3h§ = param1;
            }
         }
         while(this.§0"J§.length >= this.§2!2§)
         {
            _loc3_ = this.§0"J§.pop();
            if(_loc4_ || this)
            {
               _loc3_.dispose();
            }
         }
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§0?§);
            if(_loc4_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && this))
                  {
                     §§push(this.§0?§);
                     if(!_loc5_)
                     {
                        addr89:
                        §§pop().dispose();
                        if(_loc4_)
                        {
                           addr176:
                           this.§=!2§ = new §`m§(param1);
                           loop4:
                           while(true)
                           {
                              this.§0"J§.unshift(this.§=!2§);
                              addr173:
                              while(_loc5_)
                              {
                                 continue loop4;
                              }
                              this.§0?§ = new §0z§();
                           }
                           addr181:
                        }
                        while(true)
                        {
                           §§push(this.§0?§);
                           addr155:
                           while(true)
                           {
                              §§pop().addEventListener(Event.COMPLETE,this.§6"Z§);
                              addr160:
                              while(true)
                              {
                                 §§push(this.§0?§);
                              }
                           }
                        }
                        addr166:
                     }
                     loop1:
                     while(true)
                     {
                        §§pop().§[T§(this.§3h§);
                        while(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              if(_loc4_)
                              {
                                 §§push(this.§0?§);
                                 if(_loc5_ && this)
                                 {
                                    continue loop1;
                                 }
                                 if(_loc4_ || param1)
                                 {
                                    §§pop().§'S§(this.§7M§[this.§3h§],param2);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       return;
                                       addr128:
                                    }
                                    continue;
                                 }
                              }
                              else
                              {
                                 §§goto(addr173);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr160);
                     }
                  }
                  §§goto(addr181);
               }
               §§goto(addr176);
            }
            §§goto(addr89);
         }
         §§goto(addr128);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ !"§.removeEventListener(Event.COMPLETE,this.onComplete);
            loop0:
            while(true)
            {
               this.§ !"§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               addr100:
               while(true)
               {
                  this.§ !"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  loop2:
                  while(true)
                  {
                     this.§ !"§.close();
                     while(_loc2_)
                     {
                        this.§ !"§ = null;
                        while(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              this.§3h§ = null;
                              continue;
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            dispatchEvent(new Event(Event.CANCEL));
            if(!(_loc2_ || this))
            {
               continue;
            }
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr100);
            }
            §§goto(addr61);
         }
      }
      
      private function §6"Z§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§;!L§ = false;
            loop0:
            while(true)
            {
               §§push(this.§0?§);
               if(!(_loc5_ && param1))
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§6"Z§);
                  if(!this.§2m§)
                  {
                     §§push(this.§0?§);
                     break;
                  }
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.§+!K§(this.§2m§);
                     continue loop0;
                  }
               }
               break;
            }
            §§push(§§pop().§#!y§.§=!;§);
            if(_loc4_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= _loc2_)
               {
                  if(!_loc5_)
                  {
                     this.§0"V§();
                  }
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     break;
                  }
               }
               else
               {
                  this.§=!2§.§0!6§(this.§0?§.§#!y§.§#"W§(_loc3_));
               }
               _loc3_++;
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §0"V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§each §());
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
                        addr158:
                        while(true)
                        {
                           §§push(this.§0?§);
                           addr132:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              addr134:
                              while(!(_loc1_ && this))
                              {
                                 if(!(_loc2_ || this))
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(!§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§=!2§.§0"V§());
                        if(!_loc1_)
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           if(§§pop())
                           {
                              if(!_loc1_)
                              {
                                 §§push(this.§0?§);
                                 if(_loc2_)
                                 {
                                    §§pop().dispose();
                                    loop8:
                                    while(true)
                                    {
                                       this.§0?§ = null;
                                       addr101:
                                       while(true)
                                       {
                                          this.§0!r§ = this.§3h§;
                                          continue loop8;
                                       }
                                    }
                                    addr128:
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr25);
                        }
                        break;
                     }
                     §§goto(addr134);
                  }
                  return;
               }
            }
         }
         §§goto(addr76);
      }
   }
}
