package §!?§
{
   import § !Y§.§#@§;
   import § !Y§.§4!1§;
   import § !Y§.§9k§;
   import §'!d§.§^"§;
   import §'"?§.§]"!§;
   import §'"?§.§]"'§;
   import §4&§.§ j§;
   import §7!%§.§%e§;
   import §?_§.§^"4§;
   import §`!j§.§#b§;
   import §`!j§.§9"!§;
   import §`",§.§'8§;
   import §`",§.§4[§;
   import §`",§.§67§;
   import §`",§.§=![§;
   import §`",§.§`!W§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §@"C§ extends EventDispatcher implements §%e§
   {
      
      protected static const §3!x§:Number = 100;
      
      protected static const § "8§:Number = 20;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3!x§ = 100;
         }
         do
         {
            § "8§ = 20;
         }
         while(!(_loc2_ || §@"C§));
         
      }
      
      protected var §^C§:int;
      
      protected var §4!y§:Object;
      
      protected var §-"H§:String;
      
      protected var §^"$§:int = 0;
      
      protected var §6+§:§`!W§;
      
      protected var §7E§:Vector.<XML>;
      
      protected var §6!u§:Loader;
      
      protected var §6u§:§9"!§;
      
      protected var §&Q§:Timer;
      
      protected var §>,§:Object;
      
      protected var §%U§:Vector.<String>;
      
      public function §@"C§(param1:§9"!§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§4!y§ = {};
            while(true)
            {
               this.§7E§ = new Vector.<XML>();
               addr79:
               while(true)
               {
                  super();
               }
            }
            addr83:
         }
         loop2:
         while(true)
         {
            this.§6u§ = param1;
            while(_loc2_)
            {
               this.§6+§ = new §`!W§("packageManager");
               if(!_loc2_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     break loop2;
                  }
                  §§goto(addr83);
               }
               §§goto(addr79);
            }
         }
      }
      
      public function get §-" §() : §'8§
      {
         return this.§6+§;
      }
      
      public function get §<!9§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§^"$§ == 0);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(!this.§%U§);
                           if(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§push(§§pop());
                              if(_loc1_)
                              {
                                 if(§§pop())
                                 {
                                 }
                                 §§goto(addr54);
                              }
                              continue loop1;
                           }
                           loop4:
                           while(true)
                           {
                              §§pop();
                              if(!(_loc1_ || _loc1_))
                              {
                                 break;
                              }
                              addr88:
                              while(true)
                              {
                                 §§push(this.§%U§.length == 0);
                                 if(!(_loc1_ || this))
                                 {
                                    continue loop4;
                                 }
                                 if(!(_loc1_ || _loc2_))
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr54);
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
                  addr54:
                  return §§pop();
               }
            }
         }
         §§goto(addr88);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.clear();
            while(true)
            {
               this.§6u§ = null;
               loop1:
               while(_loc1_ || this)
               {
                  while(true)
                  {
                     this.§6+§.dispose();
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      protected function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§&Q§)
            {
               while(true)
               {
                  this.§&Q§.stop();
                  loop1:
                  while(true)
                  {
                     this.§&Q§.removeEventListener(TimerEvent.TIMER,this.§9!k§);
                     loop2:
                     while(true)
                     {
                        this.§&Q§ = null;
                        while(_loc1_)
                        {
                           loop6:
                           while(!(_loc2_ && this))
                           {
                              this.§6!u§ = null;
                              loop9:
                              while(true)
                              {
                                 addr42:
                                 while(true)
                                 {
                                    this.§>,§ = null;
                                    addr46:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop9;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop6;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       addr79:
                                       while(true)
                                       {
                                          this.§6!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§if §);
                                          continue loop6;
                                       }
                                    }
                                    continue loop9;
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  return;
                  addr41:
               }
            }
            while(true)
            {
               if(this.§6!u§)
               {
                  §§goto(addr79);
               }
               §§goto(addr42);
            }
            §§goto(addr41);
         }
         §§goto(addr74);
      }
      
      protected function §,",§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param2 + "/");
         if(_loc3_ || param2)
         {
            return §§pop() + param1;
         }
      }
      
      protected function §9!=§(param1:String, param2:String) : §]"!§
      {
         return this.§4!y§[this.§,",§(param1,param2)] as §]"!§;
      }
      
      protected function §-3§(param1:String, param2:String, param3:§]"!§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§4!y§[this.§,",§(param1,param2)] = param3;
         }
      }
      
      protected function §""@§(param1:String, param2:String = null) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §§push(param2);
            if(_loc5_ || param2)
            {
               if(§§pop() == null)
               {
                  if(_loc5_)
                  {
                     §§push(this.§-"H§);
                     if(_loc5_)
                     {
                        addr50:
                        §§push(§§pop());
                     }
                     param2 = §§pop();
                     addr52:
                     var _loc3_:§]"!§ = this.§9!=§(param1,param2);
                     if(_loc5_)
                     {
                        if(!_loc3_)
                        {
                           if(!(_loc4_ && param1))
                           {
                              throw new Error("File " + this.§,",§(param1,param2) + " not found",§4!1§.§,"D§);
                              addr69:
                           }
                        }
                        return _loc3_.§'!<§(false);
                     }
                     §§goto(addr69);
                  }
               }
               §§goto(addr52);
            }
            §§goto(addr50);
         }
         §§goto(addr52);
      }
      
      protected function §8U§(param1:String, param2:String = null) : ByteArray
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param2);
            if(!(_loc4_ && param2))
            {
               if(§§pop() == null)
               {
                  if(!_loc4_)
                  {
                     addr31:
                     §§push(this.§-"H§);
                     if(!(_loc4_ && this))
                     {
                        addr50:
                        §§push(§§pop());
                     }
                     param2 = §§pop();
                  }
               }
               var _loc3_:§]"!§ = this.§9!=§(param1,param2);
               if(!(_loc4_ && param1))
               {
                  if(!_loc3_)
                  {
                     if(_loc5_)
                     {
                        throw new Error("File " + this.§,",§(param1,param2) + " not found",§4!1§.§,"D§);
                     }
                  }
               }
               return _loc3_.content;
            }
            §§goto(addr50);
         }
         §§goto(addr31);
      }
      
      protected function §-!O§(param1:String, param2:Function) : void
      {
         return §#@§.§57§(this.§8U§(param1),param2);
      }
      
      public function §?C§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§]"!§ = null;
         if(!(_loc9_ && this))
         {
            §§push(this.§<!9§);
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
            }
         }
         throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
      }
      
      public function §`t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.clear();
         }
      }
      
      protected function §,!o§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§pop().§§slot[2] = null;
            if(!(_loc5_ && _loc3_))
            {
               addr34:
               var fileName:String = param1;
            }
            try
            {
               var jsonObject:Object = JSON.parse(this.§""@§(fileName));
               if(!(_loc5_ && _loc2_))
               {
                  this.§4c§(jsonObject);
               }
            }
            catch(e:Error)
            {
               throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§4!1§.§++§);
            }
            return;
         }
         §§goto(addr34);
      }
      
      protected function §6!X§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.§6u§);
            if(_loc4_ || _loc3_)
            {
               §§push(param1);
               if(!(_loc3_ && param2))
               {
                  if(§§pop().getLevelForId(§§pop()))
                  {
                  }
                  §§goto(addr74);
               }
               §§pop().addLevel(§§pop(),§#b§.§5D§(this.§""@§(param2)));
               §§goto(addr74);
            }
            §§goto(addr67);
         }
         addr74:
         if(_loc4_)
         {
            addr67:
            §§push(this.§6u§);
            §§push(param1);
         }
      }
      
      protected function §7";§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6u§.§ !`§(JSON.parse(this.§""@§(param1)));
         }
      }
      
      protected function initializeFile(param1:String) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:* = null;
         if(!_loc9_)
         {
            §§push(param1);
            if(_loc10_ || param1)
            {
               if(§§pop().search(/^sprite_sheets\/(.*)\.json$/i) != -1)
               {
                  if(_loc10_ || _loc2_)
                  {
                     this.§,!o§(param1);
                     addr47:
                     §§push(param1);
                  }
               }
               §§goto(addr47);
            }
            var _loc2_:Array = §§pop().match(/^levels\/(.*)\.json$/i);
            if(_loc10_)
            {
               if(_loc2_)
               {
                  if(!_loc9_)
                  {
                     §§push(_loc2_[1].toLowerCase());
                     if(_loc10_)
                     {
                        _loc8_ = §§pop();
                        if(_loc10_ || param1)
                        {
                           this.§6!X§(_loc8_,param1);
                           addr80:
                           §§push(param1);
                        }
                        §§goto(addr80);
                     }
                     var _loc3_:Array = §§pop().match(/^particle_emitters\/(.*)\.pex$/i);
                     if(!(_loc9_ && _loc3_))
                     {
                        if(_loc3_)
                        {
                           if(_loc10_ || this)
                           {
                              addr104:
                              this.§`!g§(_loc3_[1]);
                           }
                        }
                        var _loc4_:Array;
                        if(_loc4_ = param1.match(/composites\/data\/(.*)\.xml$/i))
                        {
                           if(_loc10_)
                           {
                              this.§=!X§(param1);
                           }
                        }
                        if(_loc4_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i))
                        {
                           if(_loc10_)
                           {
                              this.§=!X§(param1);
                           }
                        }
                        var _loc5_:Array;
                        if(_loc5_ = param1.match(/composites\/main\/(.*)\.xml$/i))
                        {
                           if(!_loc9_)
                           {
                              this.§0G§(param1);
                           }
                        }
                        var _loc6_:Array;
                        if(_loc6_ = param1.match(/cutscenes.lua$/i))
                        {
                           if(!_loc9_)
                           {
                              this.§#!3§(param1);
                           }
                        }
                        var _loc7_:Array;
                        if(_loc7_ = param1.match(/cutscene.swf$/i))
                        {
                           if(!(_loc9_ && this))
                           {
                              this.§4"G§(param1);
                              if(_loc10_)
                              {
                                 addr243:
                                 §§push(param1);
                                 loop0:
                                 while(true)
                                 {
                                    if(§§pop().toLowerCase() != "assetmap.xml")
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       this.§6O§(param1);
                                       addr250:
                                       while(true)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                                 addr201:
                              }
                              §§goto(addr242);
                           }
                           §§goto(addr201);
                        }
                        §§goto(addr243);
                     }
                     §§goto(addr104);
                  }
               }
            }
            §§goto(addr80);
         }
         §§goto(addr47);
      }
      
      protected function §2=§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6!K§(param1);
            loop0:
            while(this.§?!R§())
            {
               loop1:
               while(true)
               {
                  if(this.§&Q§)
                  {
                     this.§&Q§.stop();
                     loop2:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           do
                           {
                              this.§&Q§.start();
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              if(!_loc3_)
                              {
                                 continue loop1;
                              }
                           }
                           while(!_loc3_);
                           
                           addr34:
                           break loop0;
                        }
                        addr77:
                        while(true)
                        {
                           this.§&Q§ = new Timer(§ "8§,0);
                        }
                        while(!_loc2_)
                        {
                           this.§&Q§.addEventListener(TimerEvent.TIMER,this.§9!k§);
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr77);
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function §6!K§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc6_)
         {
            this.§%U§ = new Vector.<String>();
         }
         var _loc3_:int = 0;
         for(_loc2_ in param1)
         {
            if(!(_loc6_ && param1))
            {
               this.§%U§.push(_loc2_);
            }
         }
         if(!(_loc6_ && _loc3_))
         {
            this.§>,§ = param1;
         }
      }
      
      private function §?!R§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = getTimer();
         while(true)
         {
            §§push(getTimer() - _loc1_);
            §§push(§3!x§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() / 2);
            }
            if(§§pop() < §§pop())
            {
               §§push(this.§9!u§());
               if(!(_loc4_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     break;
                  }
                  continue;
               }
               addr65:
               var _loc2_:* = §§pop();
               if(_loc3_)
               {
                  §§push(this.§<!9§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           addr85:
                           dispatchEvent(new Event(Event.COMPLETE));
                        }
                     }
                     return _loc2_;
                  }
               }
               §§goto(addr85);
            }
            break;
         }
         §§goto(addr65);
         §§push(this.§%U§.length > 0);
      }
      
      private function §9!u§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = null;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§%U§.length > 0)
            {
               if(!(_loc3_ && this))
               {
                  addr93:
                  _loc1_ = this.§%U§[0];
               }
               do
               {
                  this.§%U§.splice(0,1);
                  this.initializeFile(_loc1_);
               }
               while(!_loc2_);
               
               return true;
            }
            else
            {
               §§push(false);
               if(_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr93);
      }
      
      private function §9!k§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§?!R§())
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr49:
                  if(this.§&Q§)
                  {
                     if(!_loc2_)
                     {
                        this.§&Q§.stop();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      private function §6O§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            var _loc3_:*;
            §§push((_loc3_ = this).§^"$§);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(!(_loc5_ && _loc2_))
            {
               _loc3_.§^"$§ = _loc4_;
            }
         }
         var _loc2_:XML = new XML(this.§""@§(param1));
         if(_loc6_ || param1)
         {
            this.§7E§.push(_loc2_);
            loop0:
            while(this.§7E§.length == 1)
            {
               if(_loc6_)
               {
                  this.§6!u§ = new Loader();
               }
               loop1:
               while(true)
               {
                  this.§6!u§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§if §);
                  addr103:
                  while(true)
                  {
                     this.§6!u§.loadBytes(this.§8U§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                     if(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           if(_loc6_)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr103);
      }
      
      private function §if §(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§6!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§if §);
         }
         var _loc2_:XML = this.§7E§.shift();
         if(_loc4_)
         {
            if(this.§7E§.length > 0)
            {
               while(true)
               {
                  this.§6!u§ = new Loader();
                  while(true)
                  {
                     this.§6!u§.contentLoaderInfo.addEventListener(Event.INIT,this.§if §);
                     loop2:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           this.§6!u§.loadBytes(this.§8U§(this.§7E§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                           addr84:
                           addr86:
                           while(!_loc4_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               addr114:
            }
            while(true)
            {
               this.§`d§();
               if(_loc4_ || param1)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr114);
               }
               §§goto(addr84);
               §§goto(addr86);
            }
            return;
         }
         §§goto(addr98);
      }
      
      private function §#!3§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §9k§.§9"@§(this.§""@§(param1));
         if(!(_loc3_ && _loc2_))
         {
            §^"4§.§#!3§(_loc2_);
         }
      }
      
      private function §4"G§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §^"4§.§7"+§(this.§-"H§,this.§8U§(param1,this.§-"H§));
         }
      }
      
      protected function §0G§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:XML = new XML(this.§""@§(param1));
         if(_loc4_ || _loc2_)
         {
            § j§.§?"?§(_loc2_);
         }
      }
      
      protected function §=!X§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(null);
            loop0:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc5_ || _loc2_)
               {
                  §§push(§§newactivation());
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     loop2:
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           §§pop().§§slot[1] = §§pop();
                           if(!(_loc6_ && param1))
                           {
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§-"H§);
                                    if(!_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          addr64:
                                          §§pop().§§slot[2] = §§pop();
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc6_ && _loc2_)
                                             {
                                                break;
                                             }
                                             if(_loc6_)
                                             {
                                                continue loop4;
                                             }
                                             if(_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             §§pop().§§slot[3] = function(param1:Bitmap):void
                                             {
                                                var _loc6_:XML = null;
                                                var _loc7_:String = null;
                                                var _loc8_:Array = null;
                                                var _loc9_:String = null;
                                                var _loc10_:Array = null;
                                                var _loc11_:String = null;
                                                var _loc12_:int = 0;
                                                var _loc13_:* = null;
                                                var _loc14_:String = null;
                                                var _loc2_:XML = new XML(§""@§(filePath,activePackageName));
                                                var _loc3_:Array = [];
                                                var _loc4_:Vector.<XML> = new Vector.<XML>();
                                                var _loc5_:XMLList = _loc2_.child("sprite");
                                                for each(_loc6_ in _loc5_)
                                                {
                                                   if(_loc7_ = _loc6_.@file)
                                                   {
                                                      _loc8_ = _loc7_.split("\\");
                                                      _loc9_ = _loc8_[_loc8_.length - 1];
                                                      _loc10_ = filePath.split("/");
                                                      _loc11_ = "";
                                                      _loc12_ = 0;
                                                      while(_loc12_ < _loc10_.length - 2)
                                                      {
                                                         _loc11_ += _loc10_[_loc12_] + "/";
                                                         _loc12_++;
                                                      }
                                                      _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                                                      if(§9!=§(_loc13_,activePackageName) == null)
                                                      {
                                                         _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                                                         _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                                                      }
                                                      if(_loc3_.indexOf(_loc9_) < 0)
                                                      {
                                                         _loc3_.push(_loc9_);
                                                         _loc14_ = §""@§(_loc13_,activePackageName);
                                                         _loc4_.push(new XML(_loc14_));
                                                      }
                                                   }
                                                }
                                                §6+§.§>!B§(new §67§(_loc2_,_loc4_,param1.bitmapData));
                                                §`d§();
                                             };
                                             if(!(_loc6_ && param1))
                                             {
                                                continue;
                                             }
                                             addr174:
                                             addr174:
                                             while(true)
                                             {
                                                this.§-!O§(imagePath,onComplete);
                                                if(_loc5_)
                                                {
                                                   break loop2;
                                                }
                                             }
                                          }
                                          §§push(filePath);
                                       }
                                       §§pop().§§slot[4] = §§pop().substr(0,filePath.length - 3) + "png";
                                       §§goto(addr174);
                                    }
                                    §§goto(addr64);
                                 }
                                 continue loop2;
                              }
                           }
                           break;
                        }
                        continue loop0;
                     }
                     return;
                  }
               }
               §§goto(addr174);
            }
         }
         §§goto(addr64);
      }
      
      protected function §`d§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc1_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§^"$§);
            if(_loc4_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc3_)
            {
               _loc1_.§^"$§ = _loc2_;
            }
            if(_loc4_)
            {
               if(this.§<!9§)
               {
                  if(_loc4_)
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
         }
      }
      
      protected function §`!g§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || _loc2_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc6_)
            {
               addr34:
               var onComplete:Function = function(param1:Bitmap):void
               {
                  §^"§.§8!J§(id,XML(§""@§("particle_emitters/" + id + ".pex")),param1.bitmapData);
                  §`d§();
               };
               if(!(_loc5_ && this))
               {
                  var _loc3_:*;
                  §§push((_loc3_ = this).§^"$§);
                  if(_loc6_ || _loc2_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(_loc6_ || _loc2_)
                  {
                     _loc3_.§^"$§ = _loc4_;
                  }
                  if(!_loc6_)
                  {
                  }
                  §§goto(addr103);
               }
               §§push(this);
               §§push("particle_emitters/" + id);
               if(!_loc5_)
               {
                  §§push(§§pop() + ".png");
               }
               §§pop().§-!O§(§§pop(),onComplete);
            }
            addr103:
            return;
         }
         §§goto(addr34);
      }
      
      protected function §4c§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            if(!(_loc5_ || param1))
            {
               break;
            }
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               if(!_loc6_)
               {
                  §§pop().§§slot[1] = param1;
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(§§newactivation());
                     if(!(_loc6_ && _loc2_))
                     {
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        §§pop().§§slot[2] = function(param1:Bitmap):void
                        {
                           §6+§.§>!B§(new spriteSheetClass(dataObject,param1.bitmapData));
                           §`d§();
                        };
                        if(!_loc6_)
                        {
                           if(false)
                           {
                              continue;
                           }
                           var _loc3_:*;
                           §§push((_loc3_ = this).§^"$§);
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc4_:* = §§pop();
                           if(_loc5_ || param1)
                           {
                              _loc3_.§^"$§ = _loc4_;
                           }
                           if(_loc5_)
                           {
                              §§push(§§newactivation());
                              loop2:
                              for(; !§§pop().§§slot[1].image; if(_loc5_ || _loc2_)
                              {
                                 break loop1;
                              })
                              {
                                 §§push(§§newactivation());
                                 while(!_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 §§pop().§§slot[3] = §4[§;
                                 while(true)
                                 {
                                    this.§-!O§("sprite_sheets/" + dataObject.image,onComplete);
                                    addr217:
                                    if(!(_loc6_ && param1))
                                    {
                                       break loop0;
                                       addr224:
                                    }
                                    break loop2;
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr240);
                                 §§goto(addr217);
                              }
                              §§goto(addr224);
                              addr92:
                           }
                        }
                        §§goto(addr243);
                     }
                     break;
                  }
                  §§goto(addr92);
               }
               break;
            }
            while(true)
            {
               §§push(Boolean(§§pop().§§slot[1].name));
               loop4:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(§§newactivation());
                           loop8:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 §§pop().§§slot[3] = §=![§;
                                 while(true)
                                 {
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(this);
                                       §§push("sprite_sheets/" + dataObject.name);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + ".png");
                                       }
                                       §§pop().§-!O§(§§pop(),onComplete);
                                       if(!_loc6_)
                                       {
                                          break loop0;
                                       }
                                       loop6:
                                       while(_loc5_ || _loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc6_)
                                          {
                                             continue loop8;
                                          }
                                          §§push(Boolean(§§pop().§§slot[1].charCount));
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             continue loop4;
                                          }
                                          addr198:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop6;
                                          }
                                       }
                                       §§goto(addr217);
                                    }
                                    §§goto(addr240);
                                 }
                                 addr172:
                              }
                              else
                              {
                                 §§goto(addr184);
                              }
                              §§goto(addr240);
                           }
                        }
                        §§goto(addr172);
                     }
                     throw new Error("Invalid sprite sheet data.");
                     addr162:
                  }
                  §§goto(addr198);
               }
            }
         }
      }
      
      protected function §=!I§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc4_ || _loc2_)
         {
            §§push(this);
            §§push(56895);
            if(!_loc5_)
            {
               §§push(25147);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§^C§ = §§pop();
            do
            {
               _loc2_ = int(Math.min(param1.length,65536) - 1);
            }
            while(_loc5_ && this);
            
         }
         loop1:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               §§push(0);
               if(!_loc5_)
               {
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc4_ || param1)
                        {
                           §§push(param1.length - 1);
                           loop2:
                           while(_loc4_ || this)
                           {
                              §§push(int(§§pop()));
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc4_)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc4_ || this)
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr227:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         param1[_loc2_] -= int(this.§!2§() * 255);
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§§pop() - int(this.§!2§() * 255));
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        §§push(int(§§pop()));
                                                                        if(!(_loc4_ || this))
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        addr63:
                                                                        _loc2_ = §§pop();
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        addr228:
                                                                        addr228:
                                                                        addr228:
                                                                        §§push(Math.max(param1.length,65536) - 65536);
                                                                     }
                                                                     addr236:
                                                                     var _loc3_:int = §§pop();
                                                                     if(_loc4_)
                                                                     {
                                                                        addr317:
                                                                        _loc2_ = int(param1.length - 1);
                                                                        addr244:
                                                                        addr316:
                                                                        addr318:
                                                                        §§push(_loc2_);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc4_)
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    param1.inflate();
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr310:
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             addr276:
                                                                                             §§push(§§pop() - 2);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr280:
                                                                                                §§push(int(§§pop()));
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   addr283:
                                                                                                   §§goto(addr244);
                                                                                                }
                                                                                                §§goto(addr317);
                                                                                             }
                                                                                             §§goto(addr316);
                                                                                          }
                                                                                          §§goto(addr280);
                                                                                          addr312:
                                                                                       }
                                                                                       §§goto(addr318);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr283);
                                                                              }
                                                                              param1[_loc2_] -= int(this.§!2§() * 255);
                                                                              §§goto(addr310);
                                                                           }
                                                                           §§goto(addr276);
                                                                        }
                                                                        §§goto(addr280);
                                                                     }
                                                                     §§goto(addr312);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(2);
                                                                        addr144:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           break loop2;
                                                                        }
                                                                     }
                                                                     addr143:
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     addr183:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr143);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr228);
                                                                  }
                                                               }
                                                               addr146:
                                                            }
                                                            §§goto(addr63);
                                                         }
                                                      }
                                                      §§goto(addr228);
                                                      continue loop12;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr228);
                                 }
                                 addr137:
                              }
                              §§goto(addr236);
                           }
                           while(true)
                           {
                              §§goto(addr146);
                              §§goto(addr144);
                           }
                        }
                        §§goto(addr228);
                     }
                     else
                     {
                        param1[_loc2_] -= int(this.§!2§() * 255);
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr144);
               }
               §§goto(addr227);
            }
            §§goto(addr137);
         }
      }
      
      protected function §!2§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this);
            §§push(this.§^C§);
            if(_loc2_)
            {
               §§push(this.§^C§);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§^C§ = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this);
            §§push(this.§^C§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() ^ this.§^C§ >>> 35);
            }
            §§pop().§^C§ = §§pop();
            loop1:
            while(true)
            {
               §§push(this);
               §§push(this.§^C§);
               if(_loc2_ || _loc2_)
               {
                  §§push(this.§^C§);
                  if(_loc2_)
                  {
                     §§push(§§pop() << 4);
                  }
                  §§push(§§pop() ^ §§pop());
               }
               §§pop().§^C§ = §§pop();
               loop2:
               while(true)
               {
                  §§push(this.§^C§);
                  loop3:
                  while(true)
                  {
                     §§push(0);
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!(_loc1_ && this))
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           addr76:
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                        }
                        §§push(this.§^C§);
                        if(_loc2_)
                        {
                           §§push(2147483647);
                           if(!_loc1_)
                           {
                              return §§pop() / §§pop();
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}
