package §8!?§
{
   import §%L§.PackageManager;
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
       
      
      private var §#S§:String = "";
      
      private var §4!H§:String;
      
      private var §]]§:URLLoader;
      
      private var §;!N§:Dictionary;
      
      private var §0! §:String = null;
      
      private var §7!!§:String = null;
      
      private var §-'§:String = null;
      
      private var §>!5§:Boolean;
      
      private var §!W§:PackageManager;
      
      private var §`_§:TextureManager;
      
      private var §#!b§:Vector.<TextureManager>;
      
      private var §9!Q§:String = "pak";
      
      private var §"!#§:Boolean = true;
      
      private var §3@§:int = 1;
      
      public function DynamicContentManager(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.§;!N§ = new Dictionary();
         }
         loop0:
         while(true)
         {
            this.§#!b§ = new Vector.<TextureManager>();
            while(true)
            {
               super();
               loop2:
               while(true)
               {
                  this.§#S§ = param2;
                  do
                  {
                     this.§4!H§ = param1;
                     continue loop2;
                  }
                  while(!(_loc6_ || param3));
                  
                  continue loop0;
               }
            }
         }
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§`_§;
      }
      
      public function §43§(param1:String) : Boolean
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
         §§push(this.§;!N§[param1] == null);
         if(_loc3_ || _loc3_)
         {
            return !§§pop();
         }
      }
      
      private function §['§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:TextureManager = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§#!b§.length)
            {
               return false;
            }
            _loc3_ = this.§#!b§[_loc2_];
            if(_loc5_)
            {
               if(_loc3_.id != param1)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                        if(!_loc4_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc2_ = §§pop();
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr59);
               }
               if(!(_loc4_ && _loc2_))
               {
                  this.§`_§ = _loc3_;
               }
               while(true)
               {
                  this.§0! § = param1;
                  loop3:
                  while(true)
                  {
                     this.§#!b§.splice(_loc2_,1);
                     addr99:
                     addr101:
                     while(_loc4_)
                     {
                        continue loop3;
                     }
                     this.§#!b§.unshift(this.§`_§);
                  }
               }
               addr121:
               while(true)
               {
                  if(_loc5_ || _loc2_)
                  {
                     if(_loc5_)
                     {
                        break loop0;
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr99);
                  §§goto(addr101);
               }
            }
            break;
         }
         addr59:
         return true;
      }
      
      public function §'!9§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
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
                  §§push(this.§?,§());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§0=§());
                           loop4:
                           while(true)
                           {
                              §§push(!§§pop());
                              loop5:
                              while(!§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§43§(param1));
                                    if(_loc3_)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§@W§(param1);
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             else
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         if(!(_loc3_ || _loc2_))
                                                         {
                                                            break loop5;
                                                         }
                                                         continue loop6;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      addr29:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc2_ && _loc3_)
                                                         {
                                                            break loop12;
                                                         }
                                                         §§push(this.§['§(param1));
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop0;
                                                         }
                                                      }
                                                      addr180:
                                                   }
                                                }
                                                return;
                                                addr130:
                                                addr223:
                                             }
                                             return;
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop1;
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      dispatchEvent(new Event(Event.COMPLETE));
                                                      §§goto(addr130);
                                                   }
                                                   addr122:
                                                }
                                                else
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(this.§"!#§);
                                                      if(_loc2_ && this)
                                                      {
                                                         break;
                                                      }
                                                      §§push(!§§pop());
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         continue loop2;
                                                      }
                                                      addr169:
                                                      while(_loc3_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr99:
                                                   if(_loc2_ && this)
                                                   {
                                                      while(!(_loc2_ && this))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(§§pop())
                                                            {
                                                               do
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  this.§>!U§(param1,false);
                                                                  continue loop13;
                                                               }
                                                               while(_loc3_);
                                                               
                                                               §§goto(addr190);
                                                            }
                                                         }
                                                         §§goto(addr169);
                                                         §§goto(addr99);
                                                      }
                                                      continue loop5;
                                                      addr154:
                                                   }
                                                   §§goto(addr116);
                                                }
                                                §§goto(addr190);
                                             }
                                          }
                                          §§goto(addr29);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr190);
                                 }
                              }
                              this.§-'§ = param1;
                              §§goto(addr223);
                           }
                        }
                     }
                     §§goto(addr173);
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      private function §@W§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = "";
         if(_loc3_ || _loc2_)
         {
            §§push(this.§#S§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(!_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop12:
                              while(true)
                              {
                                 §§push(this.§#S§);
                                 if(!(_loc4_ && param1))
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop().length > 0);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(_loc4_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    addr187:
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
                                             §§push("?version=");
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() + this.§#S§);
                                             }
                                             §§push(§§pop());
                                             addr208:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                addr209:
                                                while(true)
                                                {
                                                }
                                                continue loop12;
                                             }
                                          }
                                          addr201:
                                       }
                                       while(true)
                                       {
                                          this.§7!!§ = param1;
                                          loop7:
                                          while(true)
                                          {
                                             this.§]]§ = new URLLoader();
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   this.§]]§.dataFormat = URLLoaderDataFormat.BINARY;
                                                   loop9:
                                                   while(true)
                                                   {
                                                      this.§]]§.addEventListener(Event.COMPLETE,this.onComplete);
                                                      loop10:
                                                      while(_loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§]]§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                                            loop14:
                                                            for(; _loc3_; if(!(_loc4_ && _loc2_))
                                                            {
                                                               return;
                                                            })
                                                            {
                                                               if(_loc3_ || this)
                                                               {
                                                                  this.§]]§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                                                  while(_loc3_)
                                                                  {
                                                                     continue loop8;
                                                                     this.§]]§.load(new URLRequest(this.§4!H§ + "packages/" + param1 + "." + this.§9!Q§ + _loc2_));
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr201);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr187);
                                    }
                                 }
                                 §§goto(addr208);
                              }
                              continue loop0;
                           }
                           addr225:
                        }
                        §§goto(addr199);
                     }
                  }
                  §§goto(addr225);
               }
            }
         }
         §§goto(addr130);
      }
      
      private function §?,§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(Boolean(this.§]]§));
            if(!_loc2_)
            {
               §§push(§§pop());
               if(!(_loc2_ && this))
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§pop();
                     addr66:
                     §§push(this.§>!5§);
                     if(_loc1_)
                     {
                        return Boolean(§§pop());
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      private function §0=§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(Boolean(this.§]]§));
            loop0:
            do
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     while(true)
                     {
                        this.§]]§.removeEventListener(Event.COMPLETE,this.onComplete);
                     }
                     addr128:
                  }
                  while(true)
                  {
                     this.§]]§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     loop2:
                     while(!_loc2_)
                     {
                        this.§]]§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                        loop3:
                        while(true)
                        {
                           this.§]]§.close();
                           loop4:
                           while(true)
                           {
                              if(!(_loc1_ || this))
                              {
                                 continue loop3;
                              }
                              if(!_loc1_)
                              {
                                 break;
                              }
                              this.§]]§ = null;
                              loop5:
                              while(true)
                              {
                                 addr26:
                                 while(true)
                                 {
                                    §§push(this.§>!5§);
                                    if(_loc1_ || this)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc1_ || this)
                                          {
                                             if(_loc1_)
                                             {
                                                §§push(false);
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop4;
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
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr26);
            }
            while(_loc2_);
            
            return §§pop();
         }
         §§goto(addr128);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]]§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§]]§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               addr95:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               this.§;!N§[this.§7!!§] = this.§]]§.data;
               while(true)
               {
                  this.§]]§ = null;
                  while(!_loc2_)
                  {
                     this.§>!U§(this.§7!!§,true);
                     if(_loc2_ && _loc3_)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        return;
                     }
                     addr113:
                     while(_loc3_ || this)
                     {
                        §§goto(addr95);
                     }
                     while(true)
                     {
                        this.§]]§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                        §§goto(addr78);
                     }
                     addr78:
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      private function §>!U§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:TextureManager = null;
         if(!_loc4_)
         {
            this.§>!5§ = true;
            if(_loc5_ || param1)
            {
               addr32:
               this.§7!!§ = param1;
            }
            while(this.§#!b§.length >= this.§3@§)
            {
               _loc3_ = this.§#!b§.pop();
               if(_loc5_)
               {
                  _loc3_.dispose();
               }
            }
            if(!(_loc4_ && param2))
            {
               §§push(this.§!W§);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        §§push(this.§!W§);
                        if(_loc5_)
                        {
                           §§pop().dispose();
                           if(!_loc4_)
                           {
                              addr163:
                              this.§`_§ = new TextureManager(param1);
                              while(true)
                              {
                                 this.§#!b§.unshift(this.§`_§);
                              }
                              addr168:
                           }
                           while(true)
                           {
                              this.§!W§ = new PackageManager();
                              while(!(_loc4_ && _loc3_))
                              {
                                 while(true)
                                 {
                                    §§push(this.§!W§);
                                 }
                                 if(_loc4_ && this)
                                 {
                                    continue;
                                 }
                                 if(_loc5_)
                                 {
                                    return;
                                    addr120:
                                 }
                                 §§goto(addr168);
                              }
                           }
                        }
                        loop3:
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,this.§7! §);
                           addr141:
                           loop4:
                           while(true)
                           {
                              §§push(this.§!W§);
                              if(_loc4_)
                              {
                                 continue loop3;
                              }
                              while(true)
                              {
                                 §§pop().§4S§(this.§;!N§[this.§7!!§],param2);
                                 if(_loc4_)
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr120);
                           }
                        }
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr163);
               }
               §§goto(addr101);
            }
            §§goto(addr154);
         }
         §§goto(addr32);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§]]§.removeEventListener(Event.COMPLETE,this.onComplete);
            loop0:
            while(true)
            {
               this.§]]§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               loop1:
               while(true)
               {
                  this.§]]§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  while(true)
                  {
                     this.§]]§.close();
                     continue loop1;
                     addr65:
                     loop4:
                     while(_loc2_ || _loc2_)
                     {
                        this.§7!!§ = null;
                        while(true)
                        {
                           dispatchEvent(new Event(Event.CANCEL));
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop4;
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      private function §7! §(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§>!5§ = false;
            loop0:
            while(true)
            {
               §§push(this.§!W§);
               if(!_loc5_)
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§7! §);
                  if(!this.§-'§)
                  {
                     §§push(this.§!W§);
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     this.§'!9§(this.§-'§);
                     loop2:
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           this.§-'§ = null;
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
               break;
            }
            §§push(§§pop().§`F§.§56§);
            if(_loc4_ || this)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(0);
            if(!(_loc5_ && this))
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            while(true)
            {
               §§push(_loc3_);
               if(_loc4_ || _loc2_)
               {
                  if(!_loc5_)
                  {
                     if(§§pop() >= _loc2_)
                     {
                        if(_loc4_ || param1)
                        {
                           if(!(_loc4_ || this))
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              this.§-t§();
                              break;
                           }
                           addr159:
                           §§push(_loc3_ + 1);
                           if(!(_loc5_ && _loc3_))
                           {
                              addr168:
                              _loc3_ = int(§§pop());
                              continue;
                           }
                           §§goto(addr168);
                           addr181:
                        }
                        break;
                     }
                     this.§`_§.§2!M§(this.§!W§.§`F§.§!w§(_loc3_));
                     §§goto(addr181);
                  }
                  §§goto(addr159);
               }
               §§goto(addr168);
            }
            return;
         }
         §§goto(addr58);
      }
      
      public function §-t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§?,§());
            if(_loc2_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc2_)
               {
                  addr161:
                  §§push(§§pop());
                  if(!(_loc1_ && this))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(this.§!W§);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              while(!_loc1_)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§`_§.§-t§());
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       addr20:
                                       return;
                                    }
                                    while(true)
                                    {
                                       §§push(this.§!W§);
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       §§pop().dispose();
                                       while(_loc2_)
                                       {
                                          if(_loc1_ && this)
                                          {
                                             §§goto(addr132);
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop1;
                                          }
                                          this.§!W§ = null;
                                          loop8:
                                          while(true)
                                          {
                                             this.§0! § = this.§7!!§;
                                             addr69:
                                             while(true)
                                             {
                                                this.§7!!§ = null;
                                                continue loop8;
                                             }
                                          }
                                          if(!(_loc1_ && this))
                                          {
                                             §§goto(addr20);
                                          }
                                       }
                                       continue loop4;
                                    }
                                    continue loop2;
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     addr171:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr85);
                     }
                     addr132:
                     return;
                  }
               }
               §§goto(addr171);
            }
            §§goto(addr161);
         }
         §§goto(addr84);
      }
   }
}
