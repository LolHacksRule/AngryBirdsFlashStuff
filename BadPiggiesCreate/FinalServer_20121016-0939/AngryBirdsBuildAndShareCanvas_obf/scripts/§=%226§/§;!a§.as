package §="6§
{
   import § !C§.§&4§;
   import § !C§.§>!y§;
   import §"v§.§3!w§;
   import §"v§.§9"§;
   import §%%§.§5!a§;
   import §&"5§.§4!h§;
   import §'@§.§;9§;
   import §'@§.§=![§;
   import §'@§.§]!g§;
   import §,I§.§&">§;
   import §,I§.§7!K§;
   import §,I§.§;r§;
   import §,I§.§>"9§;
   import §,I§.§`!0§;
   import §4!D§.§3!7§;
   import §4!D§.§9![§;
   import §8g§.§8s§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §;!a§ extends EventDispatcher implements §9![§
   {
       
      
      protected var §8!?§:int;
      
      protected var §1m§:Object;
      
      protected var §`"9§:int = 0;
      
      protected var §#E§:§>"9§;
      
      protected var §,!;§:Vector.<XML>;
      
      protected var §-<§:Loader;
      
      public function §;!a§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1m§ = {};
            while(true)
            {
               this.§,!;§ = new Vector.<XML>();
               while(!_loc2_)
               {
                  super();
                  while(_loc1_ || _loc1_)
                  {
                     this.§#E§ = new §>"9§();
                     if(_loc1_ || _loc2_)
                     {
                        return;
                        addr45:
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function get §>"0§() : §7!K§
      {
         return this.§#E§;
      }
      
      public function get §2"$§() : Boolean
      {
         return this.§`"9§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§#E§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§1m§[param1] as §>!y§).§'!G§(false);
      }
      
      public function §0f§(param1:String) : ByteArray
      {
         return (this.§1m§[param1] as §>!y§).content;
      }
      
      public function §3t§(param1:String, param2:Function) : void
      {
         return §;9§.§4W§(this.§0f§(param1),param2);
      }
      
      public function §^a§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§>!y§ = null;
         if(!_loc9_)
         {
            if(param2)
            {
               if(_loc8_ || _loc3_)
               {
                  this.§for §(param1);
               }
            }
         }
         var _loc3_:§&4§ = new §&4§();
         if(_loc8_)
         {
            _loc3_.loadBytes(param1);
         }
         var _loc4_:Object = {};
         var _loc5_:* = int(_loc3_.§!"?§() - 1);
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§&!p§(_loc5_)).§8`§.substr(-1) == "/")
            {
               if(!(_loc8_ || this))
               {
                  continue;
               }
            }
            else
            {
               if(this.§1m§[_loc6_.§8`§])
               {
                  if(_loc9_)
                  {
                  }
                  addr110:
                  §§push(_loc5_);
                  if(!_loc9_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc5_ = §§pop();
                  continue;
               }
               this.§1m§[_loc6_.§8`§] = _loc4_[_loc6_.§8`§] = _loc6_;
               if(!(_loc8_ || param1))
               {
                  continue;
               }
            }
            §§goto(addr110);
         }
         if(_loc8_ || this)
         {
            this.§0!M§(_loc4_);
         }
      }
      
      protected function §0!M§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     addr166:
                     while(true)
                     {
                        §§pop().§§slot[3] = §§pop();
                        addr168:
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop0;
                        }
                     }
                     loop9:
                     for(; _loc7_ || this; while(!(_loc6_ && _loc2_))
                     {
                        §§goto(addr57);
                     })
                     {
                        §§push(null);
                        loop10:
                        while(_loc7_)
                        {
                           §§pop().§§slot[5] = §§pop();
                           while(_loc7_)
                           {
                              §§push(§§newactivation());
                              loop12:
                              while(_loc7_ || _loc3_)
                              {
                                 §§push(null);
                                 loop13:
                                 for(; !(_loc6_ && _loc3_); if(_loc7_ || param1)
                                 {
                                    continue loop10;
                                 })
                                 {
                                    if(!(_loc7_ || _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    §§pop().§§slot[6] = §§pop();
                                    loop14:
                                    while(_loc7_)
                                    {
                                       §§push(§§newactivation());
                                       while(_loc7_)
                                       {
                                          §§push(null);
                                          while(true)
                                          {
                                             §§pop().§§slot[7] = §§pop();
                                             addr96:
                                             while(!(_loc6_ && this))
                                             {
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   continue loop9;
                                                   addr44:
                                                   if(_loc7_)
                                                   {
                                                      if(true)
                                                      {
                                                         var _loc3_:int = 0;
                                                         var _loc4_:* = packageFiles;
                                                         addr557:
                                                      }
                                                      continue;
                                                      if(§§hasnext(_loc4_,_loc3_))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§nextname(_loc3_,_loc4_));
                                                            if(_loc7_)
                                                            {
                                                               §§pop().§§slot[2] = §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop().§§slot[2]);
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        if(§§pop().search(/^sprite_sheets\/(.*)\.json$/i) != -1)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              try
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§pop().§§slot[8] = JSON.parse((packageFiles[fileName] as §>!y§).§'!G§(false));
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       this.§`!%§(jsonObject);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr549:
                                                                                          var levelNameResults:Array = fileName.match(/^levels\/Level(.*)\.json$/i);
                                                                                          addr531:
                                                                                          addr530:
                                                                                          if(levelNameResults)
                                                                                          {
                                                                                             addr532:
                                                                                             §3!w§.§3c§(levelNameResults[1].toLowerCase(),§9"§.§]-§(this.getFileAsString(fileName)));
                                                                                             addr545:
                                                                                          }
                                                                                          addr511:
                                                                                          addr547:
                                                                                          addr556:
                                                                                          §§push(§§newactivation());
                                                                                          §§push(§§newactivation());
                                                                                          if(!(_loc6_ && param1))
                                                                                          {
                                                                                             addr520:
                                                                                             §§pop().§§slot[4] = §§pop().§§slot[2].match(/^particle_emitters\/(.*)\.pex$/i);
                                                                                             addr494:
                                                                                             addr527:
                                                                                             if(particleNameResults)
                                                                                             {
                                                                                                addr495:
                                                                                                this.§+!'§(particleNameResults[1]);
                                                                                                addr501:
                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   addr474:
                                                                                                   §§push(§§newactivation());
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc6_ && _loc2_))
                                                                                                   {
                                                                                                      addr483:
                                                                                                      §§pop().§§slot[5] = §§pop().§§slot[2].match(/composites\/data\/(.*)\.xml$/i);
                                                                                                      addr490:
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         addr457:
                                                                                                         if(§§pop().§§slot[5])
                                                                                                         {
                                                                                                            addr458:
                                                                                                            if(!(_loc6_ && param1))
                                                                                                            {
                                                                                                               this.§[y§(fileName);
                                                                                                               addr469:
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr434:
                                                                                                                  §§push(§§newactivation());
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc7_ || param1)
                                                                                                                  {
                                                                                                                     addr442:
                                                                                                                     §§pop().§§slot[6] = §§pop().§§slot[2].match(/composites\/main\/(.*)\.xml$/i);
                                                                                                                     addr449:
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        addr406:
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(_loc7_ || this)
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              if(_loc7_ || this)
                                                                                                                              {
                                                                                                                                 addr423:
                                                                                                                                 §§push(§§pop().§§slot[6]);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr426:
                                                                                                                                       this.§'!W§(fileName);
                                                                                                                                       addr430:
                                                                                                                                    }
                                                                                                                                    addr373:
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§§slot[2]);
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§pop().§§slot[7] = §§pop().match(/cutscenes.lua$/i);
                                                                                                                                                   addr392:
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc7_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            addr341:
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc6_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().§§slot[7]);
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr362:
                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr364:
                                                                                                                                                                                    this.§;-§(fileName);
                                                                                                                                                                                    addr368:
                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr264:
                                                                                                                                                                                       §§push(§§newactivation());
                                                                                                                                                                                       if(_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc6_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr278:
                                                                                                                                                                                                if(§§pop().§§slot[2].toLowerCase() == "assetmap.xml")
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc7_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc7_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§`w§(fileName);
                                                                                                                                                                                                               addr323:
                                                                                                                                                                                                               if(_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr339:
                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr341);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr557);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr490);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr430);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr362);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr426);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr392);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr368);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr323);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr557);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr474);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr373);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr341);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr469);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr458);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr264);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr494);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr457);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr423);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr511);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr490);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr406);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr545);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr501);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr449);
                                                                                                                                                }
                                                                                                                                                §§goto(addr549);
                                                                                                                                             }
                                                                                                                                             §§goto(addr520);
                                                                                                                                          }
                                                                                                                                          §§goto(addr483);
                                                                                                                                       }
                                                                                                                                       §§goto(addr442);
                                                                                                                                    }
                                                                                                                                    §§goto(addr434);
                                                                                                                                 }
                                                                                                                                 §§goto(addr531);
                                                                                                                              }
                                                                                                                              §§goto(addr547);
                                                                                                                           }
                                                                                                                           §§goto(addr520);
                                                                                                                        }
                                                                                                                        §§goto(addr434);
                                                                                                                     }
                                                                                                                     §§goto(addr532);
                                                                                                                  }
                                                                                                                  §§goto(addr474);
                                                                                                               }
                                                                                                               §§goto(addr527);
                                                                                                            }
                                                                                                            §§goto(addr495);
                                                                                                         }
                                                                                                         §§goto(addr434);
                                                                                                      }
                                                                                                      §§goto(addr530);
                                                                                                   }
                                                                                                   §§goto(addr549);
                                                                                                   addr508:
                                                                                                }
                                                                                                §§goto(addr556);
                                                                                             }
                                                                                             §§goto(addr474);
                                                                                          }
                                                                                          addr548:
                                                                                          §§goto(addr548);
                                                                                          addr546:
                                                                                       }
                                                                                       §§goto(addr339);
                                                                                    }
                                                                                    §§goto(addr508);
                                                                                 }
                                                                              }
                                                                              catch(e:Error)
                                                                              {
                                                                                 throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§]!g§.§+!n§);
                                                                              }
                                                                              §§goto(addr549);
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        §§goto(addr546);
                                                                     }
                                                                     §§goto(addr278);
                                                                  }
                                                                  §§goto(addr457);
                                                               }
                                                               §§goto(addr483);
                                                            }
                                                            §§goto(addr520);
                                                         }
                                                         §§goto(addr423);
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         if(this.§`"9§ == 0)
                                                         {
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               dispatchEvent(new Event(Event.COMPLETE));
                                                            }
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   break;
                                                }
                                                continue loop14;
                                             }
                                             addr57:
                                             §§push(null);
                                             continue loop2;
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                continue loop13;
                                             }
                                          }
                                       }
                                       continue loop12;
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr166);
                              }
                              continue loop0;
                              for(; !(_loc6_ && this); §§pop().§§slot[1] = param1,if(!(_loc7_ || this))
                              {
                                 continue;
                              },if(_loc7_)
                              {
                                 §§goto(addr44);
                              },§§goto(addr96))
                              {
                                 §§push(§§newactivation());
                                 if(_loc6_ && this)
                                 {
                                    continue loop9;
                                 }
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr91);
                              }
                           }
                           while(true)
                           {
                              continue loop9;
                           }
                           if(!(_loc7_ || this))
                           {
                              continue;
                           }
                           §§pop().§§slot[8] = §§pop();
                           §§goto(addr81);
                        }
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           §§goto(addr162);
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §`w§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LoaderContext = null;
         if(_loc6_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§`"9§);
            if(_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               _loc4_.§`"9§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc6_)
         {
            this.§,!;§.push(_loc2_);
            while(true)
            {
               §§goto(addr76);
            }
         }
         while(true)
         {
            if(false)
            {
               addr76:
               §§goto(addr139);
            }
            else
            {
               _loc3_ = new LoaderContext();
               if(!(_loc7_ && _loc2_))
               {
                  _loc3_.allowCodeImport = true;
                  if(!(_loc7_ && this))
                  {
                     this.§-<§.loadBytes(this.§0f§(_loc2_.Library.@swf),_loc3_);
                  }
               }
            }
            addr139:
            while(this.§,!;§.length == 1)
            {
               continue loop0;
            }
            return;
         }
      }
      
      private function §3r§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§-<§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3r§);
         }
         var _loc2_:XML = this.§,!;§.shift();
         if(!_loc3_)
         {
            §3!7§.§=!V§(this.§-<§,_loc2_.Library[0]);
            loop0:
            while(true)
            {
               if(this.§,!;§.length <= 0)
               {
                  loop5:
                  while(true)
                  {
                     this.§0O§();
                     if(_loc4_ || param1)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop0;
                        addr86:
                     }
                     else
                     {
                        while(!_loc3_)
                        {
                           continue loop5;
                        }
                        while(true)
                        {
                           this.§-<§ = new Loader();
                        }
                        addr107:
                        addr74:
                     }
                     while(true)
                     {
                        this.§-<§.contentLoaderInfo.addEventListener(Event.INIT,this.§3r§);
                        §§goto(addr86);
                     }
                  }
                  return;
                  addr51:
               }
               §§goto(addr107);
            }
         }
         §§goto(addr51);
      }
      
      private function §;-§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §=![§.§<!b§(this.getFileAsString(param1));
         if(!(_loc3_ && param1))
         {
            §5!a§.§'!5§(_loc2_);
         }
      }
      
      protected function §'!W§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!(_loc4_ && _loc2_))
         {
            §4!h§.§!"4§(_loc2_);
         }
      }
      
      protected function §[y§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || _loc2_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc6_)
               {
                  §§push(§§newactivation());
                  if(_loc5_ || this)
                  {
                     §§pop().§§slot[2] = function(param1:Bitmap):void
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
                        var _loc2_:XML = new XML(getFileAsString(filePath));
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
                              if(§1m§[_loc13_] == null)
                              {
                                 _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                                 _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                              }
                              if(_loc3_.indexOf(_loc9_) < 0)
                              {
                                 _loc3_.push(_loc9_);
                                 _loc14_ = getFileAsString(_loc13_);
                                 _loc4_.push(new XML(_loc14_));
                              }
                           }
                        }
                        §#E§.§5F§(new §&">§(_loc2_,_loc4_,param1.bitmapData));
                        §0O§();
                     };
                     if(_loc5_)
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§`"9§);
                        if(_loc5_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(_loc5_ || param1)
                        {
                           _loc3_.§`"9§ = _loc4_;
                        }
                        if(!(_loc6_ && _loc3_))
                        {
                           var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
                           addr100:
                        }
                        return;
                        addr98:
                     }
                     do
                     {
                        this.§3t§(imagePath,onComplete);
                     }
                     while(!_loc5_);
                     
                  }
                  §§goto(addr100);
               }
               §§goto(addr98);
            }
         }
         §§goto(addr100);
      }
      
      protected function §0O§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§`"9§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.§`"9§ = _loc2_;
            }
            if(!_loc3_)
            {
               §§goto(addr56);
            }
            §§goto(addr72);
         }
         addr56:
         if(this.§`"9§ == 0)
         {
            if(!_loc3_)
            {
               addr72:
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      protected function §+!'§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            while(true)
            {
               §§push(§§newactivation());
               if(_loc3_ && this)
               {
                  break;
               }
               §§pop().§§slot[2] = function(param1:Bitmap):void
               {
                  §8s§.§;!g§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
               };
               while(!_loc3_)
               {
                  §§push(this);
                  §§push("particle_emitters/" + id);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop() + ".png");
                  }
                  §§pop().§3t§(§§pop(),onComplete);
                  if(_loc4_ || this)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      protected function §`!%§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || this)
         {
            §§pop().§§slot[3] = null;
            loop0:
            while(true)
            {
               addr38:
               addr226:
               loop1:
               while(true)
               {
                  §§push(§§newactivation());
                  if(_loc6_)
                  {
                     §§pop().§§slot[1] = param1;
                     if(_loc5_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this);
                           §§push("sprite_sheets/" + dataObject.name);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop() + ".png");
                           }
                           §§pop().§3t§(§§pop(),onComplete);
                           if(_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 break;
                                 addr145:
                              }
                              else
                              {
                                 addr225:
                              }
                              §§push(§§newactivation());
                              break loop1;
                           }
                           addr184:
                           while(!_loc5_)
                           {
                              continue loop2;
                           }
                           loop4:
                           while(!_loc6_)
                           {
                              while(true)
                              {
                                 this.§3t§("sprite_sheets/" + dataObject.image,onComplete);
                                 continue loop4;
                              }
                           }
                           break;
                        }
                     }
                     continue loop0;
                     return;
                  }
                  break;
               }
               §§pop().§§slot[3] = §;r§;
               §§goto(addr229);
            }
         }
         §§goto(addr181);
      }
      
      protected function §for §(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc4_ || this)
         {
            §§push(this);
            §§push(56895);
            if(_loc4_ || param1)
            {
               §§push(25147);
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§8!?§ = §§pop();
            do
            {
               _loc2_ = int(Math.min(param1.length,65536) - 1);
            }
            while(!(_loc4_ || _loc3_));
            
         }
         loop1:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ && this))
            {
               if(!_loc5_)
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!_loc5_)
                           {
                              §§push(param1.length - 1);
                              loop2:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 loop3:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc4_ || _loc2_)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc4_ || _loc2_)
                                             {
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr227:
                                                   while(true)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         break loop3;
                                                      }
                                                      param1[_loc2_] -= int(this.§>!'§() * 255);
                                                      while(true)
                                                      {
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!(_loc5_ && this))
                                                            {
                                                               addr150:
                                                               _loc2_ = int(§§pop() - 2);
                                                               addr149:
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr178:
                                                         }
                                                         §§push(_loc2_);
                                                         if(!_loc4_)
                                                         {
                                                            break loop5;
                                                         }
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§push(§§pop() - int(this.§>!'§() * 255));
                                                            if(_loc5_ && _loc2_)
                                                            {
                                                               §§push(int(§§pop()));
                                                            }
                                                            else
                                                            {
                                                               addr235:
                                                            }
                                                            continue loop2;
                                                            break loop5;
                                                         }
                                                         continue loop3;
                                                         addr71:
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            if(false)
                                                            {
                                                               continue loop4;
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                addr226:
                                             }
                                             break;
                                          }
                                          addr236:
                                          var _loc3_:* = §§pop();
                                          if(_loc4_)
                                          {
                                             addr337:
                                             _loc2_ = int(param1.length - 1);
                                             addr336:
                                          }
                                          addr338:
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         param1.inflate();
                                                         §§goto(addr273);
                                                      }
                                                      addr298:
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§goto(addr338);
                                                      }
                                                      §§push(_loc2_);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            addr288:
                                                            §§push(§§pop() - 2);
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               addr297:
                                                               _loc2_ = int(§§pop());
                                                               §§goto(addr298);
                                                            }
                                                            §§goto(addr336);
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                      §§goto(addr297);
                                                      addr332:
                                                   }
                                                   addr273:
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr338);
                                                   }
                                                   return;
                                                }
                                                param1[_loc2_] -= int(this.§>!'§() * 255);
                                                §§goto(addr332);
                                             }
                                             §§goto(addr288);
                                          }
                                          §§goto(addr297);
                                       }
                                    }
                                    break;
                                 }
                              }
                           }
                           §§goto(addr228);
                        }
                        else
                        {
                           param1[_loc2_] -= int(this.§>!'§() * 255);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr227);
               }
               §§goto(addr150);
            }
            §§goto(addr226);
         }
      }
      
      protected function §>!'§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            §§push(this.§8!?§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(this.§8!?§);
               if(_loc2_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§8!?§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§8!?§);
               if(_loc2_ || this)
               {
                  §§push(§§pop() ^ this.§8!?§ >>> 35);
               }
               §§pop().§8!?§ = §§pop();
               while(true)
               {
                  §§push(this);
                  §§push(this.§8!?§);
                  if(!_loc1_)
                  {
                     §§push(this.§8!?§);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§8!?§ = §§pop();
                  loop2:
                  while(_loc2_)
                  {
                     §§push(this.§8!?§);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        loop4:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§8!?§);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() & 2147483647);
                                    }
                                    §§pop().§8!?§ = §§pop();
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    break loop4;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(this.§8!?§);
                              if(!_loc1_)
                              {
                                 §§push(2147483647);
                                 if(!_loc1_)
                                 {
                                    return §§pop() / §§pop();
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
   }
}
