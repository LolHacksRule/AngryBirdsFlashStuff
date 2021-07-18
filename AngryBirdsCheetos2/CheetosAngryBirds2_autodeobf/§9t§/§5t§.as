package §9t§
{
   import §6N§.§1!9§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §5t§ extends EventDispatcher
   {
       
      
      private var §,G§:String = "";
      
      private var §+t§:String;
      
      private var §4!8§:URLLoader;
      
      private var §>b§:Dictionary;
      
      private var §<7§:String = null;
      
      private var §5F§:String = null;
      
      private var §[?§:String = null;
      
      private var §#!h§:Boolean;
      
      private var §2W§:§1!9§;
      
      private var §>!K§:§=!>§;
      
      private var §?j§:Vector.<§=!>§>;
      
      private var § !H§:String = "pak";
      
      private var §'!K§:Boolean = true;
      
      private var §>2§:int = 1;
      
      public function §5t§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§>b§ = new Dictionary();
            loop0:
            while(true)
            {
               this.§?j§ = new Vector.<§=!>§>();
               while(true)
               {
                  super();
                  do
                  {
                     this.§,G§ = param2;
                     continue loop0;
                  }
                  while(_loc6_);
                  
                  loop5:
                  while(_loc5_ || param2)
                  {
                     this.§>2§ = Math.max(1,param4);
                     if(!(_loc5_ || this))
                     {
                        continue;
                     }
                     addr42:
                     if(_loc6_ && param3)
                     {
                        while(!(_loc6_ && this))
                        {
                           this.§'!K§ = param3;
                           continue loop5;
                           §§goto(addr42);
                        }
                        continue loop0;
                        addr78:
                     }
                     §§goto(addr49);
                  }
               }
            }
         }
      }
      
      public function get §],§() : §=!>§
      {
         return this.§>!K§;
      }
      
      public function §!!Y§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc2_ || this)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§>b§[param1] == null);
         if(_loc2_ || this)
         {
            return !§§pop();
         }
      }
      
      private function §3!J§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§=!>§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§?j§.length)
            {
               return false;
            }
            _loc3_ = this.§?j§[_loc2_];
            if(!(_loc5_ && _loc2_))
            {
               if(_loc3_.id != param1)
               {
                  do
                  {
                     _loc2_++;
                  }
                  while(_loc5_);
                  
                  if(_loc4_)
                  {
                     addr43:
                     if(true)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           addr108:
                           loop3:
                           while(true)
                           {
                              this.§<7§ = param1;
                              addr83:
                              while(true)
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue loop3;
                                 }
                                 this.§?j§.splice(_loc2_,1);
                              }
                           }
                        }
                        while(!_loc4_)
                        {
                           §§goto(addr83);
                        }
                        this.§?j§.unshift(this.§>!K§);
                     }
                  }
                  return true;
               }
               break;
            }
            §§goto(addr43);
         }
         while(true)
         {
            this.§>!K§ = _loc3_;
            §§goto(addr108);
         }
      }
      
      public function §,A§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
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
                  §§push(this.§^"§());
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§0_§());
                           addr170:
                           loop11:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§!!Y§(param1));
                                    loop4:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§ @§(param1);
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(_loc3_)
                                             {
                                                if(!(_loc3_ || param1))
                                                {
                                                   continue loop0;
                                                }
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break loop3;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             else
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      addr151:
                                                      while(!_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§3!J§(param1);
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(this.§'!K§);
                                                      if(!(_loc2_ && this))
                                                      {
                                                         if(!(_loc3_ || _loc3_))
                                                         {
                                                            continue loop11;
                                                         }
                                                         §§push(!§§pop());
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         addr140:
                                                         while(!_loc2_)
                                                         {
                                                            §§pop();
                                                            continue loop8;
                                                         }
                                                         continue loop4;
                                                         addr140:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            this.§<<§(param1,false);
                                                            if(_loc3_ || param1)
                                                            {
                                                               break loop9;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr61:
                                                         }
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            dispatchEvent(new Event(Event.COMPLETE));
                                                         }
                                                         continue loop9;
                                                      }
                                                      this.§[?§ = param1;
                                                   }
                                                   continue loop11;
                                                   return;
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr61);
                                       }
                                       §§goto(addr151);
                                    }
                                 }
                                 continue loop1;
                                 addr146:
                              }
                              §§goto(addr171);
                           }
                        }
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr170);
               }
            }
         }
         §§goto(addr153);
      }
      
      protected function § @§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = "";
         if(_loc4_ || param1)
         {
            §§push(this.§,G§);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() == null);
               loop0:
               while(true)
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(this.§,G§);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop().length > 0);
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          §§push("?version=" + this.§,G§);
                                          if(!(_loc5_ && param1))
                                          {
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                addr152:
                                                while(true)
                                                {
                                                }
                                                continue loop13;
                                             }
                                             addr151:
                                          }
                                          §§goto(addr180);
                                       }
                                       addr139:
                                    }
                                    while(true)
                                    {
                                       this.§5F§ = param1;
                                       loop6:
                                       while(true)
                                       {
                                          this.§4!8§ = new URLLoader();
                                          while(true)
                                          {
                                             this.§4!8§.dataFormat = URLLoaderDataFormat.BINARY;
                                             addr80:
                                             while(!(_loc5_ && _loc2_))
                                             {
                                                continue loop6;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr151);
                           }
                        }
                     }
                     §§goto(addr137);
                  }
               }
            }
            addr180:
            var _loc3_:String = §§pop();
            if(!(_loc5_ && this))
            {
               this.§4!8§.load(new URLRequest(_loc3_ + _loc2_));
            }
            return;
         }
         §§goto(addr45);
      }
      
      protected function §&u§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§+t§);
            if(!_loc3_)
            {
               §§push(§§pop());
               if(!(_loc3_ && param1))
               {
                  addr31:
                  if(!§§pop())
                  {
                     if(_loc4_)
                     {
                        addr35:
                        §§pop();
                        addr37:
                        §§push("");
                     }
                     var _loc2_:* = §§pop();
                     §§push(_loc2_ + "packages/");
                     if(_loc4_ || this)
                     {
                        §§push(param1);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc3_ && this))
                           {
                              §§goto(addr75);
                           }
                        }
                        §§goto(addr94);
                     }
                     addr75:
                     §§push(§§pop() + ".");
                     if(_loc4_ || param1)
                     {
                        addr94:
                        return §§pop() + this.§ !H§;
                     }
                  }
                  §§goto(addr37);
               }
               §§goto(addr35);
            }
            §§goto(addr31);
         }
         §§goto(addr35);
      }
      
      private function §^"§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(Boolean(this.§4!8§));
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr47:
                     §§pop();
                     §§push(this.§#!h§);
                     if(!(_loc2_ && _loc1_))
                     {
                        return Boolean(§§pop());
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      private function §0_§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§4!8§)
            {
               if(_loc1_)
               {
                  this.§4!8§.removeEventListener(Event.COMPLETE,this.onComplete);
                  addr127:
                  loop6:
                  while(true)
                  {
                     this.§4!8§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"§);
                     addr104:
                     addr86:
                     addr77:
                     loop3:
                     while(true)
                     {
                        this.§4!8§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"§);
                        addr95:
                        while(true)
                        {
                           this.§4!8§.close();
                           addr84:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 break loop3;
                              }
                              continue loop6;
                           }
                        }
                     }
                     this.§4!8§ = null;
                     addr79:
                     while(_loc2_)
                     {
                        §§goto(addr104);
                        §§goto(addr86);
                     }
                  }
                  addr127:
               }
               §§goto(addr127);
            }
            while(true)
            {
               §§push(this.§#!h§);
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§push(false);
                        break;
                     }
                     if(_loc1_)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(_loc1_ || _loc1_)
                           {
                              addr19:
                              §§push(true);
                              if(!(_loc1_ || _loc1_))
                              {
                                 break;
                              }
                              if(!(_loc2_ && this))
                              {
                                 return §§pop();
                              }
                              continue;
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr19);
               }
               return §§pop();
               §§goto(addr79);
            }
         }
         §§goto(addr127);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§4!8§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§4!8§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"§);
               loop1:
               while(_loc2_ || _loc2_)
               {
                  this.§4!8§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"§);
                  while(true)
                  {
                     this.§>b§[this.§5F§] = this.§4!8§.data;
                     while(_loc2_ || param1)
                     {
                        if(!_loc3_)
                        {
                           this.§4!8§ = null;
                           while(!_loc3_)
                           {
                              this.§<<§(this.§5F§,true);
                              if(_loc2_ || param1)
                              {
                                 return;
                              }
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §<<§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§=!>§ = null;
         if(!(_loc4_ && this))
         {
            this.§#!h§ = true;
            if(!_loc4_)
            {
               addr32:
               this.§5F§ = param1;
            }
            while(this.§?j§.length >= this.§>2§)
            {
               _loc3_ = this.§?j§.pop();
               if(_loc5_)
               {
                  _loc3_.dispose();
               }
            }
            if(!_loc4_)
            {
               §§push(this.§2W§);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(this.§2W§);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr70);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr177);
               }
               addr70:
               §§pop().dispose();
               if(_loc5_)
               {
                  addr177:
                  this.§>!K§ = new §=!>§(param1);
                  loop6:
                  while(true)
                  {
                     this.§?j§.unshift(this.§>!K§);
                     addr176:
                     loop5:
                     while(true)
                     {
                        this.§2W§ = new §1!9§();
                        addr152:
                        while(!(_loc5_ || param2))
                        {
                           continue loop5;
                        }
                        addr132:
                        §§push(this.§2W§);
                        loop1:
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,this.§?!_§);
                           loop2:
                           while(!(_loc4_ && param1))
                           {
                              if(_loc4_)
                              {
                                 continue loop6;
                              }
                              §§push(this.§2W§);
                              loop3:
                              while(true)
                              {
                                 §§pop().§+B§(this.§5F§);
                                 addr128:
                                 while(true)
                                 {
                                    §§push(this.§2W§);
                                    if(_loc5_ || param1)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§pop().§^R§(this.§>b§[this.§5F§],param2);
                                          if(!(_loc4_ && param1))
                                          {
                                             if(_loc5_ || _loc3_)
                                             {
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr121);
                              }
                           }
                           §§goto(addr152);
                        }
                     }
                  }
               }
               addr121:
               return;
            }
            §§goto(addr128);
         }
         §§goto(addr32);
      }
      
      private function §4"§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§4!8§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§4!8§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"§);
               while(!(_loc3_ && this))
               {
                  this.§4!8§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"§);
                  loop2:
                  while(true)
                  {
                     this.§4!8§.close();
                     while(true)
                     {
                        this.§4!8§ = null;
                        loop4:
                        while(_loc2_ || _loc2_)
                        {
                           continue loop2;
                           while(true)
                           {
                              dispatchEvent(new Event(Event.CANCEL));
                              if(_loc2_ || _loc2_)
                              {
                                 if(_loc2_ || param1)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                           }
                           return;
                        }
                     }
                  }
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  this.§5F§ = null;
                  §§goto(addr54);
               }
            }
         }
         §§goto(addr54);
      }
      
      private function §?!_§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§#!h§ = false;
            loop0:
            while(true)
            {
               §§push(this.§2W§);
               if(!(_loc4_ && _loc3_))
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§?!_§);
                  while(this.§[?§)
                  {
                     loop2:
                     while(!(_loc4_ && _loc2_))
                     {
                        this.§,A§(this.§[?§);
                        while(true)
                        {
                           this.§[?§ = null;
                           if(_loc5_)
                           {
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                        }
                        return;
                     }
                  }
                  §§push(this.§2W§);
                  break;
               }
               break;
            }
            §§push(§§pop().§]A§.§-x§);
            if(_loc5_ || _loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= _loc2_)
               {
                  if(_loc5_)
                  {
                     if(_loc4_ && _loc2_)
                     {
                        continue;
                     }
                     this.§<h§();
                  }
                  if(!(_loc4_ && param1))
                  {
                     break;
                  }
               }
               else
               {
                  this.§>!K§.§;Y§(this.§2W§.§]A§.§[j§(_loc3_));
               }
               _loc3_++;
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function §<h§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§^"§());
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  addr140:
                  if(!§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(this.§2W§);
                           while(true)
                           {
                              §§push(§§pop() == null);
                              continue loop0;
                              loop5:
                              while(true)
                              {
                                 §§push(this.§2W§);
                                 if(_loc1_ && this)
                                 {
                                    break;
                                    addr75:
                                 }
                                 §§pop().dispose();
                                 loop6:
                                 while(!_loc1_)
                                 {
                                    if(_loc1_ && _loc2_)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       this.§2W§ = null;
                                       loop9:
                                       while(true)
                                       {
                                          this.§<7§ = this.§5F§;
                                          while(_loc2_)
                                          {
                                             this.§5F§ = null;
                                             while(_loc2_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop5;
                                                }
                                                continue loop9;
                                                dispatchEvent(new Event(Event.COMPLETE));
                                                if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr20);
                                                   }
                                                   else
                                                   {
                                                      addr121:
                                                   }
                                                   return;
                                                }
                                             }
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                                 addr122:
                                 while(true)
                                 {
                                    §§push(this.§>!K§.§<h§());
                                    if(!(_loc2_ || this))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       continue loop5;
                                    }
                                    addr20:
                                    return;
                                    §§goto(addr122);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     addr142:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr75);
                     }
                     §§goto(addr121);
                  }
               }
               §§goto(addr142);
            }
            §§goto(addr140);
         }
         §§goto(addr106);
      }
   }
}
