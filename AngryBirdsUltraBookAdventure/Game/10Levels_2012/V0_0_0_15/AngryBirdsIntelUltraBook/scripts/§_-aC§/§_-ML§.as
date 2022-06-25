package §_-aC§
{
   import §_-0BV§.ParticleManager;
   import §_-6E§.§ var§;
   import §_-6E§.§_-7O§;
   import §_-6E§.§_-Fp§;
   import §_-6E§.§_-So§;
   import §_-6E§.§_-yO§;
   import §_-8d§.§_-mB§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-bm§;
   import §_-dX§.§_-03L§;
   import §_-dX§.§_-J4§;
   import §_-eS§.§_-08D§;
   import §_-eS§.§_-4E§;
   import §_-eS§.§_-Bx§;
   import §_-n§.§_-II§;
   import §_-of§.§_-Ec§;
   import §_-of§.§_-IC§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §_-ML§ extends EventDispatcher implements §_-J4§
   {
       
      
      protected var §_-U2§:int;
      
      protected var §_-09p§:Object;
      
      protected var §_-Xb§:int = 0;
      
      protected var §_-k1§:§_-7O§;
      
      protected var §_-07P§:Vector.<XML>;
      
      protected var §_-l2§:Loader;
      
      public function §_-ML§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-09p§ = {};
         }
         while(true)
         {
            this.§_-07P§ = new Vector.<XML>();
            while(!(_loc1_ && _loc1_))
            {
               super();
               do
               {
                  this.§_-k1§ = new §_-7O§();
               }
               while(_loc1_ && _loc1_);
               
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      public function get §_-07S§() : § var§
      {
         return this.§_-k1§;
      }
      
      public function get §_-wB§() : Boolean
      {
         return this.§_-Xb§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-k1§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§_-09p§[param1] as §_-Ec§).§_-08J§(false);
      }
      
      public function §_-mr§(param1:String) : ByteArray
      {
         return (this.§_-09p§[param1] as §_-Ec§).content;
      }
      
      public function §_-i4§(param1:String, param2:Function) : void
      {
         return §_-Bx§.§_-R7§(this.§_-mr§(param1),param2);
      }
      
      public function §_-Vt§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:§_-Ec§ = null;
         if(!_loc8_)
         {
            if(param2)
            {
               if(!(_loc8_ && _loc3_))
               {
                  addr31:
                  this.§_-xu§(param1);
               }
            }
            var _loc3_:§_-IC§ = new §_-IC§();
            if(_loc9_ || _loc3_)
            {
               _loc3_.loadBytes(param1);
            }
            var _loc4_:Object = {};
            var _loc5_:* = int(_loc3_.§_-RC§() - 1);
            while(_loc5_ >= 0)
            {
               if((_loc6_ = _loc3_.§_-ct§(_loc5_)).§_-UM§.substr(-1) == "/")
               {
                  if(!_loc9_)
                  {
                     addr90:
                     var _loc7_:*;
                     _loc4_[_loc6_.§_-UM§] = _loc7_ = _loc6_;
                     this.§_-09p§[_loc6_.§_-UM§] = _loc7_;
                     if(!(_loc9_ || this))
                     {
                        continue;
                     }
                  }
                  §§push(_loc5_);
                  if(_loc9_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc5_ = §§pop();
                  continue;
               }
               if(this.§_-09p§[_loc6_.§_-UM§])
               {
                  if(!_loc9_)
                  {
                     continue;
                  }
               }
               §§goto(addr90);
            }
            if(!(_loc8_ && this))
            {
               this.§_-Ne§(_loc4_);
            }
            return;
         }
         §§goto(addr31);
      }
      
      protected function §_-Ne§(param1:Object) : void
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
                                       loop10:
                                       while(!_loc6_)
                                       {
                                          §§pop().§§slot[5] = §§pop();
                                          loop11:
                                          for(; !_loc6_; if(!(_loc7_ || _loc3_))
                                          {
                                             continue;
                                          },if(false)
                                          {
                                             §§goto(addr67);
                                          }
                                          else
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
                                                   if(!_loc6_)
                                                   {
                                                      §§pop().§§slot[2] = §§pop();
                                                      if(_loc7_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop().§§slot[2]);
                                                            if(_loc7_)
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
                                                                           addr212:
                                                                           §§pop().§§slot[8] = JSON.parse((packageFiles[fileName] as §_-Ec§).§_-08J§(false));
                                                                           if(!_loc6_)
                                                                           {
                                                                              this.§_-5F§(jsonObject);
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 var levelNameResults:Array = fileName.match(/^levels\/Level(.*)\.json$/i);
                                                                                 addr531:
                                                                                 addr530:
                                                                                 if(levelNameResults)
                                                                                 {
                                                                                    addr532:
                                                                                    LevelManager.§_-tc§(levelNameResults[1].toLowerCase(),§_-bm§.§_-009§(this.getFileAsString(fileName)));
                                                                                 }
                                                                                 addr547:
                                                                                 addr548:
                                                                                 addr566:
                                                                                 §§push(§§newactivation());
                                                                                 §§push(fileName);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§pop().§§slot[4] = §§pop().match(/^particle_emitters\/(.*)\.pex$/i);
                                                                                    addr525:
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr494:
                                                                                       §§push(§§newactivation());
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          addr502:
                                                                                          if(§§pop().§§slot[4])
                                                                                          {
                                                                                             addr503:
                                                                                             this.§_-AF§(particleNameResults[1]);
                                                                                             addr509:
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr472:
                                                                                                §§push(§§newactivation());
                                                                                                §§push(§§newactivation());
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr482:
                                                                                                      §§push(§§pop().§§slot[2]);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         addr484:
                                                                                                         §§pop().§§slot[5] = §§pop().match(/composites\/data\/(.*)\.xml$/i);
                                                                                                         addr491:
                                                                                                         §§push(§§newactivation());
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr461:
                                                                                                            if(§§pop().§§slot[5])
                                                                                                            {
                                                                                                               addr462:
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  this.§_-pW§(fileName);
                                                                                                                  addr468:
                                                                                                               }
                                                                                                               §§goto(addr491);
                                                                                                            }
                                                                                                            addr430:
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr433:
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                               {
                                                                                                                  addr441:
                                                                                                                  §§pop().§§slot[6] = §§pop().§§slot[2].match(/composites\/main\/(.*)\.xml$/i);
                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                     addr400:
                                                                                                                     §§push(compositeNameResults);
                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr409:
                                                                                                                           if(_loc7_ || this)
                                                                                                                           {
                                                                                                                              this.§_-070§(fileName);
                                                                                                                              addr420:
                                                                                                                              if(_loc7_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr372:
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(_loc7_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§§slot[2]);
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc7_ || param1)
                                                                                                                                       {
                                                                                                                                          §§pop().§§slot[7] = §§pop().match(/cutscenes.lua$/i);
                                                                                                                                          addr328:
                                                                                                                                          addr397:
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr339:
                                                                                                                                                §§push(§§pop().§§slot[7]);
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr347:
                                                                                                                                                            if(_loc7_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  this.§_-xJ§(fileName);
                                                                                                                                                                  addr360:
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc7_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        addr264:
                                                                                                                                                                        §§push(§§newactivation());
                                                                                                                                                                        if(_loc7_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc6_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr297:
                                                                                                                                                                                       if(§§pop().§§slot[2].toLowerCase() == "assetmap.xml")
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc7_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§_-8e§(fileName);
                                                                                                                                                                                                   addr315:
                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr328);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr567);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr509);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr462);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr347);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr503);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr360);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr315);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr567);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr494);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr491);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr430);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr400);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr328);
                                                                                                                                                                        addr369:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr468);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr397);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr409);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr420);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr264);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr531);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr502);
                                                                                                                                                }
                                                                                                                                                §§goto(addr400);
                                                                                                                                             }
                                                                                                                                             §§goto(addr530);
                                                                                                                                          }
                                                                                                                                          §§goto(addr372);
                                                                                                                                       }
                                                                                                                                       §§goto(addr482);
                                                                                                                                    }
                                                                                                                                    §§goto(addr441);
                                                                                                                                 }
                                                                                                                                 §§goto(addr433);
                                                                                                                              }
                                                                                                                              §§goto(addr441);
                                                                                                                           }
                                                                                                                           §§goto(addr532);
                                                                                                                        }
                                                                                                                        §§goto(addr372);
                                                                                                                     }
                                                                                                                     §§goto(addr461);
                                                                                                                     addr455:
                                                                                                                  }
                                                                                                                  §§goto(addr525);
                                                                                                               }
                                                                                                               §§goto(addr472);
                                                                                                            }
                                                                                                            §§goto(addr547);
                                                                                                         }
                                                                                                         §§goto(addr472);
                                                                                                      }
                                                                                                      §§goto(addr531);
                                                                                                   }
                                                                                                   §§goto(addr548);
                                                                                                }
                                                                                                §§goto(addr531);
                                                                                             }
                                                                                             §§goto(addr566);
                                                                                          }
                                                                                          §§goto(addr472);
                                                                                       }
                                                                                       §§goto(addr531);
                                                                                    }
                                                                                    §§goto(addr532);
                                                                                 }
                                                                                 addr549:
                                                                                 §§goto(addr549);
                                                                                 addr546:
                                                                              }
                                                                              §§goto(addr455);
                                                                           }
                                                                           §§goto(addr369);
                                                                        }
                                                                     }
                                                                     catch(e:Error)
                                                                     {
                                                                        throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§_-4E§.§_-ju§);
                                                                     }
                                                                     §§goto(addr531);
                                                                  }
                                                                  §§goto(addr491);
                                                               }
                                                               §§goto(addr546);
                                                            }
                                                            §§goto(addr297);
                                                         }
                                                         §§goto(addr339);
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   §§goto(addr484);
                                                }
                                                §§goto(addr212);
                                             }
                                             if(_loc7_ || this)
                                             {
                                                if(this.§_-Xb§ == 0)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      addr584:
                                                      dispatchEvent(new Event(Event.COMPLETE));
                                                   }
                                                }
                                                return;
                                             }
                                             §§goto(addr584);
                                          })
                                          {
                                             §§push(§§newactivation());
                                             while(true)
                                             {
                                                §§push(null);
                                                addr130:
                                                while(!(_loc6_ && this))
                                                {
                                                   §§pop().§§slot[6] = §§pop();
                                                   while(!_loc6_)
                                                   {
                                                      §§push(§§newactivation());
                                                      continue loop9;
                                                      if(_loc7_ || param1)
                                                      {
                                                         continue loop11;
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop7;
                                                addr71:
                                                if(_loc6_ && param1)
                                                {
                                                   continue;
                                                }
                                                addr78:
                                                §§push(null);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§pop().§§slot[8] = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc7_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr69:
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               §§goto(addr71);
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop3;
                                                         addr92:
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop10;
                                                }
                                                while(!(_loc6_ && _loc2_))
                                                {
                                                   §§pop().§§slot[7] = §§pop();
                                                   while(_loc7_ || param1)
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr69);
                                                         continue loop11;
                                                      }
                                                      continue loop11;
                                                      if(!(_loc7_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr51);
                                                   }
                                                   continue loop2;
                                                   §§goto(addr78);
                                                }
                                                §§goto(addr130);
                                             }
                                          }
                                          continue loop8;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              if(!(_loc7_ || _loc3_))
                              {
                                 continue;
                              }
                              §§goto(addr110);
                              §§push(null);
                           }
                        }
                     }
                  }
               }
            }
            if(_loc6_ && param1)
            {
               continue;
            }
            §§pop().§§slot[1] = param1;
            if(!_loc6_)
            {
               §§goto(addr44);
            }
            §§goto(addr92);
         }
      }
      
      private function §_-8e§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LoaderContext = null;
         if(_loc6_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§_-Xb§);
            if(_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               _loc4_.§_-Xb§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc6_ || this)
         {
            this.§_-07P§.push(_loc2_);
            while(true)
            {
               §§goto(addr81);
            }
         }
         while(true)
         {
            if(false)
            {
               addr81:
               §§goto(addr144);
            }
            else
            {
               _loc3_ = new LoaderContext();
               if(!(_loc7_ && param1))
               {
                  _loc3_.allowCodeImport = true;
                  if(_loc6_ || param1)
                  {
                  }
                  §§goto(addr144);
               }
               this.§_-l2§.loadBytes(this.§_-mr§(_loc2_.Library.@swf),_loc3_);
            }
            addr144:
            while(this.§_-07P§.length == 1)
            {
               continue loop0;
            }
            return;
         }
      }
      
      private function §_-pE§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§_-l2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-pE§);
         }
         var _loc2_:XML = this.§_-07P§.shift();
         if(!_loc4_)
         {
            §_-03L§.§_-1L§(this.§_-l2§,_loc2_.Library[0]);
            loop0:
            while(true)
            {
               if(this.§_-07P§.length <= 0)
               {
                  while(true)
                  {
                     this.§_-0BN§();
                     if(_loc4_)
                     {
                        addr78:
                        do
                        {
                           if(_loc4_ && _loc3_)
                           {
                              continue loop0;
                           }
                        }
                        while(!(_loc3_ || param1));
                        
                        continue;
                        addr78:
                     }
                     addr48:
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     addr126:
                     while(true)
                     {
                        this.§_-l2§ = new Loader();
                        §§goto(addr48);
                     }
                     while(true)
                     {
                        this.§_-l2§.contentLoaderInfo.addEventListener(Event.INIT,this.§_-pE§);
                        continue loop0;
                     }
                  }
                  return;
               }
               §§goto(addr126);
            }
         }
         while(true)
         {
            this.§_-l2§.loadBytes(this.§_-mr§(this.§_-07P§[0].Library.@swf));
            §§goto(addr78);
         }
      }
      
      private function §_-xJ§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §_-08D§.§_-0BY§(this.getFileAsString(param1));
         if(!_loc3_)
         {
            §_-II§.§_-f2§(_loc2_);
         }
      }
      
      protected function §_-070§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc4_)
         {
            §_-mB§.§_-er§(_loc2_);
         }
      }
      
      protected function §_-pW§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && this))
         {
            §§push(param1);
            if(_loc6_ || _loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§newactivation());
                  if(_loc6_ || _loc2_)
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
                              if(§_-09p§[_loc13_] == null)
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
                        §_-k1§.§_-Ho§(new §_-Fp§(_loc2_,_loc4_,param1.bitmapData));
                        §_-0BN§();
                     };
                     if(!_loc5_)
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§_-Xb§);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(!(_loc5_ && this))
                        {
                           _loc3_.§_-Xb§ = _loc4_;
                        }
                        if(!(_loc5_ && this))
                        {
                           addr128:
                           var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
                           addr126:
                        }
                     }
                  }
                  §§goto(addr126);
               }
               do
               {
                  this.§_-i4§(imagePath,onComplete);
               }
               while(!_loc6_);
               
               return;
            }
         }
         §§goto(addr128);
      }
      
      protected function §_-0BN§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§_-Xb§);
            if(!_loc4_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               _loc1_.§_-Xb§ = _loc2_;
            }
            if(!(_loc4_ && _loc2_))
            {
               addr65:
               if(this.§_-Xb§ == 0)
               {
                  if(!_loc4_)
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
            return;
         }
         §§goto(addr65);
      }
      
      protected function §_-AF§(param1:String) : void
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
               if(!_loc4_)
               {
                  break;
               }
               §§pop().§§slot[2] = function(param1:Bitmap):void
               {
                  ParticleManager.§_-01T§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
               };
               do
               {
                  §§push(this);
                  §§push("particle_emitters/");
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§newactivation());
                     if(_loc3_)
                     {
                        continue;
                     }
                     §§push(§§pop() + §§pop().§§slot[1]);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() + ".png");
                     }
                  }
               }
               while(§§pop().§_-i4§(§§pop(),§§pop().§§slot[2]), _loc3_ && _loc3_);
               
               if(!(_loc3_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      protected function §_-5F§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || _loc2_)
         {
            §§pop().§§slot[3] = null;
            if(_loc6_ || this)
            {
               loop0:
               while(true)
               {
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
                     §§pop().§§slot[1] = param1;
                     if(_loc6_ || _loc3_)
                     {
                        §§push(§§newactivation());
                        if(_loc6_ || this)
                        {
                           §§pop().§§slot[2] = function(param1:Bitmap):void
                           {
                              §_-k1§.§_-Ho§(new spriteSheetClass(dataObject,param1.bitmapData));
                              §_-0BN§();
                           };
                           if(!_loc5_)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              var _loc3_:*;
                              §§push((_loc3_ = this).§_-Xb§);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc6_)
                              {
                                 _loc3_.§_-Xb§ = _loc4_;
                              }
                              if(_loc6_ || _loc2_)
                              {
                                 §§push(§§newactivation());
                                 loop1:
                                 while(true)
                                 {
                                    if(!§§pop().§§slot[1].image)
                                    {
                                       §§push(§§newactivation());
                                       break loop0;
                                    }
                                    break;
                                    addr157:
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§push(Boolean(§§pop().§§slot[1].charCount));
                                    if(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          while(§§pop())
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                if(_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      addr183:
                                                      while(true)
                                                      {
                                                         if(_loc5_ && _loc2_)
                                                         {
                                                            break loop0;
                                                         }
                                                         §§pop().§§slot[3] = §_-yO§;
                                                         if(!(_loc6_ || this))
                                                         {
                                                            break loop1;
                                                         }
                                                         §§push(this);
                                                         §§push("sprite_sheets/");
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§push(§§pop() + §§pop().§§slot[1].name);
                                                               if(_loc6_)
                                                               {
                                                                  addr147:
                                                                  §§push(§§pop() + ".png");
                                                                  §§push(§§newactivation());
                                                               }
                                                               §§goto(addr147);
                                                            }
                                                            §§pop().§_-i4§(§§pop(),§§pop().§§slot[2]);
                                                            §§goto(addr94);
                                                         }
                                                         §§goto(addr147);
                                                      }
                                                   }
                                                   addr182:
                                                }
                                                §§push(this);
                                                §§push("sprite_sheets/");
                                                if(!_loc5_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr240:
                                                      §§push(§§pop() + §§pop().§§slot[1].image);
                                                      §§push(§§newactivation());
                                                   }
                                                   §§pop().§_-i4§(§§pop(),§§pop().§§slot[2]);
                                                   addr94:
                                                   return;
                                                   addr243:
                                                }
                                                §§goto(addr240);
                                                addr252:
                                             }
                                             while(!_loc5_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr157);
                                                      }
                                                      else
                                                      {
                                                         addr249:
                                                         §§pop().§§slot[3] = §_-So§;
                                                         §§goto(addr252);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr183);
                                                   }
                                                }
                                             }
                                             §§goto(addr243);
                                          }
                                          throw new Error("Invalid sprite sheet data.");
                                          addr171:
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr211);
                                             }
                                             addr210:
                                          }
                                          §§goto(addr171);
                                       }
                                       addr208:
                                    }
                                    §§goto(addr210);
                                 }
                                 addr248:
                                 §§goto(addr249);
                                 §§push(§§newactivation());
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr248);
                        }
                        §§goto(addr249);
                     }
                     §§goto(addr223);
                  }
                  break;
               }
               while(true)
               {
                  §§goto(addr208);
                  §§goto(addr183);
               }
            }
            §§goto(addr182);
         }
         §§goto(addr249);
      }
      
      protected function §_-xu§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(!_loc5_)
         {
            §§push(this);
            §§push(56895);
            if(!(_loc5_ && _loc2_))
            {
               §§push(25147);
               if(!_loc5_)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§_-U2§ = §§pop();
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
            if(!_loc5_)
            {
               §§push(0);
               if(_loc4_ || _loc2_)
               {
                  if(_loc4_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!_loc5_)
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           §§push(param1.length - 1);
                           loop2:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              addr111:
                              loop7:
                              while(_loc4_)
                              {
                                 _loc2_ = §§pop();
                                 loop3:
                                 while(true)
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
                                             §§push(0);
                                             while(§§pop() >= §§pop())
                                             {
                                                param1[_loc2_] -= int(this.§_-6i§() * 255);
                                                if(_loc4_)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc4_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§pop() - int(this.§_-6i§() * 255));
                                                         if(_loc5_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            break loop5;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(!_loc5_)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc5_ && param1)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  addr148:
                                                                  addr117:
                                                                  §§push(_loc2_ - 2);
                                                               }
                                                               break loop5;
                                                            }
                                                            §§push(int(§§pop()));
                                                            break loop7;
                                                         }
                                                         continue loop2;
                                                         addr200:
                                                      }
                                                      §§goto(addr117);
                                                   }
                                                   break loop5;
                                                }
                                                break;
                                             }
                                             §§goto(addr200);
                                             §§push(Math.max(param1.length,65536) - 65536);
                                             addr192:
                                          }
                                          break;
                                       }
                                       var _loc3_:* = §§pop();
                                       if(_loc4_)
                                       {
                                          addr302:
                                          _loc2_ = int(param1.length - 1);
                                          addr209:
                                          addr301:
                                          addr303:
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(_loc3_);
                                                if(!(_loc5_ && this))
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            param1.inflate();
                                                         }
                                                         addr258:
                                                         §§push(_loc2_ - 2);
                                                         if(_loc4_ || this)
                                                         {
                                                            addr277:
                                                            §§push(int(§§pop()));
                                                            if(!_loc5_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               addr280:
                                                               §§goto(addr209);
                                                            }
                                                            §§goto(addr302);
                                                         }
                                                         §§goto(addr301);
                                                         addr297:
                                                      }
                                                      if(_loc4_ || this)
                                                      {
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                            §§goto(addr303);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                   param1[_loc2_] -= int(this.§_-6i§() * 255);
                                                   §§goto(addr297);
                                                }
                                             }
                                             §§goto(addr258);
                                          }
                                          §§goto(addr277);
                                       }
                                       §§goto(addr258);
                                    }
                                 }
                              }
                              _loc2_ = §§pop();
                              continue loop1;
                           }
                        }
                        §§goto(addr114);
                     }
                     else
                     {
                        param1[_loc2_] -= int(this.§_-6i§() * 255);
                     }
                  }
                  §§goto(addr148);
               }
               §§goto(addr192);
            }
            §§goto(addr111);
         }
      }
      
      protected function §_-6i§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this);
            §§push(this.§_-U2§);
            if(_loc2_ || this)
            {
               §§push(this.§_-U2§);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§_-U2§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§_-U2§);
               if(!(_loc1_ && this))
               {
                  §§push(§§pop() ^ this.§_-U2§ >>> 35);
               }
               §§pop().§_-U2§ = §§pop();
               addr59:
               if(!(_loc2_ || this))
               {
                  continue;
               }
               addr25:
               §§push(this.§_-U2§);
               if(_loc2_)
               {
                  §§push(2147483647);
                  if(!_loc2_)
                  {
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           addr42:
                           if(_loc2_)
                           {
                              §§push(this);
                              §§push(this.§_-U2§);
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(§§pop() & 2147483647);
                              }
                              §§pop().§_-U2§ = §§pop();
                           }
                           if(_loc1_)
                           {
                              break;
                           }
                           §§goto(addr59);
                        }
                        §§goto(addr25);
                     }
                     while(_loc2_)
                     {
                        §§push(this.§_-U2§);
                        while(true)
                        {
                           §§goto(addr41);
                        }
                        §§goto(addr42);
                     }
                     addr41:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§_-U2§);
                        if(!_loc1_)
                        {
                           §§push(this.§_-U2§);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§push(§§pop() << 4);
                           }
                           §§push(§§pop() ^ §§pop());
                        }
                        §§pop().§_-U2§ = §§pop();
                        §§goto(addr96);
                     }
                     addr96:
                     addr126:
                  }
                  return §§pop() / §§pop();
               }
               §§goto(addr40);
            }
         }
         §§goto(addr126);
      }
   }
}
