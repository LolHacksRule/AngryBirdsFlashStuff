package §-w§
{
   import §%e§.§[P§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §6!O§ extends EventDispatcher
   {
       
      
      private var §6!4§:String = "";
      
      private var §,!o§:String;
      
      private var §'D§:URLLoader;
      
      private var §9![§:Dictionary;
      
      private var §8!&§:String = null;
      
      private var §9!+§:String = null;
      
      private var §0!%§:String = null;
      
      private var §+!x§:Boolean;
      
      private var §2z§:§[P§;
      
      private var §;!t§:§,Q§;
      
      private var §5T§:Vector.<§,Q§>;
      
      private var §,s§:String = "pak";
      
      private var § r§:Boolean = true;
      
      private var §4!o§:int = 1;
      
      public function §6!O§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.§9![§ = new Dictionary();
            loop0:
            while(true)
            {
               this.§5T§ = new Vector.<§,Q§>();
               while(true)
               {
                  super();
                  loop2:
                  while(_loc6_ || this)
                  {
                     this.§6!4§ = param2;
                     while(true)
                     {
                        this.§,!o§ = param1;
                        while(_loc6_)
                        {
                           this.§ r§ = param3;
                           while(!_loc5_)
                           {
                              this.§4!o§ = Math.max(1,param4);
                              if(!_loc5_)
                              {
                                 if(_loc5_ && param1)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc6_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr57);
                                 continue loop2;
                              }
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function get textureManager() : §,Q§
      {
         return this.§;!t§;
      }
      
      public function §@!s§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§9![§[param1] == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      private function §`!s§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§,Q§ = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§5T§.length)
            {
               return false;
            }
            _loc3_ = this.§5T§[_loc2_];
            if(!_loc4_)
            {
               if(_loc3_.id != param1)
               {
                  while(true)
                  {
                     _loc2_++;
                     if(_loc4_)
                     {
                        if(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           loop5:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 addr72:
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr89:
                                    if(_loc4_)
                                    {
                                       while(true)
                                       {
                                          this.§;!t§ = _loc3_;
                                          addr104:
                                          while(true)
                                          {
                                             this.§8!&§ = param1;
                                             addr96:
                                             while(true)
                                             {
                                                this.§5T§.splice(_loc2_,1);
                                                continue loop5;
                                             }
                                             §§goto(addr72);
                                          }
                                          §§goto(addr89);
                                       }
                                       addr101:
                                    }
                                    this.§5T§.unshift(this.§;!t§);
                                    break loop0;
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr96);
                           }
                        }
                        break loop0;
                     }
                     if(false)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return true;
                  addr39:
               }
               §§goto(addr101);
            }
            break;
         }
         §§goto(addr39);
      }
      
      public function §<!I§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1);
            if(!(_loc2_ && param1))
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
                  §§push(this.§2Q§());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§ k§());
                           loop4:
                           while(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§@!s§(param1));
                                 addr143:
                                 while(_loc3_ || param1)
                                 {
                                    if(!§§pop())
                                    {
                                       this.§4!p§(param1);
                                       if(_loc3_)
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             if(_loc2_ && _loc3_)
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      dispatchEvent(new Event(Event.COMPLETE));
                                                      break;
                                                      addr109:
                                                   }
                                                   else
                                                   {
                                                      addr189:
                                                   }
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§ r§);
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            addr97:
                                                            if(_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     this.§7!j§(param1,false);
                                                                     break loop7;
                                                                  }
                                                                  addr68:
                                                                  continue loop7;
                                                               }
                                                               addr99:
                                                            }
                                                            else
                                                            {
                                                               addr133:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop8;
                                                               }
                                                               addr133:
                                                            }
                                                         }
                                                      }
                                                   }
                                                   return;
                                                }
                                                addr25:
                                                return;
                                             }
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr25);
                                                }
                                                continue loop3;
                                             }
                                             addr151:
                                             if(!_loc3_)
                                             {
                                                continue loop5;
                                             }
                                             this.§`!s§(param1);
                                             while(true)
                                             {
                                                if(!(_loc3_ || param1))
                                                {
                                                   break loop4;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          §§goto(addr109);
                                       }
                                       §§goto(addr68);
                                    }
                                    §§goto(addr151);
                                 }
                                 continue loop4;
                              }
                           }
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           this.§0!%§ = param1;
                           §§goto(addr189);
                        }
                     }
                     §§goto(addr139);
                  }
               }
            }
         }
         §§goto(addr138);
      }
      
      private function §4!p§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = "";
         if(_loc3_ || _loc3_)
         {
            §§push(this.§6!4§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop14:
                           while(true)
                           {
                              §§push(this.§6!4§);
                              if(_loc3_)
                              {
                                 §§push(§§pop().length > 0);
                                 if(_loc4_ && this)
                                 {
                                    continue;
                                 }
                                 addr163:
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§push("?version=");
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(§§pop() + this.§6!4§);
                                          }
                                          §§push(§§pop());
                                          addr189:
                                          loop4:
                                          while(_loc3_)
                                          {
                                             _loc2_ = §§pop();
                                             while(true)
                                             {
                                                while(_loc3_ || param1)
                                                {
                                                   this.§'D§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                                   loop12:
                                                   for(; _loc3_ || this; while(true)
                                                   {
                                                      this.§'D§.load(new URLRequest(this.§,!o§ + "packages/" + param1 + "." + this.§,s§ + _loc2_));
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         addr140:
                                                         while(true)
                                                         {
                                                            if(_loc4_ && param1)
                                                            {
                                                               continue loop3;
                                                            }
                                                            this.§'D§ = new URLLoader();
                                                            §§goto(addr135);
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop12;
                                                   },return)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            continue;
                                                         }
                                                         continue loop14;
                                                      }
                                                      addr135:
                                                      while(_loc3_ || this)
                                                      {
                                                         this.§'D§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                                         break loop12;
                                                      }
                                                      while(_loc3_)
                                                      {
                                                         this.§'D§.addEventListener(Event.COMPLETE,this.onComplete);
                                                         §§goto(addr113);
                                                      }
                                                      addr113:
                                                      while(true)
                                                      {
                                                         this.§'D§.dataFormat = URLLoaderDataFormat.BINARY;
                                                         §§goto(addr127);
                                                      }
                                                      addr127:
                                                   }
                                                }
                                             }
                                             continue loop14;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§9!+§ = param1;
                                       §§goto(addr140);
                                    }
                                    §§goto(addr163);
                                 }
                              }
                              §§goto(addr189);
                           }
                           continue loop1;
                        }
                        addr202:
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr202);
               }
            }
         }
         §§goto(addr78);
      }
      
      private function §2Q§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(Boolean(this.§'D§));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr48:
                     §§pop();
                     §§push(this.§+!x§);
                     if(!_loc1_)
                     {
                        return Boolean(§§pop());
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      private function § k§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§'D§)
            {
               while(true)
               {
                  this.§'D§.removeEventListener(Event.COMPLETE,this.onComplete);
                  while(true)
                  {
                     this.§'D§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     loop2:
                     for(; _loc2_; while(!(_loc2_ || _loc2_))
                     {
                        continue loop2;
                     },this.§'D§.close(),this.§'D§ = null)
                     {
                        while(true)
                        {
                           this.§'D§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                           continue loop2;
                        }
                     }
                  }
                  addr71:
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  §§goto(addr79);
               }
            }
            while(true)
            {
               §§push(this.§+!x§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        if(_loc1_)
                        {
                           continue;
                        }
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc2_ || this)
                           {
                              §§goto(addr71);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr90);
                     }
                  }
                  §§push(true);
                  if(!(_loc1_ && _loc1_))
                  {
                     return §§pop();
                  }
                  break;
               }
               break;
            }
            addr79:
            return false;
         }
         §§goto(addr127);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'D§.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         loop0:
         while(true)
         {
            this.§'D§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            loop1:
            do
            {
               this.§'D§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               while(_loc3_)
               {
                  this.§9![§[this.§9!+§] = this.§'D§.data;
                  while(!_loc2_)
                  {
                     this.§'D§ = null;
                     while(_loc3_)
                     {
                        this.§7!j§(this.§9!+§,true);
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               continue loop0;
            }
            while(_loc2_);
            
            return;
         }
      }
      
      private function §7!j§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§,Q§ = null;
         if(_loc4_ || this)
         {
            this.§+!x§ = true;
            if(!(_loc5_ && param2))
            {
               this.§9!+§ = param1;
            }
         }
         while(this.§5T§.length >= this.§4!o§)
         {
            _loc3_ = this.§5T§.pop();
            if(_loc4_ || param2)
            {
               _loc3_.dispose();
            }
         }
         if(_loc4_ || param1)
         {
            §§push(this.§2z§);
            if(!(_loc5_ && this))
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr90:
                     §§push(this.§2z§);
                     if(_loc4_ || _loc3_)
                     {
                        addr99:
                        §§pop().dispose();
                        if(!_loc5_)
                        {
                           addr170:
                           this.§;!t§ = new §,Q§(param1);
                        }
                        loop1:
                        while(true)
                        {
                           this.§5T§.unshift(this.§;!t§);
                           do
                           {
                              this.§2z§ = new §[P§();
                              do
                              {
                                 §§push(this.§2z§);
                              }
                              while(_loc5_);
                              
                           }
                           while(_loc5_);
                           
                           addr130:
                           return;
                           addr149:
                           addr134:
                           while(true)
                           {
                              if(_loc4_ || param2)
                              {
                                 §§push(this.§2z§);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 continue;
                                 addr156:
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              §§pop().addEventListener(Event.COMPLETE,this.§>e§);
                              §§goto(addr149);
                              §§goto(addr156);
                           }
                        }
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr130);
               }
               §§goto(addr170);
            }
            §§goto(addr99);
         }
         §§goto(addr90);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'D§.removeEventListener(Event.COMPLETE,this.onComplete);
            loop0:
            while(true)
            {
               this.§'D§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               while(true)
               {
                  this.§'D§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  loop2:
                  while(true)
                  {
                     this.§'D§.close();
                     while(true)
                     {
                        this.§'D§ = null;
                        continue loop2;
                        addr37:
                        if(!(_loc3_ && _loc3_))
                        {
                           return;
                           addr44:
                        }
                     }
                  }
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  §§goto(addr75);
               }
            }
         }
         §§goto(addr75);
      }
      
      private function §>e§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            this.§+!x§ = false;
            §§push(this.§2z§);
            if(!(_loc4_ && _loc3_))
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§>e§);
               while(this.§0!%§)
               {
                  this.§<!I§(this.§0!%§);
                  if(!_loc4_)
                  {
                     this.§0!%§ = null;
                     return;
                     addr72:
                  }
               }
               §§push(this.§2z§);
            }
            §§push(§§pop().§`Q§.§2P§);
            if(_loc5_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= _loc2_)
               {
                  if(_loc5_ || this)
                  {
                     this.§]!b§();
                  }
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(_loc5_ || this)
                  {
                     break;
                  }
               }
               else
               {
                  this.§;!t§.§9!$§(this.§2z§.§`Q§.§@y§(_loc3_));
               }
               _loc3_++;
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function §]!b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§2Q§());
            if(!(_loc2_ && this))
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  addr144:
                  if(!§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(this.§2z§);
                           while(true)
                           {
                              §§push(§§pop() == null);
                              continue loop0;
                              loop5:
                              while(true)
                              {
                                 §§push(this.§2z§);
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    break;
                                 }
                                 §§pop().dispose();
                                 loop6:
                                 do
                                 {
                                    this.§2z§ = null;
                                    while(true)
                                    {
                                       this.§8!&§ = this.§9!+§;
                                       while(_loc1_ || _loc1_)
                                       {
                                          this.§9!+§ = null;
                                          while(_loc1_)
                                          {
                                             dispatchEvent(new Event(Event.COMPLETE));
                                             if(_loc1_)
                                             {
                                                continue loop6;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(!(_loc1_ || this));
                                 
                                 if(_loc1_)
                                 {
                                    if(_loc1_ || this)
                                    {
                                       if(!_loc1_)
                                       {
                                          §§goto(addr128);
                                       }
                                    }
                                    else
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          addr86:
                                          while(true)
                                          {
                                             §§push(this.§;!t§.§]!b§());
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                continue loop5;
                                             }
                                             continue loop11;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    return;
                                 }
                              }
                           }
                        }
                     }
                     addr146:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr86);
                     }
                     addr128:
                     return;
                  }
               }
               §§goto(addr146);
            }
            §§goto(addr144);
         }
         §§goto(addr131);
      }
   }
}
