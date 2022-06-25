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
         }
         while(true)
         {
            this.§&C§ = new Vector.<TextureManager>();
            while(_loc6_)
            {
               super();
               loop2:
               while(true)
               {
                  this.§-!C§ = param2;
                  do
                  {
                     this.§+U§ = param1;
                     continue loop2;
                  }
                  while(!(_loc6_ || this));
                  
                  return;
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
         §§push(this.§0M§[param1] == null);
         if(!(_loc2_ && _loc2_))
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
         if(_loc4_)
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
            if(_loc4_ || _loc3_)
            {
               if(_loc3_.id == param1)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  this.§6!C§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§&C§.splice(_loc2_,1);
                     addr118:
                     while(true)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                  }
                  this.§&C§.unshift(this.§6! §);
                  addr140:
               }
               else
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc4_ || param1)
                     {
                        §§push(§§pop() + 1);
                        if(!_loc5_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc2_ = §§pop();
                     if(_loc5_ && _loc3_)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                        }
                        break;
                     }
                     if(!(_loc5_ && param1))
                     {
                        if(false)
                        {
                           §§goto(addr80);
                        }
                        continue loop0;
                     }
                     §§goto(addr140);
                     §§goto(addr118);
                  }
               }
               addr80:
               return true;
            }
            break;
         }
         this.§6! § = _loc3_;
         §§goto(addr140);
      }
      
      public function §'m§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_)
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
                  §§push(this.§5!W§());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§]k§());
                           addr206:
                           while(true)
                           {
                              §§push(!§§pop());
                              addr207:
                              loop5:
                              while(!§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§^!^§(param1));
                                    loop7:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§,!?§(param1);
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   §§goto(addr20);
                                                }
                                                else
                                                {
                                                   addr175:
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§0!I§(param1));
                                                   addr178:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                   }
                                                }
                                                addr175:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      dispatchEvent(new Event(Event.COMPLETE));
                                                      break;
                                                   }
                                                }
                                                addr24:
                                                addr20:
                                                return;
                                                addr124:
                                                addr134:
                                             }
                                             while(true)
                                             {
                                                if(_loc2_ && _loc3_)
                                                {
                                                   break loop5;
                                                }
                                                continue loop0;
                                             }
                                             continue loop0;
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      return;
                                                      addr218:
                                                   }
                                                   if(!(_loc3_ || this))
                                                   {
                                                      continue loop3;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§push(this.§[!N§);
                                                      if(_loc3_ || param1)
                                                      {
                                                         §§push(!§§pop());
                                                         if(!_loc2_)
                                                         {
                                                            addr88:
                                                            if(_loc2_ && _loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc2_ && this)
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                      addr115:
                                                      if(!(_loc3_ || param1))
                                                      {
                                                         continue loop2;
                                                      }
                                                      while(!§§pop())
                                                      {
                                                         this.§&d§(param1,false);
                                                         continue loop14;
                                                         §§goto(addr115);
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                   §§goto(addr178);
                                                }
                                                §§goto(addr24);
                                             }
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr175);
                                    }
                                 }
                              }
                              if(_loc2_ && this)
                              {
                                 continue loop1;
                              }
                              this.§@j§ = param1;
                              §§goto(addr218);
                           }
                        }
                     }
                     §§goto(addr170);
                  }
               }
            }
         }
         §§goto(addr175);
      }
      
      private function §,!?§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = "";
         if(_loc3_ || _loc3_)
         {
            §§push(this.§-!C§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(!_loc4_)
               {
                  §§push(!§§pop());
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                        if(_loc3_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           addr225:
                           while(true)
                           {
                              §§pop();
                              addr226:
                              addr203:
                              addr204:
                              while(true)
                              {
                                 §§push(this.§-!C§);
                                 if(!(_loc3_ || param1))
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              _loc2_ = §§pop();
                              while(true)
                              {
                              }
                           }
                           addr225:
                        }
                        else
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push("?version=");
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() + this.§-!C§);
                                       }
                                       §§push(§§pop());
                                    }
                                    else
                                    {
                                       §§goto(addr226);
                                    }
                                    §§goto(addr203);
                                 }
                                 addr179:
                              }
                              addr170:
                              if(_loc3_ || _loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr225);
                           }
                        }
                        while(true)
                        {
                           this.§>!i§ = param1;
                           loop7:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 while(true)
                                 {
                                    this.§#!c§ = new URLLoader();
                                    loop10:
                                    for(; !_loc4_; if(_loc3_ || this)
                                    {
                                       return;
                                    })
                                    {
                                       this.§#!c§.dataFormat = URLLoaderDataFormat.BINARY;
                                       loop11:
                                       while(true)
                                       {
                                          this.§#!c§.addEventListener(Event.COMPLETE,this.onComplete);
                                          loop12:
                                          while(true)
                                          {
                                             this.§#!c§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                             loop13:
                                             do
                                             {
                                                this.§#!c§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                                while(_loc3_)
                                                {
                                                   continue loop11;
                                                   this.§#!c§.load(new URLRequest(this.§+U§ + "packages/" + param1 + "." + this.§00§ + _loc2_));
                                                   if(!_loc4_)
                                                   {
                                                      continue loop13;
                                                   }
                                                }
                                                continue loop12;
                                             }
                                             while(!(_loc3_ || this));
                                             
                                             continue loop10;
                                          }
                                       }
                                    }
                                    continue loop7;
                                 }
                                 addr144:
                              }
                              else
                              {
                                 §§goto(addr179);
                              }
                           }
                           §§goto(addr204);
                        }
                     }
                  }
                  addr212:
               }
               §§goto(addr225);
            }
         }
         §§goto(addr144);
      }
      
      private function §5!W§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(Boolean(this.§#!c§));
            if(_loc2_ || this)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§pop();
                     addr67:
                     §§push(this.§^!f§);
                     if(_loc1_)
                     {
                     }
                     §§goto(addr72);
                  }
                  §§push(Boolean(§§pop()));
               }
            }
            addr72:
            return §§pop();
         }
         §§goto(addr67);
      }
      
      private function §]k§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(Boolean(this.§#!c§));
            loop0:
            do
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     this.§#!c§.removeEventListener(Event.COMPLETE,this.onComplete);
                  }
                  loop1:
                  while(true)
                  {
                     this.§#!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     loop2:
                     while(true)
                     {
                        this.§#!c§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                        while(true)
                        {
                           this.§#!c§.close();
                           while(!(_loc2_ && this))
                           {
                              if(_loc1_)
                              {
                                 this.§#!c§ = null;
                                 loop5:
                                 for(; !_loc2_; if(!(_loc1_ || _loc2_))
                                 {
                                    continue;
                                 },§§goto(addr24))
                                 {
                                    while(true)
                                    {
                                       addr45:
                                       while(true)
                                       {
                                          §§push(this.§^!f§);
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc2_ && this))
                                                {
                                                   continue loop1;
                                                }
                                                continue loop5;
                                             }
                                             addr24:
                                             §§push(true);
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                return §§pop();
                                             }
                                             addr74:
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                continue loop0;
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               §§goto(addr45);
            }
            while(!_loc1_);
            
            return §§pop();
         }
         §§goto(addr89);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#!c§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§#!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               addr108:
               while(true)
               {
                  this.§#!c§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               }
               addr59:
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               this.§&d§(this.§>!i§,true);
               addr66:
               if(_loc3_)
               {
                  addr33:
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        this.§0M§[this.§>!i§] = this.§#!c§.data;
                        loop3:
                        while(true)
                        {
                           this.§#!c§ = null;
                           addr40:
                           while(true)
                           {
                              if(!(_loc3_ || param1))
                              {
                                 continue loop3;
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr59);
                              §§goto(addr66);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr33);
                     }
                     addr97:
                  }
                  return;
               }
               §§goto(addr40);
            }
         }
         §§goto(addr97);
      }
      
      private function §&d§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:TextureManager = null;
         if(!(_loc5_ && param1))
         {
            this.§^!f§ = true;
            if(_loc4_ || _loc3_)
            {
               addr36:
               this.§>!i§ = param1;
            }
            while(this.§&C§.length >= this.§4C§)
            {
               _loc3_ = this.§&C§.pop();
               if(_loc4_)
               {
                  _loc3_.dispose();
               }
            }
            if(!_loc5_)
            {
               §§push(this.§8!V§);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(this.§8!V§);
                        if(_loc4_)
                        {
                           §§pop().dispose();
                           if(_loc4_ || param2)
                           {
                              addr162:
                              this.§6! § = new TextureManager(param1);
                              loop6:
                              while(true)
                              {
                                 this.§&C§.unshift(this.§6! §);
                                 addr159:
                                 addr161:
                                 while(!_loc4_)
                                 {
                                    continue loop6;
                                 }
                                 addr161:
                                 while(true)
                                 {
                                    this.§8!V§ = new PackageManager();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§8!V§);
                                       addr121:
                                       loop7:
                                       while(true)
                                       {
                                          §§pop().addEventListener(Event.COMPLETE,this.§3!=§);
                                          addr138:
                                          while(true)
                                          {
                                             if(_loc4_ || this)
                                             {
                                                §§push(this.§8!V§);
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                                addr145:
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr90:
                           }
                           §§goto(addr161);
                        }
                        while(true)
                        {
                           §§pop().§'#§(this.§0M§[this.§>!i§],param2);
                           if(_loc4_)
                           {
                              if(_loc4_ || this)
                              {
                                 break;
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr138);
                           §§goto(addr145);
                        }
                        return;
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr162);
               }
               §§goto(addr121);
            }
            §§goto(addr90);
         }
         §§goto(addr36);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§#!c§.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         loop0:
         while(true)
         {
            this.§#!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            while(true)
            {
               this.§#!c§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               loop2:
               for(; _loc2_ || param1; if(!(_loc3_ && param1))
               {
                  continue loop0;
               })
               {
                  this.§#!c§.close();
                  while(true)
                  {
                     this.§#!c§ = null;
                     loop4:
                     while(!_loc3_)
                     {
                        this.§>!i§ = null;
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              continue loop2;
                           }
                           continue loop4;
                           addr75:
                           dispatchEvent(new Event(Event.CANCEL));
                           if(!(_loc3_ && _loc2_))
                           {
                              return;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
            if(!(_loc2_ || _loc2_))
            {
               continue;
            }
            §§goto(addr75);
         }
      }
      
      private function §3!=§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            this.§^!f§ = false;
            loop0:
            while(true)
            {
               §§push(this.§8!V§);
               if(_loc4_)
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§3!=§);
                  while(this.§@j§)
                  {
                     if(_loc4_ || param1)
                     {
                        continue loop0;
                     }
                  }
                  §§push(this.§8!V§);
                  break;
               }
               break;
            }
            §§push(§§pop().§`!_§.§1t§);
            if(!_loc5_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(0);
            if(!_loc5_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            while(true)
            {
               §§push(_loc3_);
               if(_loc4_)
               {
                  if(§§pop() >= _loc2_)
                  {
                     if(!(_loc5_ && this))
                     {
                        this.§0k§();
                     }
                     if(!(_loc5_ && this))
                     {
                        break;
                     }
                     loop3:
                     while(_loc5_)
                     {
                        while(true)
                        {
                           _loc3_ = §§pop();
                           continue loop3;
                        }
                     }
                     continue;
                  }
                  this.§6! §.§,!j§(this.§8!V§.§`!_§.§6!#§(_loc3_));
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc4_ || param1)
                     {
                        §§push(§§pop() + 1);
                        if(!_loc4_)
                        {
                        }
                        §§goto(addr166);
                     }
                  }
               }
               §§goto(addr166);
            }
            return;
         }
      }
      
      public function §0k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§5!W§());
            if(_loc1_ || _loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(_loc1_ || _loc1_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        loop9:
                        while(true)
                        {
                           §§push(this.§8!V§);
                           loop10:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              if(!_loc2_)
                              {
                                 addr116:
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    §§goto(addr116);
                                 }
                                 addr117:
                              }
                              loop1:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§push(this.§6! §.§0k§());
                                       if(_loc1_ || _loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             if(!§§pop())
                                             {
                                                return;
                                             }
                                             loop3:
                                             while(true)
                                             {
                                                §§push(this.§8!V§);
                                                if(!_loc1_)
                                                {
                                                   continue loop10;
                                                }
                                                §§pop().dispose();
                                                do
                                                {
                                                   this.§8!V§ = null;
                                                   loop5:
                                                   while(_loc1_)
                                                   {
                                                      this.§6!C§ = this.§>!i§;
                                                      loop6:
                                                      while(!_loc2_)
                                                      {
                                                         this.§>!i§ = null;
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  if(_loc2_ && _loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop6;
                                                         }
                                                         return;
                                                      }
                                                      continue loop3;
                                                   }
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop9;
                                                }
                                                while(!_loc1_);
                                                
                                             }
                                             continue loop10;
                                          }
                                          continue loop8;
                                       }
                                       continue loop1;
                                    }
                                    continue loop9;
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr116);
                           }
                        }
                     }
                     addr160:
                  }
                  §§goto(addr117);
               }
            }
            §§goto(addr160);
         }
         §§goto(addr119);
      }
   }
}
