package §6!D§
{
   import §]!>§.§1"%§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §;";§ extends EventDispatcher
   {
       
      
      private var §;!k§:String = "";
      
      private var §&t§:String;
      
      private var § !4§:URLLoader;
      
      private var §[!C§:Dictionary;
      
      private var §>!j§:String = null;
      
      private var §#!]§:String = null;
      
      private var §;!g§:String = null;
      
      private var §9#§:Boolean;
      
      private var §[O§:§1"%§;
      
      private var § !@§:§0Y§;
      
      private var §5!t§:Vector.<§0Y§>;
      
      private var §%8§:String = "pak";
      
      private var §6N§:Boolean = true;
      
      private var §9!B§:int = 1;
      
      public function §;";§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§[!C§ = new Dictionary();
            loop0:
            while(true)
            {
               this.§5!t§ = new Vector.<§0Y§>();
               loop1:
               do
               {
                  super();
                  while(true)
                  {
                     this.§;!k§ = param2;
                     loop3:
                     while(_loc5_ || this)
                     {
                        this.§&t§ = param1;
                        loop4:
                        do
                        {
                           this.§6N§ = param3;
                           while(_loc5_)
                           {
                              continue loop0;
                              this.§9!B§ = Math.max(1,param4);
                              if(!(_loc6_ && this))
                              {
                                 continue loop4;
                              }
                           }
                           continue loop3;
                        }
                        while(_loc6_ && param2);
                        
                        continue loop1;
                     }
                  }
               }
               while(_loc6_);
               
            }
         }
      }
      
      public function get textureManager() : §0Y§
      {
         return this.§ !@§;
      }
      
      public function §9!c§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§[!C§[param1] == null);
         if(_loc3_)
         {
            return !§§pop();
         }
      }
      
      private function §'C§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0Y§ = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§5!t§.length)
            {
               return false;
            }
            _loc3_ = this.§5!t§[_loc2_];
            if(_loc4_ || _loc2_)
            {
               if(_loc3_.id != param1)
               {
                  loop1:
                  do
                  {
                     _loc2_++;
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           if(true)
                           {
                              continue loop0;
                           }
                        }
                        else
                        {
                           loop5:
                           while(true)
                           {
                              this.§>!j§ = param1;
                              addr103:
                              addr91:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    break loop0;
                                 }
                                 addr110:
                                 while(true)
                                 {
                                    this.§ !@§ = _loc3_;
                                    continue loop5;
                                 }
                                 break loop1;
                              }
                           }
                        }
                        return true;
                     }
                     while(true)
                     {
                        this.§5!t§.unshift(this.§ !@§);
                        break loop1;
                     }
                  }
                  while(!(_loc5_ && _loc3_));
                  
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        §§goto(addr103);
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr110);
            }
            break;
         }
         while(true)
         {
            this.§5!t§.splice(_loc2_,1);
            §§goto(addr98);
         }
      }
      
      public function §!!_§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc2_ && this))
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
                  §§push(this.§6I§());
                  addr160:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§^!%§());
                           addr163:
                           addr164:
                           while(§§pop())
                           {
                           }
                           addr164:
                           while(true)
                           {
                              this.§;!g§ = param1;
                              §§goto(addr167);
                           }
                        }
                        addr161:
                     }
                     loop5:
                     while(true)
                     {
                        §§push(this.§9!c§(param1));
                        addr121:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.§0"<§(param1);
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       addr96:
                                    }
                                 }
                                 addr45:
                              }
                           }
                           if(!_loc2_)
                           {
                              if(_loc2_ && _loc3_)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr164);
                                 }
                                 break;
                              }
                              this.§'C§(param1);
                           }
                           continue loop0;
                           return;
                        }
                        addr167:
                        while(_loc2_)
                        {
                           continue loop1;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr164);
      }
      
      private function §0"<§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = "";
         if(_loc3_ || _loc2_)
         {
            §§push(this.§;!k§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc3_ || this)
                  {
                     if(§§pop())
                     {
                        loop9:
                        while(true)
                        {
                           §§pop();
                           loop8:
                           while(true)
                           {
                              §§push(this.§;!k§);
                              if(!_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop().length > 0);
                                 if(_loc3_)
                                 {
                                    addr175:
                                    if(_loc3_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push("?version=");
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop() + this.§;!k§);
                                                }
                                                §§push(§§pop());
                                                addr186:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   addr187:
                                                   while(true)
                                                   {
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                             addr179:
                                          }
                                          while(true)
                                          {
                                             this.§#!]§ = param1;
                                             loop7:
                                             while(true)
                                             {
                                                if(_loc4_ && param1)
                                                {
                                                   continue loop8;
                                                }
                                                while(true)
                                                {
                                                   this.§ !4§ = new URLLoader();
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          §§goto(addr175);
                                       }
                                       addr177:
                                    }
                                    continue loop1;
                                 }
                                 continue loop9;
                              }
                              §§goto(addr186);
                           }
                           continue loop0;
                        }
                        addr202:
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr202);
               }
            }
         }
         §§goto(addr152);
      }
      
      private function §6I§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(Boolean(this.§ !4§));
            if(!(_loc1_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr63:
                     §§pop();
                     addr64:
                     §§push(this.§9#§);
                     if(_loc1_)
                     {
                     }
                     §§goto(addr69);
                  }
                  §§push(Boolean(§§pop()));
               }
               addr69:
               return §§pop();
            }
            §§goto(addr63);
         }
         §§goto(addr64);
      }
      
      private function §^!%§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§ !4§)
            {
               loop0:
               while(true)
               {
                  this.§ !4§.removeEventListener(Event.COMPLETE,this.onComplete);
                  addr137:
                  while(true)
                  {
                     this.§ !4§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     addr126:
                     while(true)
                     {
                        this.§ !4§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr31);
         }
         §§goto(addr79);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§ !4§.removeEventListener(Event.COMPLETE,this.onComplete);
            loop0:
            while(true)
            {
               this.§ !4§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               while(true)
               {
                  this.§ !4§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  while(true)
                  {
                     this.§[!C§[this.§#!]§] = this.§ !4§.data;
                     addr76:
                     while(_loc3_)
                     {
                        continue loop0;
                     }
                  }
                  addr59:
                  if(!(_loc2_ && param1))
                  {
                     loop5:
                     while(true)
                     {
                        this.§0!p§(this.§#!]§,true);
                        if(!(_loc2_ && _loc3_))
                        {
                           break;
                        }
                        addr57:
                        while(_loc3_)
                        {
                           §§goto(addr59);
                           continue loop5;
                        }
                        §§goto(addr76);
                     }
                     return;
                     addr66:
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      private function §0!p§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0Y§ = null;
         if(_loc4_ || this)
         {
            this.§9#§ = true;
            if(!_loc5_)
            {
               this.§#!]§ = param1;
            }
         }
         while(this.§5!t§.length >= this.§9!B§)
         {
            _loc3_ = this.§5!t§.pop();
            if(!_loc5_)
            {
               _loc3_.dispose();
            }
         }
         if(!_loc5_)
         {
            §§push(this.§[O§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     §§push(this.§[O§);
                     if(_loc4_)
                     {
                        §§pop().dispose();
                        if(_loc4_ || param1)
                        {
                           addr155:
                           this.§ !@§ = new §0Y§(param1);
                           while(true)
                           {
                              this.§5!t§.unshift(this.§ !@§);
                              loop4:
                              while(!(_loc5_ && this))
                              {
                                 while(true)
                                 {
                                    this.§[O§ = new §1"%§();
                                    while(true)
                                    {
                                       §§push(this.§[O§);
                                       §§goto(addr119);
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           addr82:
                        }
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr154);
               }
               §§goto(addr155);
            }
            addr119:
            loop5:
            while(true)
            {
               §§pop().addEventListener(Event.COMPLETE,this.§!M§);
               while(true)
               {
                  §§push(this.§[O§);
                  if(_loc5_ && this)
                  {
                     break;
                  }
                  §§pop().§,!T§(this.§[!C§[this.§#!]§],param2);
                  if(_loc4_)
                  {
                     if(!_loc5_)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           break loop5;
                        }
                        continue loop4;
                     }
                     continue loop2;
                  }
               }
            }
            return;
         }
         §§goto(addr82);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ !4§.removeEventListener(Event.COMPLETE,this.onComplete);
            loop0:
            while(true)
            {
               this.§ !4§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               while(true)
               {
                  this.§ !4§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  continue loop0;
                  loop4:
                  for(; !(_loc2_ && param1); if(_loc2_ && param1)
                  {
                     continue;
                  },if(!_loc3_)
                  {
                     continue loop0;
                  },§§goto(addr47))
                  {
                     this.§#!]§ = null;
                     while(!(_loc2_ && _loc3_))
                     {
                        dispatchEvent(new Event(Event.CANCEL));
                        if(_loc3_ || this)
                        {
                           continue loop4;
                        }
                     }
                     while(true)
                     {
                        this.§ !4§ = null;
                        continue loop4;
                        §§goto(addr62);
                     }
                     addr62:
                     return;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §!M§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            this.§9#§ = false;
            loop4:
            while(true)
            {
               §§push(this.§[O§);
               if(_loc5_ || this)
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§!M§);
                  if(this.§;!g§)
                  {
                     this.§!!_§(this.§;!g§);
                     addr63:
                     while(true)
                     {
                        this.§;!g§ = null;
                        if(_loc5_ || param1)
                        {
                           return;
                        }
                        continue loop4;
                        §§goto(addr63);
                     }
                     addr47:
                  }
                  else
                  {
                     addr98:
                     §§push(this.§[O§);
                  }
               }
               §§push(§§pop().§1S§.§2!l§);
               if(_loc5_ || this)
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
                        this.§9!F§();
                     }
                     if(_loc5_ || this)
                     {
                        break;
                     }
                  }
                  else
                  {
                     this.§ !@§.§0!g§(this.§[O§.§1S§.§59§(_loc3_));
                     while(true)
                     {
                        _loc3_++;
                     }
                     addr159:
                  }
                  while(!_loc5_)
                  {
                     §§goto(addr159);
                  }
               }
               return;
            }
         }
         else if(false)
         {
            §§goto(addr47);
         }
         §§goto(addr98);
      }
      
      public function §9!F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§6I§());
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
                        loop3:
                        while(true)
                        {
                           §§push(this.§[O§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              addr107:
                              §§push(this.§[O§);
                              if(!(_loc2_ || this))
                              {
                                 continue;
                              }
                              §§pop().dispose();
                              loop9:
                              while(true)
                              {
                                 this.§[O§ = null;
                                 loop10:
                                 while(_loc2_)
                                 {
                                    this.§>!j§ = this.§#!]§;
                                    while(_loc2_)
                                    {
                                       this.§#!]§ = null;
                                       loop12:
                                       while(!_loc1_)
                                       {
                                          if(!_loc1_)
                                          {
                                             if(!_loc1_)
                                             {
                                                while(true)
                                                {
                                                   dispatchEvent(new Event(Event.COMPLETE));
                                                   if(!_loc1_)
                                                   {
                                                      §§goto(addr20);
                                                   }
                                                   continue loop12;
                                                }
                                                continue;
                                             }
                                             continue loop9;
                                          }
                                          continue loop10;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this.§ !@§.§9!F§());
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       if(_loc2_)
                                       {
                                          if(_loc1_ && this)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc1_)
                                          {
                                             continue loop0;
                                          }
                                          if(§§pop())
                                          {
                                             break loop10;
                                          }
                                       }
                                       continue loop2;
                                       addr20:
                                       return;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§goto(addr70);
                                       }
                                       §§goto(addr125);
                                    }
                                    addr70:
                                 }
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       addr125:
                                       return;
                                    }
                                    if(_loc1_ && _loc2_)
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr107);
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr124);
                  }
               }
            }
         }
         §§goto(addr44);
      }
   }
}
