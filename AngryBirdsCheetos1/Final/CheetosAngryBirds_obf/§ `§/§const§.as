package § `§
{
   import §3!T§.§6t§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §const§ extends EventDispatcher
   {
       
      
      private var §",§:String = "";
      
      private var §9U§:String;
      
      private var §&j§:URLLoader;
      
      private var §'`§:Dictionary;
      
      private var §%9§:String = null;
      
      private var §6f§:String = null;
      
      private var §^U§:String = null;
      
      private var §7E§:Boolean;
      
      private var §6L§:§6t§;
      
      private var §8!M§:§2w§;
      
      private var §5!@§:Vector.<§2w§>;
      
      private var §`Z§:String = "pak";
      
      private var §'g§:Boolean = true;
      
      private var §!!=§:int = 1;
      
      public function §const§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.§'`§ = new Dictionary();
            while(true)
            {
               this.§5!@§ = new Vector.<§2w§>();
               while(!_loc6_)
               {
                  super();
                  loop2:
                  while(!(_loc6_ && param3))
                  {
                     while(true)
                     {
                        this.§",§ = param2;
                        while(true)
                        {
                           this.§9U§ = param1;
                           while(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 this.§'g§ = param3;
                                 do
                                 {
                                    this.§!!=§ = Math.max(1,param4);
                                 }
                                 while(_loc6_ && param3);
                                 
                                 if(_loc5_)
                                 {
                                    return;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function get §=]§() : §2w§
      {
         return this.§8!M§;
      }
      
      public function §return§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc3_ && this))
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§'`§[param1] == null);
         if(!_loc3_)
         {
            return !§§pop();
         }
      }
      
      private function §',§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§2w§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§5!@§.length)
            {
               return false;
            }
            _loc3_ = this.§5!@§[_loc2_];
            if(_loc4_)
            {
               if(_loc3_.id != param1)
               {
                  loop1:
                  while(true)
                  {
                     _loc2_++;
                     if(_loc4_ || this)
                     {
                        break;
                     }
                     addr62:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  if(!_loc5_)
                  {
                     if(!_loc4_)
                     {
                        addr83:
                        if(!(_loc4_ || _loc2_))
                        {
                           while(true)
                           {
                              this.§%9§ = param1;
                              §§goto(addr83);
                           }
                           addr108:
                        }
                        this.§5!@§.splice(_loc2_,1);
                     }
                     if(_loc5_)
                     {
                        break;
                     }
                     continue;
                     do
                     {
                        this.§5!@§.unshift(this.§8!M§);
                     }
                     while(_loc5_);
                     
                     addr59:
                     return true;
                  }
                  §§goto(addr69);
               }
               break;
            }
            §§goto(addr62);
         }
         this.§8!M§ = _loc3_;
         §§goto(addr108);
      }
      
      public function §>=§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1);
            if(_loc2_ || param1)
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
                  §§push(this.§"!"§());
                  addr161:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§"A§());
                           loop4:
                           while(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§return§(param1));
                                 loop6:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       this.§7[§(param1);
                                       if(!_loc2_)
                                       {
                                          addr108:
                                          break;
                                       }
                                       if(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                if(!(_loc2_ || param1))
                                                {
                                                   while(!_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         addr151:
                                                         break loop9;
                                                      }
                                                      this.§',§(param1);
                                                      continue loop0;
                                                   }
                                                   continue loop5;
                                                   addr147:
                                                }
                                                if(!_loc2_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(this.§'g§);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(!§§pop());
                                                }
                                                addr83:
                                                if(!(_loc2_ || _loc3_))
                                                {
                                                   addr129:
                                                   while(_loc2_)
                                                   {
                                                      §§pop();
                                                      continue loop9;
                                                      §§goto(addr83);
                                                   }
                                                   continue loop4;
                                                   addr129:
                                                }
                                                if(!§§pop())
                                                {
                                                   this.§'!=§(param1,false);
                                                   break loop6;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr168:
                                          }
                                          if(_loc2_ || param1)
                                          {
                                             break loop2;
                                          }
                                          continue loop0;
                                          return;
                                       }
                                       dispatchEvent(new Event(Event.COMPLETE));
                                       if(_loc2_)
                                       {
                                          addr24:
                                          return;
                                          addr28:
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr147);
                                 }
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(!(_loc2_ || this))
                                    {
                                       break loop4;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr108);
                                 }
                                 §§goto(addr28);
                              }
                           }
                           this.§^U§ = param1;
                           §§goto(addr168);
                        }
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr24);
               }
            }
         }
         §§goto(addr168);
      }
      
      private function §7[§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = "";
         if(_loc3_ || param1)
         {
            §§push(this.§",§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc3_)
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
                           §§push(this.§",§);
                           if(!_loc4_)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§push(§§pop().length > 0);
                              if(_loc4_ && _loc2_)
                              {
                                 continue loop2;
                              }
                              if(_loc4_ && this)
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push("?version=" + this.§",§);
                                       addr184:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr185:
                                          while(true)
                                          {
                                          }
                                          continue loop9;
                                       }
                                    }
                                    addr179:
                                 }
                                 while(true)
                                 {
                                    this.§6f§ = param1;
                                    while(!_loc4_)
                                    {
                                       this.§&j§ = new URLLoader();
                                       loop7:
                                       while(true)
                                       {
                                          this.§&j§.dataFormat = URLLoaderDataFormat.BINARY;
                                          addr139:
                                          loop11:
                                          while(true)
                                          {
                                             this.§&j§.addEventListener(Event.COMPLETE,this.onComplete);
                                             while(true)
                                             {
                                                if(_loc3_ || param1)
                                                {
                                                   continue loop7;
                                                }
                                                continue loop11;
                                                addr72:
                                                if(!(_loc3_ || this))
                                                {
                                                   continue;
                                                }
                                                if(_loc3_)
                                                {
                                                   this.§&j§.load(new URLRequest(this.§9U§ + "packages/" + param1 + "." + this.§`Z§ + _loc2_));
                                                   addr81:
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      return;
                                                   }
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§goto(addr72);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§&j§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6x§);
                                                            continue loop14;
                                                         }
                                                         addr90:
                                                      }
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr179);
                                             }
                                             continue loop7;
                                          }
                                       }
                                       if(_loc4_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop3;
                                       }
                                       this.§&j§.addEventListener(IOErrorEvent.IO_ERROR,this.§6x§);
                                       §§goto(addr90);
                                    }
                                    §§goto(addr185);
                                 }
                              }
                           }
                           §§goto(addr184);
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr177);
               }
            }
         }
         §§goto(addr139);
      }
      
      private function §"!"§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(Boolean(this.§&j§));
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop();
                     addr43:
                     §§push(this.§7E§);
                     if(_loc1_ || this)
                     {
                        addr62:
                        §§push(Boolean(§§pop()));
                     }
                  }
                  §§goto(addr62);
               }
               return §§pop();
            }
            §§goto(addr62);
         }
         §§goto(addr43);
      }
      
      private function §"A§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§&j§)
            {
               if(_loc2_ || this)
               {
                  this.§&j§.removeEventListener(Event.COMPLETE,this.onComplete);
               }
               loop0:
               while(true)
               {
                  this.§&j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6x§);
                  addr120:
                  while(true)
                  {
                     this.§&j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6x§);
                     addr111:
                     while(true)
                     {
                        this.§&j§.close();
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr32);
         }
         §§goto(addr120);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§&j§.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         loop0:
         while(true)
         {
            this.§&j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6x§);
            loop1:
            do
            {
               this.§&j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6x§);
               while(true)
               {
                  this.§'`§[this.§6f§] = this.§&j§.data;
                  while(_loc3_)
                  {
                     this.§&j§ = null;
                     while(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           this.§'!=§(this.§6f§,true);
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc3_);
            
            return;
         }
      }
      
      private function §'!=§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§2w§ = null;
         if(_loc5_)
         {
            this.§7E§ = true;
            if(!(_loc4_ && _loc3_))
            {
               addr32:
               this.§6f§ = param1;
            }
            while(this.§5!@§.length >= this.§!!=§)
            {
               _loc3_ = this.§5!@§.pop();
               if(!_loc4_)
               {
                  _loc3_.dispose();
               }
            }
            if(_loc5_ || param1)
            {
               §§push(this.§6L§);
               if(_loc5_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && param2))
                     {
                        §§push(this.§6L§);
                        if(!_loc4_)
                        {
                           §§pop().dispose();
                           if(_loc5_)
                           {
                              addr166:
                              this.§8!M§ = new §2w§(param1);
                              loop6:
                              while(true)
                              {
                                 this.§5!@§.unshift(this.§8!M§);
                                 addr165:
                                 loop5:
                                 while(true)
                                 {
                                    this.§6L§ = new §6t§();
                                    addr139:
                                    while(true)
                                    {
                                       if(!(_loc4_ && param2))
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(this.§6L§);
                              addr128:
                              loop7:
                              while(true)
                              {
                                 §§pop().addEventListener(Event.COMPLETE,this.§2U§);
                                 addr133:
                                 while(true)
                                 {
                                    §§push(this.§6L§);
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop7;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§pop().§;!X§(this.§'`§[this.§6f§],param2);
                           if(_loc4_ && _loc3_)
                           {
                              continue;
                           }
                           if(!(_loc4_ && param1))
                           {
                              break;
                           }
                           §§goto(addr139);
                        }
                        return;
                        addr124:
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr166);
               }
               §§goto(addr128);
            }
            §§goto(addr124);
         }
         §§goto(addr32);
      }
      
      private function §6x§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§&j§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§&j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6x§);
               while(!_loc3_)
               {
                  this.§&j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6x§);
                  if(!(_loc3_ && _loc2_))
                  {
                     return;
                     addr46:
                  }
               }
            }
         }
         while(true)
         {
            this.§&j§.close();
            while(!(_loc3_ && this))
            {
               this.§&j§ = null;
               while(_loc2_)
               {
                  this.§6f§ = null;
                  do
                  {
                     dispatchEvent(new Event(Event.CANCEL));
                  }
                  while(_loc3_);
                  
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr39);
               }
            }
         }
         §§goto(addr46);
      }
      
      private function §2U§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            this.§7E§ = false;
         }
         §§push(this.§6L§);
         if(_loc4_ || _loc3_)
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§2U§);
            while(this.§^U§)
            {
               this.§>=§(this.§^U§);
               this.§^U§ = null;
               if(!_loc5_)
               {
                  return;
               }
            }
            §§push(this.§6L§);
         }
         §§push(§§pop().§%v§.§=_§);
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
               if(!(_loc5_ && this))
               {
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
                  this.§+!^§();
               }
               if(_loc4_ || param1)
               {
                  break;
               }
            }
            else
            {
               this.§8!M§.§7!<§(this.§6L§.§%v§.§"T§(_loc3_));
            }
            _loc3_++;
         }
      }
      
      public function §+!^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§"!"§());
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
                        loop3:
                        while(true)
                        {
                           §§push(this.§6L§);
                           while(true)
                           {
                              §§push(§§pop() == null);
                              addr130:
                              while(!(_loc2_ && this))
                              {
                              }
                              §§push(this.§6L§);
                              addr107:
                              continue loop2;
                              if(!(_loc2_ && this))
                              {
                                 §§pop().dispose();
                                 while(_loc1_ || _loc2_)
                                 {
                                    this.§6L§ = null;
                                    loop9:
                                    for(; !(_loc2_ && this); if(_loc1_ || _loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          §§goto(addr24);
                                       }
                                       continue loop3;
                                    })
                                    {
                                       this.§%9§ = this.§6f§;
                                       while(true)
                                       {
                                          this.§6f§ = null;
                                          while(_loc1_)
                                          {
                                             dispatchEvent(new Event(Event.COMPLETE));
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                continue loop9;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr149:
                                 return;
                                 addr117:
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        break loop1;
                     }
                     while(true)
                     {
                        §§push(this.§8!M§.§+!^§());
                        if(_loc1_ || _loc1_)
                        {
                           if(_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr107);
                                    }
                                    §§goto(addr117);
                                 }
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        §§goto(addr130);
                     }
                     addr24:
                     return;
                  }
               }
               §§goto(addr149);
            }
         }
         §§goto(addr64);
      }
   }
}
