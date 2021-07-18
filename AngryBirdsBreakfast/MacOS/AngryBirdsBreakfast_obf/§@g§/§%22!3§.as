package §@g§
{
   import § ! §.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §"!3§ extends EventDispatcher
   {
       
      
      private var §]!V§:String = "";
      
      private var §`!!§:String;
      
      private var §^>§:Dictionary;
      
      private var § ",§:Vector.<String>;
      
      private var § #§:String = null;
      
      private var §99§:String = null;
      
      private var §-&§:Array;
      
      private var §]_§:String = null;
      
      private var override:Array;
      
      private var §"!M§:Array;
      
      private var §0!b§:Boolean;
      
      private var §-!B§:String = null;
      
      private var §for §:Array;
      
      private var §=B§:URLLoader;
      
      protected var §="$§:§#!r§;
      
      protected var §`8§:§5!x§;
      
      protected var §^1§:Vector.<§5!x§>;
      
      private var §^"'§:String = "pak";
      
      private var §7!-§:Boolean = true;
      
      private var §+!8§:int = 1;
      
      public function §"!3§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§^>§ = new Dictionary();
            while(true)
            {
               this.§ ",§ = new Vector.<String>();
               addr153:
               while(true)
               {
                  this.§-&§ = [];
               }
            }
            addr158:
         }
         loop2:
         while(true)
         {
            this.override = [];
            addr130:
            while(true)
            {
               this.§"!M§ = [];
               continue loop2;
            }
         }
      }
      
      public function get §58§() : §5!x§
      {
         return this.§`8§;
      }
      
      private function §#!F§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§5!x§ = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§^1§.length)
            {
               return false;
            }
            _loc3_ = this.§^1§[_loc2_];
            if(!_loc4_)
            {
               if(_loc3_.id != param1)
               {
                  do
                  {
                     _loc2_++;
                  }
                  while(_loc4_ && this);
                  
                  if(_loc5_)
                  {
                     if(_loc5_ || this)
                     {
                        addr61:
                        if(true)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        loop5:
                        while(true)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              addr89:
                              if(_loc5_)
                              {
                                 this.§^1§.unshift(this.§`8§);
                                 while(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       this.§ #§ = param1;
                                    }
                                    §§goto(addr91);
                                 }
                                 addr91:
                                 addr63:
                                 return true;
                                 addr73:
                              }
                              break loop0;
                           }
                           while(true)
                           {
                              this.§^1§.splice(_loc2_,1);
                              continue loop5;
                           }
                           §§goto(addr89);
                        }
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr73);
               }
               break;
            }
            §§goto(addr61);
         }
         while(true)
         {
            this.§`8§ = _loc3_;
            §§goto(addr114);
         }
      }
      
      public function §&E§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§^>§[param1] == null);
         if(!(_loc2_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public function § P§(param1:Array) : Boolean
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
               if(!(_loc5_ || _loc3_))
               {
                  addr72:
                  break;
               }
               §§push(this.§&E§(_loc2_));
               if(_loc6_)
               {
                  return §§pop();
               }
               if(!§§pop())
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     break;
                  }
               }
            }
            return true;
         }
         §§goto(addr72);
         §§push(false);
      }
      
      public function loadContent(param1:String, param2:Array = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param2);
            if(!(_loc4_ && _loc3_))
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
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        if(§§pop() < 0)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(param1);
                              if(!(_loc4_ && param2))
                              {
                                 §§push(§§pop().toLowerCase());
                              }
                              while(true)
                              {
                                 param1 = §§pop();
                                 addr181:
                                 §§push(param1);
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() == this.§ #§);
                                 loop11:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!§§pop())
                                       {
                                          addr140:
                                          if(!_loc4_)
                                          {
                                             addr142:
                                             §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(this.§7!-§);
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  dispatchEvent(new Event(Event.COMPLETE));
                                                                  break;
                                                               }
                                                               addr217:
                                                               this.§-!B§ = param1;
                                                               break loop11;
                                                            }
                                                            break;
                                                         }
                                                         this.§8!t§(param2);
                                                      }
                                                      addr43:
                                                      return;
                                                      addr118:
                                                      addr47:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr140);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            addr172:
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ || param1))
                                                               {
                                                                  break loop11;
                                                               }
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                            continue loop0;
                                                            addr172:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr118);
                                                      }
                                                      §§goto(addr47);
                                                   }
                                                   addr76:
                                                }
                                                addr158:
                                                while(_loc5_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(!(_loc5_ || param2))
                                                      {
                                                         addr251:
                                                         _loc3_--;
                                                         addr250:
                                                         continue loop0;
                                                         addr272:
                                                      }
                                                      this.§#!F§(param1);
                                                      §§goto(addr172);
                                                   }
                                                   break loop9;
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      §§push(this.§ P§(param2));
                                                      loop8:
                                                      while(!_loc4_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr158);
                                                         }
                                                         else
                                                         {
                                                            this.§=!M§(param2);
                                                            if(_loc5_ || param1)
                                                            {
                                                               if(!(_loc5_ || param1))
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§`>§());
                                                                     break loop8;
                                                                  }
                                                                  addr247:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr76);
                                                            }
                                                            §§goto(addr43);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr214:
                                                            while(true)
                                                            {
                                                               §§push(this.§^!u§());
                                                               addr216:
                                                               while(§§pop())
                                                               {
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            addr214:
                                                         }
                                                         addr182:
                                                         while(true)
                                                         {
                                                            this.§99§ = param1;
                                                            continue loop7;
                                                         }
                                                      }
                                                      addr155:
                                                   }
                                                   else
                                                   {
                                                      if(_loc4_ && _loc3_)
                                                      {
                                                         §§goto(addr214);
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                   §§goto(addr214);
                                                }
                                             }
                                             return;
                                             addr209:
                                          }
                                          §§goto(addr216);
                                       }
                                       §§goto(addr96);
                                    }
                                    §§goto(addr155);
                                 }
                                 this.§for § = param2.concat();
                                 §§goto(addr209);
                              }
                           }
                           §§goto(addr247);
                        }
                        else
                        {
                           param2[_loc3_] = param2[_loc3_].toLowerCase();
                        }
                        §§goto(addr272);
                     }
                     §§goto(addr250);
                  }
                  §§goto(addr251);
               }
            }
            §§goto(addr34);
         }
         §§goto(addr28);
      }
      
      private function §<J§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         if(!(_loc6_ && param1))
         {
            this.§"!M§ = [];
         }
         var _loc3_:int = 0;
         for each(_loc2_ in param1)
         {
            if(!_loc6_)
            {
               if(!this.§&E§(_loc2_))
               {
                  if(_loc5_ || _loc3_)
                  {
                     this.§"!M§.push(_loc2_);
                  }
               }
            }
         }
      }
      
      private function §=!M§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-&§ = param1.concat();
         }
         while(true)
         {
            this.§<J§(param1);
            while(_loc3_)
            {
               this.§do §();
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      private function §do §() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§"!M§.length != 0)
            {
               do
               {
                  this.§]_§ = this.§"!M§.pop();
               }
               while(_loc4_ && _loc2_);
               
               if(!(_loc4_ && _loc3_))
               {
                  if(true)
                  {
                     var _loc1_:* = "";
                     if(!(_loc4_ && this))
                     {
                        §§push(this.§]!V§);
                        if(_loc3_ || this)
                        {
                           §§push(§§pop() == null);
                           while(true)
                           {
                              §§push(!§§pop());
                              if(_loc3_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       §§pop();
                                       loop13:
                                       while(true)
                                       {
                                          §§push(this.§]!V§);
                                          if(!_loc4_)
                                          {
                                             continue loop12;
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                             loop5:
                                             while(true)
                                             {
                                                addr155:
                                                while(true)
                                                {
                                                   this.§=B§ = new URLLoader();
                                                   while(true)
                                                   {
                                                      this.§=B§.dataFormat = URLLoaderDataFormat.BINARY;
                                                      addr147:
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ || this))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push("?version=" + this.§]!V§);
                                                               if(_loc4_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop4;
                                                            }
                                                            var _loc2_:String = §§pop();
                                                         }
                                                         else
                                                         {
                                                            addr228:
                                                            addr229:
                                                            addr180:
                                                         }
                                                         this.§=B§.addEventListener(Event.COMPLETE,this.§2-§);
                                                         loop9:
                                                         while(true)
                                                         {
                                                            addr92:
                                                            while(true)
                                                            {
                                                               this.§=B§.addEventListener(IOErrorEvent.IO_ERROR,this.§9!8§);
                                                               continue loop9;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop13;
                                                         if(_loc3_)
                                                         {
                                                            this.§=B§.load(new URLRequest(_loc2_ + _loc1_));
                                                         }
                                                         return true;
                                                      }
                                                      if(!(_loc3_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc3_ || this))
                                                      {
                                                         continue loop13;
                                                      }
                                                      this.§=B§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!8§);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            while(true)
                                                            {
                                                               if(true)
                                                               {
                                                                  §§push(this.§>!g§(this.§]_§));
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     §§goto(addr228);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr92);
                                                               §§goto(addr228);
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                         §§goto(addr147);
                                                      }
                                                      §§goto(addr100);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr215:
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr180);
                                    }
                                    §§goto(addr155);
                                 }
                              }
                              §§goto(addr215);
                           }
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr90);
                  }
               }
               else
               {
                  addr60:
               }
               return false;
            }
            if(!(_loc4_ && _loc1_))
            {
               this.§]_§ = null;
            }
         }
         §§goto(addr60);
      }
      
      protected function §>!g§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§`!!§);
            if(_loc4_)
            {
               §§push(§§pop());
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr33);
                  }
                  §§push(§§pop());
               }
            }
            addr33:
            if(_loc4_)
            {
               §§pop();
               addr31:
               §§push("");
            }
            var _loc2_:* = §§pop();
            §§push(_loc2_ + "packages/");
            if(!(_loc3_ && _loc2_))
            {
               §§push(param1);
               if(_loc4_ || this)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc4_)
                  {
                     §§push(§§pop() + ".");
                     if(_loc4_ || _loc3_)
                     {
                     }
                     §§goto(addr87);
                  }
                  §§push(this.§^"'§);
               }
               §§push(§§pop() + §§pop());
            }
            addr87:
            return §§pop();
         }
         §§goto(addr31);
      }
      
      private function §`>§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(Boolean(this.§=B§));
            if(_loc1_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     addr52:
                     §§pop();
                     §§push(this.§0!b§);
                     if(_loc1_ || this)
                     {
                        return Boolean(§§pop());
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §^!u§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§=B§)
            {
               loop0:
               while(true)
               {
                  this.§=B§.removeEventListener(Event.COMPLETE,this.§2-§);
                  addr79:
                  loop1:
                  while(true)
                  {
                     addr43:
                     while(true)
                     {
                        this.§=B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!8§);
                        while(_loc2_ || this)
                        {
                           this.§=B§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!8§);
                           if(!(_loc3_ && _loc2_))
                           {
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                     §§goto(addr134);
                  }
               }
            }
            §§push(this.§0!b§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr134:
                     try
                     {
                        addr80:
                        this.§=B§.close();
                        if(!_loc3_)
                        {
                           addr97:
                           this.§=B§ = null;
                           if(_loc2_ || _loc1_)
                           {
                           }
                        }
                     }
                     catch(e:Error)
                     {
                        var _loc1_:* = e;
                        §§goto(addr97);
                     }
                     §§push(false);
                     if(!_loc3_)
                     {
                        §§goto(addr137);
                     }
                     else
                     {
                        addr139:
                     }
                     return §§pop();
                  }
                  addr138:
                  §§push(true);
                  §§goto(addr139);
               }
               §§goto(addr138);
            }
            addr137:
            return §§pop();
         }
         §§goto(addr79);
      }
      
      private function §2-§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§=B§.removeEventListener(Event.COMPLETE,this.§2-§);
            while(true)
            {
               this.§=B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!8§);
            }
            addr125:
         }
         while(true)
         {
            this.§=B§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!8§);
            loop2:
            while(_loc3_)
            {
               this.§^>§[this.§]_§] = this.§=B§.data;
               loop3:
               while(true)
               {
                  this.§=B§ = null;
                  while(true)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc2_)
                        {
                           if(this.§do §())
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     continue loop3;
                  }
                  §§goto(addr25);
               }
            }
            §§goto(addr125);
            if(!_loc2_)
            {
               addr25:
               return;
            }
         }
      }
      
      private function §9!8§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=B§.removeEventListener(Event.COMPLETE,this.§2-§);
            while(true)
            {
               this.§=B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!8§);
            }
            addr118:
         }
         do
         {
            this.§=B§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!8§);
            loop2:
            while(true)
            {
               this.§=B§.close();
               addr80:
               while(_loc2_)
               {
                  this.§=B§ = null;
                  continue loop2;
               }
               §§goto(addr118);
            }
         }
         while(_loc3_ && _loc2_);
         
      }
      
      protected function initPackageLoader() : §#!r§
      {
         return new §#!r§();
      }
      
      private function §8!t§(param1:Array) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§5!x§ = null;
         if(_loc4_)
         {
            this.§0!b§ = true;
         }
         while(this.§^1§.length >= this.§+!8§)
         {
            _loc2_ = this.§^1§.pop();
            if(!_loc3_)
            {
               _loc2_.dispose();
            }
         }
         if(_loc4_)
         {
            §§push(this.§="$§);
            if(_loc4_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     addr73:
                     this.§="$§.dispose();
                     if(_loc3_ && this)
                     {
                     }
                     return;
                     addr98:
                  }
                  §§goto(addr98);
               }
               this.§`8§ = new §5!x§(this.§99§);
               loop1:
               while(true)
               {
                  this.§^1§.unshift(this.§`8§);
                  loop2:
                  do
                  {
                     this.§="$§ = this.initPackageLoader();
                     while(true)
                     {
                        this.override = param1.concat();
                        while(!(_loc3_ && _loc3_))
                        {
                           continue loop1;
                           this.§ "§();
                           if(!_loc3_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(_loc3_ && param1);
                  
                  §§goto(addr98);
               }
            }
         }
         §§goto(addr73);
      }
      
      private function § "§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.override);
            if(!_loc4_)
            {
               if(§§pop().length == 0)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr37);
                  }
               }
               §§push(this.override);
            }
            var _loc1_:String = §§pop().pop();
            if(!(_loc4_ && _loc3_))
            {
               this.§="$§.addEventListener(Event.COMPLETE,this.§%!q§);
            }
            var _loc2_:* = this.§ ",§.indexOf(_loc1_) < 0;
            if(!_loc4_)
            {
               §§push(_loc2_);
               do
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        this.§ ",§.push(_loc1_);
                        addr126:
                        while(true)
                        {
                        }
                     }
                     addr122:
                  }
                  while(true)
                  {
                     this.§="$§.§;!h§(this.§^>§[_loc1_],_loc1_,_loc2_);
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        §§goto(addr122);
                     }
                  }
                  return true;
               }
               while(!(_loc3_ || _loc2_));
               
               return §§pop();
            }
            §§goto(addr126);
         }
         addr37:
         return false;
      }
      
      private function §%!q§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            this.§0!b§ = false;
            loop0:
            while(true)
            {
               §§push(this.§="$§);
               if(!_loc5_)
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§%!q§);
                  loop1:
                  while(true)
                  {
                     if(!this.§-!B§)
                     {
                        loop2:
                        for(; this.§ "§(); while(true)
                        {
                           continue loop2;
                        })
                        {
                           if(!(_loc5_ && this))
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    return;
                                 }
                                 addr70:
                                 loop3:
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    this.§-!B§ = null;
                                    addr82:
                                    while(true)
                                    {
                                       this.loadContent(this.§-!B§,this.§for §);
                                       continue loop3;
                                    }
                                 }
                                 if(!_loc5_)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                              if(!(_loc5_ && param1))
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 this.§for § = null;
                                 break loop2;
                              }
                           }
                           else
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              if(false)
                              {
                                 break loop1;
                              }
                           }
                        }
                        break loop0;
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr82);
                           }
                           §§goto(addr70);
                        }
                     }
                     §§goto(addr82);
                  }
                  return;
               }
               break;
            }
            §§push(§§pop().§-!-§.§]!M§);
            if(!(_loc5_ && _loc2_))
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= _loc2_)
               {
                  if(_loc4_ || param1)
                  {
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     if(!(_loc5_ && this))
                     {
                        this.§0"&§();
                        break;
                     }
                     _loc3_++;
                     continue;
                     addr188:
                  }
                  break;
               }
               this.§`8§.§5!"§(this.§="$§.§-!-§.§-!d§(_loc3_),0);
               §§goto(addr188);
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function §0"&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§`>§());
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           §§push(this.§`8§);
                           loop6:
                           while(true)
                           {
                              §§pop().removeEventListener(Event.INIT,this.§;T§);
                              loop7:
                              while(true)
                              {
                                 §§push(this.§`8§);
                                 loop8:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop6;
                                    }
                                    §§push(§§pop().§0"&§());
                                    if(!(_loc1_ || this))
                                    {
                                       break;
                                    }
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       if(!_loc2_)
                                       {
                                          this.§%!P§();
                                       }
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue loop7;
                                       }
                                       if(!_loc2_)
                                       {
                                          break loop7;
                                       }
                                       addr118:
                                       if(_loc1_ || _loc1_)
                                       {
                                          break loop4;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                       }
                                       addr144:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§="$§ == null);
                                       break loop8;
                                    }
                                 }
                                 continue loop0;
                              }
                              return;
                           }
                           addr126:
                           while(true)
                           {
                              continue loop5;
                           }
                        }
                     }
                     §§goto(addr118);
                  }
                  return;
                  addr116:
               }
               §§goto(addr144);
            }
         }
         §§goto(addr126);
      }
      
      private function §%!P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§="$§.dispose();
            while(true)
            {
               this.§="$§ = null;
            }
            addr99:
         }
         loop1:
         do
         {
            this.§ #§ = this.§99§;
            while(true)
            {
               this.§99§ = null;
               for(; _loc2_ || _loc1_; dispatchEvent(new Event(Event.COMPLETE)),if(_loc2_ || _loc2_)
               {
                  continue loop1;
               })
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr99);
               }
            }
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      private function §;T§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%!P§();
         }
      }
   }
}
