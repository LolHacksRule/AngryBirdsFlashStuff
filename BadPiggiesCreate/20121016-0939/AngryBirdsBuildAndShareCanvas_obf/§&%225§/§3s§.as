package §&"5§
{
   import §="6§.§;!a§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §3s§ extends EventDispatcher
   {
       
      
      private var §,j§:String = "";
      
      private var §%!^§:String;
      
      private var §@!#§:URLLoader;
      
      private var §!!4§:Dictionary;
      
      private var §+!t§:String = null;
      
      private var §]!z§:String = null;
      
      private var §5!S§:String = null;
      
      private var §["#§:Boolean;
      
      private var §[#§:§;!a§;
      
      private var §2"!§:§7!P§;
      
      private var §-!;§:Vector.<§7!P§>;
      
      private var §#!W§:String = "pak";
      
      private var §]"<§:Boolean = true;
      
      private var §,!r§:int = 1;
      
      public function §3s§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§!!4§ = new Dictionary();
            loop0:
            while(true)
            {
               this.§-!;§ = new Vector.<§7!P§>();
               while(true)
               {
                  super();
                  loop2:
                  for(; !_loc6_; if(!(_loc5_ || param1))
                  {
                     continue;
                  },§§goto(addr63))
                  {
                     this.§,j§ = param2;
                     loop3:
                     while(!_loc6_)
                     {
                        this.§%!^§ = param1;
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                           addr63:
                           this.§]"<§ = param3;
                           do
                           {
                              this.§,!r§ = Math.max(1,param4);
                           }
                           while(_loc6_);
                           
                           if(_loc5_)
                           {
                              return;
                              addr34:
                           }
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr34);
      }
      
      public function get §7!J§() : §7!P§
      {
         return this.§2"!§;
      }
      
      public function §,!Z§(param1:String) : Boolean
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
            param1 = §§pop();
         }
         §§push(this.§!!4§[param1] == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      private function §]! §(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7!P§ = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§-!;§.length)
            {
               return false;
            }
            _loc3_ = this.§-!;§[_loc2_];
            if(_loc4_)
            {
               if(_loc3_.id != param1)
               {
                  loop1:
                  while(true)
                  {
                     _loc2_++;
                     if(_loc5_ && _loc3_)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              continue;
                           }
                           while(true)
                           {
                              if(!(_loc4_ || _loc2_))
                              {
                                 §§goto(addr110);
                              }
                              §§goto(addr105);
                           }
                           addr98:
                        }
                        break;
                     }
                     if(!(_loc5_ && _loc2_))
                     {
                        if(false)
                        {
                           §§goto(addr50);
                        }
                        continue loop0;
                     }
                     addr84:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           break loop0;
                        }
                        addr105:
                        addr105:
                        loop3:
                        while(true)
                        {
                           this.§+!t§ = param1;
                           addr110:
                           while(true)
                           {
                              this.§2"!§ = _loc3_;
                              continue loop3;
                           }
                        }
                        this.§-!;§.splice(_loc2_,1);
                        break loop1;
                     }
                     §§goto(addr98);
                  }
                  while(true)
                  {
                     this.§-!;§.unshift(this.§2"!§);
                     §§goto(addr84);
                     §§goto(addr105);
                  }
               }
               §§goto(addr110);
            }
            break;
         }
         addr50:
         return true;
      }
      
      public function §"f§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
                     §§push(this.§7!>§());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§5!X§());
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§,!Z§(param1));
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop3;
                                          }
                                          if(!§§pop())
                                          {
                                             this.§#"-§(param1);
                                             if(_loc3_)
                                             {
                                                if(!(_loc3_ || param1))
                                                {
                                                   §§goto(addr100);
                                                }
                                                §§goto(addr20);
                                             }
                                             break;
                                          }
                                          if(_loc3_)
                                          {
                                             if(_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   this.§5!S§ = param1;
                                                }
                                                else
                                                {
                                                   addr188:
                                                }
                                                continue loop6;
                                                break loop5;
                                             }
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                this.§]! §(param1);
                                             }
                                          }
                                          loop12:
                                          while(true)
                                          {
                                             if(_loc3_ || this)
                                             {
                                                §§push(param1);
                                                if(_loc3_ || this)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() == this.§+!t§);
                                                      loop9:
                                                      for(; !_loc2_; if(!(_loc3_ || _loc3_))
                                                      {
                                                         continue;
                                                      },§§goto(addr75))
                                                      {
                                                         if(_loc2_ && this)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            addr75:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  dispatchEvent(new Event(Event.COMPLETE));
                                                                  addr100:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           addr20:
                                                                           return;
                                                                           addr24:
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§]"<§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        addr60:
                                                                        if(!(_loc2_ && param1))
                                                                        {
                                                                           §§push(!§§pop());
                                                                           continue loop9;
                                                                        }
                                                                        addr135:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop11;
                                                                           §§goto(addr60);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr100:
                                                               }
                                                               §§goto(addr100);
                                                            }
                                                            this.§<!Q§(param1,false);
                                                            break loop7;
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr100);
                                       }
                                       if(_loc2_ && _loc2_)
                                       {
                                          break loop5;
                                       }
                                       §§goto(addr24);
                                    }
                                    addr137:
                                 }
                                 §§goto(addr188);
                              }
                              return;
                           }
                        }
                        §§goto(addr137);
                     }
                  }
               }
            }
         }
         §§goto(addr155);
      }
      
      private function §#"-§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = "";
         if(!_loc3_)
         {
            §§push(this.§,j§);
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
                           addr192:
                           loop15:
                           while(true)
                           {
                              §§push(this.§,j§);
                              if(_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(§§pop().length > 0);
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc4_ || _loc2_))
                                 {
                                    continue loop2;
                                 }
                                 if(_loc3_ && _loc2_)
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push("?version=" + this.§,j§);
                                          addr170:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr171:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop15;
                                                }
                                             }
                                             continue loop15;
                                          }
                                       }
                                       addr165:
                                    }
                                    while(true)
                                    {
                                       this.§]!z§ = param1;
                                       loop9:
                                       while(true)
                                       {
                                          this.§@!#§ = new URLLoader();
                                          while(!_loc3_)
                                          {
                                             this.§@!#§.dataFormat = URLLoaderDataFormat.BINARY;
                                             loop11:
                                             while(_loc4_)
                                             {
                                                this.§@!#§.addEventListener(Event.COMPLETE,this.onComplete);
                                                loop12:
                                                while(!_loc3_)
                                                {
                                                   this.§@!#§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                                   do
                                                   {
                                                      this.§@!#§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop9;
                                                   }
                                                   while(!(_loc4_ || param1));
                                                   
                                                   return;
                                                }
                                                §§goto(addr165);
                                             }
                                          }
                                          §§goto(addr171);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr170);
                           }
                        }
                     }
                     §§goto(addr163);
                  }
               }
            }
         }
         §§goto(addr192);
      }
      
      private function §7!>§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Boolean(this.§@!#§));
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr48:
                     §§pop();
                     addr49:
                     §§push(this.§["#§);
                     if(_loc1_ && this)
                     {
                     }
                     §§goto(addr69);
                  }
                  §§push(Boolean(§§pop()));
               }
               addr69:
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr49);
      }
      
      private function §5!X§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§@!#§)
            {
               while(true)
               {
                  this.§@!#§.removeEventListener(Event.COMPLETE,this.onComplete);
                  addr137:
                  loop6:
                  while(true)
                  {
                     this.§@!#§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     addr114:
                     addr116:
                     while(!_loc1_)
                     {
                        continue loop6;
                     }
                     this.§@!#§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                     while(true)
                     {
                        this.§@!#§.close();
                        while(true)
                        {
                           this.§@!#§ = null;
                           addr70:
                           §§goto(addr91);
                        }
                     }
                  }
               }
            }
            addr91:
            while(true)
            {
               if(_loc2_ && _loc1_)
               {
                  continue loop3;
               }
               if(_loc1_ || _loc2_)
               {
                  continue loop0;
               }
               §§goto(addr114);
            }
            while(true)
            {
               §§push(this.§["#§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        if(!_loc2_)
                        {
                           if(_loc1_ || _loc1_)
                           {
                              §§push(false);
                              break;
                           }
                           continue loop2;
                        }
                        §§goto(addr70);
                     }
                  }
                  §§push(true);
                  if(_loc1_ || _loc2_)
                  {
                     return §§pop();
                  }
                  break;
               }
               break;
               §§goto(addr91);
            }
            return §§pop();
         }
         §§goto(addr137);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@!#§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§@!#§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               loop1:
               for(; _loc2_ || _loc2_; if(!(_loc3_ && _loc2_))
               {
                  addr47:
                  return;
               })
               {
                  this.§@!#§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  loop2:
                  while(true)
                  {
                     this.§!!4§[this.§]!z§] = this.§@!#§.data;
                     addr72:
                     while(true)
                     {
                        this.§@!#§ = null;
                        do
                        {
                           this.§<!Q§(this.§]!z§,true);
                        }
                        while(!(_loc2_ || _loc3_));
                        
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr47);
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      private function §<!Q§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§7!P§ = null;
         if(_loc5_ || this)
         {
            this.§["#§ = true;
            if(!(_loc4_ && this))
            {
               this.§]!z§ = param1;
            }
         }
         while(this.§-!;§.length >= this.§,!r§)
         {
            _loc3_ = this.§-!;§.pop();
            if(!_loc4_)
            {
               _loc3_.dispose();
            }
         }
         if(!(_loc4_ && this))
         {
            §§push(this.§[#§);
            if(!(_loc4_ && param1))
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     §§push(this.§[#§);
                     if(!(_loc4_ && param2))
                     {
                        §§pop().dispose();
                        if(!_loc4_)
                        {
                           addr166:
                           this.§2"!§ = new §7!P§(param1);
                           while(true)
                           {
                              this.§-!;§.unshift(this.§2"!§);
                              while(_loc5_)
                              {
                                 this.§[#§ = new §;!a§();
                                 loop3:
                                 while(!_loc4_)
                                 {
                                    §§push(this.§[#§);
                                    loop4:
                                    while(true)
                                    {
                                       §§pop().addEventListener(Event.COMPLETE,this.§^,§);
                                       addr136:
                                       while(!_loc4_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           addr171:
                        }
                        return;
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr171);
               }
               §§goto(addr166);
            }
            §§goto(addr113);
         }
         §§goto(addr138);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§@!#§.removeEventListener(Event.COMPLETE,this.onComplete);
            loop0:
            while(true)
            {
               this.§@!#§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               while(true)
               {
                  this.§@!#§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  while(true)
                  {
                     this.§@!#§.close();
                     addr91:
                     while(!(_loc2_ && param1))
                     {
                        this.§@!#§ = null;
                        continue loop0;
                     }
                  }
                  addr57:
                  if(!(_loc2_ && param1))
                  {
                     loop6:
                     while(true)
                     {
                        dispatchEvent(new Event(Event.CANCEL));
                        if(!(_loc3_ || _loc3_))
                        {
                           while(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr57);
                              continue loop6;
                           }
                           continue loop0;
                           addr50:
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        §§goto(addr91);
                     }
                     return;
                     addr74:
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      private function §^,§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§["#§ = false;
            loop0:
            while(true)
            {
               §§push(this.§[#§);
               if(!_loc5_)
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§^,§);
                  while(this.§5!S§)
                  {
                     do
                     {
                        this.§"f§(this.§5!S§);
                        do
                        {
                           this.§5!S§ = null;
                        }
                        while(_loc5_ && param1);
                        
                     }
                     while(_loc5_);
                     
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                  }
                  §§push(this.§[#§);
                  break;
               }
               break;
            }
            §§push(§§pop().§>"0§.§9!a§);
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
                  if(!_loc5_)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        this.§;"#§();
                     }
                     else
                     {
                        _loc3_++;
                        continue;
                        addr143:
                     }
                  }
                  if(_loc4_ || _loc2_)
                  {
                     break;
                  }
                  continue;
               }
               this.§2"!§.§@!@§(this.§[#§.§>"0§.§["=§(_loc3_));
               §§goto(addr143);
            }
            return;
         }
      }
      
      public function §;"#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§7!>§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     loop10:
                     while(true)
                     {
                        §§pop();
                        addr153:
                        while(true)
                        {
                           addr113:
                           addr115:
                           §§push(this.§[#§ == null);
                           addr122:
                           while(_loc1_ && _loc2_)
                           {
                              continue loop10;
                              §§goto(addr113);
                           }
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr152:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§2"!§.§;"#§());
                           if(!_loc1_)
                           {
                              if(§§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§[#§);
                                    if(_loc1_ && this)
                                    {
                                       break;
                                    }
                                    §§pop().dispose();
                                    while(true)
                                    {
                                       this.§[#§ = null;
                                       loop5:
                                       while(_loc2_)
                                       {
                                          this.§+!t§ = this.§]!z§;
                                          while(!_loc1_)
                                          {
                                             this.§]!z§ = null;
                                             while(true)
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop5;
                                                addr66:
                                                dispatchEvent(new Event(Event.COMPLETE));
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                if(!_loc1_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      addr25:
                                                      return;
                                                      addr47:
                                                   }
                                                   addr126:
                                                   if(!(_loc1_ && this))
                                                   {
                                                      return;
                                                   }
                                                   §§goto(addr153);
                                                }
                                                else
                                                {
                                                   §§goto(addr82);
                                                }
                                             }
                                             continue loop3;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr25);
                           }
                           break;
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr126);
                     §§goto(addr122);
                  }
                  continue;
               }
               §§goto(addr152);
            }
         }
         §§goto(addr47);
      }
   }
}
