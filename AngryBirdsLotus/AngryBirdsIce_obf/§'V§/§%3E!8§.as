package §'V§
{
   import §0!!§.§%!"§;
   import §;8§.§3f§;
   import com.rovio.assets.§>D§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.text.Font;
   
   public class §>!8§
   {
      
      private static var §2!D§:§>!8§;
       
      
      private var §4_§:Vector.<XML>;
      
      private var §%8§:Boolean = false;
      
      private var §#@§:int;
      
      private var §]!B§:int;
      
      private var §`!3§:Function;
      
      private var §+!§:Function;
      
      private var §-?§:Loader;
      
      private var §3!!§:URLLoader;
      
      private var §3j§:XML;
      
      private var §=!"§:String = "";
      
      private var §+K§:int = 0;
      
      private var §4R§:Vector.<String>;
      
      private var §[I§:String = "external_assets/LoadTest.swf";
      
      private var §`2§:Boolean = false;
      
      private var §6!-§:Array;
      
      private var §5!C§:String;
      
      private var §!!1§:String;
      
      private var §6'§:Number = 0;
      
      private var §%=§:String = "";
      
      private var §]R§:§@!"§;
      
      public function §>!8§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§6!-§ = [];
         }
         do
         {
            super();
         }
         while(!_loc1_);
         
      }
      
      public static function get §[8§() : §>!8§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§2!D§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr44:
                     §2!D§ = new §>!8§();
                  }
               }
               return §2!D§;
            }
         }
         §§goto(addr44);
      }
      
      public static function §3!§(param1:Loader, param2:XML) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr64:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr66:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public function §=#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§6!-§ = [];
         }
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§@!"§, param5:Function = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            this.§5!C§ = param2;
         }
         do
         {
            this.§!!1§ = param3;
            this.§`2§ = true;
            do
            {
               this.§%8§ = false;
               this.§]R§ = param4;
            }
            while(_loc6_);
            
         }
         while(!_loc7_);
         
         this.§`!3§ = param5;
      }
      
      private function §[Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§`2§ = true;
         }
         do
         {
            this.§%8§ = false;
         }
         while(!_loc2_);
         
      }
      
      public function §73§() : Boolean
      {
         return this.§`2§;
      }
      
      public function §9R§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§%8§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc2_)
               {
                  addr118:
                  if(!§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§pop();
                        addr121:
                        addr99:
                        while(true)
                        {
                           §§push(this.§73§());
                           if(!(_loc2_ || _loc1_))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        return §§pop();
                     }
                     addr120:
                  }
                  §§goto(addr96);
               }
               §§goto(addr120);
            }
            §§goto(addr118);
         }
         §§goto(addr100);
      }
      
      public function §34§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            §§push(this.§%8§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr92:
                        while(true)
                        {
                           addr38:
                           while(true)
                           {
                              §§push(this.§73§());
                              if(!_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop5;
                           }
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr91:
                  }
                  loop1:
                  while(!§§pop())
                  {
                     while(true)
                     {
                        this.§4_§.push(param1);
                        if(_loc5_)
                        {
                           if(!_loc5_)
                           {
                              if(!(_loc5_ || param1))
                              {
                                 break;
                              }
                              continue;
                           }
                           if(_loc4_)
                           {
                              break loop1;
                           }
                           if(false)
                           {
                              §§goto(addr38);
                           }
                           else
                           {
                              var _loc2_:*;
                              §§push((_loc2_ = this).§#@§);
                              if(_loc5_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc3_:* = §§pop();
                              if(!_loc4_)
                              {
                                 _loc2_.§#@§ = _loc3_;
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr60);
               }
            }
            §§goto(addr91);
         }
         addr60:
      }
      
      public function §&q§(param1:Function = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§%8§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     §§push(this.§73§());
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     addr98:
                     if(_loc3_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     this.§+!§ = param1;
                     loop4:
                     while(true)
                     {
                        this.§#@§ = this.§4_§.length;
                        loop5:
                        while(_loc3_)
                        {
                           while(true)
                           {
                              this.§%8§ = true;
                              while(_loc3_)
                              {
                                 this.§-T§();
                                 if(_loc3_)
                                 {
                                    if(_loc2_ && param1)
                                    {
                                       continue loop5;
                                    }
                                    if(!(_loc3_ || param1))
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr43);
                                    continue loop5;
                                 }
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr69);
      }
      
      private function §`>§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§]R§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr143:
                        while(true)
                        {
                           §§push(this.§]R§);
                           if(!(_loc1_ && this))
                           {
                              §§push(§§pop().§>!0§);
                              if(_loc2_ || this)
                              {
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                 }
                                 addr103:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    do
                                    {
                                       §§push(this.§]R§);
                                       continue loop0;
                                       §§pop().addEventListener(Event.COMPLETE,this.§#!F§);
                                    }
                                    while(_loc1_ && this);
                                    
                                    §§push(true);
                                    break;
                                 }
                                 §§push(false);
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(_loc2_)
                                    {
                                       return §§pop();
                                    }
                                    continue loop2;
                                 }
                              }
                              if(_loc2_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr103);
               }
               return §§pop();
            }
         }
         §§goto(addr143);
      }
      
      private function §#!F§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]R§.removeEventListener(Event.COMPLETE,this.§#!F§);
            do
            {
               this.§-T§();
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      private function §-T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§4_§.length > 0)
            {
               if(_loc1_ || _loc1_)
               {
                  this.§2E§();
               }
               addr86:
            }
            else if(this.§^1§() >= 1)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§^J§();
               }
               if(!(_loc1_ || this))
               {
                  §§goto(addr86);
               }
               else
               {
                  addr71:
               }
            }
            return;
         }
         §§goto(addr71);
      }
      
      private function §2E§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = null;
         if(_loc2_)
         {
            §§push(this.§%8§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        §§push(Boolean(this.§73§()));
                     }
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§`>§());
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push("");
                                    loop6:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       §§push(this.§!!1§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop() != null);
                                          loop8:
                                          while(_loc2_ || _loc1_)
                                          {
                                             §§push(§§pop());
                                             if(_loc3_)
                                             {
                                                continue loop2;
                                             }
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§push("?version=");
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() + this.§!!1§);
                                                      }
                                                      §§push(§§pop());
                                                      continue loop7;
                                                   }
                                                   addr220:
                                                   while(true)
                                                   {
                                                      this.§6'§ = 0;
                                                      while(true)
                                                      {
                                                         this.§3j§ = this.§4_§.shift();
                                                         if(this.§3j§.localName() == "pack")
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  this.§3!!§ = new URLLoader();
                                                                  break;
                                                               }
                                                               continue loop3;
                                                            }
                                                            addr304:
                                                            while(true)
                                                            {
                                                               §§push(this.§!!1§);
                                                               if(_loc3_ && _loc2_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§push(§§pop().length > 0);
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc3_ && this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                         this.§-?§ = new Loader();
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr318);
                                                         }
                                                         this.§-?§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§=8§);
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         this.§-?§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§&h§);
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               this.§-?§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§!x§);
                                                               continue;
                                                            }
                                                            addr192:
                                                            addr143:
                                                            if(!(_loc3_ && _loc1_))
                                                            {
                                                               this.§%=§ = this.§5!C§ + this.§3j§.@url.toString() + _loc1_;
                                                               this.§3!!§.load(new URLRequest(this.§%=§));
                                                               if(_loc3_)
                                                               {
                                                                  this.§3!!§.addEventListener(ProgressEvent.PROGRESS,this.§!x§);
                                                                  §§goto(addr143);
                                                                  addr169:
                                                               }
                                                               break loop2;
                                                            }
                                                            this.§3!!§.addEventListener(Event.COMPLETE,this.§&G§);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               this.§3!!§.addEventListener(IOErrorEvent.IO_ERROR,this.§&h§);
                                                               §§goto(addr169);
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      this.§3!!§.dataFormat = URLLoaderDataFormat.BINARY;
                                                      §§goto(addr192);
                                                   }
                                                }
                                                continue loop6;
                                                addr256:
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr304);
                                             }
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                              addr318:
                              return;
                           }
                        }
                        addr315:
                     }
                     break;
                  }
                  return;
               }
            }
         }
         §§goto(addr315);
      }
      
      private function §&h§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§%=§);
         if(!(_loc4_ && this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§48§();
         }
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§%=§,§%!"§.§[!G§);
      }
      
      private function §&G§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         this.§6!-§.push(this.§3!!§.data);
         loop0:
         while(true)
         {
            if(this.§`!3§ == null)
            {
               do
               {
                  §§push(this.§]R§);
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr48:
                           this.§]R§.§6=§(this.§3!!§.data);
                        }
                        if(_loc5_)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                     continue;
                  }
                  §§goto(addr48);
               }
               while(this.§48§(), false);
               
               var _loc2_:*;
               §§push((_loc2_ = this).§]!B§);
               if(!_loc4_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
            }
            else
            {
               addr23:
            }
            continue;
            if(_loc5_)
            {
               _loc2_.§]!B§ = _loc3_;
            }
            if(_loc5_)
            {
               this.§-T§();
            }
            return;
         }
      }
      
      private function §!x§(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§6'§ = param1.bytesLoaded / param1.bytesTotal;
         }
      }
      
      private function §=8§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            §3!§(this.§-?§,this.§3j§);
            if(_loc4_)
            {
               addr41:
               this.§48§();
               if(!_loc5_)
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§]!B§);
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc5_)
                  {
                     _loc2_.§]!B§ = _loc3_;
                  }
                  if(_loc5_ && _loc2_)
                  {
                  }
                  §§goto(addr84);
               }
               this.§-T§();
            }
            addr84:
            return;
         }
         §§goto(addr41);
      }
      
      private function §48§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(this.§-?§)
         {
            loop0:
            while(true)
            {
               this.§-?§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§=8§);
               loop1:
               while(true)
               {
                  this.§-?§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§&h§);
                  while(true)
                  {
                     this.§-?§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§=8§);
                     this.§-?§ = null;
                     loop3:
                     for(; !(_loc1_ && _loc1_); this.§3!!§.removeEventListener(ProgressEvent.PROGRESS,this.§!x§),if(_loc1_)
                     {
                        continue;
                     },if(_loc1_)
                     {
                        continue loop1;
                     },this.§3!!§ = null,§§goto(addr22))
                     {
                        while(true)
                        {
                           if(!this.§3!!§)
                           {
                              while(true)
                              {
                                 this.§3j§ = null;
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 addr72:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop3;
                              }
                              addr22:
                           }
                           while(true)
                           {
                              this.§3!!§.removeEventListener(Event.COMPLETE,this.§&G§);
                              this.§3!!§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&h§);
                              §§goto(addr72);
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      private function §^J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§6'§ = 0;
            while(true)
            {
               §§push(this.§+!§);
               if(_loc1_ || _loc2_)
               {
                  if(§§pop() == null)
                  {
                     break;
                  }
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  §§push(this.§+!§);
               }
               §§pop().call();
            }
            §§goto(addr24);
         }
         addr24:
      }
      
      public function §2O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§6'§ = 0;
         this.§%8§ = false;
         loop0:
         while(true)
         {
            this.§#@§ = 0;
            loop1:
            while(this.§4_§)
            {
               if(_loc2_)
               {
                  this.§4_§ = null;
                  do
                  {
                     break loop1;
                  }
                  while(!_loc2_);
                  
                  return;
               }
            }
            while(true)
            {
               this.§+!§ = null;
               while(!_loc1_)
               {
                  this.§48§();
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr37);
               }
               continue loop0;
            }
         }
      }
      
      public function §^1§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§73§());
         loop0:
         while(true)
         {
            if(!§§pop())
            {
               if(_loc1_ || _loc2_)
               {
                  §3f§.log("[LoadManager] Init not complete yet!");
               }
            }
            else
            {
               §§push(this.§%8§);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  §§push(!§§pop());
                  addr245:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(!this.§4_§);
                        }
                        addr247:
                     }
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           addr235:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr215:
                                          §3f§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
                                          return -1;
                                       }
                                       addr167:
                                       while(true)
                                       {
                                          §§push(this.§]!B§);
                                          §§goto(addr170);
                                       }
                                    }
                                 }
                                 addr213:
                              }
                              while(true)
                              {
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr247);
                              }
                              continue loop0;
                           }
                           §§push(§§pop().§>!0§);
                           if(!(_loc1_ || this))
                           {
                              continue;
                           }
                           if(§§pop())
                           {
                              §§push(1);
                              if(!(_loc1_ || this))
                              {
                                 addr170:
                                 §§goto(addr68);
                              }
                              if(!(_loc2_ && this))
                              {
                                 return §§pop();
                              }
                              §§goto(addr250);
                           }
                           addr68:
                           loop11:
                           while(true)
                           {
                              §§push(this.§#@§);
                              while(true)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    §§push(this.§]R§);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       addr201:
                                       addr201:
                                       loop16:
                                       while(true)
                                       {
                                          §§pop();
                                          addr202:
                                          while(true)
                                          {
                                             §§push(this.§#@§);
                                             continue loop16;
                                          }
                                          continue loop9;
                                       }
                                    }
                                    addr250:
                                    return §§pop();
                                    addr175:
                                 }
                                 addr100:
                                 §§push(this.§]!B§);
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 if(!_loc1_)
                                 {
                                    break loop11;
                                 }
                                 §§push(this.§#@§);
                                 if(_loc1_ || _loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr85);
                                    }
                                    continue;
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    if(_loc1_)
                                    {
                                       continue loop9;
                                    }
                                    §§goto(addr201);
                                 }
                              }
                              addr49:
                              return §§pop();
                           }
                           §§push(§§pop() + this.§6'§);
                           if(_loc1_ || _loc2_)
                           {
                              §§push(§§pop() - 0.5);
                              if(_loc1_)
                              {
                                 §§push(§§pop() / this.§#@§);
                              }
                           }
                           addr85:
                           return §§pop();
                           §§push(this.§]!B§);
                        }
                     }
                  }
               }
            }
            §§goto(addr265);
         }
      }
   }
}
