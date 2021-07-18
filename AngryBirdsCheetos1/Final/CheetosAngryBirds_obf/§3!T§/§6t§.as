package §3!T§
{
   import § `§.§>o§;
   import §#!F§.§%D§;
   import §#!F§.§92§;
   import §#!F§.§^L§;
   import §0b§.§0!=§;
   import §0b§.§2!#§;
   import §2!D§.§'t§;
   import §=!7§.§[!C§;
   import §?p§.§@d§;
   import §?p§.§`w§;
   import §@b§.§0!-§;
   import §@b§.§;!4§;
   import §@b§.§;;§;
   import §@b§.§;M§;
   import §@b§.§?H§;
   import §]!F§.§&!]§;
   import §]!F§.§7e§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §6t§ extends EventDispatcher implements §`w§
   {
       
      
      protected var §30§:int;
      
      protected var §[W§:Object;
      
      protected var §7!U§:int = 0;
      
      protected var §3z§:§;!4§;
      
      protected var §35§:Vector.<XML>;
      
      protected var §1!!§:Loader;
      
      public function §6t§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§[W§ = {};
            loop0:
            while(true)
            {
               this.§35§ = new Vector.<XML>();
               loop1:
               do
               {
                  super();
                  while(!_loc1_)
                  {
                     this.§3z§ = new §;!4§();
                     if(!(_loc1_ && this))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc1_);
               
            }
         }
      }
      
      public function get §%v§() : §;M§
      {
         return this.§3z§;
      }
      
      public function get §+!8§() : Boolean
      {
         return this.§7!U§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§3z§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§[W§[param1] as §2!#§).§=n§(false);
      }
      
      public function § T§(param1:String) : ByteArray
      {
         return (this.§[W§[param1] as §2!#§).content;
      }
      
      public function §]B§(param1:String, param2:Function) : void
      {
         return §%D§.§;k§(this.§ T§(param1),param2);
      }
      
      public function §;!X§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§2!#§ = null;
         if(!(_loc9_ && param1))
         {
            if(param2)
            {
               if(!(_loc9_ && this))
               {
                  this.§"]§(param1);
               }
            }
         }
         var _loc3_:§0!=§ = new §0!=§();
         if(!(_loc9_ && param1))
         {
            _loc3_.loadBytes(param1);
         }
         var _loc4_:Object = {};
         var _loc5_:* = int(_loc3_.§1N§() - 1);
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§4P§(_loc5_)).§``§.substr(-1) == "/")
            {
               if(_loc8_ || _loc3_)
               {
               }
            }
            else
            {
               if(this.§[W§[_loc6_.§``§])
               {
                  if(_loc8_ || this)
                  {
                  }
                  addr125:
                  §§push(_loc5_);
                  if(_loc8_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc5_ = §§pop();
                  continue;
               }
               this.§[W§[_loc6_.§``§] = _loc4_[_loc6_.§``§] = _loc6_;
               if(!(_loc8_ || param2))
               {
                  continue;
               }
            }
            §§goto(addr125);
         }
         if(_loc8_)
         {
            this.§'!"§(_loc4_);
         }
      }
      
      protected function §'!"§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr171:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     addr166:
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
                                    loop9:
                                    while(true)
                                    {
                                       §§push(null);
                                       addr154:
                                       while(true)
                                       {
                                          §§pop().§§slot[5] = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             loop12:
                                             for(; _loc7_; if(!(_loc6_ && _loc3_))
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop3;
                                             })
                                             {
                                                §§push(null);
                                                loop13:
                                                for(; !(_loc6_ && _loc2_); while(_loc7_ || this)
                                                {
                                                   §§pop().§§slot[7] = §§pop();
                                                   §§goto(addr119);
                                                })
                                                {
                                                   §§pop().§§slot[6] = §§pop();
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      addr109:
                                                      addr92:
                                                      while(true)
                                                      {
                                                         §§push(null);
                                                         continue loop13;
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc7_ || _loc2_)
                                                         {
                                                            if(!(_loc7_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§newactivation());
                                                            if(!_loc6_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            addr48:
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§goto(addr109);
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue loop14;
                                                         addr33:
                                                         §§pop().§§slot[1] = param1;
                                                         if(!(_loc7_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         addr42:
                                                         if(_loc7_)
                                                         {
                                                            if(true)
                                                            {
                                                               var _loc3_:int = 0;
                                                               var _loc4_:* = packageFiles;
                                                               addr607:
                                                               if(§§hasnext(_loc4_,_loc3_))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc7_ || _loc2_)
                                                                  {
                                                                     §§push(§§nextname(_loc3_,_loc4_));
                                                                     if(_loc7_)
                                                                     {
                                                                        §§pop().§§slot[2] = §§pop();
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop().§§slot[2]);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(§§pop().search(/^sprite_sheets\/(.*)\.json$/i) != -1)
                                                                                 {
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       try
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§pop().§§slot[8] = JSON.parse((packageFiles[fileName] as §2!#§).§=n§(false));
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                this.§;T§(jsonObject);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr599:
                                                                                                   var levelNameResults:Array = fileName.match(/^levels\/Level(.*)\.json$/i);
                                                                                                   addr606:
                                                                                                   addr598:
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr581:
                                                                                                      if(§§pop().§§slot[3])
                                                                                                      {
                                                                                                         addr582:
                                                                                                         §7e§.§+8§(levelNameResults[1].toLowerCase(),§&!]§.§'F§(this.getFileAsString(fileName)));
                                                                                                         addr595:
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      §§push(fileName);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§pop().§§slot[4] = §§pop().match(/^particle_emitters\/(.*)\.pex$/i);
                                                                                                         addr552:
                                                                                                         addr575:
                                                                                                         if(particleNameResults)
                                                                                                         {
                                                                                                            addr553:
                                                                                                            this.§ L§(particleNameResults[1]);
                                                                                                            addr559:
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr523:
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                               {
                                                                                                                  addr531:
                                                                                                                  §§push(fileName);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§pop().§§slot[5] = §§pop().match(/composites\/data\/(.*)\.xml$/i);
                                                                                                                     addr541:
                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr514:
                                                                                                                        addr515:
                                                                                                                        if(compositeSpriteSheetNameResults)
                                                                                                                        {
                                                                                                                           addr516:
                                                                                                                           this.§54§(fileName);
                                                                                                                        }
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!(_loc6_ && this))
                                                                                                                        {
                                                                                                                           addr482:
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc6_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(!(_loc6_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr497:
                                                                                                                                 §§push(§§pop().§§slot[2]);
                                                                                                                                 if(_loc7_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§pop().§§slot[6] = §§pop().match(/composites\/main\/(.*)\.xml$/i);
                                                                                                                                    addr429:
                                                                                                                                    addr511:
                                                                                                                                    §§push(compositeNameResults);
                                                                                                                                    if(_loc7_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          addr437:
                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             this.§6!J§(fileName);
                                                                                                                                             addr448:
                                                                                                                                             if(_loc7_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   if(_loc7_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc6_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr396:
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr403:
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().§§slot[2]);
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     addr411:
                                                                                                                                                                     §§pop().§§slot[7] = §§pop().match(/cutscenes.lua$/i);
                                                                                                                                                                     addr418:
                                                                                                                                                                     if(!(_loc6_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        addr330:
                                                                                                                                                                        §§push(§§newactivation());
                                                                                                                                                                        if(_loc7_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc7_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().§§slot[7]);
                                                                                                                                                                                 if(!(_loc6_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             addr366:
                                                                                                                                                                                             if(!(_loc6_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr375:
                                                                                                                                                                                                   this.§=V§(fileName);
                                                                                                                                                                                                   addr379:
                                                                                                                                                                                                   if(_loc7_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr274:
                                                                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                                                                         if(_loc7_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr292:
                                                                                                                                                                                                                  if(§§pop().§§slot[2].toLowerCase() == "assetmap.xml")
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc7_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§"o§(fileName);
                                                                                                                                                                                                                              addr321:
                                                                                                                                                                                                                              if(_loc7_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr330);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr607);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr366);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr448);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr379);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr321);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr607);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr514);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr396);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr330);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr595);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr418);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr559);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr541);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr274);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr581);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr552);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr429);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr581);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr523);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr514);
                                                                                                                                                                        addr425:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr437);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr497);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr531);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr482);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr429);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr606);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr516);
                                                                                                                                             }
                                                                                                                                             §§goto(addr511);
                                                                                                                                          }
                                                                                                                                          §§goto(addr553);
                                                                                                                                       }
                                                                                                                                       §§goto(addr396);
                                                                                                                                    }
                                                                                                                                    §§goto(addr515);
                                                                                                                                 }
                                                                                                                                 §§goto(addr531);
                                                                                                                              }
                                                                                                                              §§goto(addr598);
                                                                                                                           }
                                                                                                                           §§goto(addr581);
                                                                                                                        }
                                                                                                                        §§goto(addr552);
                                                                                                                        addr548:
                                                                                                                     }
                                                                                                                     §§goto(addr582);
                                                                                                                  }
                                                                                                                  §§goto(addr581);
                                                                                                               }
                                                                                                               §§goto(addr606);
                                                                                                            }
                                                                                                            §§goto(addr575);
                                                                                                         }
                                                                                                         §§goto(addr523);
                                                                                                      }
                                                                                                      §§goto(addr599);
                                                                                                   }
                                                                                                   addr597:
                                                                                                   §§goto(addr597);
                                                                                                   addr596:
                                                                                                }
                                                                                                §§goto(addr548);
                                                                                             }
                                                                                             §§goto(addr516);
                                                                                          }
                                                                                       }
                                                                                       catch(e:Error)
                                                                                       {
                                                                                          throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§^L§.§!V§);
                                                                                       }
                                                                                       §§goto(addr292);
                                                                                    }
                                                                                    §§goto(addr375);
                                                                                 }
                                                                                 §§goto(addr596);
                                                                              }
                                                                              §§goto(addr292);
                                                                           }
                                                                           §§goto(addr403);
                                                                        }
                                                                        §§goto(addr425);
                                                                     }
                                                                     §§goto(addr411);
                                                                  }
                                                                  §§goto(addr599);
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  if(this.§7!U§ == 0)
                                                                  {
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        dispatchEvent(new Event(Event.COMPLETE));
                                                                     }
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr48);
                                                               §§goto(addr42);
                                                            }
                                                            while(!_loc6_)
                                                            {
                                                            }
                                                            continue loop8;
                                                            addr119:
                                                            addr46:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr119);
                                                         }
                                                         if(!(_loc7_ || this))
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(_loc6_ && _loc2_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§goto(addr46);
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             continue loop6;
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
            if(!(_loc7_ || _loc2_))
            {
               continue;
            }
            §§push(null);
            if(_loc7_ || _loc2_)
            {
               if(_loc7_ || _loc2_)
               {
                  if(_loc7_ || this)
                  {
                     if(!_loc6_)
                     {
                        §§pop().§§slot[8] = §§pop();
                        §§goto(addr92);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr166);
               }
               §§goto(addr154);
            }
            §§goto(addr110);
         }
      }
      
      private function §"o§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LoaderContext = null;
         if(_loc6_ || this)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§7!U§);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc6_ || _loc2_)
            {
               _loc4_.§7!U§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!(_loc7_ && this))
         {
            this.§35§.push(_loc2_);
         }
         loop0:
         while(true)
         {
            addr96:
            addr149:
            while(this.§35§.length == 1)
            {
               continue loop0;
            }
            return;
         }
      }
      
      private function §>5§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            this.§1!!§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§>5§);
         }
         var _loc2_:XML = this.§35§.shift();
         if(!_loc4_)
         {
            §@d§.§<!N§(this.§1!!§,_loc2_.Library[0]);
            loop0:
            do
            {
               if(this.§35§.length > 0)
               {
                  while(true)
                  {
                     this.§1!!§ = new Loader();
                     addr115:
                     while(true)
                     {
                        this.§1!!§.contentLoaderInfo.addEventListener(Event.INIT,this.§>5§);
                        loop5:
                        while(true)
                        {
                           this.§1!!§.loadBytes(this.§ T§(this.§35§[0].Library.@swf));
                           addr87:
                           addr94:
                           while(!(_loc3_ || param1))
                           {
                              continue loop5;
                           }
                        }
                     }
                     addr55:
                     if(!(_loc4_ && this))
                     {
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  this.§ ,§();
                  if(!(_loc4_ && _loc2_))
                  {
                     if(!_loc4_)
                     {
                        §§goto(addr55);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr87);
                  §§goto(addr94);
               }
            }
            while(_loc4_);
            
            return;
         }
         §§goto(addr115);
      }
      
      private function §=V§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §92§.§!l§(this.getFileAsString(param1));
         if(!_loc3_)
         {
            §[!C§.§+!'§(_loc2_);
         }
      }
      
      protected function §6!J§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!(_loc4_ && param1))
         {
            §>o§.§6!C§(_loc2_);
         }
      }
      
      protected function §54§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc6_)
               {
                  §§push(§§newactivation());
                  if(_loc6_ || this)
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
                              if(§[W§[_loc13_] == null)
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
                        §3z§.§[z§(new §?H§(_loc2_,_loc4_,param1.bitmapData));
                        § ,§();
                     };
                     if(_loc6_)
                     {
                        addr43:
                        var _loc3_:*;
                        §§push((_loc3_ = this).§7!U§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(_loc6_)
                        {
                           _loc3_.§7!U§ = _loc4_;
                        }
                        if(!_loc5_)
                        {
                           var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
                           addr91:
                        }
                        do
                        {
                           this.§]B§(imagePath,onComplete);
                        }
                        while(!(_loc6_ || _loc2_));
                        
                     }
                     return;
                  }
                  §§goto(addr91);
               }
               §§goto(addr43);
            }
         }
         §§goto(addr91);
      }
      
      protected function § ,§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§7!U§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               _loc1_.§7!U§ = _loc2_;
            }
            if(_loc4_ || this)
            {
               if(this.§7!U§ == 0)
               {
                  if(_loc4_ || _loc2_)
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
         }
      }
      
      protected function § L§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            while(true)
            {
               §§push(§§newactivation());
               if(_loc4_)
               {
                  break;
               }
               §§pop().§§slot[2] = function(param1:Bitmap):void
               {
                  §'t§.§>!8§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
               };
               while(!_loc4_)
               {
                  §§push(this);
                  §§push("particle_emitters/" + id);
                  if(_loc3_)
                  {
                     §§push(§§pop() + ".png");
                  }
                  §§pop().§]B§(§§pop(),onComplete);
                  if(!_loc4_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      protected function §;T§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && this))
         {
            §§pop().§§slot[3] = null;
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(§§newactivation());
                  if(_loc6_ || _loc2_)
                  {
                     §§pop().§§slot[1] = param1;
                     if(!(_loc5_ && this))
                     {
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                        §§push(§§newactivation());
                        if(!(_loc5_ && _loc2_))
                        {
                           §§pop().§§slot[2] = function(param1:Bitmap):void
                           {
                              §3z§.§[z§(new spriteSheetClass(dataObject,param1.bitmapData));
                              § ,§();
                           };
                           if(!(_loc5_ && _loc3_))
                           {
                              if(false)
                              {
                                 continue;
                              }
                              var _loc3_:*;
                              §§push((_loc3_ = this).§7!U§);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(!_loc5_)
                              {
                                 _loc3_.§7!U§ = _loc4_;
                              }
                              if(_loc6_ || param1)
                              {
                                 §§push(§§newactivation());
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop().§§slot[1].image)
                                    {
                                       §§push(§§newactivation());
                                       loop8:
                                       while(true)
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(Boolean(§§pop().§§slot[1].name));
                                             if(!_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc6_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop().§§slot[1].charCount));
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc5_ && param1)
                                                                     {
                                                                        §§push(this);
                                                                        §§push("sprite_sheets/" + dataObject.name);
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           §§push(§§pop() + ".png");
                                                                        }
                                                                        §§pop().§]B§(§§pop(),onComplete);
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        addr179:
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              break loop5;
                                                                              §§goto(addr179);
                                                                           }
                                                                           addr186:
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop5;
                                                                     if(_loc6_)
                                                                     {
                                                                        addr99:
                                                                        return;
                                                                        addr158:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr251:
                                                                     }
                                                                     addr250:
                                                                     addr251:
                                                                     addr251:
                                                                     var spriteSheetClass:Class = §0!-§;
                                                                     break;
                                                                     addr204:
                                                                  }
                                                                  throw new Error("Invalid sprite sheet data.");
                                                               }
                                                               this.§]B§("sprite_sheets/" + dataObject.image,onComplete);
                                                               §§goto(addr99);
                                                            }
                                                            addr163:
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               break loop1;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop8;
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   addr223:
                                                }
                                                §§goto(addr168);
                                             }
                                             §§goto(addr223);
                                          }
                                          §§goto(addr251);
                                       }
                                    }
                                    §§goto(addr250);
                                 }
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr251);
                     }
                     §§goto(addr186);
                  }
                  break;
               }
               §§pop().§§slot[3] = §;;§;
               §§goto(addr204);
            }
         }
         §§goto(addr163);
      }
      
      protected function §"]§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            §§push(this);
            §§push(56895);
            if(_loc5_ || _loc2_)
            {
               §§push(25147);
               if(_loc5_ || this)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§30§ = §§pop();
            do
            {
               _loc2_ = int(Math.min(param1.length,65536) - 1);
            }
            while(_loc4_);
            
         }
         loop1:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(0);
               if(_loc5_ || _loc2_)
               {
                  if(!_loc4_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              §§push(param1.length - 1);
                              if(_loc5_)
                              {
                                 §§push(int(§§pop()));
                                 if(!(_loc4_ && this))
                                 {
                                    _loc2_ = §§pop();
                                    loop2:
                                    while(true)
                                    {
                                       addr71:
                                       while(true)
                                       {
                                          addr204:
                                          addr217:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc4_)
                                             {
                                             }
                                             break;
                                          }
                                          var _loc3_:* = §§pop();
                                          if(_loc5_)
                                          {
                                             addr323:
                                             _loc2_ = int(param1.length - 1);
                                             addr225:
                                             addr324:
                                             addr322:
                                             §§push(_loc2_);
                                             if(_loc5_ || this)
                                             {
                                                §§push(_loc3_);
                                                if(_loc5_)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc5_ || this)
                                                      {
                                                         if(!(_loc5_ || this))
                                                         {
                                                            addr277:
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  addr291:
                                                                  §§goto(addr225);
                                                               }
                                                               §§goto(addr324);
                                                            }
                                                            §§push(_loc2_);
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  addr267:
                                                                  §§push(§§pop() - 2);
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     addr276:
                                                                     _loc2_ = int(§§pop());
                                                                     §§goto(addr277);
                                                                  }
                                                                  §§goto(addr322);
                                                               }
                                                               §§goto(addr323);
                                                            }
                                                            §§goto(addr276);
                                                            addr318:
                                                         }
                                                         param1.inflate();
                                                      }
                                                      return;
                                                   }
                                                   param1[_loc2_] -= int(this.§%!$§() * 255);
                                                   §§goto(addr318);
                                                }
                                                §§goto(addr267);
                                             }
                                             §§goto(addr276);
                                          }
                                          §§goto(addr291);
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc4_ && _loc2_)
                                          {
                                             continue loop2;
                                          }
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             continue loop1;
                                          }
                                          §§push(_loc2_);
                                          if(_loc5_)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() - int(this.§%!$§() * 255));
                                                   if(_loc5_ || param1)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         addr141:
                                                         _loc2_ = int(§§pop());
                                                         addr140:
                                                         continue loop1;
                                                      }
                                                      §§push(int(§§pop()));
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue;
                                                            }
                                                            if(false)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                         addr209:
                                                         §§push(Math.max(param1.length,65536) - 65536);
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr208:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               param1[_loc2_] -= int(this.§%!$§() * 255);
                                                               continue loop7;
                                                            }
                                                            §§goto(addr209);
                                                            continue loop5;
                                                         }
                                                      }
                                                      addr207:
                                                   }
                                                   addr216:
                                                   §§goto(addr217);
                                                   §§push(int(§§pop()));
                                                }
                                                else
                                                {
                                                   addr138:
                                                   §§push(§§pop() - 2);
                                                }
                                                §§goto(addr140);
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr71);
                                    }
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr216);
                           }
                           else
                           {
                              §§push(_loc2_);
                              addr169:
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr209);
                     }
                     else
                     {
                        param1[_loc2_] -= int(this.§%!$§() * 255);
                     }
                     §§goto(addr169);
                  }
                  §§goto(addr138);
               }
               §§goto(addr208);
            }
            §§goto(addr217);
         }
      }
      
      protected function §%!$§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push(this.§30§);
            if(!_loc2_)
            {
               §§push(this.§30§);
               if(!_loc2_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§30§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§30§);
               if(_loc1_)
               {
                  §§push(§§pop() ^ this.§30§ >>> 35);
               }
               §§pop().§30§ = §§pop();
               loop2:
               while(!(_loc2_ && _loc2_))
               {
                  §§push(this.§30§);
                  loop3:
                  while(true)
                  {
                     §§push(0);
                     addr40:
                     addr110:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §§push(this);
                              §§push(this.§30§);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() & 2147483647);
                              }
                              §§pop().§30§ = §§pop();
                           }
                           if(_loc1_)
                           {
                              continue loop3;
                           }
                           continue loop2;
                        }
                        continue loop3;
                     }
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§30§);
                        if(_loc1_)
                        {
                           §§push(this.§30§);
                           if(_loc1_ || _loc2_)
                           {
                              §§push(§§pop() << 4);
                           }
                           §§push(§§pop() ^ §§pop());
                        }
                        §§pop().§30§ = §§pop();
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
   }
}
