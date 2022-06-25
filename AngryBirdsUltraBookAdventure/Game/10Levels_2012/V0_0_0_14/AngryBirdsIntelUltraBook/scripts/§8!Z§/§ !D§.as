package §8!Z§
{
   import §!!§.§>4§;
   import §!!§.LevelManager;
   import §"!&§.§[>§;
   import §"i§.§5V§;
   import §"i§.§?!;§;
   import §&!h§.§-V§;
   import §&!h§.§2H§;
   import §&!h§.§4!<§;
   import §,6§.§4d§;
   import §0!H§.§1!y§;
   import §0!H§.§^!?§;
   import §<$§.ParticleManager;
   import §?2§.§!!-§;
   import §?2§.§%_§;
   import §?2§.§3N§;
   import §?2§.§5!Z§;
   import §?2§.§^!e§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class § !D§ extends EventDispatcher implements §?!;§
   {
       
      
      protected var §=A§:int;
      
      protected var §1!d§:Object;
      
      protected var §=!O§:int = 0;
      
      protected var §!!;§:§^!e§;
      
      protected var §2T§:Vector.<XML>;
      
      protected var §2C§:Loader;
      
      public function § !D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§1!d§ = {};
         }
         while(true)
         {
            this.§2T§ = new Vector.<XML>();
            while(_loc1_)
            {
               super();
               while(!_loc2_)
               {
                  this.§!!;§ = new §^!e§();
                  if(!(_loc2_ && this))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function get §package§() : §3N§
      {
         return this.§!!;§;
      }
      
      public function get §><§() : Boolean
      {
         return this.§=!O§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§!!;§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§1!d§[param1] as §^!?§).§ !m§(false);
      }
      
      public function §&!#§(param1:String) : ByteArray
      {
         return (this.§1!d§[param1] as §^!?§).content;
      }
      
      public function §"u§(param1:String, param2:Function) : void
      {
         return §-V§.§&V§(this.§&!#§(param1),param2);
      }
      
      public function §3!%§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§^!?§ = null;
         if(_loc8_ || param1)
         {
            if(param2)
            {
               if(!_loc9_)
               {
                  addr30:
                  this.§=!0§(param1);
               }
            }
            var _loc3_:§1!y§ = new §1!y§();
            if(!(_loc9_ && param2))
            {
               _loc3_.loadBytes(param1);
            }
            var _loc4_:Object = {};
            var _loc5_:* = int(_loc3_.§^!W§() - 1);
            while(_loc5_ >= 0)
            {
               if((_loc6_ = _loc3_.§<x§(_loc5_)).§1L§.substr(-1) == "/")
               {
                  if(!(_loc8_ || param1))
                  {
                     continue;
                  }
               }
               else
               {
                  if(this.§1!d§[_loc6_.§1L§])
                  {
                     if(!_loc8_)
                     {
                     }
                     addr125:
                     §§push(_loc5_);
                     if(!(_loc9_ && param1))
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc5_ = §§pop();
                     continue;
                  }
                  this.§1!d§[_loc6_.§1L§] = _loc4_[_loc6_.§1L§] = _loc6_;
                  if(!(_loc8_ || this))
                  {
                     continue;
                  }
               }
               §§goto(addr125);
            }
            if(!(_loc9_ && param1))
            {
               this.§0E§(_loc4_);
            }
            return;
         }
         §§goto(addr30);
      }
      
      protected function §0E§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
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
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
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
                              while(!(_loc6_ && param1))
                              {
                                 if(_loc6_ && this)
                                 {
                                    continue loop1;
                                 }
                                 §§pop().§§slot[4] = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(null);
                                       loop10:
                                       while(_loc7_ || _loc2_)
                                       {
                                          §§pop().§§slot[5] = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             loop12:
                                             while(!_loc6_)
                                             {
                                                §§push(null);
                                                loop13:
                                                while(!(_loc6_ && _loc2_))
                                                {
                                                   §§pop().§§slot[6] = §§pop();
                                                   while(_loc7_)
                                                   {
                                                      §§push(§§newactivation());
                                                      loop15:
                                                      while(_loc7_)
                                                      {
                                                         §§push(null);
                                                         loop16:
                                                         while(_loc7_)
                                                         {
                                                            §§pop().§§slot[7] = §§pop();
                                                            loop17:
                                                            while(_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  addr61:
                                                                  while(true)
                                                                  {
                                                                     §§push(null);
                                                                     if(!_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§pop().§§slot[8] = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc7_ || _loc2_))
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        if(!_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§newactivation());
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc7_ || _loc3_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              continue loop12;
                                                                              continue loop12;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        §§goto(addr61);
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  addr55:
                                                                  continue loop16;
                                                                  if(_loc7_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        var _loc3_:int = 0;
                                                                        var _loc4_:* = packageFiles;
                                                                        addr567:
                                                                        if(§§hasnext(_loc4_,_loc3_))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(§§nextname(_loc3_,_loc4_));
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 §§pop().§§slot[2] = §§pop();
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(§§pop().§§slot[2]);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(§§pop().search(/^sprite_sheets\/(.*)\.json$/i) != -1)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                try
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      addr197:
                                                                                                      §§pop().§§slot[8] = JSON.parse((packageFiles[fileName] as §^!?§).§ !m§(false));
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         this.§;!v§(jsonObject);
                                                                                                         if(_loc7_ || _loc3_)
                                                                                                         {
                                                                                                            var levelNameResults:Array = fileName.match(/^levels\/Level(.*)\.json$/i);
                                                                                                            addr531:
                                                                                                            addr530:
                                                                                                            if(levelNameResults)
                                                                                                            {
                                                                                                               addr532:
                                                                                                               LevelManager.§'S§(levelNameResults[1].toLowerCase(),§>4§.§0!;§(this.getFileAsString(fileName)));
                                                                                                               addr545:
                                                                                                            }
                                                                                                            addr512:
                                                                                                            addr549:
                                                                                                            addr566:
                                                                                                            addr547:
                                                                                                            §§push(§§newactivation());
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc7_ || param1)
                                                                                                            {
                                                                                                               addr520:
                                                                                                               §§pop().§§slot[4] = §§pop().§§slot[2].match(/^particle_emitters\/(.*)\.pex$/i);
                                                                                                               addr498:
                                                                                                               addr527:
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr501:
                                                                                                                  if(§§pop().§§slot[4])
                                                                                                                  {
                                                                                                                     addr502:
                                                                                                                     this.§get §(particleNameResults[1]);
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!(_loc6_ && this))
                                                                                                                  {
                                                                                                                     addr488:
                                                                                                                     §§pop().§§slot[5] = fileName.match(/composites\/data\/(.*)\.xml$/i);
                                                                                                                     addr495:
                                                                                                                     addr487:
                                                                                                                     if(compositeSpriteSheetNameResults)
                                                                                                                     {
                                                                                                                        addr468:
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              addr472:
                                                                                                                              this.§[+§(fileName);
                                                                                                                              addr476:
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc7_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr454:
                                                                                                                                 §§push(fileName);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§pop().§§slot[6] = §§pop().match(/composites\/main\/(.*)\.xml$/i);
                                                                                                                                    addr393:
                                                                                                                                    addr463:
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc7_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc6_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr410:
                                                                                                                                             §§push(§§pop().§§slot[6]);
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr415:
                                                                                                                                                      if(_loc7_ || this)
                                                                                                                                                      {
                                                                                                                                                         this.§#!&§(fileName);
                                                                                                                                                         addr426:
                                                                                                                                                         if(_loc7_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(_loc7_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  addr345:
                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc7_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().§§slot[2]);
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc6_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().§§slot[7] = §§pop().match(/cutscenes.lua$/i);
                                                                                                                                                                                    addr381:
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc7_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr314:
                                                                                                                                                                                          §§push(§§newactivation());
                                                                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().§§slot[7]);
                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr329:
                                                                                                                                                                                                      this.§%!^§(fileName);
                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr249:
                                                                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                                                                            if(!(_loc6_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc7_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr267:
                                                                                                                                                                                                                     if(§§pop().§§slot[2].toLowerCase() == "assetmap.xml")
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc7_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.§,!'§(fileName);
                                                                                                                                                                                                                                 addr296:
                                                                                                                                                                                                                                 if(_loc7_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc6_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(false)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr314);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr567);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr502);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr426);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr381);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr329);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr296);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr567);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr498);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr345);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr314);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr495);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr415);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr249);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr501);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr410);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr393);
                                                                                                                                                                                          addr390:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr468);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr463);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr520);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr488);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr454);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr512);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr487);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr454);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr545);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr502);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr476);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr532);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr345);
                                                                                                                                                }
                                                                                                                                                §§goto(addr531);
                                                                                                                                             }
                                                                                                                                             §§goto(addr488);
                                                                                                                                          }
                                                                                                                                          §§goto(addr530);
                                                                                                                                       }
                                                                                                                                       §§goto(addr501);
                                                                                                                                    }
                                                                                                                                    §§goto(addr476);
                                                                                                                                 }
                                                                                                                                 §§goto(addr549);
                                                                                                                              }
                                                                                                                              §§goto(addr488);
                                                                                                                           }
                                                                                                                           §§goto(addr566);
                                                                                                                        }
                                                                                                                        §§goto(addr527);
                                                                                                                     }
                                                                                                                     §§goto(addr476);
                                                                                                                  }
                                                                                                                  §§goto(addr531);
                                                                                                               }
                                                                                                               §§goto(addr547);
                                                                                                            }
                                                                                                            addr548:
                                                                                                            §§goto(addr548);
                                                                                                            addr546:
                                                                                                         }
                                                                                                         §§goto(addr390);
                                                                                                      }
                                                                                                      §§goto(addr472);
                                                                                                   }
                                                                                                }
                                                                                                catch(e:Error)
                                                                                                {
                                                                                                   throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§4!<§.§ 5§);
                                                                                                }
                                                                                                §§goto(addr267);
                                                                                             }
                                                                                             §§goto(addr531);
                                                                                          }
                                                                                          §§goto(addr546);
                                                                                       }
                                                                                       §§goto(addr267);
                                                                                    }
                                                                                    §§goto(addr197);
                                                                                 }
                                                                                 §§goto(addr502);
                                                                              }
                                                                              §§goto(addr488);
                                                                           }
                                                                           §§goto(addr197);
                                                                        }
                                                                     }
                                                                     continue;
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(this.§=!O§ == 0)
                                                                        {
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              dispatchEvent(new Event(Event.COMPLETE));
                                                                           }
                                                                        }
                                                                     }
                                                                     return;
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop13;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop10;
                                             }
                                             continue loop9;
                                          }
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
            if(_loc6_ && _loc3_)
            {
               continue;
            }
            §§pop().§§slot[1] = param1;
            if(_loc7_)
            {
               if(_loc7_)
               {
                  §§goto(addr55);
               }
               §§goto(addr102);
            }
            §§goto(addr66);
         }
      }
      
      private function §,!'§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:LoaderContext = null;
         if(_loc7_ || _loc2_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§=!O§);
            if(!_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc7_ || this)
            {
               _loc4_.§=!O§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!_loc6_)
         {
            this.§2T§.push(_loc2_);
         }
         loop0:
         while(true)
         {
            while(this.§2T§.length == 1)
            {
               loop2:
               while(true)
               {
                  this.§2C§ = new Loader();
                  while(_loc7_)
                  {
                     this.§2C§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§3<§);
                     if(_loc7_ || _loc3_)
                     {
                        if(!(_loc6_ && this))
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
               if(true)
               {
                  _loc3_ = new LoaderContext();
                  if(!(_loc6_ && this))
                  {
                     _loc3_.allowCodeImport = true;
                     if(_loc7_)
                     {
                        this.§2C§.loadBytes(this.§&!#§(_loc2_.Library.@swf),_loc3_);
                        break;
                     }
                     break;
                  }
               }
            }
            return;
         }
      }
      
      private function §3<§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§2C§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3<§);
         }
         var _loc2_:XML = this.§2T§.shift();
         if(!_loc4_)
         {
            §5V§.§0!h§(this.§2C§,_loc2_.Library[0]);
            loop0:
            do
            {
               if(this.§2T§.length > 0)
               {
                  loop1:
                  while(true)
                  {
                     this.§2C§ = new Loader();
                     loop2:
                     while(true)
                     {
                        this.§2C§.contentLoaderInfo.addEventListener(Event.INIT,this.§3<§);
                        loop3:
                        while(true)
                        {
                           this.§2C§.loadBytes(this.§&!#§(this.§2T§[0].Library.@swf));
                           loop4:
                           while(_loc3_)
                           {
                              while(true)
                              {
                                 this.§,I§();
                                 if(!_loc4_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr43);
            }
            while(_loc4_ && this);
            
         }
      }
      
      private function §%!^§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = §2H§.§?!m§(this.getFileAsString(param1));
         if(_loc3_)
         {
            §[>§.§+'§(_loc2_);
         }
      }
      
      protected function §#!&§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc3_ || this)
         {
            §4d§.§`y§(_loc2_);
         }
      }
      
      protected function §[+§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§push(param1);
            if(!(_loc6_ && this))
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc6_ && param1))
               {
                  §§push(§§newactivation());
                  if(!_loc6_)
                  {
                     addr42:
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
                              if(§1!d§[_loc13_] == null)
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
                        §!!;§.§?!d§(new §%_§(_loc2_,_loc4_,param1.bitmapData));
                        §,I§();
                     };
                     if(!_loc6_)
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§=!O§);
                        if(!(_loc6_ && this))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(_loc5_ || param1)
                        {
                           _loc3_.§=!O§ = _loc4_;
                        }
                        if(_loc5_)
                        {
                           addr112:
                           var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
                           addr94:
                        }
                        do
                        {
                           this.§"u§(imagePath,onComplete);
                        }
                        while(_loc6_);
                        
                        return;
                        addr108:
                     }
                  }
                  §§goto(addr94);
               }
               §§goto(addr108);
            }
            §§goto(addr112);
         }
         §§goto(addr42);
      }
      
      protected function §,I§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§=!O§);
            if(!_loc3_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.§=!O§ = _loc2_;
            }
            if(!(_loc3_ && _loc1_))
            {
               if(this.§=!O§ == 0)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr82:
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
               return;
            }
         }
         §§goto(addr82);
      }
      
      protected function §get §(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               if(!_loc4_)
               {
                  §§pop().§§slot[2] = function(param1:Bitmap):void
                  {
                     ParticleManager.§2d§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
                  };
                  do
                  {
                     if(_loc4_)
                     {
                        continue loop1;
                     }
                     §§push(this);
                     §§push("particle_emitters/");
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§newactivation());
                        if(!(_loc4_ && param1))
                        {
                           §§push(§§pop() + §§pop().§§slot[1]);
                           if(!(_loc4_ && _loc2_))
                           {
                              addr72:
                              §§push(§§pop() + ".png");
                           }
                           §§push(§§newactivation());
                        }
                        continue;
                     }
                     §§goto(addr72);
                  }
                  while(§§pop().§"u§(§§pop(),§§pop().§§slot[2]), !(_loc3_ || param1));
                  
                  return;
               }
               break;
            }
         }
      }
      
      protected function §;!v§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc6_ && _loc3_))
         {
            §§pop().§§slot[3] = null;
            if(_loc5_)
            {
               loop0:
               while(true)
               {
                  §§push(§§newactivation());
                  if(!_loc6_)
                  {
                     §§pop().§§slot[1] = param1;
                     addr185:
                     loop1:
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           §§pop().§§slot[2] = function(param1:Bitmap):void
                           {
                              §!!;§.§?!d§(new spriteSheetClass(dataObject,param1.bitmapData));
                              §,I§();
                           };
                           if(_loc5_ || _loc3_)
                           {
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 continue loop0;
                              }
                              var _loc3_:*;
                              §§push((_loc3_ = this).§=!O§);
                              if(_loc5_ || param1)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc5_)
                              {
                                 _loc3_.§=!O§ = _loc4_;
                              }
                              if(!_loc6_)
                              {
                                 §§push(§§newactivation());
                                 loop4:
                                 while(true)
                                 {
                                    if(!§§pop().§§slot[1].image)
                                    {
                                       §§push(§§newactivation());
                                       loop5:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop().§§slot[1].name));
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             if(§§pop())
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_ || this)
                                                         {
                                                            addr222:
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  if(_loc6_ && _loc3_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     if(!(_loc5_ || _loc3_))
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§push(Boolean(§§pop().§§slot[1].charCount));
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           throw new Error("Invalid sprite sheet data.");
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           break loop1;
                                                                           addr137:
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr83:
                                                                                 return;
                                                                                 addr146:
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               break loop1;
                                                               §§goto(addr222);
                                                            }
                                                            §§push(this);
                                                            §§push("sprite_sheets/");
                                                            if(!(_loc6_ && this))
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc5_)
                                                               {
                                                                  addr249:
                                                                  §§push(§§pop() + §§pop().§§slot[1].image);
                                                                  §§push(§§newactivation());
                                                               }
                                                               §§pop().§"u§(§§pop(),§§pop().§§slot[2]);
                                                               addr252:
                                                               §§goto(addr83);
                                                               addr252:
                                                            }
                                                            §§goto(addr249);
                                                            addr261:
                                                            addr232:
                                                         }
                                                         else
                                                         {
                                                            addr257:
                                                            §§push(§§newactivation());
                                                         }
                                                         §§pop().§§slot[3] = §5!Z§;
                                                      }
                                                      §§goto(addr261);
                                                   }
                                                }
                                                addr212:
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr212);
                                       }
                                    }
                                    §§goto(addr257);
                                 }
                              }
                              §§goto(addr252);
                           }
                           §§goto(addr232);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§pop().§§slot[3] = §!!-§;
                        for(; !(_loc6_ && this); §§pop().§"u§(§§pop(),§§pop().§§slot[2]),if(!(_loc5_ || _loc3_))
                        {
                           continue;
                        },§§goto(addr137))
                        {
                           §§push(this);
                           §§push("sprite_sheets/");
                           if(_loc5_)
                           {
                              §§push(§§newactivation());
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(§§pop() + §§pop().§§slot[1].name);
                                 if(!_loc6_)
                                 {
                                    addr115:
                                    §§push(§§pop() + ".png");
                                 }
                                 §§push(§§newactivation());
                              }
                              continue;
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr252);
                        §§goto(addr184);
                     }
                     addr185:
                  }
                  §§goto(addr185);
               }
            }
            §§goto(addr146);
         }
         §§goto(addr185);
      }
      
      protected function §=!0§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            §§push(this);
            §§push(56895);
            if(!(_loc4_ && param1))
            {
               §§push(25147);
               if(!_loc4_)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§=A§ = §§pop();
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
               if(!(_loc4_ && _loc3_))
               {
                  §§push(0);
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        param1[_loc2_] -= int(this.§2!r§() * 255);
                        if(_loc5_)
                        {
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              §§push(2);
                              if(_loc5_)
                              {
                                 §§push(§§pop() - §§pop());
                              }
                              else
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       param1[_loc2_] -= int(this.§2!r§() * 255);
                                       if(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc4_ && param1))
                                             {
                                                §§push(§§pop() - int(this.§2!r§() * 255));
                                                if(_loc5_ || this)
                                                {
                                                   if(!(_loc5_ || this))
                                                   {
                                                      break;
                                                   }
                                                   §§push(int(§§pop()));
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr60:
                                                      _loc2_ = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         if(false)
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr65:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!(_loc5_ || _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop5;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr221:
                                                         §§push(int(Math.max(param1.length,65536) - 65536));
                                                      }
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   if(_loc5_)
                                                   {
                                                      addr323:
                                                      _loc2_ = int(param1.length - 1);
                                                      addr230:
                                                      addr324:
                                                      addr322:
                                                      §§push(_loc2_);
                                                      if(_loc5_ || this)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc5_ || param1)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  addr255:
                                                                  param1.inflate();
                                                               }
                                                               if(_loc4_ && this)
                                                               {
                                                                  addr282:
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr230);
                                                                     }
                                                                     §§goto(addr324);
                                                                  }
                                                                  §§push(_loc2_);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr272:
                                                                        §§push(§§pop() - 2);
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           addr281:
                                                                           _loc2_ = int(§§pop());
                                                                           §§goto(addr282);
                                                                        }
                                                                        §§goto(addr322);
                                                                     }
                                                                     §§goto(addr323);
                                                                  }
                                                                  §§goto(addr281);
                                                                  addr318:
                                                               }
                                                               return;
                                                            }
                                                            param1[_loc2_] -= int(this.§2!r§() * 255);
                                                            §§goto(addr318);
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      §§goto(addr281);
                                                   }
                                                   §§goto(addr255);
                                                }
                                                §§goto(addr221);
                                             }
                                             §§goto(addr60);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(param1.length - 1);
                                                if(!(_loc4_ && param1))
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         if(_loc4_ && _loc2_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§goto(addr65);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr221);
                                                      }
                                                   }
                                                   §§goto(addr212);
                                                }
                                                break;
                                             }
                                             addr106:
                                          }
                                       }
                                    }
                                    §§goto(addr221);
                                 }
                                 addr213:
                              }
                              addr144:
                              _loc2_ = int(§§pop());
                              continue;
                           }
                           §§goto(addr212);
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr213);
               }
               §§goto(addr144);
            }
            §§goto(addr212);
         }
      }
      
      protected function §2!r§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push(this.§=A§);
            if(!_loc2_)
            {
               §§push(this.§=A§);
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§=A§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§=A§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() ^ this.§=A§ >>> 35);
               }
               §§pop().§=A§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(this.§=A§);
                  if(_loc1_)
                  {
                     §§push(this.§=A§);
                     if(_loc1_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§=A§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§=A§);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        addr40:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              continue loop3;
                           }
                           if(_loc1_ || _loc1_)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           addr77:
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this);
            §§push(this.§=A§);
            if(!_loc2_)
            {
               §§push(§§pop() & 2147483647);
            }
            §§pop().§=A§ = §§pop();
            §§goto(addr77);
         }
      }
   }
}
