package §%L§
{
   import §#!X§.LevelManager;
   import §#!X§.LevelModel;
   import §3!c§.§<'§;
   import §3!c§.FontSheetJSONGGS;
   import §3!c§.SpriteSheetContainer;
   import §3!c§.SpriteSheetJSONGGS;
   import §3!c§.SpriteSheetXMLGGS;
   import §6Q§.FZip;
   import §6Q§.FZipFile;
   import §8!?§.CompositeSpriteParser;
   import §9!!§.§1!E§;
   import §9!!§.ImageDataUtils;
   import §9!!§.LuaUtils;
   import §?$§.CutSceneManager;
   import §^!h§.ParticleManager;
   import §`M§.§ p§;
   import §`M§.LoadManager;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class PackageManager extends EventDispatcher implements § p§
   {
       
      
      protected var §;!2§:int;
      
      protected var §>V§:Object;
      
      protected var §40§:int = 0;
      
      protected var §^3§:SpriteSheetContainer;
      
      protected var §1K§:Vector.<XML>;
      
      protected var §4$§:Loader;
      
      public function PackageManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>V§ = {};
            loop0:
            while(true)
            {
               this.§1K§ = new Vector.<XML>();
               while(true)
               {
                  super();
                  loop2:
                  while(!(_loc2_ && this))
                  {
                     while(true)
                     {
                        this.§^3§ = new SpriteSheetContainer();
                        if(_loc1_ || this)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function get §`F§() : §<'§
      {
         return this.§^3§;
      }
      
      public function get §;C§() : Boolean
      {
         return this.§40§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^3§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§>V§[param1] as FZipFile).§,s§(false);
      }
      
      public function §1!7§(param1:String) : ByteArray
      {
         return (this.§>V§[param1] as FZipFile).content;
      }
      
      public function §#f§(param1:String, param2:Function) : void
      {
         return ImageDataUtils.§,[§(this.§1!7§(param1),param2);
      }
      
      public function §4S§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:FZipFile = null;
         if(!(_loc8_ && _loc3_))
         {
            if(param2)
            {
               if(_loc9_ || this)
               {
                  addr36:
                  this.§9!R§(param1);
               }
            }
            var _loc3_:FZip = new FZip();
            if(_loc9_)
            {
               _loc3_.loadBytes(param1);
            }
            var _loc4_:Object = {};
            var _loc5_:* = int(_loc3_.§[;§() - 1);
            while(_loc5_ >= 0)
            {
               _loc6_ = _loc3_.§`V§(_loc5_);
               if(!(_loc8_ && _loc3_))
               {
                  if(_loc6_.§2!e§.substr(-1) == "/")
                  {
                     if(_loc9_ || param2)
                     {
                     }
                  }
                  else
                  {
                     if(this.§>V§[_loc6_.§2!e§])
                     {
                        if(_loc9_ || param1)
                        {
                        }
                        addr142:
                        §§push(_loc5_);
                        if(_loc9_ || this)
                        {
                           §§push(§§pop() - 1);
                           if(_loc9_)
                           {
                              addr153:
                              §§push(int(§§pop()));
                           }
                           _loc5_ = §§pop();
                           continue;
                        }
                        §§goto(addr153);
                     }
                     this.§>V§[_loc6_.§2!e§] = _loc4_[_loc6_.§2!e§] = _loc6_;
                     if(_loc8_ && param1)
                     {
                        continue;
                     }
                  }
               }
               §§goto(addr142);
            }
            if(_loc9_ || _loc3_)
            {
               this.§,!`§(_loc4_);
            }
            return;
         }
         §§goto(addr36);
      }
      
      protected function §,!`§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
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
                  while(true)
                  {
                     §§push(null);
                     while(!_loc7_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        while(!(_loc7_ && this))
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(null);
                              addr130:
                              while(true)
                              {
                                 §§pop().§§slot[4] = §§pop();
                                 addr132:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop6;
                                 }
                              }
                           }
                           if(!(_loc6_ || _loc2_))
                           {
                              continue;
                           }
                           if(false)
                           {
                              §§goto(addr54);
                           }
                           else
                           {
                              var _loc3_:int = 0;
                              var _loc4_:* = packageFiles;
                              addr612:
                              if(§§hasnext(_loc4_,_loc3_))
                              {
                                 §§push(§§newactivation());
                                 if(_loc6_)
                                 {
                                    §§push(§§nextname(_loc3_,_loc4_));
                                    if(!_loc7_)
                                    {
                                       §§pop().§§slot[2] = §§pop();
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop().§§slot[2]);
                                             if(!_loc7_)
                                             {
                                                if(§§pop().search(/^sprite_sheets\/(.*)\.json$/i) != -1)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      try
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc7_)
                                                         {
                                                            §§pop().§§slot[8] = JSON.parse((packageFiles[fileName] as FZipFile).§,s§(false));
                                                            if(!_loc7_)
                                                            {
                                                               this.§`r§(jsonObject);
                                                               if(_loc6_ || this)
                                                               {
                                                                  var levelNameResults:Array = fileName.match(/^levels\/Level(.*)\.json$/i);
                                                                  addr572:
                                                                  addr570:
                                                                  addr571:
                                                                  if(levelNameResults)
                                                                  {
                                                                     addr573:
                                                                     LevelManager.§"@§(levelNameResults[1].toLowerCase(),LevelModel.§>!X§(this.getFileAsString(fileName)));
                                                                  }
                                                                  addr611:
                                                                  addr591:
                                                                  addr593:
                                                                  §§push(§§newactivation());
                                                                  §§push(§§newactivation());
                                                                  if(_loc6_)
                                                                  {
                                                                     addr552:
                                                                     §§push(§§pop().§§slot[2]);
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        §§pop().§§slot[4] = §§pop().match(/^particle_emitters\/(.*)\.pex$/i);
                                                                        addr535:
                                                                        addr536:
                                                                        addr537:
                                                                        if(particleNameResults)
                                                                        {
                                                                           addr538:
                                                                           this.§=Q§(particleNameResults[1]);
                                                                        }
                                                                        addr567:
                                                                        §§push(§§newactivation());
                                                                        §§push(§§newactivation());
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           addr517:
                                                                           §§pop().§§slot[5] = §§pop().§§slot[2].match(/composites\/data\/(.*)\.xml$/i);
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              addr476:
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 addr484:
                                                                                 §§push(§§pop().§§slot[5]);
                                                                                 if(_loc6_ || _loc2_)
                                                                                 {
                                                                                    addr492:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr493:
                                                                                       this.§3!K§(fileName);
                                                                                       addr498:
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          addr445:
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc6_ || _loc2_)
                                                                                          {
                                                                                             addr453:
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr456:
                                                                                                §§push(§§pop().§§slot[2]);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§pop().§§slot[6] = §§pop().match(/composites\/main\/(.*)\.xml$/i);
                                                                                                   addr466:
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      addr393:
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(!(_loc7_ && _loc2_))
                                                                                                         {
                                                                                                            addr403:
                                                                                                            §§push(§§pop().§§slot[6]);
                                                                                                            if(!(_loc7_ && this))
                                                                                                            {
                                                                                                               addr411:
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  if(_loc6_ || this)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr421:
                                                                                                                        if(_loc6_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(!(_loc7_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 this.§2!7§(fileName);
                                                                                                                                 addr363:
                                                                                                                                 addr442:
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(_loc6_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§§slot[2]);
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                §§pop().§§slot[7] = §§pop().match(/cutscenes.lua$/i);
                                                                                                                                                addr388:
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   addr319:
                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().§§slot[7]);
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            if(!_loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc7_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr344:
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        this.§%!Q§(fileName);
                                                                                                                                                                        addr351:
                                                                                                                                                                        if(!(_loc7_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              addr253:
                                                                                                                                                                              §§push(§§newactivation());
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr262:
                                                                                                                                                                                       if(§§pop().§§slot[2].toLowerCase() == "assetmap.xml")
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc6_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc6_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§0s§(fileName);
                                                                                                                                                                                                      addr293:
                                                                                                                                                                                                      if(!(_loc7_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc6_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr319);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr612);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr344);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr351);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr611);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr538);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr421);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr293);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr612);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr535);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr319);
                                                                                                                                                                              addr360:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr538);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr388);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr498);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr253);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr572);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr411);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr536);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr403);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr363);
                                                                                                                                                }
                                                                                                                                                §§goto(addr442);
                                                                                                                                             }
                                                                                                                                             §§goto(addr517);
                                                                                                                                          }
                                                                                                                                          §§goto(addr456);
                                                                                                                                       }
                                                                                                                                       §§goto(addr453);
                                                                                                                                    }
                                                                                                                                    §§goto(addr570);
                                                                                                                                 }
                                                                                                                                 §§goto(addr393);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr573);
                                                                                                                        }
                                                                                                                        §§goto(addr466);
                                                                                                                     }
                                                                                                                     §§goto(addr363);
                                                                                                                  }
                                                                                                                  §§goto(addr537);
                                                                                                               }
                                                                                                               §§goto(addr492);
                                                                                                            }
                                                                                                            §§goto(addr484);
                                                                                                         }
                                                                                                         §§goto(addr572);
                                                                                                      }
                                                                                                      §§goto(addr445);
                                                                                                   }
                                                                                                   §§goto(addr493);
                                                                                                }
                                                                                                §§goto(addr552);
                                                                                             }
                                                                                             §§goto(addr535);
                                                                                          }
                                                                                          §§goto(addr476);
                                                                                       }
                                                                                       §§goto(addr517);
                                                                                    }
                                                                                    §§goto(addr445);
                                                                                 }
                                                                                 §§goto(addr571);
                                                                              }
                                                                              §§goto(addr591);
                                                                           }
                                                                           §§goto(addr567);
                                                                        }
                                                                        §§goto(addr572);
                                                                     }
                                                                     §§goto(addr593);
                                                                  }
                                                                  addr592:
                                                                  §§goto(addr592);
                                                                  addr590:
                                                               }
                                                               §§goto(addr360);
                                                               addr214:
                                                            }
                                                            §§goto(addr538);
                                                         }
                                                      }
                                                      catch(e:Error)
                                                      {
                                                         throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§1!E§.§`z§);
                                                      }
                                                      §§goto(addr403);
                                                   }
                                                   §§goto(addr538);
                                                }
                                                §§goto(addr590);
                                             }
                                             §§goto(addr262);
                                          }
                                          §§goto(addr535);
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr517);
                                 }
                                 §§goto(addr262);
                              }
                              if(_loc6_)
                              {
                                 if(this.§40§ == 0)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       addr629:
                                       dispatchEvent(new Event(Event.COMPLETE));
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr629);
                           }
                        }
                        continue loop2;
                     }
                     continue loop1;
                     if(_loc7_ && _loc2_)
                     {
                        continue;
                     }
                     §§push(null);
                     if(_loc6_)
                     {
                        if(_loc6_ || _loc2_)
                        {
                           §§pop().§§slot[8] = §§pop();
                           §§goto(addr77);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr83);
                  }
               }
            }
         }
      }
      
      private function §0s§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LoaderContext = null;
         if(_loc6_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§40§);
            if(!_loc7_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               _loc4_.§40§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc6_ || this)
         {
            this.§1K§.push(_loc2_);
            while(true)
            {
               addr95:
               addr148:
               addr86:
               while(this.§1K§.length == 1)
               {
                  while(true)
                  {
                     this.§4$§ = new Loader();
                  }
               }
               return;
               if(!(_loc6_ || _loc2_))
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr95);
               }
               _loc3_ = new LoaderContext();
               if(_loc6_)
               {
                  _loc3_.allowCodeImport = true;
                  if(_loc6_ || _loc2_)
                  {
                     this.§4$§.loadBytes(this.§1!7§(_loc2_.Library.@swf),_loc3_);
                  }
               }
               §§goto(addr148);
            }
         }
         while(true)
         {
            this.§4$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§%!0§);
            if(!(_loc6_ || _loc2_))
            {
               continue;
            }
            if(_loc6_ || _loc2_)
            {
               §§goto(addr86);
            }
            §§goto(addr101);
         }
      }
      
      private function §%!0§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§4$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%!0§);
         }
         var _loc2_:XML = this.§1K§.shift();
         if(!(_loc4_ && _loc2_))
         {
            LoadManager.§2W§(this.§4$§,_loc2_.Library[0]);
            loop0:
            while(true)
            {
               if(this.§1K§.length <= 0)
               {
                  while(true)
                  {
                     this.§!D§();
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        addr101:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           this.§4$§.loadBytes(this.§1!7§(this.§1K§[0].Library.@swf));
                        }
                     }
                     addr82:
                     while(!(_loc3_ || param1))
                     {
                     }
                  }
                  return;
               }
               while(true)
               {
                  this.§4$§ = new Loader();
                  continue loop0;
                  §§goto(addr82);
               }
            }
         }
         while(true)
         {
            this.§4$§.contentLoaderInfo.addEventListener(Event.INIT,this.§%!0§);
            §§goto(addr101);
         }
      }
      
      private function §%!Q§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = LuaUtils.§=!;§(this.getFileAsString(param1));
         if(_loc4_ || this)
         {
            CutSceneManager.§+[§(_loc2_);
         }
      }
      
      protected function §2!7§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc3_)
         {
            CompositeSpriteParser.§?r§(_loc2_);
         }
      }
      
      protected function §3!K§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc6_ && _loc2_))
         {
            §§push(param1);
            if(!(_loc6_ && _loc3_))
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc5_)
               {
                  §§push(§§newactivation());
                  if(!_loc6_)
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
                        var _loc13_:String = null;
                        var _loc14_:String = null;
                        var _loc2_:XML = new XML(getFileAsString(filePath));
                        var _loc3_:Array = [];
                        var _loc4_:Vector.<XML> = new Vector.<XML>();
                        var _loc5_:XMLList = _loc2_.child("sprite");
                        for each(_loc6_ in _loc5_)
                        {
                           _loc7_ = _loc6_.@file;
                           if(_loc7_)
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
                              if(§>V§[_loc13_] == null)
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
                        §^3§.§?b§(new SpriteSheetXMLGGS(_loc2_,_loc4_,param1.bitmapData));
                        §!D§();
                     };
                     if(!(_loc6_ && this))
                     {
                        addr62:
                        var _loc3_:*;
                        §§push((_loc3_ = this).§40§);
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(_loc5_)
                        {
                           _loc3_.§40§ = _loc4_;
                        }
                        if(_loc5_)
                        {
                           addr116:
                           §§push(§§newactivation());
                           §§push(filePath);
                           if(_loc5_)
                           {
                              addr130:
                              §§pop().§§slot[3] = §§pop().substr(0,filePath.length - 3) + "png";
                           }
                           §§goto(addr130);
                        }
                        do
                        {
                           this.§#f§(imagePath,onComplete);
                        }
                        while(_loc6_ && _loc2_);
                        
                     }
                     return;
                  }
                  §§goto(addr116);
               }
               §§goto(addr62);
            }
            §§goto(addr130);
         }
         §§goto(addr116);
      }
      
      protected function §!D§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§40§);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               _loc1_.§40§ = _loc2_;
            }
            if(_loc4_ || _loc1_)
            {
               if(this.§40§ == 0)
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr82:
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
            return;
         }
         §§goto(addr82);
      }
      
      protected function §=Q§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               if(!_loc3_)
               {
                  §§pop().§§slot[2] = function(param1:Bitmap):void
                  {
                     ParticleManager.§'!B§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
                  };
                  do
                  {
                     if(_loc3_)
                     {
                        continue loop1;
                     }
                     §§push(this);
                     §§push("particle_emitters/");
                     if(!_loc3_)
                     {
                        §§push(§§newactivation());
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§§pop() + §§pop().§§slot[1]);
                           if(!_loc3_)
                           {
                              addr63:
                              §§push(§§pop() + ".png");
                           }
                           §§push(§§newactivation());
                        }
                        continue;
                     }
                     §§goto(addr63);
                  }
                  while(§§pop().§#f§(§§pop(),§§pop().§§slot[2]), _loc3_ && this);
                  
                  return;
               }
               break;
            }
         }
      }
      
      protected function §`r§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[3] = null;
            loop0:
            while(true)
            {
               addr37:
               loop1:
               while(true)
               {
                  §§push(§§newactivation());
                  if(_loc5_)
                  {
                     §§pop().§§slot[1] = param1;
                     if(!(_loc6_ && _loc3_))
                     {
                        continue loop0;
                     }
                     addr176:
                     loop2:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop3:
                        while(_loc5_ || this)
                        {
                           §§pop().§§slot[3] = FontSheetJSONGGS;
                           loop4:
                           while(true)
                           {
                              if(!(_loc5_ || param1))
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc5_ || _loc3_))
                                    {
                                       break;
                                    }
                                    if(_loc5_ || this)
                                    {
                                       if(!_loc6_)
                                       {
                                          break loop1;
                                       }
                                       addr267:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop().§§slot[1].image));
                                          addr270:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                break loop4;
                                             }
                                             §§push(§§newactivation());
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop().§§slot[1].name));
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(§§pop());
                                          if(_loc5_ || this)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!§§pop())
                                          {
                                             while(§§pop())
                                             {
                                                continue loop2;
                                             }
                                             throw new Error("Invalid sprite sheet data.");
                                             addr174:
                                          }
                                       }
                                       addr226:
                                       while(!_loc5_)
                                       {
                                          §§goto(addr270);
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop3;
                              }
                              if(_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push("sprite_sheets/");
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc5_)
                                          {
                                             continue loop4;
                                          }
                                          §§push(§§pop() + §§pop().§§slot[1].name);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + ".png");
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 §§push(this);
                                 §§push("sprite_sheets/");
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(§§newactivation());
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr261:
                                       §§push(§§pop() + §§pop().§§slot[1].image);
                                       §§push(§§newactivation());
                                    }
                                    §§pop().§#f§(§§pop(),§§pop().§§slot[2]);
                                    addr88:
                                    return;
                                    addr265:
                                 }
                                 §§goto(addr261);
                                 addr276:
                              }
                              §§goto(addr265);
                           }
                           §§push(§§newactivation());
                           break;
                        }
                        §§pop().§§slot[3] = SpriteSheetJSONGGS;
                        §§goto(addr276);
                     }
                  }
                  break;
               }
               while(true)
               {
                  §§push(Boolean(§§pop().§§slot[1].charCount));
                  if(_loc5_ || _loc3_)
                  {
                     §§goto(addr174);
                  }
                  §§goto(addr226);
               }
            }
         }
         §§goto(addr267);
      }
      
      protected function §9!R§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc5_)
         {
            §§push(this);
            §§push(56895);
            if(!_loc4_)
            {
               §§push(25147);
               if(_loc5_)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§;!2§ = §§pop();
         }
         do
         {
            _loc2_ = int(Math.min(param1.length,65536) - 1);
         }
         while(_loc4_ && _loc2_);
         
         loop1:
         while(true)
         {
            §§push(_loc2_);
            loop2:
            while(true)
            {
               §§push(0);
               if(_loc5_)
               {
                  if(!_loc4_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(param1.length - 1);
                           if(_loc5_ || this)
                           {
                              §§push(int(§§pop()));
                              loop4:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc5_)
                                 {
                                    loop5:
                                    while(!(_loc4_ && _loc3_))
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc5_)
                                             {
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr196:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         param1[_loc2_] -= int(this.§%W§() * 255);
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!_loc4_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §§push(§§pop() - int(this.§%W§() * 255));
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           if(!(_loc4_ && param1))
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 if(!(_loc5_ || _loc3_))
                                                                                 {
                                                                                    addr205:
                                                                                    §§push(int(Math.max(param1.length,65536) - 65536));
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr197:
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue;
                                                                                    break loop7;
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        addr124:
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     §§goto(addr205);
                                                                  }
                                                                  _loc2_ = §§pop();
                                                                  break loop5;
                                                               }
                                                               break;
                                                            }
                                                            break loop7;
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                }
                                                addr195:
                                             }
                                             break;
                                          }
                                          var _loc3_:* = §§pop();
                                          if(_loc5_ || param1)
                                          {
                                             addr309:
                                             _loc2_ = int(param1.length - 1);
                                             addr308:
                                          }
                                          addr310:
                                          §§push(_loc2_);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc5_ || this)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  param1.inflate();
                                                                  §§goto(addr265);
                                                               }
                                                               addr281:
                                                               §§push(_loc2_ - 2);
                                                               if(_loc5_)
                                                               {
                                                                  addr285:
                                                                  _loc2_ = int(§§pop());
                                                                  addr286:
                                                                  §§goto(addr310);
                                                               }
                                                               §§goto(addr308);
                                                               addr303:
                                                            }
                                                            §§goto(addr286);
                                                         }
                                                         addr265:
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr310);
                                                         }
                                                         return;
                                                      }
                                                      param1[_loc2_] -= int(this.§%W§() * 255);
                                                      §§goto(addr303);
                                                   }
                                                   §§goto(addr281);
                                                }
                                                §§goto(addr309);
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr285);
                                       }
                                    }
                                    continue loop1;
                                    addr110:
                                 }
                                 §§goto(addr197);
                              }
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr110);
                     }
                     else
                     {
                        param1[_loc2_] -= int(this.§%W§() * 255);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(_loc2_);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§goto(addr195);
                        }
                     }
                     §§goto(addr197);
                  }
                  break;
               }
               §§goto(addr196);
            }
            §§goto(addr124);
         }
      }
      
      protected function §%W§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§;!2§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(this.§;!2§);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§;!2§ = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this);
            §§push(this.§;!2§);
            if(_loc2_)
            {
               §§push(§§pop() ^ this.§;!2§ >>> 35);
            }
            §§pop().§;!2§ = §§pop();
            addr126:
            while(true)
            {
               §§push(this);
               §§push(this.§;!2§);
               if(!(_loc1_ && this))
               {
                  §§push(this.§;!2§);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(§§pop() << 4);
                  }
                  §§push(§§pop() ^ §§pop());
               }
               §§pop().§;!2§ = §§pop();
               continue loop0;
            }
         }
      }
   }
}
