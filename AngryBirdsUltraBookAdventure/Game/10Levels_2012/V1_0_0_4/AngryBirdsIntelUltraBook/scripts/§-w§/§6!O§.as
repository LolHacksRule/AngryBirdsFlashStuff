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
         if(!_loc5_)
         {
            this.§9![§ = new Dictionary();
            while(true)
            {
               this.§5T§ = new Vector.<§,Q§>();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§6!4§ = param2;
                     while(!_loc5_)
                     {
                        this.§,!o§ = param1;
                        while(!(_loc5_ && param3))
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function get textureManager() : §,Q§
      {
         return this.§;!t§;
      }
      
      public function §@!s§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§9![§[param1] == null);
         if(!_loc3_)
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
                  loop1:
                  do
                  {
                     _loc2_++;
                     if(_loc4_)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        if(false)
                        {
                           §§goto(addr41);
                        }
                        continue loop0;
                     }
                     addr101:
                     while(true)
                     {
                        this.§5T§.unshift(this.§;!t§);
                        break loop1;
                     }
                  }
                  while(_loc5_ || _loc3_);
                  
                  loop5:
                  while(true)
                  {
                     if(!(_loc4_ && this))
                     {
                        addr75:
                        if(_loc5_)
                        {
                           addr77:
                           if(_loc5_ || _loc2_)
                           {
                              break loop0;
                           }
                           addr111:
                           while(true)
                           {
                              this.§;!t§ = _loc3_;
                              §§goto(addr77);
                           }
                        }
                        while(true)
                        {
                           this.§8!&§ = param1;
                        }
                        §§goto(addr77);
                     }
                     while(true)
                     {
                        this.§5T§.splice(_loc2_,1);
                        §§goto(addr101);
                        continue loop5;
                     }
                     §§goto(addr75);
                  }
               }
               §§goto(addr111);
            }
            break;
         }
         addr41:
         return true;
      }
      
      public function §<!I§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
                     §§push(this.§2Q§());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(!(_loc2_ && _loc2_))
                           {
                              §§push(this.§ k§());
                              loop5:
                              while(§§pop())
                              {
                                 loop7:
                                 while(_loc3_ || param1)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    if(!§§pop())
                                    {
                                       this.§4!p§(param1);
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop0;
                                                   addr172:
                                                   this.§`!s§(param1);
                                                }
                                                continue loop1;
                                                addr175:
                                             }
                                             else
                                             {
                                                addr41:
                                             }
                                          }
                                          else
                                          {
                                             addr24:
                                             addr108:
                                          }
                                          return;
                                       }
                                       addr49:
                                       while(true)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   break loop5;
                                                }
                                                §§goto(addr24);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   continue loop7;
                                                }
                                                addr141:
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(_loc2_ && _loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                §§goto(addr172);
                                             }
                                             addr155:
                                          }
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr155);
                                 }
                              }
                              this.§0!%§ = param1;
                              return;
                           }
                           continue loop2;
                        }
                        §§goto(addr141);
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      private function §4!p§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = "";
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§6!4§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc3_)
               {
                  §§push(!§§pop());
                  if(_loc3_ || param1)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop8:
                           while(true)
                           {
                              §§push(this.§6!4§);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop().length > 0);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push("?version=");
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§push(§§pop() + this.§6!4§);
                                          }
                                          §§push(§§pop());
                                          while(!_loc4_)
                                          {
                                             _loc2_ = §§pop();
                                             continue loop8;
                                          }
                                          continue loop0;
                                          addr187:
                                       }
                                       while(true)
                                       {
                                       }
                                       addr190:
                                    }
                                    while(true)
                                    {
                                       this.§9!+§ = param1;
                                       loop5:
                                       while(true)
                                       {
                                          this.§'D§ = new URLLoader();
                                          while(_loc3_)
                                          {
                                             while(true)
                                             {
                                                this.§'D§.dataFormat = URLLoaderDataFormat.BINARY;
                                                continue loop5;
                                             }
                                             loop12:
                                             while(!(_loc4_ && this))
                                             {
                                                this.§'D§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      addr69:
                                                      if(!(_loc3_ || _loc2_))
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   addr111:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         this.§'D§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                                         continue loop12;
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                                continue loop5;
                                             }
                                          }
                                          §§goto(addr190);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr187);
                           }
                        }
                        addr207:
                     }
                     §§goto(addr156);
                  }
               }
               §§goto(addr207);
            }
         }
         §§goto(addr135);
      }
      
      private function §2Q§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(Boolean(this.§'D§));
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§pop();
                     addr64:
                     §§push(this.§+!x§);
                     if(_loc2_ || _loc1_)
                     {
                     }
                     §§goto(addr74);
                  }
                  §§push(Boolean(§§pop()));
               }
            }
            addr74:
            return §§pop();
         }
         §§goto(addr64);
      }
      
      private function § k§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§'D§)
            {
               if(_loc1_ || _loc2_)
               {
                  this.§'D§.removeEventListener(Event.COMPLETE,this.onComplete);
                  addr142:
                  loop5:
                  while(true)
                  {
                     this.§'D§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                     addr124:
                     while(true)
                     {
                        this.§'D§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                        addr115:
                        while(true)
                        {
                           this.§'D§.close();
                           addr96:
                           while(true)
                           {
                              this.§'D§ = null;
                              addr89:
                              addr91:
                              while(_loc2_)
                              {
                                 continue loop5;
                              }
                           }
                        }
                        continue loop5;
                     }
                  }
                  addr142:
               }
               §§goto(addr142);
            }
            while(true)
            {
               §§push(this.§+!x§);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              if(!(_loc2_ && this))
                              {
                                 §§push(false);
                                 break;
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr96);
                     }
                     else if(!(_loc2_ && _loc1_))
                     {
                        addr24:
                        §§push(true);
                        if(_loc1_ || _loc2_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr24);
               }
               break;
               §§goto(addr91);
            }
            return §§pop();
         }
         §§goto(addr142);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'D§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§'D§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               while(!_loc2_)
               {
                  this.§'D§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  while(true)
                  {
                     this.§9![§[this.§9!+§] = this.§'D§.data;
                     §§goto(addr78);
                  }
               }
            }
         }
         addr78:
         while(true)
         {
            this.§'D§ = null;
            do
            {
               this.§7!j§(this.§9!+§,true);
            }
            while(!_loc3_);
            
            if(_loc3_)
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  continue loop1;
               }
               continue loop2;
            }
         }
      }
      
      private function §7!j§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§,Q§ = null;
         if(!(_loc4_ && param1))
         {
            this.§+!x§ = true;
            if(_loc5_ || this)
            {
               addr37:
               this.§9!+§ = param1;
            }
            while(this.§5T§.length >= this.§4!o§)
            {
               _loc3_ = this.§5T§.pop();
               if(!(_loc4_ && _loc3_))
               {
                  _loc3_.dispose();
               }
            }
            if(_loc5_)
            {
               §§push(this.§2z§);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(this.§2z§);
                        if(!(_loc4_ && param1))
                        {
                           §§pop().dispose();
                           if(_loc5_)
                           {
                              addr176:
                              this.§;!t§ = new §,Q§(param1);
                              loop5:
                              while(true)
                              {
                                 this.§5T§.unshift(this.§;!t§);
                                 loop6:
                                 while(true)
                                 {
                                    this.§2z§ = new §[P§();
                                    addr154:
                                    while(true)
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          addr161:
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              addr181:
                              addr93:
                           }
                           while(true)
                           {
                              §§push(this.§2z§);
                              addr133:
                              loop7:
                              while(true)
                              {
                                 §§pop().addEventListener(Event.COMPLETE,this.§>e§);
                                 addr138:
                                 while(true)
                                 {
                                    §§push(this.§2z§);
                                    if(!(_loc4_ && param2))
                                    {
                                       break;
                                    }
                                    continue loop7;
                                 }
                              }
                              §§goto(addr161);
                           }
                        }
                        while(true)
                        {
                           §§pop().§get §(this.§9![§[this.§9!+§],param2);
                           if(_loc4_ && param2)
                           {
                              continue;
                           }
                           if(_loc5_ || _loc3_)
                           {
                              break;
                           }
                           §§goto(addr154);
                        }
                        return;
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr176);
               }
               §§goto(addr133);
            }
            §§goto(addr93);
         }
         §§goto(addr37);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'D§.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         loop0:
         while(true)
         {
            this.§'D§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            do
            {
               this.§'D§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               while(true)
               {
                  this.§'D§.close();
                  addr74:
                  while(_loc3_ || _loc3_)
                  {
                     continue loop0;
                  }
               }
            }
            while(_loc2_ && param1);
            
            return;
         }
      }
      
      private function §>e§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§+!x§ = false;
            §§push(this.§2z§);
            if(!_loc4_)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§>e§);
               loop1:
               while(this.§0!%§)
               {
                  loop2:
                  do
                  {
                     this.§<!I§(this.§0!%§);
                     while(!_loc4_)
                     {
                        this.§0!%§ = null;
                        if(_loc5_ || _loc2_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(!_loc5_);
                  
                  return;
               }
               §§push(this.§2z§);
               addr73:
            }
            §§push(§§pop().§`Q§.§2P§);
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
                     if(_loc5_ || _loc2_)
                     {
                        this.§]!b§();
                        break;
                     }
                     _loc3_++;
                     continue;
                     addr144:
                  }
                  break;
               }
               this.§;!t§.§9!$§(this.§2z§.§`Q§.§@y§(_loc3_));
               §§goto(addr144);
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function §]!b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§2Q§());
            if(_loc2_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr163:
                     while(true)
                     {
                        §§push(this.§2z§);
                        addr118:
                        while(true)
                        {
                           §§push(§§pop() == null);
                           addr120:
                           while(!_loc1_)
                           {
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                     addr142:
                     while(!(_loc1_ && _loc1_))
                     {
                        while(true)
                        {
                           §§push(this.§;!t§.§]!b§());
                           if(_loc1_ && _loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr83);
               }
               return;
            }
         }
         §§goto(addr77);
      }
   }
}
