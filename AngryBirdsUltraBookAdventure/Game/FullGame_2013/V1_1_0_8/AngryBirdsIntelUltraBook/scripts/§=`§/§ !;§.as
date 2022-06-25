package §=`§
{
   import §]!+§.§5!1§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class § !;§ extends EventDispatcher
   {
       
      
      private var §`!f§:String = "";
      
      private var § 6§:String;
      
      private var §>n§:URLLoader;
      
      private var §3!M§:Dictionary;
      
      private var §4!f§:String = null;
      
      private var §04§:String = null;
      
      private var §;!!§:String = null;
      
      private var §'! §:Boolean;
      
      private var §=!Q§:§5!1§;
      
      private var §&!k§:§6!I§;
      
      private var §5]§:Vector.<§6!I§>;
      
      private var §;!L§:String = "pak";
      
      private var §+!I§:Boolean = true;
      
      private var §4c§:int = 1;
      
      public function § !;§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§3!M§ = new Dictionary();
            loop0:
            while(true)
            {
               this.§5]§ = new Vector.<§6!I§>();
               while(true)
               {
                  super();
                  while(_loc5_)
                  {
                     this.§`!f§ = param2;
                     continue loop0;
                     addr71:
                     if(!(_loc6_ && this))
                     {
                        loop6:
                        while(true)
                        {
                           this.§4c§ = Math.max(1,param4);
                           if(!(_loc6_ && param2))
                           {
                              addr42:
                              if(!(_loc6_ && param1))
                              {
                                 break;
                              }
                              addr93:
                              while(true)
                              {
                                 this.§+!I§ = param3;
                                 §§goto(addr42);
                              }
                           }
                           addr64:
                           while(_loc5_ || param3)
                           {
                              §§goto(addr71);
                              continue loop6;
                           }
                           continue loop0;
                        }
                        return;
                        addr78:
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function get textureManager() : §6!I§
      {
         return this.§&!k§;
      }
      
      public function §6j§(param1:String) : Boolean
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
            param1 = §§pop();
         }
         §§push(this.§3!M§[param1] == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      private function §`!!§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§6!I§ = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§5]§.length)
            {
               return false;
            }
            _loc3_ = this.§5]§[_loc2_];
            if(!_loc4_)
            {
               if(_loc3_.id != param1)
               {
                  while(true)
                  {
                     _loc2_++;
                     if(_loc5_ || param1)
                     {
                        if(false)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     if(!(_loc5_ || _loc3_))
                     {
                        do
                        {
                           if(!(_loc5_ || param1))
                           {
                              continue;
                           }
                        }
                        while(!_loc5_);
                        
                        break;
                     }
                     addr71:
                  }
                  return true;
               }
               if(!_loc4_)
               {
                  this.§&!k§ = _loc3_;
               }
               while(true)
               {
                  this.§4!f§ = param1;
               }
               addr114:
               while(_loc4_)
               {
                  §§goto(addr114);
               }
               this.§5]§.splice(_loc2_,1);
               break;
            }
            break;
         }
         while(true)
         {
            this.§5]§.unshift(this.§&!k§);
            §§goto(addr71);
         }
      }
      
      public function §-!a§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
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
                     §§push(this.§6;§());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§push(this.§ !i§());
                              loop4:
                              while(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§6j§(param1));
                                    loop6:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§[e§(param1);
                                          if(_loc3_)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                if(_loc2_)
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§push(this.§+!I§);
                                                            if(!(_loc3_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            addr130:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  addr25:
                                                                  addr54:
                                                                  this.§^!3§(param1,false);
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        return;
                                                                        addr181:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr108:
                                                                     if(!(_loc3_ || param1))
                                                                     {
                                                                        break loop4;
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr100:
                                                               }
                                                               continue loop7;
                                                               return;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr158:
                                                            while(true)
                                                            {
                                                               this.§`!!§(param1);
                                                            }
                                                            addr158:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§push(param1);
                                                            if(!_loc2_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop1;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            break loop5;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§goto(addr100);
                                                   continue loop4;
                                                }
                                                §§goto(addr25);
                                             }
                                             break;
                                          }
                                          §§goto(addr54);
                                       }
                                       §§goto(addr158);
                                    }
                                    dispatchEvent(new Event(Event.COMPLETE));
                                    §§goto(addr108);
                                 }
                                 continue loop2;
                              }
                           }
                           this.§;!!§ = param1;
                           §§goto(addr181);
                        }
                        §§goto(addr143);
                     }
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      protected function §[e§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = "";
         if(!_loc5_)
         {
            §§push(this.§`!f§);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() == null);
               if(_loc4_ || _loc2_)
               {
                  §§push(!§§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr160:
                           while(true)
                           {
                              §§push(this.§`!f§);
                              if(_loc4_)
                              {
                                 §§push(§§pop().length > 0);
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                              }
                              §§goto(addr167);
                           }
                        }
                        addr159:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push("?version=");
                              if(!_loc5_)
                              {
                                 §§push(§§pop() + this.§`!f§);
                              }
                              §§push(§§pop());
                              if(_loc4_ || _loc2_)
                              {
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                 }
                                 addr125:
                              }
                              break;
                           }
                           addr167:
                           var _loc3_:* = §§pop();
                           if(!(_loc5_ && this))
                           {
                              this.§>n§.load(new URLRequest(_loc3_ + _loc2_));
                           }
                           return;
                           addr110:
                        }
                        while(true)
                        {
                           this.§04§ = param1;
                           loop4:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 this.§>n§ = new URLLoader();
                                 loop5:
                                 while(!_loc5_)
                                 {
                                    if(!_loc5_)
                                    {
                                       this.§>n§.dataFormat = URLLoaderDataFormat.BINARY;
                                       while(!_loc5_)
                                       {
                                          this.§>n§.addEventListener(Event.COMPLETE,this.onComplete);
                                          loop7:
                                          while(true)
                                          {
                                             addr35:
                                             while(true)
                                             {
                                                this.§>n§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                                continue loop7;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr160);
                                    §§goto(addr167);
                                 }
                                 §§goto(addr125);
                              }
                              else
                              {
                                 §§goto(addr110);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr159);
            }
            §§goto(addr167);
         }
         §§goto(addr160);
      }
      
      protected function §5!F§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§ 6§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop());
               if(!_loc4_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr57);
                  }
                  §§push(§§pop());
               }
            }
            addr57:
            if(_loc3_ || _loc2_)
            {
               §§pop();
               addr55:
               §§push("");
            }
            var _loc2_:* = §§pop();
            §§push(_loc2_ + "packages/");
            if(_loc3_ || _loc3_)
            {
               §§push(param1);
               if(_loc3_ || param1)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc4_)
                  {
                     §§goto(addr89);
                  }
               }
               §§goto(addr93);
            }
            addr89:
            §§push(§§pop() + ".");
            if(_loc3_)
            {
               addr93:
               return §§pop() + this.§;!L§;
            }
         }
         §§goto(addr55);
      }
      
      private function §6;§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(Boolean(this.§>n§));
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     addr44:
                     §§push(this.§'! §);
                     if(!(_loc1_ && this))
                     {
                        addr53:
                        return Boolean(§§pop());
                     }
                  }
               }
            }
            §§goto(addr53);
         }
         §§goto(addr44);
      }
      
      private function § !i§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§>n§)
            {
               loop0:
               while(true)
               {
                  this.§>n§.removeEventListener(Event.COMPLETE,this.onComplete);
                  addr138:
                  while(true)
                  {
                     this.§>n§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §§push(this.§'! §);
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        if(_loc2_)
                        {
                           §§push(false);
                        }
                        else
                        {
                           §§goto(addr78);
                        }
                     }
                     else
                     {
                        if(_loc2_ || _loc1_)
                        {
                           if(!(_loc1_ && this))
                           {
                              addr25:
                              §§push(true);
                              if(_loc1_)
                              {
                                 §§goto(addr48);
                              }
                              if(!_loc1_)
                              {
                                 return §§pop();
                              }
                              continue;
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr109);
                     }
                     addr48:
                     return §§pop();
                  }
                  §§goto(addr25);
               }
               §§goto(addr90);
               §§goto(addr85);
            }
         }
         §§goto(addr127);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>n§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§>n§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               loop1:
               while(_loc2_ || this)
               {
                  this.§>n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  loop2:
                  do
                  {
                     this.§3!M§[this.§04§] = this.§>n§.data;
                     while(true)
                     {
                        this.§>n§ = null;
                        while(!_loc3_)
                        {
                           continue loop1;
                           this.§^!3§(this.§04§,true);
                           if(_loc3_ && _loc3_)
                           {
                              continue loop1;
                           }
                           §§goto(addr62);
                           if(!(_loc3_ && this))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(_loc3_);
                  
                  return;
               }
            }
         }
         §§goto(addr91);
      }
      
      private function §^!3§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§6!I§ = null;
         if(!_loc4_)
         {
            this.§'! § = true;
            if(!_loc4_)
            {
               this.§04§ = param1;
            }
         }
         while(this.§5]§.length >= this.§4c§)
         {
            _loc3_ = this.§5]§.pop();
            if(!(_loc4_ && this))
            {
               _loc3_.dispose();
            }
         }
         if(!(_loc4_ && param2))
         {
            §§push(this.§=!Q§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     §§push(this.§=!Q§);
                     if(_loc5_)
                     {
                        §§pop().dispose();
                        if(!_loc4_)
                        {
                           addr172:
                           this.§&!k§ = new §6!I§(param1);
                           loop4:
                           while(true)
                           {
                              this.§5]§.unshift(this.§&!k§);
                              while(true)
                              {
                                 this.§=!Q§ = new §5!1§();
                                 loop6:
                                 while(!(_loc4_ && param2))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§=!Q§);
                                       addr136:
                                       while(true)
                                       {
                                          §§pop().addEventListener(Event.COMPLETE,this.§]w§);
                                          while(true)
                                          {
                                             §§push(this.§=!Q§);
                                             addr115:
                                             loop7:
                                             while(true)
                                             {
                                                §§pop().§#!-§(this.§04§);
                                                addr118:
                                                while(_loc5_ || param2)
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop6;
                                             }
                                             if(_loc4_ && param2)
                                             {
                                                continue;
                                             }
                                             §§goto(addr111);
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                           addr177:
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr177);
               }
               §§goto(addr172);
            }
            §§goto(addr115);
         }
         §§goto(addr132);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§>n§.removeEventListener(Event.COMPLETE,this.onComplete);
            loop0:
            while(true)
            {
               this.§>n§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               while(true)
               {
                  this.§>n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  while(_loc3_ || _loc3_)
                  {
                     this.§>n§.close();
                     loop3:
                     while(true)
                     {
                        this.§>n§ = null;
                        addr81:
                        loop4:
                        while(true)
                        {
                           this.§04§ = null;
                           while(_loc3_)
                           {
                              continue loop0;
                              dispatchEvent(new Event(Event.CANCEL));
                              if(!_loc2_)
                              {
                                 continue loop4;
                              }
                           }
                           continue loop3;
                        }
                        §§goto(addr62);
                     }
                     if(!(_loc2_ && _loc3_))
                     {
                        addr62:
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      private function §]w§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§'! § = false;
            loop0:
            while(true)
            {
               §§push(this.§=!Q§);
               if(!(_loc5_ || this))
               {
                  break;
               }
               §§pop().removeEventListener(Event.COMPLETE,this.§]w§);
               loop1:
               while(true)
               {
                  if(!this.§;!!§)
                  {
                     §§push(this.§=!Q§);
                     break loop0;
                  }
                  if(_loc5_ || _loc3_)
                  {
                     while(true)
                     {
                        this.§-!a§(this.§;!!§);
                     }
                     addr51:
                  }
                  while(true)
                  {
                     if(_loc4_)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
            }
            §§push(§§pop().§8!s§.§8L§);
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
                  if(_loc5_ || _loc2_)
                  {
                     this.§`R§();
                  }
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(_loc5_ || _loc3_)
                  {
                     break;
                  }
               }
               else
               {
                  this.§&!k§.§@!V§(this.§=!Q§.§8!s§.§#%§(_loc3_));
               }
               _loc3_++;
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §`R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§6;§());
            if(!(_loc1_ && this))
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr153:
                     while(true)
                     {
                        §§push(this.§=!Q§);
                        addr134:
                        while(true)
                        {
                           §§push(§§pop() == null);
                        }
                     }
                  }
                  addr152:
               }
               while(true)
               {
                  loop5:
                  while(!§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§&!k§.§`R§());
                        if(!(_loc2_ || _loc1_))
                        {
                           continue loop5;
                        }
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr153);
                  }
                  addr138:
                  return;
               }
            }
         }
         §§goto(addr130);
      }
   }
}
