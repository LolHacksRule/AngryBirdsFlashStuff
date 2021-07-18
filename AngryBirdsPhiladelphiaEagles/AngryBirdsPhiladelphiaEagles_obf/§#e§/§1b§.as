package §#e§
{
   import §]p§.§%§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §1b§ extends EventDispatcher
   {
       
      
      private var §+X§:String = "";
      
      private var §[!J§:String;
      
      private var §5o§:URLLoader;
      
      private var §55§:Dictionary;
      
      private var §^&§:String = null;
      
      private var §9V§:String = null;
      
      private var §9[§:String = null;
      
      private var §5!#§:Boolean;
      
      private var §@+§:§%§;
      
      private var §2"§:§'?§;
      
      private var §`!+§:Vector.<§'?§>;
      
      private var §6!'§:String = "pak";
      
      private var §-Z§:Boolean = true;
      
      private var § n§:int = 1;
      
      public function §1b§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§55§ = new Dictionary();
            while(true)
            {
               this.§`!+§ = new Vector.<§'?§>();
               loop3:
               for(; !(_loc6_ && this); this.§ n§ = Math.max(1,param4),if(_loc6_ && this)
               {
                  continue;
               },§§goto(addr52))
               {
                  this.§-Z§ = param3;
                  addr83:
                  if(_loc5_)
                  {
                     continue;
                  }
                  addr100:
                  while(true)
                  {
                     super();
                     this.§+X§ = param2;
                     do
                     {
                        this.§[!J§ = param1;
                        continue loop3;
                     }
                     while(_loc6_);
                     
                     return;
                     §§goto(addr83);
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      public function get textureManager() : §'?§
      {
         return this.§2"§;
      }
      
      public function §5l§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_ || param1)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§55§[param1] == null);
         if(_loc2_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      private function §4!K§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§'?§ = null;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§`!+§.length)
            {
               return false;
            }
            _loc3_ = this.§`!+§[_loc2_];
            if(_loc4_ || _loc2_)
            {
               if(_loc3_.id == param1)
               {
                  do
                  {
                     this.§2"§ = _loc3_;
                     this.§^&§ = param1;
                     do
                     {
                        this.§`!+§.splice(_loc2_,1);
                        this.§`!+§.unshift(this.§2"§);
                     }
                     while(!(_loc4_ || _loc3_));
                     
                  }
                  while(!(_loc4_ || _loc3_));
                  
                  break;
               }
            }
            _loc2_++;
         }
         while(true);
         
         return true;
      }
      
      public function §+W§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop().toLowerCase());
            }
            loop0:
            while(true)
            {
               param1 = §§pop();
               addr167:
               while(true)
               {
                  §§push(this.§8b§());
                  if(!(_loc3_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§push(this.§'!4§());
                           loop3:
                           while(§§pop())
                           {
                              while(true)
                              {
                                 if(this.§5l§(param1))
                                 {
                                    while(true)
                                    {
                                       this.§4!K§(param1);
                                       continue loop0;
                                    }
                                    addr32:
                                    this.§3w§(param1,false);
                                    if(!(_loc3_ && this))
                                    {
                                       if(!_loc2_)
                                       {
                                          break loop3;
                                       }
                                    }
                                    else
                                    {
                                       addr83:
                                    }
                                    break;
                                    addr114:
                                 }
                                 this.§=!>§(param1);
                                 break;
                              }
                              return;
                           }
                           this.§9[§ = param1;
                           addr151:
                        }
                        return;
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr151);
               }
            }
         }
         §§goto(addr114);
      }
      
      private function §=!>§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = "";
         §§push(this.§+X§);
         loop0:
         while(true)
         {
            §§push(§§pop() == null);
            if(!(_loc3_ && _loc3_))
            {
               §§push(!§§pop());
            }
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr180:
                     while(true)
                     {
                        §§push(this.§+X§);
                        if(!(_loc3_ && this))
                        {
                           continue loop0;
                        }
                        addr163:
                        while(true)
                        {
                           _loc2_ = §§pop();
                        }
                     }
                     continue loop0;
                  }
                  addr179:
               }
               else
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§push("?version=");
                        if(!_loc3_)
                        {
                           §§push(§§pop() + this.§+X§);
                        }
                        §§goto(addr163);
                        §§push(§§pop());
                     }
                  }
                  addr154:
               }
               while(true)
               {
                  this.§9V§ = param1;
                  while(true)
                  {
                     this.§5o§ = new URLLoader();
                     while(true)
                     {
                        this.§5o§.dataFormat = URLLoaderDataFormat.BINARY;
                        this.§5o§.addEventListener(Event.COMPLETE,this.onComplete);
                        if(_loc3_)
                        {
                           break;
                        }
                        this.§5o§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        if(!_loc4_)
                        {
                           continue;
                        }
                        this.§5o§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                        if(_loc4_ || _loc2_)
                        {
                           this.§5o§.load(new URLRequest(this.§[!J§ + "packages/" + param1 + "." + this.§6!'§ + _loc2_));
                           return;
                        }
                        §§goto(addr180);
                     }
                  }
               }
               addr137:
               if(!(_loc4_ || this))
               {
                  continue;
               }
               §§goto(addr154);
            }
         }
      }
      
      private function §8b§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Boolean(this.§5o§));
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     addr43:
                     §§pop();
                     addr44:
                     §§push(this.§5!#§);
                     if(_loc1_)
                     {
                     }
                     §§goto(addr49);
                  }
                  §§push(Boolean(§§pop()));
               }
               addr49:
               return §§pop();
            }
            §§goto(addr43);
         }
         §§goto(addr44);
      }
      
      private function §'!4§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(this.§5o§)
         {
            while(true)
            {
               this.§5o§.removeEventListener(Event.COMPLETE,this.onComplete);
               while(true)
               {
                  this.§5o§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                  do
                  {
                     this.§5o§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  }
                  while(_loc2_);
                  
                  if(_loc2_ && _loc2_)
                  {
                     break;
                  }
                  this.§5o§.close();
                  loop3:
                  for(; _loc1_; if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  },addr62:,return §§pop(),§§push(false))
                  {
                     this.§5o§ = null;
                     while(true)
                     {
                        addr29:
                        while(true)
                        {
                           §§push(this.§5!#§);
                           if(_loc1_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop3;
                                    }
                                    continue;
                                 }
                              }
                              §§push(true);
                              if(!(_loc2_ && this))
                              {
                                 return §§pop();
                              }
                              break;
                           }
                           break;
                        }
                        §§goto(addr62);
                     }
                  }
               }
            }
         }
         §§goto(addr29);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§5o§.removeEventListener(Event.COMPLETE,this.onComplete);
         loop0:
         while(true)
         {
            this.§5o§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            while(true)
            {
               this.§5o§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               addr81:
               while(_loc3_)
               {
                  continue loop0;
               }
            }
         }
      }
      
      private function §3w§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§'?§ = null;
         if(_loc4_ || param1)
         {
            this.§5!#§ = true;
            if(_loc4_ || param2)
            {
               this.§9V§ = param1;
            }
         }
         while(this.§`!+§.length >= this.§ n§)
         {
            _loc3_ = this.§`!+§.pop();
            if(!(_loc5_ && param2))
            {
               _loc3_.dispose();
            }
         }
         if(_loc4_)
         {
            §§push(this.§@+§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && param1))
                  {
                     §§push(this.§@+§);
                     if(!(_loc5_ && param2))
                     {
                        §§pop().dispose();
                        addr156:
                        this.§2"§ = new §'?§(param1);
                        this.§`!+§.unshift(this.§2"§);
                        loop1:
                        while(true)
                        {
                           this.§@+§ = new §%§();
                           loop2:
                           while(true)
                           {
                              §§push(this.§@+§);
                              loop3:
                              while(true)
                              {
                                 §§pop().addEventListener(Event.COMPLETE,this.§>L§);
                                 addr138:
                                 while(_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        addr95:
                     }
                     §§goto(addr110);
                  }
                  return;
               }
               §§goto(addr156);
            }
            §§goto(addr110);
         }
         §§goto(addr95);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§5o§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§5o§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         loop0:
         while(true)
         {
            this.§5o§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            while(true)
            {
               this.§5o§.close();
               while(!(_loc2_ && this))
               {
                  if(!_loc2_)
                  {
                     this.§5o§ = null;
                     while(!(_loc2_ && _loc2_))
                     {
                        this.§9V§ = null;
                        if(_loc3_ || param1)
                        {
                           dispatchEvent(new Event(Event.CANCEL));
                           return;
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §>L§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§5!#§ = false;
         }
         while(true)
         {
            §§push(this.§@+§);
            if(_loc5_ || _loc2_)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§>L§);
               if(!this.§9[§)
               {
                  §§push(this.§@+§);
               }
               this.§+W§(this.§9[§);
               continue;
               break;
            }
            break;
         }
         §§push(§§pop().§;k§.§!!G§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(!(_loc4_ && param1))
               {
                  this.§7E§();
               }
               if(!_loc5_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  break;
               }
            }
            else
            {
               this.§2"§.§!=§(this.§@+§.§;k§.§`a§(_loc3_));
            }
            _loc3_++;
         }
      }
      
      public function §7E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§8b§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr121:
                        while(true)
                        {
                           §§push(this.§@+§);
                           addr102:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              addr104:
                              while(true)
                              {
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                     addr120:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        return;
                     }
                     §§push(this.§2"§.§7E§());
                     if(_loc2_ || this)
                     {
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 §§push(this.§@+§);
                                 if(_loc2_ || this)
                                 {
                                    §§pop().dispose();
                                    this.§@+§ = null;
                                    this.§^&§ = this.§9V§;
                                    this.§9V§ = null;
                                    addr98:
                                    if(_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§goto(addr98);
                                       }
                                       dispatchEvent(new Event(Event.COMPLETE));
                                       break;
                                    }
                                    addr56:
                                    §§goto(addr56);
                                 }
                                 else
                                 {
                                    §§goto(addr102);
                                 }
                              }
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr120);
                        §§goto(addr102);
                     }
                     §§goto(addr104);
                  }
                  return;
               }
            }
         }
         §§goto(addr121);
      }
   }
}
