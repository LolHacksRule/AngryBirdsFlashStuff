package §,!7§
{
   import §^F§.PackageManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class DynamicContentManager extends EventDispatcher
   {
       
      
      private var §#!B§:String = "";
      
      private var §,!'§:String;
      
      private var §%@§:URLLoader;
      
      private var §+7§:Dictionary;
      
      private var §>F§:String = null;
      
      private var §[!a§:String = null;
      
      private var §?!Q§:String = null;
      
      private var §?+§:Boolean;
      
      private var §^!d§:PackageManager;
      
      private var §7!`§:TextureManager;
      
      private var §+!P§:Vector.<TextureManager>;
      
      private var §?!%§:String = "pak";
      
      private var §4`§:Boolean = true;
      
      private var §%o§:int = 1;
      
      public function DynamicContentManager(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§+7§ = new Dictionary();
            while(true)
            {
               this.§+!P§ = new Vector.<TextureManager>();
               while(_loc5_ || param1)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§#!B§ = param2;
                     while(true)
                     {
                        this.§,!'§ = param1;
                        while(!(_loc6_ && param2))
                        {
                           this.§4`§ = param3;
                           continue loop2;
                           if(!(_loc6_ && param3))
                           {
                              return;
                              addr40:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§7!`§;
      }
      
      public function §"!Y§(param1:String) : Boolean
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
            param1 = §§pop();
         }
         §§push(this.§+7§[param1] == null);
         if(!_loc3_)
         {
            return !§§pop();
         }
      }
      
      private function §<!O§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:TextureManager = null;
         §§push(0);
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§+!P§.length)
            {
               return false;
            }
            _loc3_ = this.§+!P§[_loc2_];
            if(_loc5_ || param1)
            {
               if(_loc3_.id != param1)
               {
                  loop1:
                  do
                  {
                     §§push(_loc2_);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + 1);
                        if(_loc5_)
                        {
                           addr68:
                           §§push(int(§§pop()));
                        }
                        _loc2_ = §§pop();
                        if(!_loc5_)
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           if(!(_loc4_ && this))
                           {
                              continue loop0;
                           }
                           addr133:
                           while(true)
                           {
                              this.§+!P§.splice(_loc2_,1);
                           }
                        }
                        while(true)
                        {
                           if(_loc4_)
                           {
                              while(true)
                              {
                                 this.§7!`§ = _loc3_;
                                 break loop0;
                              }
                              addr138:
                           }
                           this.§+!P§.unshift(this.§7!`§);
                           break loop1;
                        }
                     }
                     §§goto(addr68);
                  }
                  while(!(_loc4_ && this));
                  
                  addr90:
                  return true;
               }
               §§goto(addr138);
            }
            break;
         }
         while(true)
         {
            this.§>F§ = param1;
            §§goto(addr133);
         }
      }
      
      public function §&!&§(param1:String) : void
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
            loop0:
            while(true)
            {
               param1 = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§#]§());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§[M§());
                           loop4:
                           while(true)
                           {
                              §§push(!§§pop());
                              loop5:
                              while(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§"!Y§(param1));
                                    loop7:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§-h§(param1);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(!(_loc3_ || this))
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && this))
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§push(this.§4`§);
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     addr78:
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        addr85:
                                                                        if(!(_loc3_ || _loc2_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              addr186:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 §§goto(addr187);
                                                                              }
                                                                              §§goto(addr85);
                                                                           }
                                                                           continue loop2;
                                                                           addr128:
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                        addr138:
                                                                     }
                                                                     while(!(_loc2_ && param1))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           while(_loc3_ || param1)
                                                                           {
                                                                              §§pop();
                                                                              continue loop12;
                                                                           }
                                                                           continue loop5;
                                                                           addr155:
                                                                        }
                                                                        §§goto(addr78);
                                                                     }
                                                                     continue loop4;
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§goto(addr155);
                                                         }
                                                         break;
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr183:
                                                   while(true)
                                                   {
                                                   }
                                                   §§goto(addr186);
                                                }
                                                if(!§§pop())
                                                {
                                                   this.§^8§(param1,false);
                                                   break;
                                                }
                                                if(_loc3_ || _loc2_)
                                                {
                                                   dispatchEvent(new Event(Event.COMPLETE));
                                                   addr102:
                                                }
                                                addr20:
                                                return;
                                             }
                                             if(_loc3_)
                                             {
                                                §§goto(addr20);
                                             }
                                             addr187:
                                             §§goto(addr223);
                                          }
                                          break;
                                       }
                                       §§goto(addr183);
                                    }
                                    if(!_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          break loop5;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr120);
                                    }
                                    §§goto(addr24);
                                 }
                              }
                              if(_loc3_)
                              {
                                 this.§?!Q§ = param1;
                                 addr223:
                                 while(true)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       continue loop0;
                                    }
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop1;
                              return;
                           }
                        }
                     }
                     §§goto(addr178);
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      private function §-h§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = "";
         if(_loc4_ || _loc3_)
         {
            §§push(this.§#!B§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc4_ || this)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc4_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           addr236:
                           loop5:
                           while(true)
                           {
                              §§pop();
                              addr237:
                              while(true)
                              {
                                 §§push(this.§#!B§);
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 addr211:
                                 _loc2_ = §§pop();
                                 continue loop5;
                              }
                              continue loop0;
                           }
                           addr236:
                        }
                        else
                        {
                           while(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 if(_loc4_ || this)
                                 {
                                    §§push("?version=");
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(§§pop() + this.§#!B§);
                                    }
                                    §§push(§§pop());
                                 }
                                 else
                                 {
                                    §§goto(addr237);
                                 }
                                 §§goto(addr211);
                              }
                              break;
                           }
                           this.§[!a§ = param1;
                           this.§%@§ = new URLLoader();
                           loop7:
                           while(true)
                           {
                              this.§%@§.dataFormat = URLLoaderDataFormat.BINARY;
                              loop8:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    this.§%@§.addEventListener(Event.COMPLETE,this.onComplete);
                                    loop9:
                                    for(; _loc4_ || this; while(true)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop8;
                                       }
                                       continue loop9;
                                    },while(true)
                                    {
                                       this.§%@§.load(new URLRequest(this.§,!'§ + "packages/" + param1 + "." + this.§?!%§ + _loc2_));
                                       if(_loc4_ || this)
                                       {
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          §§goto(addr94);
                                       }
                                       §§goto(addr74);
                                    },addr74:,return)
                                    {
                                       this.§%@§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                       while(true)
                                       {
                                          this.§%@§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                          continue loop9;
                                       }
                                    }
                                    continue loop7;
                                 }
                              }
                           }
                           addr143:
                           addr178:
                        }
                        §§goto(addr212);
                        addr161:
                        if(_loc3_ && param1)
                        {
                           continue;
                        }
                        if(_loc3_ && this)
                        {
                           continue loop1;
                        }
                        §§push(Boolean(§§pop()));
                        if(_loc4_)
                        {
                           §§goto(addr178);
                        }
                        else
                        {
                           §§goto(addr236);
                        }
                     }
                  }
                  §§goto(addr236);
               }
            }
         }
         §§goto(addr83);
      }
      
      private function §#]§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(Boolean(this.§%@§));
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop());
               if(!_loc1_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     addr62:
                     §§push(this.§?+§);
                     if(_loc2_ || _loc2_)
                     {
                        addr71:
                        §§push(Boolean(§§pop()));
                     }
                  }
                  §§goto(addr71);
               }
               return §§pop();
            }
            §§goto(addr71);
         }
         §§goto(addr62);
      }
      
      private function §[M§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(Boolean(this.§%@§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§%@§.removeEventListener(Event.COMPLETE,this.onComplete);
                     addr133:
                     while(true)
                     {
                        this.§%@§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        loop5:
                        while(true)
                        {
                           this.§%@§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                           loop6:
                           while(_loc2_)
                           {
                              this.§%@§.close();
                              while(_loc1_)
                              {
                                 continue loop6;
                              }
                              this.§%@§ = null;
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 §§goto(addr83);
                                 §§goto(addr85);
                              }
                              addr83:
                              addr85:
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§?+§);
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 §§push(false);
                                 break;
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr68);
                        }
                     }
                     §§push(true);
                     if(_loc1_)
                     {
                        break;
                     }
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr133);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§%@§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§%@§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               loop1:
               while(true)
               {
                  this.§%@§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  addr102:
                  while(true)
                  {
                     this.§+7§[this.§[!a§] = this.§%@§.data;
                     addr79:
                     while(_loc3_)
                     {
                     }
                     continue loop1;
                  }
               }
               addr62:
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               this.§^8§(this.§[!a§,true);
               if(!(_loc2_ && param1))
               {
                  if(_loc2_)
                  {
                     §§goto(addr102);
                  }
                  return;
                  addr45:
               }
               while(_loc3_)
               {
                  §§goto(addr62);
                  §§goto(addr69);
               }
               addr69:
               §§goto(addr79);
               addr60:
            }
         }
         while(true)
         {
            this.§%@§ = null;
            §§goto(addr60);
         }
         §§goto(addr45);
      }
      
      private function §^8§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:TextureManager = null;
         if(_loc5_)
         {
            this.§?+§ = true;
            if(_loc5_ || _loc3_)
            {
               addr32:
               this.§[!a§ = param1;
            }
            while(this.§+!P§.length >= this.§%o§)
            {
               _loc3_ = this.§+!P§.pop();
               if(!_loc4_)
               {
                  _loc3_.dispose();
               }
            }
            if(_loc5_)
            {
               §§push(this.§^!d§);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(this.§^!d§);
                        if(_loc5_)
                        {
                           addr77:
                           §§pop().dispose();
                           if(_loc5_ || param1)
                           {
                              addr163:
                              this.§7!`§ = new TextureManager(param1);
                              while(true)
                              {
                                 this.§+!P§.unshift(this.§7!`§);
                                 addr162:
                                 while(true)
                                 {
                                    this.§^!d§ = new PackageManager();
                                    addr154:
                                    while(true)
                                    {
                                       §§push(this.§^!d§);
                                    }
                                 }
                              }
                              addr168:
                           }
                           return;
                           addr116:
                        }
                        loop1:
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,this.§53§);
                           while(_loc5_ || param1)
                           {
                              if(_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(this.§^!d§);
                                    if(_loc4_ && this)
                                    {
                                       continue loop1;
                                    }
                                    §§pop().§"Z§(this.§+7§[this.§[!a§],param2);
                                    if(!(_loc5_ || param2))
                                    {
                                       continue;
                                    }
                                    §§goto(addr116);
                                 }
                                 else
                                 {
                                    §§goto(addr168);
                                 }
                              }
                              §§goto(addr162);
                           }
                        }
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr163);
               }
            }
            §§goto(addr77);
         }
         §§goto(addr32);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%@§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§%@§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               while(_loc3_)
               {
                  loop6:
                  while(_loc3_ || _loc3_)
                  {
                     dispatchEvent(new Event(Event.CANCEL));
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     addr40:
                     if(!(_loc2_ && _loc2_))
                     {
                        return;
                     }
                     addr110:
                     while(_loc3_ || _loc3_)
                     {
                        this.§[!a§ = null;
                        continue loop6;
                        §§goto(addr40);
                     }
                     while(_loc3_)
                     {
                        this.§%@§ = null;
                        §§goto(addr74);
                     }
                     addr74:
                     while(true)
                     {
                        this.§%@§.close();
                        §§goto(addr87);
                     }
                     addr87:
                  }
               }
            }
         }
         while(true)
         {
            this.§%@§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            §§goto(addr110);
         }
      }
      
      private function §53§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§?+§ = false;
            while(true)
            {
               §§push(this.§^!d§);
               if(_loc5_)
               {
                  break;
               }
               §§pop().removeEventListener(Event.COMPLETE,this.§53§);
               if(!this.§?!Q§)
               {
                  §§push(this.§^!d§);
                  break;
               }
               this.§&!&§(this.§?!Q§);
               this.§?!Q§ = null;
               if(_loc5_ && param1)
               {
                  continue;
               }
               return;
               addr52:
            }
            §§push(§§pop().§@l§.§9q§);
            if(_loc4_ || _loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(0);
            if(!(_loc5_ && param1))
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            while(true)
            {
               §§push(_loc3_);
               if(_loc4_)
               {
                  if(!_loc5_)
                  {
                     if(§§pop() >= _loc2_)
                     {
                        if(_loc4_)
                        {
                           if(_loc5_)
                           {
                              continue;
                           }
                           this.§!4§();
                        }
                        if(!(_loc5_ && param1))
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§7!`§.§-M§(this.§^!d§.§@l§.§+t§(_loc3_));
                     }
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                  }
                  §§push(int(§§pop()));
               }
               _loc3_ = §§pop();
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §!4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§#]§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(this.§^!d§);
                           while(true)
                           {
                              §§push(§§pop() == null);
                              if(_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              continue loop2;
                              addr110:
                              loop8:
                              while(true)
                              {
                                 §§push(this.§^!d§);
                                 if(_loc1_ && _loc1_)
                                 {
                                    break;
                                 }
                                 §§pop().dispose();
                                 loop9:
                                 while(true)
                                 {
                                    this.§^!d§ = null;
                                    loop10:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(!(_loc2_ || this))
                                          {
                                             break;
                                          }
                                          addr152:
                                          if(_loc1_)
                                          {
                                             return;
                                             addr65:
                                          }
                                          else
                                          {
                                             addr151:
                                          }
                                          this.§>F§ = this.§[!a§;
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop8;
                                             }
                                             continue loop10;
                                          }
                                          continue loop8;
                                       }
                                       continue loop9;
                                    }
                                    addr96:
                                    while(true)
                                    {
                                       §§push(this.§7!`§.§!4§());
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                       §§goto(addr152);
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(!§§pop())
                  {
                     §§goto(addr96);
                  }
                  §§goto(addr151);
               }
            }
         }
         §§goto(addr121);
      }
   }
}
