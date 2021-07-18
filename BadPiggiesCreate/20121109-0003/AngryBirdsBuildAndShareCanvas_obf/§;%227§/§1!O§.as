package §;"7§
{
   import §5u§.§-!h§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §1!O§ extends EventDispatcher
   {
       
      
      private var §5K§:String = "";
      
      private var §1!J§:String;
      
      private var §29§:URLLoader;
      
      private var §'!l§:Dictionary;
      
      private var §%"%§:String = null;
      
      private var §4!H§:String = null;
      
      private var §,!X§:String = null;
      
      private var §&7§:Boolean;
      
      private var §2!1§:§-!h§;
      
      private var §7k§:§="<§;
      
      private var §<!K§:Vector.<§="<§>;
      
      private var §%!G§:String = "pak";
      
      private var §'S§:Boolean = true;
      
      private var §%'§:int = 1;
      
      public function §1!O§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            this.§'!l§ = new Dictionary();
            loop0:
            while(true)
            {
               this.§<!K§ = new Vector.<§="<§>();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§5K§ = param2;
                     loop3:
                     while(true)
                     {
                        this.§1!J§ = param1;
                        while(_loc5_)
                        {
                           this.§'S§ = param3;
                           loop5:
                           while(_loc5_)
                           {
                              continue loop3;
                              while(true)
                              {
                                 this.§%'§ = Math.max(1,param4);
                                 if(!(_loc6_ && this))
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function get §8=§() : §="<§
      {
         return this.§7k§;
      }
      
      public function §]!>§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§'!l§[param1] == null);
         if(!(_loc2_ && this))
         {
            return !§§pop();
         }
      }
      
      private function §@Y§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§="<§ = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§<!K§.length)
            {
               return false;
            }
            _loc3_ = this.§<!K§[_loc2_];
            if(_loc5_ || _loc3_)
            {
               if(_loc3_.id != param1)
               {
                  loop1:
                  while(true)
                  {
                     _loc2_++;
                     if(!_loc4_)
                     {
                        break;
                     }
                     addr63:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  if(_loc5_)
                  {
                     if(_loc5_)
                     {
                        if(_loc5_)
                        {
                           if(true)
                           {
                              continue;
                           }
                        }
                        else
                        {
                           this.§%"%§ = param1;
                           do
                           {
                              if(_loc4_ && _loc3_)
                              {
                                 break loop0;
                                 addr84:
                              }
                              this.§<!K§.splice(_loc2_,1);
                              this.§<!K§.unshift(this.§7k§);
                           }
                           while(_loc4_ && _loc2_);
                           
                           addr114:
                           addr89:
                        }
                        return true;
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr70);
               }
               break;
            }
            §§goto(addr63);
         }
         while(true)
         {
            this.§7k§ = _loc3_;
            §§goto(addr114);
            §§goto(addr89);
         }
      }
      
      public function §?2§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc2_)
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
                  §§push(this.§1!C§());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§'!y§());
                           loop4:
                           while(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§]!>§(param1));
                                 addr143:
                                 while(true)
                                 {
                                    if(!(_loc3_ || param1))
                                    {
                                       continue loop4;
                                    }
                                    if(!§§pop())
                                    {
                                       this.§#f§(param1);
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(!(_loc3_ || param1))
                                                {
                                                   addr161:
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr178:
                                                   while(true)
                                                   {
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   dispatchEvent(new Event(Event.COMPLETE));
                                                   addr112:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break loop7;
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc2_ && this)
                                                         {
                                                            break loop4;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(this.§'S§);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         addr87:
                                                         if(!(_loc3_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               this.§2!S§(param1,false);
                                                            }
                                                            continue loop7;
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                addr24:
                                             }
                                             return;
                                          }
                                          §§goto(addr112);
                                       }
                                       break;
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       this.§@Y§(param1);
                                    }
                                    §§goto(addr161);
                                 }
                                 if(_loc2_)
                                 {
                                    return;
                                    addr199:
                                 }
                                 §§goto(addr24);
                              }
                           }
                           this.§,!X§ = param1;
                           §§goto(addr199);
                        }
                     }
                     §§goto(addr139);
                  }
               }
            }
         }
         §§goto(addr178);
      }
      
      private function §#f§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = "";
         if(!_loc4_)
         {
            §§push(this.§5K§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(!§§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        addr195:
                        loop9:
                        while(true)
                        {
                           §§pop();
                           addr196:
                           while(true)
                           {
                              §§push(this.§5K§);
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              addr167:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr168:
                                 while(true)
                                 {
                                 }
                              }
                              continue loop9;
                           }
                           continue loop0;
                        }
                        addr195:
                     }
                     else
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§goto(addr167);
                              }
                              addr162:
                           }
                        }
                        addr160:
                     }
                     while(true)
                     {
                        this.§4!H§ = param1;
                        loop6:
                        while(true)
                        {
                           this.§29§ = new URLLoader();
                           loop7:
                           while(true)
                           {
                              this.§29§.dataFormat = URLLoaderDataFormat.BINARY;
                              loop8:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       this.§29§.addEventListener(Event.COMPLETE,this.onComplete);
                                       loop12:
                                       for(; !_loc4_; loop13:
                                       while(true)
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             continue loop7;
                                          }
                                          continue loop12;
                                          addr60:
                                          while(true)
                                          {
                                             if(_loc4_ && _loc3_)
                                             {
                                                continue loop13;
                                             }
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             if(!_loc4_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr162);
                                          }
                                          continue loop6;
                                       },continue loop7)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             this.§29§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                             continue;
                                          }
                                          §§goto(addr168);
                                       }
                                       continue loop8;
                                    }
                                    addr131:
                                 }
                                 else
                                 {
                                    §§goto(addr196);
                                 }
                              }
                              §§goto(addr167);
                              if(_loc4_ && _loc3_)
                              {
                                 continue;
                              }
                              this.§29§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                              §§goto(addr60);
                           }
                        }
                     }
                  }
               }
               §§goto(addr195);
            }
         }
         §§goto(addr131);
      }
      
      private function §1!C§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(Boolean(this.§29§));
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     addr53:
                     §§pop();
                     addr54:
                     §§push(this.§&7§);
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr59);
                  }
                  §§push(Boolean(§§pop()));
               }
               addr59:
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr54);
      }
      
      private function §'!y§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§29§)
            {
               loop6:
               while(true)
               {
                  this.§29§.removeEventListener(Event.COMPLETE,this.onComplete);
                  loop5:
                  while(true)
                  {
                     this.§29§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     addr99:
                     while(!(_loc1_ || this))
                     {
                        continue loop6;
                     }
                     this.§29§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                     loop2:
                     while(true)
                     {
                        if(_loc1_)
                        {
                           this.§29§.close();
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 continue loop5;
                              }
                              this.§29§ = null;
                              while(_loc2_)
                              {
                                 continue loop2;
                                 §§goto(addr79);
                              }
                              addr79:
                           }
                           addr77:
                        }
                        else
                        {
                           §§goto(addr99);
                        }
                     }
                  }
               }
               addr120:
            }
            while(true)
            {
               §§push(this.§&7§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        if(!(_loc2_ && this))
                        {
                           §§push(false);
                           break;
                        }
                        §§goto(addr70);
                     }
                     else if(_loc1_ || _loc2_)
                     {
                        addr19:
                        §§push(true);
                        if(_loc1_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr19);
               }
               break;
               §§goto(addr70);
            }
            return §§pop();
         }
         §§goto(addr120);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§29§.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         loop0:
         while(true)
         {
            this.§29§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            loop1:
            while(true)
            {
               this.§29§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               while(!_loc3_)
               {
                  this.§'!l§[this.§4!H§] = this.§29§.data;
                  loop3:
                  while(_loc2_)
                  {
                     this.§29§ = null;
                     while(true)
                     {
                        if(!(_loc3_ && param1))
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
         }
      }
      
      private function §2!S§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§="<§ = null;
         if(_loc5_)
         {
            this.§&7§ = true;
            if(!_loc4_)
            {
               addr27:
               this.§4!H§ = param1;
            }
            while(this.§<!K§.length >= this.§%'§)
            {
               _loc3_ = this.§<!K§.pop();
               if(_loc5_ || param2)
               {
                  _loc3_.dispose();
               }
            }
            if(_loc5_ || this)
            {
               §§push(this.§2!1§);
               if(_loc5_ || param2)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || this)
                     {
                        §§push(this.§2!1§);
                        if(!_loc4_)
                        {
                           §§pop().dispose();
                           if(!_loc4_)
                           {
                              addr161:
                              this.§7k§ = new §="<§(param1);
                              loop6:
                              while(true)
                              {
                                 this.§<!K§.unshift(this.§7k§);
                                 addr158:
                                 while(!_loc5_)
                                 {
                                    continue loop6;
                                 }
                              }
                           }
                           while(true)
                           {
                              this.§2!1§ = new §-!h§();
                              loop2:
                              while(!(_loc4_ && this))
                              {
                                 while(true)
                                 {
                                    §§push(this.§2!1§);
                                    addr121:
                                    while(true)
                                    {
                                       §§pop().addEventListener(Event.COMPLETE,this.§+!G§);
                                       addr126:
                                       while(_loc4_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr158);
                           }
                        }
                        §§goto(addr121);
                     }
                     while(true)
                     {
                        §§push(this.§2!1§);
                        if(!(_loc4_ && param1))
                        {
                           §§pop().§+"0§(this.§'!l§[this.§4!H§],param2);
                           if(_loc5_)
                           {
                              break;
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr121);
                     }
                     return;
                  }
                  §§goto(addr161);
               }
               §§goto(addr121);
            }
            §§goto(addr141);
         }
         §§goto(addr27);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§29§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§29§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               loop1:
               while(_loc2_ || param1)
               {
                  this.§29§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  loop2:
                  do
                  {
                     this.§29§.close();
                     loop3:
                     while(!_loc3_)
                     {
                        this.§29§ = null;
                        do
                        {
                           this.§4!H§ = null;
                           while(_loc2_ || _loc2_)
                           {
                              dispatchEvent(new Event(Event.CANCEL));
                              if(_loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr32);
                           }
                           continue loop3;
                        }
                        while(_loc3_ && param1);
                        
                        continue loop2;
                     }
                     continue loop1;
                  }
                  while(!_loc2_);
                  
                  return;
               }
            }
         }
         §§goto(addr84);
      }
      
      private function §+!G§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§&7§ = false;
            §§push(this.§2!1§);
            if(_loc4_)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§+!G§);
               while(this.§,!X§)
               {
                  loop1:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.§?2§(this.§,!X§);
                        this.§,!X§ = null;
                        if(!(_loc5_ && _loc2_))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
               §§push(this.§2!1§);
            }
            §§push(§§pop().§1h§.§-"-§);
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
                     this.§8!u§();
                  }
                  if(_loc4_)
                  {
                     break;
                  }
               }
               else
               {
                  this.§7k§.§[h§(this.§2!1§.§1h§.§@"=§(_loc3_));
                  while(true)
                  {
                     _loc3_++;
                  }
                  addr138:
               }
               while(_loc5_)
               {
                  §§goto(addr138);
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function §8!u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§1!C§());
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
                        addr163:
                        while(true)
                        {
                           §§push(this.§2!1§);
                           addr125:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              addr127:
                              do
                              {
                                 if(_loc1_ && this)
                                 {
                                    continue loop2;
                                 }
                              }
                              while(_loc2_ || _loc2_);
                              
                              continue loop1;
                           }
                        }
                     }
                  }
                  loop6:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§7k§.§8!u§());
                           if(_loc2_ || this)
                           {
                              if(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§2!1§);
                                       if(_loc2_)
                                       {
                                          §§pop().dispose();
                                          loop9:
                                          while(true)
                                          {
                                             this.§2!1§ = null;
                                             while(!(_loc1_ && this))
                                             {
                                                this.§%"%§ = this.§4!H§;
                                                do
                                                {
                                                   this.§4!H§ = null;
                                                   continue loop9;
                                                }
                                                while(_loc1_ && _loc1_);
                                                
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §§goto(addr20);
                                                }
                                             }
                                             addr143:
                                             if(_loc2_)
                                             {
                                                break loop6;
                                             }
                                             §§goto(addr163);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr125);
                                 }
                                 addr20:
                              }
                              continue loop0;
                              return;
                           }
                           break;
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr143);
                  }
               }
            }
         }
      }
   }
}
