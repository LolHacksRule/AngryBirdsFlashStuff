package §=!<§
{
   import §9!2§.§8[§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §1!1§ extends EventDispatcher
   {
       
      
      private var §'!G§:String = "";
      
      private var §+!B§:String;
      
      private var §%U§:URLLoader;
      
      private var §+j§:Dictionary;
      
      private var §else§:String = null;
      
      private var §&V§:String = null;
      
      private var §2!§:String = null;
      
      private var §7!A§:Boolean;
      
      private var §=!E§:§8[§;
      
      private var §;u§:§>a§;
      
      private var §'!-§:Vector.<§>a§>;
      
      private var §>A§:String = "pak";
      
      private var §=f§:Boolean = true;
      
      private var §61§:int = 1;
      
      public function §1!1§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§+j§ = new Dictionary();
         }
         loop0:
         while(true)
         {
            this.§'!-§ = new Vector.<§>a§>();
            while(true)
            {
               super();
               continue loop0;
               addr83:
               loop3:
               while(_loc5_ || param3)
               {
                  this.§+!B§ = param1;
                  do
                  {
                     this.§=f§ = param3;
                     while(true)
                     {
                        if(_loc5_ || param3)
                        {
                           addr66:
                           if(_loc6_ && param1)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop0;
                  }
                  while(_loc6_ && param3);
                  
                  return;
               }
            }
         }
      }
      
      public function get textureManager() : §>a§
      {
         return this.§;u§;
      }
      
      public function §"T§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1);
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§+j§[param1] == null);
         if(!(_loc3_ && param1))
         {
            return !§§pop();
         }
      }
      
      private function §6!Y§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§>a§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§'!-§.length)
         {
            _loc3_ = this.§'!-§[_loc2_];
            if(!_loc4_)
            {
               if(_loc3_.id != param1)
               {
                  while(true)
                  {
                     _loc2_++;
                     if(!_loc5_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                        }
                        break;
                     }
                     if(_loc4_)
                     {
                        while(true)
                        {
                           this.§else§ = param1;
                           while(true)
                           {
                              this.§'!-§.splice(_loc2_,1);
                           }
                        }
                        do
                        {
                           if(!(_loc5_ || _loc2_))
                           {
                              continue;
                           }
                        }
                        while(!_loc5_);
                        
                     }
                     else
                     {
                        addr109:
                     }
                     if(false)
                     {
                        §§goto(addr41);
                     }
                     continue loop0;
                     this.§'!-§.unshift(this.§;u§);
                     break;
                  }
                  §§goto(addr70);
               }
               while(true)
               {
                  this.§;u§ = _loc3_;
                  §§goto(addr109);
               }
            }
            addr70:
            addr41:
            return true;
         }
         return false;
      }
      
      public function §9k§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!(_loc2_ && _loc3_))
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
                  §§push(this.§`!R§());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§push(this.§1!A§());
                           while(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§"T§(param1));
                                 continue loop2;
                              }
                              if(_loc3_ || _loc3_)
                              {
                                 addr20:
                                 return;
                              }
                              §§goto(addr184);
                           }
                           addr173:
                        }
                        addr174:
                        if(!(_loc2_ && _loc3_))
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                     §§goto(addr139);
                  }
               }
               this.§2!§ = param1;
               addr184:
               return;
               addr161:
               while(true)
               {
                  §§push(param1);
                  if(_loc2_ && _loc2_)
                  {
                     continue loop0;
                  }
                  §§goto(addr133);
                  §§push(§§pop() == this.§else§);
               }
            }
         }
         §§goto(addr161);
      }
      
      private function §1T§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = "";
         if(!_loc3_)
         {
            §§push(this.§'!G§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr192:
                           do
                           {
                              §§push(this.§'!G§);
                              if(!(_loc4_ || param1))
                              {
                                 continue loop0;
                              }
                              §§push(§§pop().length > 0);
                              if(_loc3_)
                              {
                                 continue;
                              }
                           }
                           while(_loc4_);
                           
                           continue loop1;
                        }
                        addr191:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              while(true)
                              {
                                 §§push("?version=" + this.§'!G§);
                                 continue loop0;
                              }
                              addr153:
                           }
                           else
                           {
                              addr166:
                              while(true)
                              {
                              }
                              addr166:
                           }
                        }
                        while(true)
                        {
                           this.§&V§ = param1;
                           while(true)
                           {
                              this.§%U§ = new URLLoader();
                              while(_loc4_)
                              {
                                 this.§%U§.dataFormat = URLLoaderDataFormat.BINARY;
                                 while(!_loc3_)
                                 {
                                    this.§%U§.addEventListener(Event.COMPLETE,this.onComplete);
                                    loop8:
                                    while(true)
                                    {
                                       this.§%U§.addEventListener(IOErrorEvent.IO_ERROR,this.§,T§);
                                       while(true)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             this.§%U§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,T§);
                                             continue;
                                          }
                                          continue loop8;
                                       }
                                       §§goto(addr192);
                                    }
                                 }
                                 §§goto(addr166);
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 §§goto(addr72);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr191);
               }
            }
         }
         §§goto(addr153);
      }
      
      private function §`!R§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(Boolean(this.§%U§));
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     addr43:
                     §§push(this.§7!A§);
                     if(_loc1_ || this)
                     {
                        return Boolean(§§pop());
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      private function §1!A§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§%U§)
            {
               loop0:
               while(true)
               {
                  this.§%U§.removeEventListener(Event.COMPLETE,this.onComplete);
                  while(true)
                  {
                     this.§%U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§,T§);
                     while(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        this.§%U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,T§);
                        loop3:
                        while(true)
                        {
                           this.§%U§.close();
                           loop4:
                           while(true)
                           {
                              this.§%U§ = null;
                              while(_loc1_)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        if(_loc1_ || _loc1_)
                        {
                           §§goto(addr76);
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this.§7!A§);
               loop7:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        §§goto(addr49);
                     }
                     else
                     {
                        while(true)
                        {
                        }
                        addr77:
                     }
                  }
                  while(true)
                  {
                     §§push(true);
                     if(!(_loc1_ || this))
                     {
                        break loop7;
                     }
                     continue loop7;
                  }
               }
               addr76:
               return false;
            }
         }
         §§goto(addr77);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%U§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§%U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§,T§);
            }
            addr105:
         }
         while(true)
         {
            this.§%U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,T§);
            loop2:
            while(!_loc3_)
            {
               this.§+j§[this.§&V§] = this.§%U§.data;
               loop3:
               while(true)
               {
                  this.§%U§ = null;
                  while(true)
                  {
                     if(_loc2_ || this)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop3;
                  }
                  continue loop2;
               }
            }
            §§goto(addr105);
         }
      }
      
      private function §"P§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§>a§ = null;
         if(_loc4_)
         {
            this.§7!A§ = true;
            if(_loc4_)
            {
               addr26:
               this.§&V§ = param1;
            }
            while(this.§'!-§.length >= this.§61§)
            {
               _loc3_ = this.§'!-§.pop();
               if(!(_loc5_ && param1))
               {
                  _loc3_.dispose();
               }
            }
            if(_loc4_ || param2)
            {
               §§push(this.§=!E§);
               if(_loc4_ || param2)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr124:
                        §§push(this.§=!E§);
                        if(_loc4_ || _loc3_)
                        {
                           §§pop().dispose();
                           if(!_loc5_)
                           {
                              addr155:
                              this.§;u§ = new §>a§(param1);
                           }
                           loop1:
                           while(true)
                           {
                              this.§'!-§.unshift(this.§;u§);
                              addr154:
                              while(true)
                              {
                                 this.§=!E§ = new §8[§();
                                 addr135:
                                 while(_loc4_)
                                 {
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,this.§7A§);
                           §§goto(addr129);
                        }
                        addr124:
                     }
                     while(true)
                     {
                        §§goto(addr124);
                     }
                  }
                  §§goto(addr155);
               }
               §§goto(addr124);
            }
            addr129:
            while(true)
            {
               §§push(this.§=!E§);
               if(_loc5_)
               {
                  continue loop5;
               }
               §§pop().§'#§(this.§+j§[this.§&V§],param2);
               if(!(_loc4_ || this))
               {
                  continue;
               }
               if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§goto(addr154);
               }
               §§goto(addr135);
            }
            return;
         }
         §§goto(addr26);
      }
      
      private function §,T§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%U§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§%U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§,T§);
               loop1:
               while(true)
               {
                  this.§%U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,T§);
                  loop2:
                  while(true)
                  {
                     this.§%U§.close();
                     while(true)
                     {
                        this.§%U§ = null;
                        loop4:
                        while(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              continue loop2;
                              while(true)
                              {
                                 dispatchEvent(new Event(Event.CANCEL));
                                 if(!_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           continue loop1;
                           return;
                        }
                     }
                  }
               }
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               this.§&V§ = null;
               §§goto(addr39);
            }
         }
         §§goto(addr39);
      }
      
      private function §7A§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            this.§7!A§ = false;
         }
         while(true)
         {
            §§push(this.§=!E§);
            if(_loc4_ && this)
            {
               break;
            }
            §§pop().removeEventListener(Event.COMPLETE,this.§7A§);
            while(!_loc4_)
            {
               if(!this.§2!§)
               {
                  §§push(this.§=!E§);
               }
               do
               {
                  this.§9k§(this.§2!§);
                  this.§2!§ = null;
               }
               while(_loc4_);
               
               if(_loc5_)
               {
                  return;
               }
            }
         }
         §§push(§§pop().§1!=§.§[J§);
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
                  this.§28§();
               }
               if(_loc5_)
               {
                  break;
               }
               loop4:
               while(!(_loc5_ || _loc3_))
               {
                  while(true)
                  {
                     _loc3_++;
                     continue loop4;
                  }
               }
               continue;
            }
            this.§;u§.§?h§(this.§=!E§.§1!=§.§^m§(_loc3_));
            §§goto(addr144);
         }
      }
      
      public function §28§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§`!R§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     addr142:
                     while(true)
                     {
                        §§pop();
                        addr143:
                        while(true)
                        {
                           §§push(this.§=!E§);
                           addr117:
                           while(true)
                           {
                              §§push(§§pop() == null);
                           }
                        }
                     }
                     addr142:
                  }
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§;u§.§28§());
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                           if(!_loc1_)
                           {
                              if(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(_loc1_ && this)
                                       {
                                          break loop2;
                                       }
                                       §§push(this.§=!E§);
                                       if(!(_loc2_ || this))
                                       {
                                          continue loop1;
                                       }
                                       §§pop().dispose();
                                       loop7:
                                       while(true)
                                       {
                                          this.§=!E§ = null;
                                          loop8:
                                          while(true)
                                          {
                                             this.§else§ = this.§&V§;
                                             while(true)
                                             {
                                                this.§&V§ = null;
                                                while(_loc2_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      dispatchEvent(new Event(Event.COMPLETE));
                                                      if(!_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         continue loop3;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                       addr113:
                                    }
                                    §§goto(addr113);
                                 }
                                 return;
                              }
                              continue loop0;
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr143);
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr143);
                  }
                  return;
               }
               §§goto(addr142);
            }
         }
         §§goto(addr113);
      }
   }
}
