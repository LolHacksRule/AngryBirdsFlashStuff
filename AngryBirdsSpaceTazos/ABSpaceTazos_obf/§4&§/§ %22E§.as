package §4&§
{
   import §!?§.§@"C§;
   import §`!j§.§9"!§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class § "E§ extends EventDispatcher
   {
       
      
      private var §6"7§:String = "";
      
      private var §+" §:String;
      
      private var §-q§:Dictionary;
      
      private var §+!<§:Vector.<String>;
      
      private var §&!I§:String = null;
      
      private var §5b§:String = null;
      
      private var §1G§:Array;
      
      private var §-"+§:String = null;
      
      private var §2%§:Array;
      
      private var §5P§:Array;
      
      private var §#1§:Boolean;
      
      private var §;!v§:String = null;
      
      private var §@"9§:Array;
      
      private var §6!Y§:URLLoader;
      
      protected var §^?§:§@"C§;
      
      protected var §7!T§:§,C§;
      
      protected var §6u§:§9"!§;
      
      protected var §'Q§:Vector.<§,C§>;
      
      private var §!k§:String = "pak";
      
      private var §?$§:Boolean = true;
      
      private var §3!e§:int = 1;
      
      public function § "E§(param1:String, param2:String, param3:§9"!§, param4:Boolean = true, param5:int = 1)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            this.§-q§ = new Dictionary();
            while(true)
            {
               this.§+!<§ = new Vector.<String>();
               while(!(_loc6_ && param1))
               {
                  this.§1G§ = [];
                  loop2:
                  while(true)
                  {
                     this.§2%§ = [];
                     addr155:
                     loop3:
                     while(true)
                     {
                        this.§5P§ = [];
                        while(true)
                        {
                           this.§@"9§ = [];
                           while(true)
                           {
                              this.§'Q§ = new Vector.<§,C§>();
                              addr140:
                              while(true)
                              {
                                 super();
                                 continue loop2;
                              }
                              addr45:
                              if(!(_loc6_ && param3))
                              {
                                 return;
                              }
                           }
                           addr109:
                           if(!(_loc7_ || param2))
                           {
                              continue;
                           }
                           this.§6u§ = param3;
                           loop10:
                           while(!_loc6_)
                           {
                              this.§?$§ = param4;
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    addr59:
                                    if(!(_loc6_ && param2))
                                    {
                                       continue loop3;
                                    }
                                    addr121:
                                    while(true)
                                    {
                                       this.§+" § = param1;
                                       §§goto(addr59);
                                    }
                                 }
                                 addr102:
                                 while(_loc7_ || this)
                                 {
                                    §§goto(addr109);
                                 }
                                 addr80:
                                 continue loop2;
                                 this.§3!e§ = Math.max(1,param5);
                                 if(_loc6_ && param2)
                                 {
                                    continue;
                                 }
                                 if(_loc6_)
                                 {
                                    continue loop10;
                                 }
                                 §§goto(addr45);
                              }
                              continue loop3;
                           }
                           §§goto(addr140);
                        }
                     }
                  }
                  if(!(_loc7_ || param3))
                  {
                     continue;
                  }
                  §§goto(addr80);
               }
            }
         }
         §§goto(addr155);
      }
      
      public function get textureManager() : §,C§
      {
         return this.§7!T§;
      }
      
      private function § !A§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§,C§ = null;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§'Q§.length)
            {
               return false;
            }
            _loc3_ = this.§'Q§[_loc2_];
            if(!_loc5_)
            {
               if(_loc3_.id != param1)
               {
                  while(true)
                  {
                     _loc2_++;
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(_loc5_)
                        {
                           break loop0;
                        }
                        continue;
                     }
                     if(!(_loc5_ && param1))
                     {
                        if(!_loc4_)
                        {
                           this.§7!T§ = _loc3_;
                           loop2:
                           while(true)
                           {
                              this.§&!I§ = param1;
                              addr83:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        else
                        {
                           addr90:
                        }
                        if(false)
                        {
                           §§goto(addr57);
                        }
                        continue loop0;
                        this.§'Q§.splice(_loc2_,1);
                        break loop0;
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr71);
               }
               §§goto(addr90);
            }
            break;
         }
         this.§'Q§.unshift(this.§7!T§);
         addr71:
         addr57:
         return true;
      }
      
      public function §2!5§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(!(_loc2_ && this))
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§-q§[param1] == null);
         if(!(_loc2_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public function §<n§(param1:Array) : Boolean
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
               if(_loc5_)
               {
                  §§push(this.§2!5§(_loc2_));
                  if(_loc6_ && param1)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§push(false);
                        break;
                     }
                  }
               }
            }
            return true;
         }
         return §§pop();
      }
      
      public function §@t§(param1:String, param2:Array = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2);
            if(_loc5_)
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
               var _loc3_:* = int(param2.length - 1);
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc3_)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        if(§§pop() < 0)
                        {
                           loop1:
                           while(true)
                           {
                              if(!(_loc4_ && param2))
                              {
                                 §§push(param1);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§§pop().toLowerCase());
                                    loop3:
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          §§push(this.§8";§());
                                          loop5:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(this.§2!U§());
                                                   loop7:
                                                   while(§§pop())
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         this.§5b§ = param1;
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(this.§<n§(param2));
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  this.§[m§(param2);
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!(_loc5_ || param2))
                                                                     {
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc5_ || this))
                                                                           {
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(this.§?$§);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(!(_loc5_ || param2))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(!§§pop());
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                       loop14:
                                                                                       while(!_loc4_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          addr100:
                                                                                          loop13:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                this.§[!S§(param2);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                }
                                                                                                addr43:
                                                                                                return;
                                                                                                addr47:
                                                                                                addr71:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   break loop13;
                                                                                                }
                                                                                                addr171:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      this.§@"9§ = param2.concat();
                                                                                                      addr176:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr217:
                                                                                                   }
                                                                                                   this.§ !A§(param1);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         if(!(_loc5_ || this))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop() == this.§&!I§);
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                   return;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                    if(_loc4_ && param2)
                                                                                    {
                                                                                       break loop7;
                                                                                    }
                                                                                    if(!(_loc4_ && param2))
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§goto(addr176);
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           if(!(_loc5_ || _loc3_))
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           §§goto(addr47);
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     §§goto(addr43);
                                                                  }
                                                                  §§goto(addr71);
                                                               }
                                                               §§goto(addr171);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   this.§;!v§ = param1;
                                                   §§goto(addr217);
                                                }
                                             }
                                             §§goto(addr179);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue;
                        }
                        param2[_loc3_] = param2[_loc3_].toLowerCase();
                        §§push(_loc3_);
                     }
                     §§push(§§pop() - 1);
                  }
                  _loc3_ = §§pop();
               }
            }
            §§goto(addr34);
         }
         §§goto(addr28);
      }
      
      private function §2"4§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         if(!_loc6_)
         {
            this.§5P§ = [];
         }
         for each(_loc2_ in param1)
         {
            if(!(_loc6_ && this))
            {
               if(!this.§2!5§(_loc2_))
               {
                  if(!(_loc6_ && param1))
                  {
                     this.§5P§.push(_loc2_);
                  }
               }
            }
         }
      }
      
      private function §[m§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§1G§ = param1.concat();
         }
         while(true)
         {
            this.§2"4§(param1);
            while(_loc3_ || _loc3_)
            {
               this.§+Y§();
               if(!(_loc2_ && this))
               {
                  return;
               }
            }
         }
      }
      
      private function §+Y§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§5P§.length == 0)
            {
               if(_loc2_)
               {
                  this.§-"+§ = null;
               }
            }
            else
            {
               while(true)
               {
                  this.§-"+§ = this.§5P§.pop();
                  if(_loc2_ || _loc3_)
                  {
                     if(false)
                     {
                        break;
                     }
                     var _loc1_:* = "";
                     if(!_loc3_)
                     {
                        §§push(this.§6"7§);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() == null);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(!§§pop());
                           }
                           loop2:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr238:
                                    loop14:
                                    while(true)
                                    {
                                       §§push(this.§6"7§);
                                       if(_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                this.§6!Y§ = new URLLoader();
                                                loop9:
                                                while(true)
                                                {
                                                   this.§6!Y§.dataFormat = URLLoaderDataFormat.BINARY;
                                                   while(true)
                                                   {
                                                      this.§6!Y§.addEventListener(Event.COMPLETE,this.§;"?§);
                                                      while(!(_loc3_ && this))
                                                      {
                                                         this.§6!Y§.addEventListener(IOErrorEvent.IO_ERROR,this.§<h§);
                                                         while(_loc2_)
                                                         {
                                                            this.§6!Y§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<h§);
                                                            continue loop9;
                                                            if(!(_loc3_ && _loc1_))
                                                            {
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     §§push(true);
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     addr202:
                                                                     while(!_loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop14;
                                                               }
                                                               continue loop7;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr204);
                           }
                        }
                     }
                     §§goto(addr238);
                  }
                  else if(_loc2_)
                  {
                     continue;
                  }
               }
               §§goto(addr39);
            }
            addr39:
            return false;
         }
         §§goto(addr44);
      }
      
      private function §8";§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(Boolean(this.§6!Y§));
            if(!(_loc1_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr48:
                     §§pop();
                     addr49:
                     §§push(this.§#1§);
                     if(_loc2_ || _loc1_)
                     {
                     }
                     §§goto(addr69);
                  }
                  §§push(Boolean(§§pop()));
               }
               addr69:
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr49);
      }
      
      private function §2!U§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            if(this.§6!Y§)
            {
               loop0:
               while(true)
               {
                  this.§6!Y§.removeEventListener(Event.COMPLETE,this.§;"?§);
                  while(true)
                  {
                     while(true)
                     {
                        this.§6!Y§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<h§);
                        do
                        {
                           this.§6!Y§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<h§);
                        }
                        while(!(_loc2_ || _loc3_));
                        
                        if(!(_loc2_ || this))
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        if(false)
                        {
                           continue;
                        }
                        try
                        {
                           this.§6!Y§.close();
                           if(_loc2_)
                           {
                              addr97:
                              this.§6!Y§ = null;
                              if(_loc2_)
                              {
                                 §§goto(addr102);
                              }
                              §§goto(addr129);
                           }
                        }
                        catch(e:Error)
                        {
                           var _loc1_:* = e;
                           §§goto(addr97);
                        }
                        §§goto(addr133);
                     }
                  }
               }
               addr72:
            }
            addr102:
            §§push(this.§#1§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr129:
                     §§push(false);
                     if(!_loc3_)
                     {
                        §§goto(addr132);
                     }
                  }
                  else
                  {
                     addr133:
                     return true;
                  }
                  return §§pop();
               }
               §§goto(addr133);
            }
            addr132:
            return §§pop();
         }
         §§goto(addr72);
      }
      
      private function §;"?§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§6!Y§.removeEventListener(Event.COMPLETE,this.§;"?§);
            while(true)
            {
               this.§6!Y§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<h§);
               while(_loc3_ || param1)
               {
                  this.§6!Y§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<h§);
                  while(true)
                  {
                     this.§-q§[this.§-"+§] = this.§6!Y§.data;
                     while(true)
                     {
                        this.§6!Y§ = null;
                        §§goto(addr77);
                     }
                  }
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  this.§[!S§(this.§1G§);
                  §§goto(addr53);
               }
            }
         }
         addr77:
         while(!this.§+Y§())
         {
            if(!_loc2_)
            {
               continue loop2;
            }
            addr53:
            if(_loc3_)
            {
               continue loop3;
            }
         }
         addr25:
      }
      
      private function §<h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6!Y§.removeEventListener(Event.COMPLETE,this.§;"?§);
         }
         loop0:
         while(true)
         {
            this.§6!Y§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<h§);
            while(true)
            {
               this.§6!Y§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<h§);
               loop2:
               do
               {
                  this.§6!Y§.close();
                  loop3:
                  while(true)
                  {
                     this.§6!Y§ = null;
                     do
                     {
                        this.§5b§ = null;
                        continue loop3;
                     }
                     while(!(_loc3_ || _loc2_));
                     
                     continue loop2;
                  }
               }
               while(!(_loc3_ || _loc2_));
               
               continue loop0;
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr88);
            }
         }
      }
      
      protected function initPackageManager() : §@"C§
      {
         return new §@"C§(this.§6u§);
      }
      
      private function §[!S§(param1:Array) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§,C§ = null;
         if(_loc3_)
         {
            this.§#1§ = true;
         }
         while(this.§'Q§.length >= this.§3!e§)
         {
            _loc2_ = this.§'Q§.pop();
            if(!(_loc4_ && param1))
            {
               _loc2_.dispose();
            }
         }
         if(_loc3_ || _loc2_)
         {
            §§push(this.§^?§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr72:
                     this.§^?§.dispose();
                     if(!(_loc4_ && this))
                     {
                        addr131:
                        this.§7!T§ = new §,C§(this.§5b§);
                        while(true)
                        {
                           this.§'Q§.unshift(this.§7!T§);
                           loop2:
                           for(; !_loc4_; while(!(_loc4_ && this))
                           {
                              this.§;%§();
                              if(_loc4_)
                              {
                                 continue;
                              }
                              §§goto(addr90);
                           })
                           {
                              while(true)
                              {
                                 this.§^?§ = this.initPackageManager();
                                 addr111:
                                 do
                                 {
                                    this.§2%§ = param1.concat();
                                    continue loop2;
                                 }
                                 while(_loc4_);
                                 
                                 §§goto(addr92);
                              }
                           }
                        }
                     }
                     §§goto(addr130);
                  }
                  addr92:
                  return;
               }
               §§goto(addr131);
            }
            §§goto(addr72);
         }
         §§goto(addr111);
      }
      
      private function §;%§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            §§push(this.§2%§);
            if(_loc3_)
            {
               if(§§pop().length == 0)
               {
                  if(_loc3_)
                  {
                     return false;
                  }
                  addr34:
                  §§push(this.§2%§);
               }
               §§goto(addr34);
            }
            var _loc1_:String = §§pop().pop();
            if(_loc3_)
            {
               this.§^?§.addEventListener(Event.COMPLETE,this.§>!l§);
            }
            var _loc2_:* = this.§+!<§.indexOf(_loc1_) < 0;
            if(_loc3_)
            {
               §§push(_loc2_);
               do
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        this.§+!<§.push(_loc1_);
                        addr121:
                        while(true)
                        {
                        }
                     }
                     addr117:
                  }
                  while(true)
                  {
                     this.§^?§.§?C§(this.§-q§[_loc1_],_loc1_,_loc2_);
                     if(!(_loc4_ && _loc2_))
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           break;
                        }
                        §§goto(addr117);
                     }
                  }
                  return true;
               }
               while(!(_loc3_ || this));
               
               return §§pop();
            }
            §§goto(addr121);
         }
         §§goto(addr34);
      }
      
      private function §>!l§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§#1§ = false;
            loop0:
            while(true)
            {
               §§push(this.§^?§);
               if(_loc4_)
               {
                  break;
               }
               §§pop().removeEventListener(Event.COMPLETE,this.§>!l§);
               loop1:
               while(!this.§;!v§)
               {
                  loop2:
                  while(true)
                  {
                     if(this.§;%§())
                     {
                        if(!(_loc4_ && param1))
                        {
                           if(_loc5_)
                           {
                              return;
                           }
                           addr61:
                           while(_loc4_)
                           {
                              break loop1;
                           }
                        }
                        else
                        {
                           if(!(_loc5_ || _loc2_))
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue;
                           }
                           if(_loc5_ || _loc2_)
                           {
                              if(!_loc5_)
                              {
                                 continue loop1;
                              }
                              if(true)
                              {
                                 addr112:
                                 §§push(this.§^?§);
                                 break loop0;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§;!v§ = null;
                                 break loop2;
                              }
                              addr96:
                           }
                        }
                        return;
                     }
                     §§goto(addr112);
                  }
                  while(true)
                  {
                     this.§@"9§ = null;
                     §§goto(addr61);
                  }
               }
               while(true)
               {
                  if(!(_loc5_ || this))
                  {
                     continue loop0;
                  }
                  this.§@t§(this.§;!v§,this.§@"9§);
                  §§goto(addr96);
               }
            }
            §§push(§§pop().§-" §.§4T§);
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
                     if(_loc5_ || _loc3_)
                     {
                        this.§;!j§();
                     }
                     else
                     {
                        _loc3_++;
                        continue;
                        addr174:
                     }
                  }
                  if(!(_loc4_ && _loc3_))
                  {
                     break;
                  }
                  continue;
               }
               this.§7!T§.§?";§(this.§^?§.§-" §.§5!v§(_loc3_),0);
               §§goto(addr174);
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function §;!j§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§8";§());
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
                           §§push(this.§^?§);
                           while(true)
                           {
                              §§push(§§pop() == null);
                              addr126:
                              while(_loc2_ || _loc1_)
                              {
                              }
                              continue loop1;
                              loop8:
                              while(true)
                              {
                                 §§push(this.§^?§);
                                 if(!(_loc2_ || _loc1_))
                                 {
                                    break;
                                 }
                                 §§pop().dispose();
                                 while(!(_loc1_ && this))
                                 {
                                    this.§^?§ = null;
                                    do
                                    {
                                       this.§&!I§ = this.§5b§;
                                       loop11:
                                       do
                                       {
                                          this.§5b§ = null;
                                          while(_loc2_ || _loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                dispatchEvent(new Event(Event.COMPLETE));
                                                if(!_loc1_)
                                                {
                                                   continue loop11;
                                                }
                                                continue;
                                                continue;
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr145);
                                       }
                                       while(_loc1_ && _loc1_);
                                       
                                    }
                                    while(_loc1_);
                                    
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       continue loop8;
                                    }
                                 }
                                 addr146:
                                 while(true)
                                 {
                                    §§push(this.§7!T§.§;!j§());
                                    if(_loc1_)
                                    {
                                       break;
                                    }
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!§§pop())
                                          {
                                             return;
                                          }
                                          addr20:
                                          continue loop8;
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                    §§goto(addr146);
                                 }
                                 §§goto(addr126);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        break loop1;
                     }
                     §§goto(addr92);
                  }
               }
            }
         }
         addr145:
      }
   }
}
