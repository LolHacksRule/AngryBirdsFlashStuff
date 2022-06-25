package §%e§
{
   import §-w§.§]c§;
   import §0!M§.§#!d§;
   import §0!M§.§%!C§;
   import §0!M§.§2!4§;
   import §0!M§.§4!O§;
   import §0!M§.§7U§;
   import §0!N§.§=+§;
   import §0!N§.LevelManager;
   import §0X§.§%'§;
   import §0X§.§7!R§;
   import §0X§.§=-§;
   import §=!M§.§"T§;
   import §=!M§.§3Q§;
   import §?!G§.ParticleManager;
   import §^;§.§6!S§;
   import §^;§.§`E§;
   import §`!i§.§6n§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §[P§ extends EventDispatcher implements §`E§
   {
       
      
      protected var §null§:int;
      
      protected var §,!B§:Object;
      
      protected var § !i§:int = 0;
      
      protected var §@!`§:§4!O§;
      
      protected var §@[§:Vector.<XML>;
      
      protected var §`!u§:Loader;
      
      public function §[P§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§,!B§ = {};
            while(true)
            {
               this.§@[§ = new Vector.<XML>();
            }
            addr81:
         }
         loop1:
         do
         {
            super();
            while(_loc2_)
            {
               this.§@!`§ = new §4!O§();
               if(_loc2_ || this)
               {
                  continue loop1;
               }
            }
            §§goto(addr81);
         }
         while(_loc1_);
         
      }
      
      public function get §`Q§() : §#!d§
      {
         return this.§@!`§;
      }
      
      public function get §"!E§() : Boolean
      {
         return this.§ !i§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§@!`§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§,!B§[param1] as §"T§).§4p§(false);
      }
      
      public function §&!H§(param1:String) : ByteArray
      {
         return (this.§,!B§[param1] as §"T§).content;
      }
      
      public function §?"§(param1:String, param2:Function) : void
      {
         return §7!R§.§6O§(this.§&!H§(param1),param2);
      }
      
      public function §get §(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:§"T§ = null;
         if(_loc9_)
         {
            if(param2)
            {
               if(!_loc8_)
               {
                  addr26:
                  this.§3!P§(param1);
               }
            }
            var _loc3_:§3Q§ = new §3Q§();
            if(_loc9_)
            {
               _loc3_.loadBytes(param1);
            }
            var _loc4_:Object = {};
            var _loc5_:* = int(_loc3_.§'!H§() - 1);
            while(_loc5_ >= 0)
            {
               if((_loc6_ = _loc3_.§"I§(_loc5_)).§,,§.substr(-1) == "/")
               {
                  if(_loc8_)
                  {
                     this.§,!B§[_loc6_.§,,§] = _loc4_[_loc6_.§,,§] = _loc6_;
                     addr85:
                     if(!_loc9_)
                     {
                        continue;
                     }
                  }
                  §§push(_loc5_);
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc5_ = §§pop();
                  continue;
               }
               if(this.§,!B§[_loc6_.§,,§])
               {
                  if(!(_loc9_ || _loc3_))
                  {
                     continue;
                  }
               }
               §§goto(addr85);
            }
            if(_loc9_)
            {
               this.§"!g§(_loc4_);
            }
            return;
         }
         §§goto(addr26);
      }
      
      protected function §"!g§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
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
                              while(true)
                              {
                                 §§pop().§§slot[4] = §§pop();
                                 loop8:
                                 while(_loc6_)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(!_loc7_)
                                    {
                                       §§push(null);
                                       loop10:
                                       while(true)
                                       {
                                          §§pop().§§slot[5] = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(null);
                                                loop13:
                                                while(true)
                                                {
                                                   §§pop().§§slot[6] = §§pop();
                                                   loop14:
                                                   while(_loc6_ || _loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      loop15:
                                                      while(_loc6_)
                                                      {
                                                         §§push(null);
                                                         while(_loc6_ || this)
                                                         {
                                                            §§pop().§§slot[7] = §§pop();
                                                            while(true)
                                                            {
                                                               addr62:
                                                               while(true)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  addr64:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr46:
                                                               continue loop11;
                                                               if(!(_loc6_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc6_ || this))
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(true)
                                                               {
                                                                  var _loc3_:int = 0;
                                                                  var _loc4_:* = packageFiles;
                                                                  addr581:
                                                                  if(§§hasnext(_loc4_,_loc3_))
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        §§push(§§nextname(_loc3_,_loc4_));
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           §§pop().§§slot[2] = §§pop();
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(_loc6_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop().§§slot[2]);
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    if(§§pop().search(/^sprite_sheets\/(.*)\.json$/i) != -1)
                                                                                    {
                                                                                       if(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          try
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§pop().§§slot[8] = JSON.parse((packageFiles[fileName] as §"T§).§4p§(false));
                                                                                                if(!(_loc7_ && _loc3_))
                                                                                                {
                                                                                                   this.§14§(jsonObject);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      var levelNameResults:Array = fileName.match(/^levels\/Level(.*)\.json$/i);
                                                                                                      addr537:
                                                                                                      addr563:
                                                                                                      addr562:
                                                                                                      addr561:
                                                                                                      addr580:
                                                                                                      if(levelNameResults)
                                                                                                      {
                                                                                                         addr539:
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            LevelManager.§6! §(levelNameResults[1].toLowerCase(),§=+§.§"M§(this.getFileAsString(fileName)));
                                                                                                            addr518:
                                                                                                            var particleNameResults:Array = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
                                                                                                            addr516:
                                                                                                            addr517:
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  addr506:
                                                                                                                  addr505:
                                                                                                                  if(particleNameResults)
                                                                                                                  {
                                                                                                                     addr507:
                                                                                                                     this.§=j§(particleNameResults[1]);
                                                                                                                  }
                                                                                                                  addr489:
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        addr495:
                                                                                                                        §§pop().§§slot[5] = fileName.match(/composites\/data\/(.*)\.xml$/i);
                                                                                                                        addr471:
                                                                                                                        addr502:
                                                                                                                        addr494:
                                                                                                                        §§push(compositeSpriteSheetNameResults);
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr482:
                                                                                                                                 this.§'!d§(fileName);
                                                                                                                              }
                                                                                                                              addr435:
                                                                                                                              §§push(§§newactivation());
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(!(_loc7_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc6_ || param1)
                                                                                                                                    {
                                                                                                                                       addr452:
                                                                                                                                       §§pop().§§slot[6] = §§pop().§§slot[2].match(/composites\/main\/(.*)\.xml$/i);
                                                                                                                                       addr459:
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc7_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr419:
                                                                                                                                             §§push(compositeNameResults);
                                                                                                                                             if(_loc6_ || this)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   addr427:
                                                                                                                                                   this.§#!?§(fileName);
                                                                                                                                                   addr431:
                                                                                                                                                }
                                                                                                                                                addr352:
                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr361:
                                                                                                                                                      §§push(§§newactivation());
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().§§slot[2]);
                                                                                                                                                         if(_loc6_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc7_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc7_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§§slot[7] = §§pop().match(/cutscenes.lua$/i);
                                                                                                                                                                     addr395:
                                                                                                                                                                     if(!(_loc7_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc7_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr328:
                                                                                                                                                                                    §§push(§§newactivation());
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().§§slot[7]);
                                                                                                                                                                                       if(_loc6_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             addr341:
                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§48§(fileName);
                                                                                                                                                                                                   addr349:
                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                   if(!_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc7_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc7_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr301:
                                                                                                                                                                                                                  if(§§pop().§§slot[2].toLowerCase() == "assetmap.xml")
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§;!=§(fileName);
                                                                                                                                                                                                                              addr319:
                                                                                                                                                                                                                              if(!(_loc7_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr328);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr581);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr431);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr341);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr349);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr319);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr581);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr537);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr489);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr471);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr352);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr328);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr482);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr395);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr349);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr419);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr516);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr507);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr482);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr459);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr427);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr563);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr518);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr495);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr452);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr435);
                                                                                                                                                }
                                                                                                                                                §§goto(addr419);
                                                                                                                                             }
                                                                                                                                             §§goto(addr495);
                                                                                                                                             addr468:
                                                                                                                                          }
                                                                                                                                          §§goto(addr518);
                                                                                                                                       }
                                                                                                                                       §§goto(addr502);
                                                                                                                                    }
                                                                                                                                    §§goto(addr562);
                                                                                                                                 }
                                                                                                                                 §§goto(addr517);
                                                                                                                              }
                                                                                                                              §§goto(addr494);
                                                                                                                           }
                                                                                                                           §§goto(addr537);
                                                                                                                        }
                                                                                                                        §§goto(addr506);
                                                                                                                     }
                                                                                                                     §§goto(addr561);
                                                                                                                  }
                                                                                                                  §§goto(addr505);
                                                                                                               }
                                                                                                               §§goto(addr539);
                                                                                                            }
                                                                                                            addr559:
                                                                                                            §§goto(addr559);
                                                                                                            addr514:
                                                                                                         }
                                                                                                         §§goto(addr580);
                                                                                                      }
                                                                                                      §§goto(addr514);
                                                                                                      addr560:
                                                                                                   }
                                                                                                   §§goto(addr349);
                                                                                                }
                                                                                                §§goto(addr495);
                                                                                             }
                                                                                             §§goto(addr537);
                                                                                          }
                                                                                          catch(e:Error)
                                                                                          {
                                                                                             throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§%'§.§<!D§);
                                                                                          }
                                                                                          §§goto(addr537);
                                                                                       }
                                                                                       §§goto(addr349);
                                                                                    }
                                                                                    §§goto(addr560);
                                                                                 }
                                                                                 §§goto(addr301);
                                                                              }
                                                                              §§goto(addr361);
                                                                           }
                                                                           §§goto(addr468);
                                                                        }
                                                                     }
                                                                     §§goto(addr537);
                                                                  }
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     if(this.§ !i§ == 0)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           dispatchEvent(new Event(Event.COMPLETE));
                                                                        }
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr62);
                                                            }
                                                            §§push(null);
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§pop().§§slot[8] = §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(_loc7_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§newactivation());
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              §§goto(addr64);
                                                                              addr37:
                                                                              §§pop().§§slot[1] = param1;
                                                                              if(!(_loc6_ || param1))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr46);
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop13;
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §;!=§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LoaderContext = null;
         if(_loc6_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§ !i§);
            if(_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               _loc4_.§ !i§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!_loc7_)
         {
            this.§@[§.push(_loc2_);
            loop0:
            while(true)
            {
               loop1:
               while(this.§@[§.length == 1)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     while(true)
                     {
                        this.§`!u§ = new Loader();
                     }
                     addr87:
                  }
                  while(!_loc7_)
                  {
                     this.§`!u§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§]L§);
                     if(_loc6_ || _loc2_)
                     {
                        if(true)
                        {
                           _loc3_ = new LoaderContext();
                           if(_loc6_)
                           {
                              _loc3_.allowCodeImport = true;
                              if(_loc6_)
                              {
                                 this.§`!u§.loadBytes(this.§&!H§(_loc2_.Library.@swf),_loc3_);
                                 break loop1;
                              }
                              break loop1;
                           }
                        }
                        continue loop1;
                        break loop1;
                     }
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr87);
      }
      
      private function §]L§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§`!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§]L§);
         }
         var _loc2_:XML = this.§@[§.shift();
         if(_loc3_)
         {
            §6!S§.§>!'§(this.§`!u§,_loc2_.Library[0]);
            loop0:
            while(true)
            {
               if(this.§@[§.length <= 0)
               {
                  loop2:
                  while(true)
                  {
                     this.§]!#§();
                     if(_loc4_)
                     {
                        while(true)
                        {
                           if(!(_loc4_ && this))
                           {
                              continue loop2;
                           }
                        }
                        continue loop0;
                        addr73:
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                     addr121:
                     while(true)
                     {
                        this.§`!u§ = new Loader();
                        addr125:
                        while(true)
                        {
                           this.§`!u§.contentLoaderInfo.addEventListener(Event.INIT,this.§]L§);
                        }
                     }
                     while(!(_loc3_ || this))
                     {
                        §§goto(addr125);
                     }
                     continue loop0;
                  }
                  return;
               }
               §§goto(addr121);
            }
         }
         §§goto(addr125);
      }
      
      private function §48§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = §=-§.§-A§(this.getFileAsString(param1));
         if(!(_loc4_ && _loc3_))
         {
            §6n§.§33§(_loc2_);
         }
      }
      
      protected function §#!?§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!(_loc4_ && _loc3_))
         {
            §]c§.§3!+§(_loc2_);
         }
      }
      
      protected function §'!d§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc5_)
               {
                  §§push(§§newactivation());
                  if(_loc6_)
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
                              if(§,!B§[_loc13_] == null)
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
                        §@!`§.§1!L§(new §%!C§(_loc2_,_loc4_,param1.bitmapData));
                        §]!#§();
                     };
                     if(_loc6_)
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§ !i§);
                        if(_loc6_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(_loc6_ || _loc3_)
                        {
                           _loc3_.§ !i§ = _loc4_;
                        }
                        if(!(_loc5_ && _loc3_))
                        {
                           addr113:
                           var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
                           addr111:
                           addr80:
                        }
                        do
                        {
                           this.§?"§(imagePath,onComplete);
                        }
                        while(!(_loc6_ || _loc3_));
                        
                     }
                     return;
                  }
                  §§goto(addr111);
               }
               §§goto(addr80);
            }
         }
         §§goto(addr113);
      }
      
      protected function §]!#§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§ !i§);
            if(_loc3_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               _loc1_.§ !i§ = _loc2_;
            }
            if(!(_loc4_ && _loc3_))
            {
               if(this.§ !i§ == 0)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     addr71:
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
               return;
            }
         }
         §§goto(addr71);
      }
      
      protected function §=j§(param1:String) : void
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
                  ParticleManager.§>m§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
               };
               do
               {
                  §§push(this);
                  §§push("particle_emitters/");
                  if(!_loc4_)
                  {
                     §§push(§§newactivation());
                     if(_loc4_)
                     {
                        continue;
                     }
                     §§push(§§pop() + §§pop().§§slot[1]);
                     if(_loc3_)
                     {
                        §§push(§§pop() + ".png");
                     }
                  }
               }
               while(§§pop().§?"§(§§pop(),§§pop().§§slot[2]), _loc4_ && param1);
               
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §14§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || _loc2_)
         {
            §§pop().§§slot[3] = null;
            if(!(_loc6_ && _loc3_))
            {
               loop0:
               while(true)
               {
                  §§push(§§newactivation());
                  if(!(_loc6_ && this))
                  {
                     §§pop().§§slot[1] = param1;
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           §§pop().§§slot[2] = function(param1:Bitmap):void
                           {
                              §@!`§.§1!L§(new spriteSheetClass(dataObject,param1.bitmapData));
                              §]!#§();
                           };
                           if(_loc5_ || this)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              var _loc3_:*;
                              §§push((_loc3_ = this).§ !i§);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc5_)
                              {
                                 _loc3_.§ !i§ = _loc4_;
                              }
                              if(_loc5_)
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    if(§§pop().§§slot[1].image)
                                    {
                                       §§push(§§newactivation());
                                       break;
                                    }
                                    §§goto(addr98);
                                 }
                                 §§pop().§§slot[3] = §7U§;
                                 §§push(this);
                                 §§push("sprite_sheets/");
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(§§newactivation());
                                    if(_loc5_)
                                    {
                                       addr259:
                                       §§push(§§pop() + §§pop().§§slot[1].image);
                                       §§push(§§newactivation());
                                    }
                                    §§pop().§?"§(§§pop(),§§pop().§§slot[2]);
                                    addr262:
                                    addr98:
                                    §§push(§§newactivation());
                                    loop2:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          break loop0;
                                       }
                                       break loop1;
                                       loop6:
                                       while(true)
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             continue loop1;
                                          }
                                          continue loop2;
                                          loop5:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             addr168:
                                             continue loop6;
                                             if(!(_loc5_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             if(_loc5_ || _loc3_)
                                             {
                                                break loop2;
                                                addr182:
                                             }
                                             else
                                             {
                                                addr242:
                                             }
                                             loop3:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc5_)
                                                {
                                                   continue loop6;
                                                }
                                                §§push(Boolean(§§pop().§§slot[1].charCount));
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   while(§§pop())
                                                   {
                                                      continue loop5;
                                                   }
                                                   throw new Error("Invalid sprite sheet data.");
                                                   addr197:
                                                }
                                                else
                                                {
                                                   addr231:
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    return;
                                    addr262:
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr262);
                           }
                           §§goto(addr182);
                        }
                        break;
                     }
                     §§goto(addr262);
                  }
                  break;
               }
               while(true)
               {
                  §§push(Boolean(§§pop().§§slot[1].name));
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr231);
                     }
                     §§goto(addr197);
                  }
                  §§goto(addr231);
               }
               addr224:
            }
            §§goto(addr242);
         }
         §§goto(addr224);
      }
      
      protected function §3!P§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc4_)
         {
            §§push(this);
            §§push(56895);
            if(_loc4_)
            {
               §§push(25147);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§null§ = §§pop();
            do
            {
               _loc2_ = int(Math.min(param1.length,65536) - 1);
            }
            while(!_loc4_);
            
         }
         loop1:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || param1)
            {
               if(_loc4_ || _loc2_)
               {
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(!_loc5_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc4_)
                           {
                              §§push(param1.length - 1);
                              if(!_loc5_)
                              {
                                 §§push(int(§§pop()));
                                 loop10:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc4_ || _loc3_)
                                    {
                                       while(!_loc5_)
                                       {
                                          while(true)
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc4_ || param1)
                                                {
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr207:
                                                      loop7:
                                                      while(§§pop() >= §§pop())
                                                      {
                                                         param1[_loc2_] -= int(this.§+!;§() * 255);
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!(_loc4_ || param1))
                                                            {
                                                               addr215:
                                                               break;
                                                            }
                                                            §§push(§§pop() - int(this.§+!;§() * 255));
                                                            if(_loc5_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               break loop4;
                                                            }
                                                            §§push(int(§§pop()));
                                                            if(_loc5_ && _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc4_ || param1)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(!(_loc4_ || param1))
                                                               {
                                                                  break loop7;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop5;
                                                      }
                                                      addr208:
                                                      §§goto(addr215);
                                                   }
                                                }
                                                break;
                                             }
                                             var _loc3_:* = §§pop();
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                addr327:
                                                _loc2_ = int(param1.length - 1);
                                                addr328:
                                                addr326:
                                                §§push(_loc2_);
                                                if(_loc4_ || this)
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(!(_loc4_ || _loc3_))
                                                                  {
                                                                     §§goto(addr328);
                                                                  }
                                                                  addr270:
                                                                  param1.inflate();
                                                                  return;
                                                                  addr272:
                                                               }
                                                               §§push(_loc2_);
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  addr283:
                                                                  §§push(§§pop() - 2);
                                                                  if(_loc4_)
                                                                  {
                                                                     addr287:
                                                                     §§push(int(§§pop()));
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        addr305:
                                                                        §§goto(addr328);
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                                  §§goto(addr326);
                                                               }
                                                               §§goto(addr287);
                                                               addr322:
                                                            }
                                                            §§goto(addr305);
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      param1[_loc2_] -= int(this.§+!;§() * 255);
                                                      §§goto(addr322);
                                                   }
                                                   §§goto(addr283);
                                                }
                                                §§goto(addr287);
                                             }
                                             §§goto(addr270);
                                          }
                                          continue loop10;
                                       }
                                       continue loop1;
                                       addr128:
                                    }
                                    §§goto(addr208);
                                 }
                                 addr120:
                              }
                              §§goto(addr215);
                           }
                           §§goto(addr128);
                        }
                        else
                        {
                           param1[_loc2_] -= int(this.§+!;§() * 255);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr133);
               }
               §§goto(addr140);
            }
            §§goto(addr120);
         }
      }
      
      protected function §+!;§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push(this.§null§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(this.§null§);
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§null§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§null§);
               if(_loc1_ || this)
               {
                  §§push(§§pop() ^ this.§null§ >>> 35);
               }
               §§pop().§null§ = §§pop();
               addr43:
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §§push(this);
               §§push(this.§null§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() & 2147483647);
               }
               §§pop().§null§ = §§pop();
               addr73:
               if(!_loc2_)
               {
                  addr75:
                  if(!(_loc2_ && _loc2_))
                  {
                     addr19:
                     §§push(this.§null§);
                     if(!_loc2_)
                     {
                        §§push(2147483647);
                        if(_loc2_ && _loc2_)
                        {
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr43);
                                 }
                                 §§goto(addr73);
                              }
                              §§goto(addr19);
                           }
                           continue;
                           addr40:
                        }
                        return §§pop() / §§pop();
                     }
                     while(true)
                     {
                        §§goto(addr40);
                     }
                     addr39:
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§null§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(this.§null§);
                        if(_loc1_)
                        {
                           §§push(§§pop() << 4);
                        }
                        §§push(§§pop() ^ §§pop());
                     }
                     §§pop().§null§ = §§pop();
                     §§goto(addr75);
                  }
                  addr130:
               }
               while(true)
               {
                  §§goto(addr39);
               }
            }
         }
         §§goto(addr130);
      }
   }
}
