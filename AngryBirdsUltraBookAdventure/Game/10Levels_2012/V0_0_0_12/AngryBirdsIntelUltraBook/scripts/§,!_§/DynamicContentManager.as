package §,!_§
{
   import §=]§.PackageManager;
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
       
      
      private var §-!C§:String = "";
      
      private var §+U§:String;
      
      private var §#!c§:URLLoader;
      
      private var §0M§:Dictionary;
      
      private var §6!C§:String = null;
      
      private var §>!i§:String = null;
      
      private var §@j§:String = null;
      
      private var §^!f§:Boolean;
      
      private var §8!V§:PackageManager;
      
      private var §6! §:TextureManager;
      
      private var §&C§:Vector.<TextureManager>;
      
      private var §00§:String = "pak";
      
      private var §[!N§:Boolean = true;
      
      private var §4C§:int = 1;
      
      public function DynamicContentManager(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            this.§0M§ = new Dictionary();
            while(true)
            {
               this.§&C§ = new Vector.<TextureManager>();
            }
            addr103:
         }
         loop1:
         while(true)
         {
            super();
            while(true)
            {
               this.§-!C§ = param2;
               loop3:
               while(true)
               {
                  this.§+U§ = param1;
                  addr77:
                  while(_loc6_)
                  {
                     this.§[!N§ = param3;
                     continue loop3;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§6! §;
      }
      
      public function §^!^§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§0M§[param1] == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      private function §0!I§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:TextureManager = null;
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§&C§.length)
            {
               return false;
            }
            _loc3_ = this.§&C§[_loc2_];
            if(!(_loc5_ && _loc2_))
            {
               if(_loc3_.id != param1)
               {
                  loop1:
                  do
                  {
                     §§push(_loc2_);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() + 1);
                        if(_loc4_ || param1)
                        {
                           addr57:
                           §§push(int(§§pop()));
                        }
                        _loc2_ = §§pop();
                        if(_loc5_ && _loc3_)
                        {
                           continue;
                        }
                        if(!(_loc5_ && _loc3_))
                        {
                           if(!_loc5_)
                           {
                              if(_loc4_)
                              {
                                 if(false)
                                 {
                                    §§goto(addr89);
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 this.§6!C§ = param1;
                                 break loop1;
                                 §§goto(addr137);
                              }
                           }
                           break loop0;
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr57);
                  }
                  while(!(_loc5_ && _loc2_));
                  
                  while(true)
                  {
                     this.§&C§.splice(_loc2_,1);
                     break loop0;
                  }
               }
               addr137:
               loop2:
               while(true)
               {
                  this.§6! § = _loc3_;
                  continue loop3;
                  addr117:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        break loop2;
                     }
                     continue loop2;
                  }
               }
               addr89:
               return true;
            }
            break;
         }
         while(true)
         {
            this.§&C§.unshift(this.§6! §);
            §§goto(addr117);
         }
      }
      
      public function §'m§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop().toLowerCase());
            }
            while(true)
            {
               param1 = §§pop();
               while(true)
               {
                  §§push(this.§5!W§());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§]k§());
                           addr223:
                           while(true)
                           {
                              §§push(!§§pop());
                              addr224:
                              while(!§§pop())
                              {
                              }
                              addr225:
                              addr228:
                              this.§@j§ = param1;
                              return;
                           }
                        }
                        addr221:
                     }
                     addr178:
                     addr29:
                     while(true)
                     {
                        §§push(this.§^!^§(param1));
                        continue loop2;
                     }
                     return;
                  }
               }
               §§push(param1);
               if(_loc2_ && param1)
               {
                  continue;
               }
               §§push(§§pop() == this.§6!C§);
               if(_loc3_ || param1)
               {
                  if(!_loc2_)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr164);
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr195);
               }
               §§goto(addr164);
            }
         }
         §§goto(addr216);
      }
      
      private function §,!?§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = "";
         if(!_loc3_)
         {
            §§push(this.§-!C§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr217:
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  addr221:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§-!C§);
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              addr209:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr210:
                                 while(!_loc3_)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       return;
                                       addr70:
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop0;
                        }
                        addr226:
                     }
                     else
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§push("?version=");
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(§§pop() + this.§-!C§);
                                 }
                                 §§goto(addr209);
                                 §§push(§§pop());
                              }
                              §§goto(addr210);
                           }
                        }
                        addr183:
                     }
                     while(true)
                     {
                        this.§>!i§ = param1;
                        while(true)
                        {
                           this.§#!c§ = new URLLoader();
                           loop7:
                           for(; _loc4_; if(_loc3_ && _loc3_)
                           {
                              continue;
                           },§§goto(addr63))
                           {
                              this.§#!c§.dataFormat = URLLoaderDataFormat.BINARY;
                              while(true)
                              {
                                 this.§#!c§.addEventListener(Event.COMPLETE,this.onComplete);
                                 loop9:
                                 while(_loc4_ || param1)
                                 {
                                    this.§#!c§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                    while(true)
                                    {
                                       this.§#!c§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                       while(!(_loc3_ && this))
                                       {
                                          this.§#!c§.load(new URLRequest(this.§+U§ + "packages/" + param1 + "." + this.§00§ + _loc2_));
                                          if(!(_loc3_ && this))
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop7;
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                    §§goto(addr70);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      private function §5!W§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(Boolean(this.§#!c§));
            if(_loc2_)
            {
               §§push(§§pop());
               if(!(_loc1_ && _loc1_))
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     addr52:
                     §§push(this.§^!f§);
                     if(_loc2_)
                     {
                        addr56:
                        §§push(Boolean(§§pop()));
                     }
                  }
                  §§goto(addr56);
               }
               return §§pop();
            }
            §§goto(addr56);
         }
         §§goto(addr52);
      }
      
      private function §]k§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Boolean(this.§#!c§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  addr134:
                  while(true)
                  {
                     this.§#!c§.removeEventListener(Event.COMPLETE,this.onComplete);
                     loop7:
                     while(true)
                     {
                        this.§#!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        addr122:
                        addr129:
                        addr99:
                        while(_loc1_ && _loc2_)
                        {
                           continue loop7;
                        }
                        this.§#!c§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                        addr101:
                        addr81:
                        while(_loc1_)
                        {
                           §§goto(addr122);
                           §§goto(addr129);
                        }
                        this.§#!c§.close();
                        while(!(_loc2_ || _loc1_))
                        {
                           §§goto(addr99);
                           §§goto(addr101);
                        }
                        addr75:
                        this.§#!c§ = null;
                     }
                  }
                  addr134:
               }
               while(true)
               {
                  §§push(this.§^!f§);
                  continue loop0;
               }
            }
         }
         §§goto(addr134);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#!c§.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         while(true)
         {
            this.§#!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            while(!_loc3_)
            {
               this.§#!c§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               loop2:
               while(true)
               {
                  this.§0M§[this.§>!i§] = this.§#!c§.data;
                  do
                  {
                     this.§#!c§ = null;
                     continue loop2;
                  }
                  while(_loc3_);
                  
                  return;
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr63);
            }
         }
      }
      
      private function §&d§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:TextureManager = null;
         if(_loc5_ || param1)
         {
            this.§^!f§ = true;
            if(!(_loc4_ && this))
            {
               addr37:
               this.§>!i§ = param1;
            }
            while(this.§&C§.length >= this.§4C§)
            {
               _loc3_ = this.§&C§.pop();
               if(!_loc4_)
               {
                  _loc3_.dispose();
               }
            }
            if(!(_loc4_ && this))
            {
               §§push(this.§8!V§);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(this.§8!V§);
                        if(_loc5_ || this)
                        {
                           §§goto(addr92);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr168);
               }
               addr92:
               §§pop().dispose();
               if(_loc5_ || this)
               {
                  addr168:
                  this.§6! § = new TextureManager(param1);
                  loop4:
                  while(true)
                  {
                     this.§&C§.unshift(this.§6! §);
                     addr165:
                     addr167:
                     while(!_loc5_)
                     {
                        continue loop4;
                     }
                     while(true)
                     {
                        this.§8!V§ = new PackageManager();
                        loop6:
                        while(true)
                        {
                           §§push(this.§8!V§);
                           addr125:
                           loop1:
                           while(true)
                           {
                              §§pop().addEventListener(Event.COMPLETE,this.§3!=§);
                              while(true)
                              {
                                 if(_loc4_ && this)
                                 {
                                    continue loop6;
                                 }
                                 if(!_loc4_)
                                 {
                                    §§push(this.§8!V§);
                                    if(_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    §§pop().§'#§(this.§0M§[this.§>!i§],param2);
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr165);
                                 }
                              }
                              continue loop6;
                           }
                        }
                     }
                  }
                  addr173:
               }
               return;
            }
            §§goto(addr167);
         }
         §§goto(addr37);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§#!c§.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         do
         {
            this.§#!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            do
            {
               this.§#!c§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               do
               {
                  this.§#!c§.close();
                  loop3:
                  do
                  {
                     this.§#!c§ = null;
                     while(true)
                     {
                        this.§>!i§ = null;
                        while(!_loc2_)
                        {
                           dispatchEvent(new Event(Event.CANCEL));
                           if(!_loc2_)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
                  while(!_loc3_);
                  
               }
               while(!(_loc3_ || _loc3_));
               
            }
            while(!_loc3_);
            
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function §3!=§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            this.§^!f§ = false;
            loop0:
            while(true)
            {
               §§push(this.§8!V§);
               if(!_loc5_)
               {
                  break;
               }
               §§pop().removeEventListener(Event.COMPLETE,this.§3!=§);
               loop1:
               while(true)
               {
                  if(this.§@j§)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        this.§'m§(this.§@j§);
                     }
                     do
                     {
                        if(!_loc4_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                     while(this.§@j§ = null, _loc4_ && this);
                     
                     return;
                     addr47:
                  }
                  §§push(this.§8!V§);
                  break loop0;
               }
            }
            §§push(§§pop().§`!_§.§1t§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(0);
            if(_loc5_ || _loc2_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            while(true)
            {
               §§push(_loc3_);
               if(_loc5_ || this)
               {
                  if(_loc5_ || this)
                  {
                     if(_loc5_)
                     {
                        if(§§pop() >= _loc2_)
                        {
                           if(_loc5_)
                           {
                              this.§0k§();
                           }
                           if(_loc5_)
                           {
                              break;
                           }
                           loop4:
                           while(_loc4_ && this)
                           {
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 continue loop4;
                              }
                           }
                           continue;
                        }
                        this.§6! §.§,!j§(this.§8!V§.§`!_§.§6!#§(_loc3_));
                        while(true)
                        {
                           §§push(_loc3_);
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop() + 1);
                     }
                  }
                  while(true)
                  {
                  }
               }
               §§goto(addr167);
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §0k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§5!W§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop());
                  if(!_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     addr166:
                     while(true)
                     {
                        §§pop();
                        addr167:
                        while(true)
                        {
                           §§push(this.§8!V§);
                           addr140:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              if(_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              addr145:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                     addr166:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr149:
                        return;
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.§6! §.§0k§());
                        if(_loc1_ && _loc1_)
                        {
                           break;
                        }
                        if(_loc2_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(this.§8!V§);
                                 if(_loc2_)
                                 {
                                    §§pop().dispose();
                                    loop4:
                                    while(_loc2_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§8!V§ = null;
                                          loop10:
                                          for(; !_loc1_; if(!(_loc2_ || _loc2_))
                                          {
                                             continue;
                                          },§§goto(addr68))
                                          {
                                             this.§6!C§ = this.§>!i§;
                                             loop11:
                                             while(_loc2_)
                                             {
                                                this.§>!i§ = null;
                                                while(true)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   continue loop11;
                                                   addr68:
                                                   dispatchEvent(new Event(Event.COMPLETE));
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            §§goto(addr25);
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                continue loop10;
                                             }
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    §§goto(addr167);
                                 }
                                 break;
                              }
                              §§goto(addr140);
                           }
                           addr25:
                           return;
                        }
                        §§goto(addr166);
                        §§goto(addr167);
                     }
                  }
                  continue;
               }
               §§goto(addr166);
            }
         }
         §§goto(addr126);
      }
   }
}
