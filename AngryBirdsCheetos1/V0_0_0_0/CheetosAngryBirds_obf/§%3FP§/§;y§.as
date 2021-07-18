package §?P§
{
   import §%`§.§`p§;
   import §&! §.§7L§;
   import §&! §.§;&§;
   import §&! §.§]a§;
   import §'!H§.§"+§;
   import §'!H§.§'A§;
   import §'!H§.§5,§;
   import §'!H§.§8!-§;
   import §'!H§.§>!8§;
   import §,!7§.§#!K§;
   import §,!7§.§7!G§;
   import §4W§.§9b§;
   import §8a§.§[!7§;
   import §<!+§.§[!!§;
   import §<!+§.§with§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import §return§.§![§;
   import §return§.§#!D§;
   
   public class §;y§ extends EventDispatcher implements §![§
   {
       
      
      protected var §6!X§:int;
      
      protected var §7Q§:Object;
      
      protected var §7!<§:int = 0;
      
      protected var §&U§:§"+§;
      
      protected var §=c§:Vector.<XML>;
      
      protected var §&H§:Loader;
      
      public function §;y§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§7Q§ = {};
            while(true)
            {
               this.§=c§ = new Vector.<XML>();
               while(_loc1_ || _loc1_)
               {
                  super();
                  while(!_loc2_)
                  {
                     this.§&U§ = new §"+§();
                     if(!(_loc2_ && this))
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
      
      public function get §#!J§() : §5,§
      {
         return this.§&U§;
      }
      
      public function get §!!J§() : Boolean
      {
         return this.§7!<§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§&U§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§7Q§[param1] as §7!G§).§-7§(false);
      }
      
      public function §9!Y§(param1:String) : ByteArray
      {
         return (this.§7Q§[param1] as §7!G§).content;
      }
      
      public function §6G§(param1:String, param2:Function) : void
      {
         return §;&§.§[@§(this.§9!Y§(param1),param2);
      }
      
      public function § !=§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§7!G§ = null;
         if(_loc8_ || param2)
         {
            if(param2)
            {
               if(!(_loc9_ && param1))
               {
                  addr35:
                  this.§7T§(param1);
               }
            }
            var _loc3_:§#!K§ = new §#!K§();
            if(_loc8_)
            {
               _loc3_.loadBytes(param1);
            }
            var _loc4_:Object = {};
            var _loc5_:* = int(_loc3_.§`§() - 1);
            while(_loc5_ >= 0)
            {
               if((_loc6_ = _loc3_.§?!8§(_loc5_)).§8!§.substr(-1) == "/")
               {
                  if(_loc9_ && this)
                  {
                  }
               }
               else
               {
                  if(this.§7Q§[_loc6_.§8!§])
                  {
                     if(_loc9_ && param1)
                     {
                        continue;
                     }
                  }
                  this.§7Q§[_loc6_.§8!§] = _loc4_[_loc6_.§8!§] = _loc6_;
                  if(!(_loc8_ || this))
                  {
                     continue;
                  }
               }
               §§push(_loc5_);
               if(!(_loc9_ && param2))
               {
                  §§push(§§pop() - 1);
               }
               _loc5_ = §§pop();
            }
            if(_loc8_)
            {
               this.§=Q§(_loc4_);
            }
            return;
         }
         §§goto(addr35);
      }
      
      protected function §=Q§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
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
                     while(true)
                     {
                        §§pop().§§slot[3] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(null);
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[4] = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    while(true)
                                    {
                                       §§push(null);
                                       addr139:
                                       while(!(_loc7_ && _loc3_))
                                       {
                                          §§pop().§§slot[5] = §§pop();
                                          while(!(_loc7_ && _loc3_))
                                          {
                                             §§push(§§newactivation());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(null);
                                                addr131:
                                                while(true)
                                                {
                                                   §§pop().§§slot[6] = §§pop();
                                                   addr133:
                                                   while(_loc6_)
                                                   {
                                                      §§push(§§newactivation());
                                                      continue loop12;
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                          }
                                          continue loop8;
                                       }
                                       continue loop7;
                                       addr25:
                                       if(!(_loc6_ || param1))
                                       {
                                          continue;
                                       }
                                       §§pop().§§slot[1] = param1;
                                       if(_loc7_)
                                       {
                                          loop20:
                                          while(true)
                                          {
                                             if(_loc7_ && this)
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(!(_loc6_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         do
                                                         {
                                                            §§goto(addr40);
                                                            §§push(§§newactivation());
                                                         }
                                                         while(false);
                                                         
                                                         var _loc3_:int = 0;
                                                         var _loc4_:* = packageFiles;
                                                         addr586:
                                                         if(§§hasnext(_loc4_,_loc3_))
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               §§push(§§nextname(_loc3_,_loc4_));
                                                               if(!_loc7_)
                                                               {
                                                                  §§pop().§§slot[2] = §§pop();
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(§§pop().§§slot[2]);
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           if(§§pop().search(/^sprite_sheets\/(.*)\.json$/i) != -1)
                                                                           {
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 try
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§pop().§§slot[8] = JSON.parse((packageFiles[fileName] as §7!G§).§-7§(false));
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          this.§5C§(jsonObject);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             addr578:
                                                                                             var levelNameResults:Array = fileName.match(/^levels\/Level(.*)\.json$/i);
                                                                                             addr559:
                                                                                             addr560:
                                                                                             if(levelNameResults)
                                                                                             {
                                                                                                addr561:
                                                                                                §[!!§.§,!Q§(levelNameResults[1].toLowerCase(),§with§.§1!G§(this.getFileAsString(fileName)));
                                                                                                addr574:
                                                                                             }
                                                                                             addr549:
                                                                                             var particleNameResults:Array = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
                                                                                             addr556:
                                                                                             addr577:
                                                                                             addr547:
                                                                                             addr548:
                                                                                             addr576:
                                                                                             addr585:
                                                                                             §§push(particleNameResults);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr531:
                                                                                                   this.§9I§(particleNameResults[1]);
                                                                                                   addr537:
                                                                                                   if(_loc6_ || _loc2_)
                                                                                                   {
                                                                                                      addr506:
                                                                                                      §§push(§§newactivation());
                                                                                                      §§push(fileName);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§pop().§§slot[5] = §§pop().match(/composites\/data\/(.*)\.xml$/i);
                                                                                                         addr517:
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            addr488:
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(!(_loc7_ && param1))
                                                                                                               {
                                                                                                                  addr498:
                                                                                                                  if(§§pop().§§slot[5])
                                                                                                                  {
                                                                                                                     addr499:
                                                                                                                     this.§&b§(fileName);
                                                                                                                     addr503:
                                                                                                                  }
                                                                                                                  addr452:
                                                                                                                  §§push(§§newactivation());
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!(_loc7_ && param1))
                                                                                                                  {
                                                                                                                     addr460:
                                                                                                                     §§push(§§pop().§§slot[2]);
                                                                                                                     if(_loc6_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§pop().§§slot[6] = §§pop().match(/composites\/main\/(.*)\.xml$/i);
                                                                                                                        addr474:
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           if(!(_loc7_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 addr434:
                                                                                                                                 §§push(compositeNameResults);
                                                                                                                                 if(_loc6_ || param1)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr442:
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          this.§<J§(fileName);
                                                                                                                                          addr387:
                                                                                                                                          addr448:
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc7_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                if(!(_loc7_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().§§slot[2]);
                                                                                                                                                         if(!(_loc7_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc7_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr423:
                                                                                                                                                               §§pop().§§slot[7] = §§pop().match(/cutscenes.lua$/i);
                                                                                                                                                               addr345:
                                                                                                                                                               addr430:
                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                               if(_loc6_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().§§slot[7]);
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc7_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc7_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr376:
                                                                                                                                                                                    this.§,^§(fileName);
                                                                                                                                                                                    addr380:
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr278:
                                                                                                                                                                                          §§push(§§newactivation());
                                                                                                                                                                                          if(_loc6_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr309:
                                                                                                                                                                                                      if(§§pop().§§slot[2].toLowerCase() == "assetmap.xml")
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc7_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§-B§(fileName);
                                                                                                                                                                                                                  addr327:
                                                                                                                                                                                                                  if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc7_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr343:
                                                                                                                                                                                                                           if(false)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr345);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr586);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr556);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr537);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr380);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr474);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr442);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr327);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr586);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr506);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr488);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr387);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr345);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr503);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr430);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr448);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr380);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr278);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr556);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr434);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr559);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr434);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr506);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr460);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr577);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr506);
                                                                                                                                                }
                                                                                                                                                §§goto(addr452);
                                                                                                                                             }
                                                                                                                                             §§goto(addr547);
                                                                                                                                          }
                                                                                                                                          §§goto(addr452);
                                                                                                                                       }
                                                                                                                                       §§goto(addr574);
                                                                                                                                    }
                                                                                                                                    §§goto(addr387);
                                                                                                                                 }
                                                                                                                                 §§goto(addr498);
                                                                                                                              }
                                                                                                                              §§goto(addr531);
                                                                                                                           }
                                                                                                                           §§goto(addr517);
                                                                                                                        }
                                                                                                                        §§goto(addr499);
                                                                                                                     }
                                                                                                                     §§goto(addr549);
                                                                                                                  }
                                                                                                                  §§goto(addr548);
                                                                                                               }
                                                                                                               §§goto(addr576);
                                                                                                            }
                                                                                                            §§goto(addr559);
                                                                                                         }
                                                                                                         §§goto(addr561);
                                                                                                      }
                                                                                                      §§goto(addr578);
                                                                                                      addr544:
                                                                                                   }
                                                                                                   §§goto(addr585);
                                                                                                }
                                                                                                §§goto(addr506);
                                                                                             }
                                                                                             §§goto(addr560);
                                                                                             addr575:
                                                                                          }
                                                                                          §§goto(addr343);
                                                                                       }
                                                                                       §§goto(addr499);
                                                                                    }
                                                                                 }
                                                                                 catch(e:Error)
                                                                                 {
                                                                                    throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§7L§.§87§);
                                                                                 }
                                                                                 §§goto(addr434);
                                                                              }
                                                                              §§goto(addr376);
                                                                           }
                                                                           §§goto(addr575);
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                     §§goto(addr506);
                                                                  }
                                                                  §§goto(addr544);
                                                               }
                                                               §§goto(addr423);
                                                            }
                                                            §§goto(addr578);
                                                         }
                                                         if(!_loc7_)
                                                         {
                                                            if(this.§7!<§ == 0)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  addr608:
                                                                  dispatchEvent(new Event(Event.COMPLETE));
                                                               }
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr608);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr148);
                                                      }
                                                   }
                                                   continue loop20;
                                                }
                                                continue loop2;
                                                addr111:
                                             }
                                             §§push(§§newactivation());
                                             if(_loc6_)
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   continue loop6;
                                                }
                                                §§goto(addr71);
                                             }
                                             continue loop6;
                                             addr40:
                                             §§goto(addr133);
                                          }
                                          continue;
                                          addr61:
                                       }
                                       §§goto(addr36);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(!(_loc7_ && _loc3_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      private function §-B§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            var _loc3_:*;
            §§push((_loc3_ = this).§7!<§);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(!(_loc5_ && param1))
            {
               _loc3_.§7!<§ = _loc4_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!(_loc5_ && param1))
         {
            this.§=c§.push(_loc2_);
            while(this.§=c§.length == 1)
            {
               loop1:
               while(!_loc5_)
               {
                  this.§&H§ = new Loader();
                  while(true)
                  {
                     this.§&H§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§#!-§);
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr121);
      }
      
      private function §#!-§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§&H§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§#!-§);
         }
         var _loc2_:XML = this.§=c§.shift();
         if(!_loc3_)
         {
            §#!D§.§%!N§(this.§&H§,_loc2_.Library[0]);
            loop0:
            while(this.§=c§.length > 0)
            {
               if(_loc3_)
               {
                  do
                  {
                     this.§&H§.contentLoaderInfo.addEventListener(Event.INIT,this.§#!-§);
                     while(true)
                     {
                        this.§&H§.loadBytes(this.§9!Y§(this.§=c§[0].Library.@swf));
                        addr79:
                        while(!_loc3_)
                        {
                           break loop0;
                        }
                     }
                  }
                  while(_loc3_);
                  
               }
               else
               {
                  addr111:
               }
               continue;
               if(_loc4_ || _loc2_)
               {
                  return;
               }
            }
            while(true)
            {
               this.§'k§();
               if(!(_loc3_ && this))
               {
                  §§goto(addr54);
               }
               §§goto(addr79);
            }
         }
         this.§&H§ = new Loader();
         §§goto(addr111);
      }
      
      private function §,^§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = §]a§.§"y§(this.getFileAsString(param1));
         if(_loc3_)
         {
            §[!7§.§^!B§(_loc2_);
         }
      }
      
      protected function §<J§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!_loc3_)
         {
            §9b§.§^l§(_loc2_);
         }
      }
      
      protected function §&b§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc6_)
               {
                  §§push(§§newactivation());
                  if(!_loc5_)
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
                              if(§7Q§[_loc13_] == null)
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
                        §&U§.§]F§(new §'A§(_loc2_,_loc4_,param1.bitmapData));
                        §'k§();
                     };
                     if(!_loc5_)
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§7!<§);
                        if(_loc6_ || _loc2_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(!(_loc5_ && _loc2_))
                        {
                           _loc3_.§7!<§ = _loc4_;
                        }
                        if(_loc6_)
                        {
                           var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
                           addr96:
                           do
                           {
                              this.§6G§(imagePath,onComplete);
                           }
                           while(!(_loc6_ || _loc2_));
                           
                           addr118:
                        }
                        §§goto(addr118);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      protected function §'k§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc1_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§7!<§);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               _loc1_.§7!<§ = _loc2_;
            }
            if(!_loc3_)
            {
               §§goto(addr56);
            }
            §§goto(addr77);
         }
         addr56:
         if(this.§7!<§ == 0)
         {
            if(!(_loc3_ && _loc2_))
            {
               addr77:
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      protected function §9I§(param1:String) : void
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
               if(!(_loc4_ || this))
               {
                  break;
               }
               §§pop().§§slot[2] = function(param1:Bitmap):void
               {
                  §`p§.§super§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
               };
               while(_loc4_ || _loc3_)
               {
                  §§push(this);
                  §§push("particle_emitters/" + id);
                  if(_loc4_)
                  {
                     §§push(§§pop() + ".png");
                  }
                  §§pop().§6G§(§§pop(),onComplete);
                  if(_loc4_ || _loc3_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      protected function §5C§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[3] = null;
            if(!_loc5_)
            {
               while(true)
               {
                  §§push(§§newactivation());
                  if(_loc6_ || _loc3_)
                  {
                     §§pop().§§slot[1] = param1;
                     if(_loc6_ || param1)
                     {
                        §§push(§§newactivation());
                        if(_loc6_ || param1)
                        {
                           §§pop().§§slot[2] = function(param1:Bitmap):void
                           {
                              §&U§.§]F§(new spriteSheetClass(dataObject,param1.bitmapData));
                              §'k§();
                           };
                           if(_loc6_)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              var _loc3_:*;
                              §§push((_loc3_ = this).§7!<§);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(!(_loc5_ && _loc3_))
                              {
                                 _loc3_.§7!<§ = _loc4_;
                              }
                              if(_loc6_)
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    if(!§§pop().§§slot[1].image)
                                    {
                                       §§push(§§newactivation());
                                       continue;
                                    }
                                    var spriteSheetClass:Class = §8!-§;
                                    this.§6G§("sprite_sheets/" + dataObject.image,onComplete);
                                 }
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr241);
                        }
                        §§goto(addr208);
                     }
                     §§goto(addr196);
                  }
                  break;
               }
               §§pop().§§slot[3] = §>!8§;
               §§goto(addr187);
            }
            §§goto(addr183);
         }
         §§goto(addr165);
      }
      
      protected function §7T§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc4_ || _loc3_)
         {
            §§push(this);
            §§push(56895);
            if(!(_loc5_ && _loc2_))
            {
               §§push(25147);
               if(_loc4_)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§6!X§ = §§pop();
         }
         do
         {
            _loc2_ = int(Math.min(param1.length,65536) - 1);
         }
         while(_loc5_);
         
         loop1:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               §§push(0);
               if(!(_loc5_ && param1))
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc4_ || _loc2_)
                        {
                           if(_loc4_)
                           {
                              §§push(param1.length - 1);
                              if(!(_loc5_ && this))
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(int(§§pop()));
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc5_ && this)
                                       {
                                          break;
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr174:
                                          while(_loc5_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop1;
                                       }
                                       addr154:
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr241:
                                 var _loc3_:* = §§pop();
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(param1.length - 1);
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr337:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                       }
                                    }
                                    addr336:
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(_loc3_);
                                             if(_loc4_ || this)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         param1.inflate();
                                                         addr285:
                                                         if(_loc4_)
                                                         {
                                                            return;
                                                         }
                                                         §§push(_loc2_);
                                                         if(!(_loc5_ && this))
                                                         {
                                                            addr298:
                                                            §§push(§§pop() - 2);
                                                            if(!_loc5_)
                                                            {
                                                               addr302:
                                                               _loc2_ = int(§§pop());
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr336);
                                                            }
                                                         }
                                                         §§goto(addr302);
                                                         addr332:
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop13;
                                                   }
                                                   §§goto(addr285);
                                                }
                                                else
                                                {
                                                   param1[_loc2_] -= int(this.§+B§() * 255);
                                                }
                                                §§goto(addr332);
                                             }
                                             §§goto(addr298);
                                          }
                                          break;
                                       }
                                       §§goto(addr302);
                                    }
                                    §§goto(addr337);
                                 }
                              }
                              addr240:
                              §§goto(addr241);
                              §§push(int(§§pop()));
                           }
                           §§goto(addr174);
                        }
                        addr233:
                        §§goto(addr240);
                        §§push(Math.max(param1.length,65536) - 65536);
                     }
                     else
                     {
                        param1[_loc2_] -= int(this.§+B§() * 255);
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr154);
               }
               addr232:
               if(§§pop() >= §§pop())
               {
                  param1[_loc2_] -= int(this.§+B§() * 255);
                  loop10:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc5_ && param1))
                     {
                        §§push(§§pop() - int(this.§+B§() * 255));
                        if(!(_loc5_ && param1))
                        {
                           addr49:
                           §§push(int(§§pop()));
                           if(!(_loc5_ && _loc2_))
                           {
                              _loc2_ = §§pop();
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    addr69:
                                    while(true)
                                    {
                                    }
                                    addr69:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc5_ && param1))
                                    {
                                       break loop10;
                                    }
                                    §§goto(addr241);
                                 }
                                 §§goto(addr69);
                              }
                              §§goto(addr233);
                           }
                           break;
                        }
                        §§goto(addr240);
                     }
                     §§goto(addr241);
                  }
                  while(true)
                  {
                     §§goto(addr232);
                     §§goto(addr49);
                  }
               }
               §§goto(addr233);
            }
            break;
         }
         _loc2_ = §§pop();
         if(_loc4_)
         {
            §§goto(addr69);
         }
         §§goto(addr233);
      }
      
      protected function §+B§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§6!X§);
            if(_loc1_)
            {
               §§push(this.§6!X§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§6!X§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§6!X§);
               if(!_loc2_)
               {
                  §§push(§§pop() ^ this.§6!X§ >>> 35);
               }
               §§pop().§6!X§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(this.§6!X§);
                  if(!_loc2_)
                  {
                     §§push(this.§6!X§);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§6!X§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§6!X§);
                     while(true)
                     {
                        §§push(0);
                        loop4:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 continue loop0;
                              }
                              addr73:
                              if(_loc1_)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           addr19:
                           while(true)
                           {
                              §§push(this.§6!X§);
                              if(!_loc1_)
                              {
                                 break loop4;
                              }
                              §§push(2147483647);
                              if(_loc1_)
                              {
                                 return §§pop() / §§pop();
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr19);
         }
      }
   }
}
