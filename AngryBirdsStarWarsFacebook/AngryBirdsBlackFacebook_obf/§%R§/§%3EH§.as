package §%R§
{
   import §7!F§.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §>H§ extends EventDispatcher
   {
       
      
      private var §;#[§:String = "";
      
      private var §8#!§:String;
      
      private var §-"J§:Dictionary;
      
      private var §,N§:Vector.<String>;
      
      private var §-"E§:String = null;
      
      private var §5!p§:String = null;
      
      private var §<"N§:Array;
      
      private var §&"G§:String = null;
      
      private var §!!g§:Array;
      
      private var §&2§:Array;
      
      private var §<+§:Boolean;
      
      private var §?w§:String = null;
      
      private var §<"A§:Array;
      
      private var §+!&§:URLLoader;
      
      protected var §9"T§:§@"F§;
      
      protected var §6V§:§7#5§;
      
      protected var §1A§:Vector.<§7#5§>;
      
      private var §;"-§:String = "pak";
      
      private var §!"=§:Boolean = true;
      
      private var §7"x§:int = 1;
      
      public function §>H§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§-"J§ = new Dictionary();
            loop0:
            while(true)
            {
               this.§,N§ = new Vector.<String>();
               loop1:
               while(true)
               {
                  this.§<"N§ = [];
                  addr130:
                  while(true)
                  {
                     this.§!!g§ = [];
                     loop3:
                     while(true)
                     {
                        this.§&2§ = [];
                        while(true)
                        {
                           this.§<"A§ = [];
                           addr111:
                           while(_loc6_)
                           {
                              if(_loc6_)
                              {
                                 this.§1A§ = new Vector.<§7#5§>();
                                 continue loop3;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  if(_loc6_ || param1)
                  {
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§;#[§ = param2;
            §§goto(addr83);
         }
      }
      
      public function get textureManager() : §7#5§
      {
         return this.§6V§;
      }
      
      private function §?#@§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7#5§ = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§1A§.length)
            {
               return false;
            }
            _loc3_ = this.§1A§[_loc2_];
            if(_loc4_)
            {
               if(_loc3_.id != param1)
               {
                  loop1:
                  do
                  {
                     _loc2_++;
                     if(!(_loc4_ || this))
                     {
                        continue;
                     }
                     if(!(_loc5_ && _loc2_))
                     {
                        if(!(_loc5_ && param1))
                        {
                           if(!(_loc4_ || _loc2_))
                           {
                              this.§6V§ = _loc3_;
                           }
                           else
                           {
                              addr110:
                           }
                           if(false)
                           {
                              §§goto(addr74);
                           }
                           continue loop0;
                           break loop0;
                        }
                        while(true)
                        {
                           this.§1A§.splice(_loc2_,1);
                           break loop0;
                        }
                        addr93:
                        addr74:
                        return true;
                        addr105:
                     }
                     while(true)
                     {
                        this.§1A§.unshift(this.§6V§);
                        break loop1;
                     }
                  }
                  while(!(_loc5_ && _loc2_));
                  
                  while(true)
                  {
                     if(_loc5_)
                     {
                        break loop0;
                     }
                     §§goto(addr93);
                  }
               }
               §§goto(addr110);
            }
            break;
         }
         while(true)
         {
            this.§-"E§ = param1;
            §§goto(addr105);
         }
      }
      
      public function §1#X§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§-"J§[param1] == null);
         if(!(_loc2_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public function §!m§(param1:Array) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:* = param1;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ && param1)
               {
                  addr67:
                  break;
               }
               §§push(this.§1#X§(_loc2_));
               if(!_loc5_)
               {
                  return §§pop();
               }
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         §§goto(addr67);
         §§push(false);
      }
      
      public function §'!t§(param1:String, param2:Array = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §§push(param2);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  addr28:
                  param2 = [param1];
               }
               else
               {
                  addr34:
                  param2 = param2.concat();
               }
               var _loc3_:int = param2.length - 1;
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        if(§§pop() < 0)
                        {
                           loop1:
                           while(!_loc4_)
                           {
                              §§push(param1);
                              if(_loc5_ || param1)
                              {
                                 §§push(§§pop().toLowerCase());
                              }
                              loop2:
                              while(true)
                              {
                                 param1 = §§pop();
                                 while(true)
                                 {
                                    §§push(this.isLoading());
                                    loop4:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(this.§3"M§());
                                             while(§§pop())
                                             {
                                                while(true)
                                                {
                                                   this.§5!p§ = param1;
                                                   addr204:
                                                   while(true)
                                                   {
                                                      §§push(this.§!m§(param2));
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                             addr229:
                                          }
                                          addr230:
                                          if(!_loc4_)
                                          {
                                             this.§?w§ = param1;
                                             this.§<"A§ = param2.concat();
                                             return;
                                             addr220:
                                             addr235:
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr200);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(§§pop() == this.§-"E§);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(_loc5_)
                                       {
                                          if(!§§pop())
                                          {
                                             §§goto(addr154);
                                          }
                                          §§goto(addr101);
                                       }
                                       §§goto(addr229);
                                    }
                                    §§goto(addr154);
                                 }
                              }
                           }
                           continue;
                        }
                        param2[_loc3_] = param2[_loc3_].toLowerCase();
                        §§goto(addr282);
                     }
                     §§goto(addr260);
                  }
                  §§goto(addr261);
               }
            }
            §§goto(addr34);
         }
         §§goto(addr28);
      }
      
      private function §?!l§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         if(!(_loc5_ && _loc2_))
         {
            this.§&2§ = [];
         }
         for each(_loc2_ in param1)
         {
            if(_loc6_ || this)
            {
               if(!this.§1#X§(_loc2_))
               {
                  if(!(_loc5_ && this))
                  {
                     this.§&2§.push(_loc2_);
                  }
               }
            }
         }
      }
      
      private function §5A§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<"N§ = param1.concat();
            do
            {
               this.§?!l§(param1);
               do
               {
                  this.§&"I§();
               }
               while(_loc3_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      private function §&"I§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§&2§.length == 0)
            {
               if(!(_loc4_ && _loc1_))
               {
                  this.§&"G§ = null;
               }
            }
            else
            {
               while(true)
               {
                  this.§&"G§ = this.§&2§.pop();
                  if(!(_loc4_ && this))
                  {
                     addr32:
                     if(false)
                     {
                        break;
                     }
                     var _loc1_:* = "";
                     if(!_loc4_)
                     {
                        §§push(this.§;#[§);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() == null);
                           if(!(_loc4_ && _loc1_))
                           {
                              §§push(!§§pop());
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr151:
                                       §§push(§§pop().length > 0);
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                §§push("?version=" + this.§;#[§);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   _loc1_ = §§pop();
                                                   loop3:
                                                   while(true)
                                                   {
                                                      addr133:
                                                      while(true)
                                                      {
                                                         this.§+!&§ = new URLLoader();
                                                         while(true)
                                                         {
                                                            this.§+!&§.dataFormat = URLLoaderDataFormat.BINARY;
                                                            while(!_loc4_)
                                                            {
                                                               this.§+!&§.addEventListener(Event.COMPLETE,this.§?"E§);
                                                               continue loop3;
                                                               addr90:
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§+!&§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"l§);
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§;#[§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              break loop2;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        continue loop1;
                                                                        addr201:
                                                                     }
                                                                     if(true)
                                                                     {
                                                                        §§push(this.§4"a§(this.§&"G§));
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                        §§goto(addr214);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§+!&§.addEventListener(IOErrorEvent.IO_ERROR,this.§<"l§);
                                                                     }
                                                                  }
                                                                  while(!_loc4_)
                                                                  {
                                                                     §§goto(addr90);
                                                                  }
                                                                  continue loop3;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr178:
                                                }
                                                break;
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr133);
                                          §§goto(addr151);
                                       }
                                       addr214:
                                       var _loc2_:* = §§pop();
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          this.§+!&§.load(new URLRequest(_loc2_ + _loc1_));
                                       }
                                       return true;
                                       §§push(§§pop());
                                       addr161:
                                    }
                                    addr200:
                                 }
                                 else
                                 {
                                    §§goto(addr161);
                                 }
                                 §§goto(addr201);
                              }
                           }
                           §§goto(addr200);
                        }
                     }
                     §§goto(addr97);
                  }
                  else if(_loc3_)
                  {
                     continue;
                  }
               }
               §§goto(addr34);
            }
            addr34:
            return false;
         }
         §§goto(addr32);
      }
      
      protected function §4"a§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§8#!§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop());
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr48);
                  }
                  §§push(§§pop());
               }
               addr48:
               if(_loc4_)
               {
                  addr45:
                  §§pop();
                  §§push("");
               }
               var _loc2_:* = §§pop();
               §§push(_loc2_ + "packages/");
               if(!(_loc3_ && _loc2_))
               {
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc3_ && this))
                     {
                        §§goto(addr80);
                     }
                  }
                  §§goto(addr84);
               }
               addr80:
               §§push(§§pop() + ".");
               if(!_loc3_)
               {
                  addr84:
                  return §§pop() + this.§;"-§;
               }
            }
         }
         §§goto(addr45);
      }
      
      private function isLoading() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(Boolean(this.§+!&§));
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     addr38:
                     §§push(this.§<+§);
                     if(_loc1_ || this)
                     {
                        addr57:
                        return Boolean(§§pop());
                     }
                  }
               }
            }
            §§goto(addr57);
         }
         §§goto(addr38);
      }
      
      private function §3"M§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§+!&§)
            {
               while(true)
               {
                  this.§+!&§.removeEventListener(Event.COMPLETE,this.§?"E§);
                  addr80:
                  loop1:
                  while(true)
                  {
                     addr37:
                     while(true)
                     {
                        this.§+!&§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<"l§);
                        continue loop1;
                     }
                     try
                     {
                        addr81:
                        this.§+!&§.close();
                        if(_loc3_ || _loc2_)
                        {
                           addr103:
                           this.§+!&§ = null;
                           if(!(_loc2_ && this))
                           {
                              §§goto(addr113);
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr140);
                     }
                     catch(e:Error)
                     {
                     }
                     §§goto(addr103);
                  }
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  this.§+!&§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"l§);
                  if(_loc3_)
                  {
                     if(false)
                     {
                        §§goto(addr37);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr45);
               }
            }
            addr113:
            §§push(this.§<+§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr140:
                     §§push(false);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr144:
                     §§push(true);
                  }
               }
               §§goto(addr144);
            }
            return §§pop();
         }
         §§goto(addr80);
      }
      
      private function §?"E§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§+!&§.removeEventListener(Event.COMPLETE,this.§?"E§);
            loop0:
            while(true)
            {
               this.§+!&§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<"l§);
               while(true)
               {
                  this.§+!&§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"l§);
                  while(!_loc2_)
                  {
                     this.§-"J§[this.§&"G§] = this.§+!&§.data;
                     loop3:
                     while(!_loc2_)
                     {
                        this.§+!&§ = null;
                        while(!this.§&"I§())
                        {
                           if(!_loc2_)
                           {
                              this.§8!^§(this.§<"N§);
                           }
                           if(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    addr55:
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §<"l§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§+!&§.removeEventListener(Event.COMPLETE,this.§?"E§);
         }
         while(true)
         {
            this.§+!&§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<"l§);
            while(!_loc2_)
            {
               this.§+!&§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"l§);
               do
               {
                  this.§+!&§.close();
                  loop3:
                  do
                  {
                     this.§+!&§ = null;
                     while(true)
                     {
                        this.§5!p§ = null;
                        while(!(_loc2_ && param1))
                        {
                           dispatchEvent(new Event(Event.CANCEL));
                           if(!(_loc2_ && _loc2_))
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
                  while(_loc2_);
                  
               }
               while(_loc2_ && _loc2_);
               
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      protected function initPackageLoader() : §@"F§
      {
         return new §@"F§();
      }
      
      private function §8!^§(param1:Array) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7#5§ = null;
         if(_loc4_)
         {
            this.§<+§ = true;
         }
         while(this.§1A§.length >= this.§7"x§)
         {
            _loc2_ = this.§1A§.pop();
            if(!(_loc3_ && this))
            {
               _loc2_.dispose();
            }
         }
         if(!_loc3_)
         {
            §§push(this.§9"T§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr73:
                     this.§9"T§.dispose();
                     if(_loc4_)
                     {
                        addr132:
                        this.§6V§ = new §7#5§(this.§5!p§);
                        while(true)
                        {
                           this.§1A§.unshift(this.§6V§);
                           addr131:
                           while(true)
                           {
                              this.§9"T§ = this.initPackageLoader();
                           }
                        }
                        addr138:
                        addr76:
                     }
                  }
                  loop1:
                  while(true)
                  {
                     this.§!!g§ = param1.concat();
                     while(_loc4_ || param1)
                     {
                        this.§+"w§();
                        if(!_loc4_)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           if(_loc4_ || _loc2_)
                           {
                              break loop1;
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr131);
                     }
                  }
                  return;
               }
               §§goto(addr132);
            }
            §§goto(addr73);
         }
         §§goto(addr76);
      }
      
      private function §+"w§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§!!g§);
            if(_loc4_ || _loc3_)
            {
               if(§§pop().length == 0)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     return false;
                  }
                  addr40:
                  §§push(this.§!!g§);
               }
               §§goto(addr40);
            }
            var _loc1_:String = §§pop().pop();
            if(_loc4_)
            {
               this.§9"T§.addEventListener(Event.COMPLETE,this.§##V§);
            }
            var _loc2_:* = this.§,N§.indexOf(_loc1_) < 0;
            if(_loc4_)
            {
               §§push(_loc2_);
               do
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        this.§,N§.push(_loc1_);
                        addr118:
                        while(true)
                        {
                        }
                        addr118:
                     }
                     §§goto(addr118);
                  }
                  do
                  {
                     this.§9"T§.§[#!§(this.§-"J§[_loc1_],_loc1_,_loc2_,null);
                  }
                  while(!_loc4_);
                  
                  return true;
               }
               while(!(_loc4_ || _loc1_));
               
               return §§pop();
            }
            §§goto(addr118);
         }
         §§goto(addr40);
      }
      
      private function §##V§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§<+§ = false;
            loop0:
            while(true)
            {
               §§push(this.§9"T§);
               if(_loc5_ || this)
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§##V§);
                  loop1:
                  do
                  {
                     if(this.§?w§)
                     {
                        continue;
                     }
                     addr81:
                     addr81:
                     do
                     {
                        if(this.§+"w§())
                        {
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 return;
                              }
                              continue loop0;
                           }
                           if(!_loc5_)
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 if(true)
                                 {
                                    addr102:
                                    §§push(this.§9"T§);
                                    break loop0;
                                 }
                              }
                              else
                              {
                                 this.§<"A§ = null;
                                 addr53:
                                 addr58:
                              }
                              return;
                           }
                           §§goto(addr53);
                        }
                        §§goto(addr102);
                     }
                     while(_loc5_);
                     
                     this.§?w§ = null;
                     §§goto(addr58);
                  }
                  while(_loc4_);
                  
                  this.§'!t§(this.§?w§,this.§<"A§);
                  §§goto(addr81);
               }
               break;
            }
            §§push(§§pop().§!"$§.§^"A§);
            if(!_loc4_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= _loc2_)
               {
                  if(!_loc4_)
                  {
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     this.initializeTextures();
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               else
               {
                  this.§6V§.§5j§(this.§9"T§.§!"$§.§"#B§(_loc3_),0);
               }
               _loc3_++;
            }
            return;
         }
         §§goto(addr81);
      }
      
      public function initializeTextures() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.isLoading());
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
                           §§push(this.§9"T§ == null);
                           while(true)
                           {
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue loop2;
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              addr61:
                              §§push(§§pop().initializeTextures());
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              if(§§pop())
                              {
                                 addr75:
                                 if(!_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr134:
                                       while(true)
                                       {
                                          §§push(this.§6V§);
                                          loop7:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(Event.INIT,this.§>!8§);
                                             loop8:
                                             while(true)
                                             {
                                                if(!(_loc2_ || this))
                                                {
                                                   §§goto(addr133);
                                                }
                                                if(_loc1_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                §§push(this.§6V§);
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§goto(addr61);
                                                   addr31:
                                                   §§push(this.§6V§);
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      §§pop().addEventListener(Event.INIT,this.§>!8§);
                                                      if(!(_loc2_ || this))
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         §§goto(addr25);
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                                addr25:
                                                return;
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr75);
                                          §§goto(addr134);
                                       }
                                       addr82:
                                    }
                                    addr79:
                                    this.§%""§();
                                 }
                                 §§goto(addr81);
                              }
                              §§goto(addr31);
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr82);
                     }
                     addr133:
                     return;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §%""§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§9"T§.dispose();
            while(true)
            {
               this.§9"T§ = null;
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  this.§-"E§ = this.§5!p§;
                  while(true)
                  {
                     this.§5!p§ = null;
                     while(!(_loc2_ && this))
                     {
                        dispatchEvent(new Event(Event.COMPLETE));
                        if(_loc1_)
                        {
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           §§goto(addr49);
                           continue loop1;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      private function §>!8§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%""§();
         }
      }
   }
}
