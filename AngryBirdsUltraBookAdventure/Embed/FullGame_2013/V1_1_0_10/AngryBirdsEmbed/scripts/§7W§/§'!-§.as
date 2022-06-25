package §7W§
{
   import §&p§.§^!C§;
   import §+!B§.§7!1§;
   import §+!B§.§<8§;
   import §+!B§.§]!8§;
   import §+F§.§"o§;
   import §+F§.§9w§;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §6K§.§,$§;
   import §6K§.§7!;§;
   import §8§.ParticleManager;
   import §9K§.§4!<§;
   import §>k§.;
   import §>k§.§2&§;
   import §>k§.§3R§;
   import §>k§.§5$§;
   import §>k§.§^F§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §'!-§ extends EventDispatcher implements §9w§
   {
       
      
      protected var § @§:int;
      
      protected var §@Q§:Object;
      
      protected var §]§:int = 0;
      
      protected var §3c§:§2&§;
      
      protected var §7!2§:Vector.<XML>;
      
      protected var §;$§:Loader;
      
      private var §,N§:String;
      
      public function §'!-§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§@Q§ = {};
            if(_loc2_ || this)
            {
               this.§7!2§ = new Vector.<XML>();
               if(_loc2_)
               {
                  addr62:
                  super();
                  if(_loc2_)
                  {
                     this.§3c§ = new §2&§();
                  }
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function §^X§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,N§ = param1;
         }
      }
      
      public function get §='§() : §5$§
      {
         return this.§3c§;
      }
      
      public function get §1!E§() : Boolean
      {
         return this.§]§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§3c§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§@Q§[param1] as §,$§).§3L§(false);
      }
      
      public function §3!1§(param1:String) : ByteArray
      {
         return (this.§@Q§[param1] as §,$§).content;
      }
      
      public function §5!;§(param1:String, param2:Function) : void
      {
         return §<8§.§%!=§(this.§3!1§(param1),param2);
      }
      
      public function §+X§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§,$§ = null;
         if(!_loc9_)
         {
            if(param2)
            {
               if(!(_loc9_ && this))
               {
                  addr30:
                  this.§2G§(param1);
               }
            }
            var _loc3_:§7!;§ = new §7!;§();
            if(!_loc9_)
            {
               _loc3_.loadBytes(param1);
            }
            var _loc4_:Object = {};
            var _loc5_:* = int(_loc3_.§%!'§() - 1);
            while(_loc5_ >= 0)
            {
               if((_loc6_ = _loc3_.§@_§(_loc5_)).§%;§.substr(-1) == "/")
               {
                  if(!_loc8_)
                  {
                     this.§@Q§[_loc6_.§%;§] = _loc4_[_loc6_.§%;§] = _loc6_;
                     addr89:
                     if(_loc9_ && this)
                     {
                        continue;
                     }
                  }
                  §§push(_loc5_);
                  if(!_loc9_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc5_ = §§pop();
                  continue;
               }
               if(this.§@Q§[_loc6_.§%;§])
               {
                  if(_loc9_ && this)
                  {
                     continue;
                  }
               }
               §§goto(addr89);
            }
            if(!_loc9_)
            {
               this.§^@§(_loc4_);
            }
            return;
         }
         §§goto(addr30);
      }
      
      protected function §^@§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         §§push(null);
         if(_loc7_ || _loc3_)
         {
            §§pop().§§slot[2] = §§pop();
            §§push(§§newactivation());
            §§push(null);
            if(!(_loc6_ && this))
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§newactivation());
                  if(!_loc6_)
                  {
                     §§pop().§§slot[4] = null;
                     §§push(§§newactivation());
                     if(!(_loc6_ && _loc2_))
                     {
                        addr65:
                        §§pop().§§slot[5] = null;
                        §§push(§§newactivation());
                        §§push(null);
                        if(_loc7_)
                        {
                           §§pop().§§slot[6] = §§pop();
                           addr73:
                           §§push(§§newactivation());
                           if(_loc7_)
                           {
                              addr76:
                              §§push(null);
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr84:
                                 §§pop().§§slot[7] = §§pop();
                                 if(!_loc6_)
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc6_)
                                    {
                                       addr91:
                                       §§push(null);
                                       if(!_loc6_)
                                       {
                                          addr94:
                                          §§pop().§§slot[8] = §§pop();
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§goto(addr105);
                                          }
                                          §§goto(addr114);
                                       }
                                       §§goto(addr105);
                                    }
                                 }
                                 §§goto(addr115);
                              }
                              addr105:
                              var jsonObject:Object = null;
                              §§goto(addr104);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr84);
                     }
                     addr104:
                     if(_loc7_ || param1)
                     {
                        addr115:
                        var packageFiles:Object = param1;
                        addr114:
                     }
                     var _loc3_:int = 0;
                     var _loc4_:* = packageFiles;
                     while(§§hasnext(_loc4_,_loc3_))
                     {
                        §§push(§§newactivation());
                        if(_loc7_)
                        {
                           §§pop().§§slot[2] = §§nextname(_loc3_,_loc4_);
                           if(_loc7_)
                           {
                              §§push(§§newactivation());
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(§§pop().§§slot[2]);
                                 if(!_loc6_)
                                 {
                                    if(§§pop().search(/^sprite_sheets\/(.*)\.json$/i) != -1)
                                    {
                                       try
                                       {
                                          §§push(§§newactivation());
                                          if(_loc7_)
                                          {
                                             §§pop().§§slot[9] = JSON.parse((packageFiles[fileName] as §,$§).§3L§(false));
                                             if(_loc7_ || this)
                                             {
                                                this.§[!B§(jsonObject);
                                                if(_loc7_ || param1)
                                                {
                                                   addr212:
                                                   §§push(§§newactivation());
                                                   §§push(§§newactivation());
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      §§push(§§pop().§§slot[2]);
                                                      if(!_loc6_)
                                                      {
                                                         §§pop().§§slot[3] = §§pop().match(/^levels\/Level(.*)\.json$/i);
                                                         if(!_loc6_)
                                                         {
                                                            addr234:
                                                            §§push(levelNameResults);
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     §[4§.§8z§(levelNameResults[1].toLowerCase(),§@Z§.§^&§(this.getFileAsString(fileName)));
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        addr280:
                                                                        §§push(§§newactivation());
                                                                        §§push(§§newactivation());
                                                                        if(_loc7_)
                                                                        {
                                                                           §§pop().§§slot[4] = §§pop().§§slot[2].match(/^particle_emitters\/(.*)\.pex$/i);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 §§push(§§pop().§§slot[4]);
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          this.§?h§(particleNameResults[1]);
                                                                                          addr324:
                                                                                          §§push(§§newactivation());
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                addr335:
                                                                                                §§push(§§pop().§§slot[2]);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§pop().§§slot[5] = §§pop().match(/composites\/data\/(.*)\.xml$/i);
                                                                                                   if(_loc7_ || param1)
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc7_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[5]);
                                                                                                         if(_loc7_ || _loc2_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr371:
                                                                                                                  this.§+t§(fileName);
                                                                                                                  addr375:
                                                                                                                  §§push(§§newactivation());
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr380:
                                                                                                                     §§pop().§§slot[6] = §§pop().§§slot[2].match(/composites\/main\/(.*)\.xml$/i);
                                                                                                                     addr379:
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!(_loc6_ && this))
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[6]);
                                                                                                                           if(!(_loc6_ && this))
                                                                                                                           {
                                                                                                                              addr405:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc7_ || this)
                                                                                                                                 {
                                                                                                                                    addr413:
                                                                                                                                    this.§;X§(fileName);
                                                                                                                                    if(!(_loc6_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr424:
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(_loc7_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr432:
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr440:
                                                                                                                                             §§push(§§pop().§§slot[2]);
                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                             {
                                                                                                                                                §§pop().§§slot[7] = §§pop().match(/cutscenes.lua$/i);
                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   addr458:
                                                                                                                                                   §§push(§§pop().§§slot[7]);
                                                                                                                                                   if(_loc7_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr466:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            addr469:
                                                                                                                                                            this.§,!+§(fileName);
                                                                                                                                                            addr476:
                                                                                                                                                            var swfCutSceneNameResults:Array = fileName.match(/cutscene.swf$/i);
                                                                                                                                                            addr483:
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                            if(_loc7_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr492:
                                                                                                                                                               if(§§pop().§§slot[8])
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc7_ || _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  addr500:
                                                                                                                                                                  this.§,S§(fileName,this.§,N§);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr507:
                                                                                                                                                            if(§§pop().§§slot[2].toLowerCase() == "assetmap.xml")
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  addr528:
                                                                                                                                                                  this.§'r§(fileName);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue;
                                                                                                                                                            addr473:
                                                                                                                                                            addr475:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr507);
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr473);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr492);
                                                                                                                                                }
                                                                                                                                                §§goto(addr507);
                                                                                                                                             }
                                                                                                                                             §§goto(addr476);
                                                                                                                                          }
                                                                                                                                          §§goto(addr475);
                                                                                                                                       }
                                                                                                                                       §§goto(addr492);
                                                                                                                                    }
                                                                                                                                    §§goto(addr528);
                                                                                                                                 }
                                                                                                                                 §§goto(addr469);
                                                                                                                              }
                                                                                                                              §§goto(addr424);
                                                                                                                           }
                                                                                                                           §§goto(addr466);
                                                                                                                        }
                                                                                                                        §§goto(addr432);
                                                                                                                     }
                                                                                                                     §§goto(addr483);
                                                                                                                  }
                                                                                                                  §§goto(addr440);
                                                                                                               }
                                                                                                               §§goto(addr500);
                                                                                                            }
                                                                                                            §§goto(addr375);
                                                                                                         }
                                                                                                         §§goto(addr466);
                                                                                                      }
                                                                                                      §§goto(addr458);
                                                                                                   }
                                                                                                   §§goto(addr413);
                                                                                                }
                                                                                                §§goto(addr469);
                                                                                             }
                                                                                             §§goto(addr379);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr469);
                                                                                    }
                                                                                    §§goto(addr324);
                                                                                 }
                                                                                 §§goto(addr492);
                                                                              }
                                                                              §§goto(addr458);
                                                                           }
                                                                           §§goto(addr469);
                                                                        }
                                                                        §§goto(addr440);
                                                                     }
                                                                     §§goto(addr371);
                                                                  }
                                                                  §§goto(addr469);
                                                               }
                                                               §§goto(addr280);
                                                            }
                                                            §§goto(addr405);
                                                         }
                                                         §§goto(addr469);
                                                      }
                                                      §§goto(addr380);
                                                   }
                                                   §§goto(addr335);
                                                }
                                                §§goto(addr280);
                                             }
                                             §§goto(addr469);
                                          }
                                       }
                                       catch(e:Error)
                                       {
                                          throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§]!8§.§6#§);
                                       }
                                       §§goto(addr234);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr469);
                              }
                              §§goto(addr280);
                           }
                           §§goto(addr234);
                        }
                        §§goto(addr280);
                     }
                     if(!(_loc6_ && param1))
                     {
                        if(this.§]§ == 0)
                        {
                           if(_loc7_)
                           {
                              dispatchEvent(new Event(Event.COMPLETE));
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr76);
               }
               §§goto(addr73);
            }
            §§goto(addr94);
         }
         §§goto(addr65);
      }
      
      private function §'r§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:LoaderContext = null;
         if(_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§]§);
            if(_loc7_ || param1)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               _loc4_.§]§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!(_loc6_ && _loc2_))
         {
            this.§7!2§.push(_loc2_);
            if(_loc7_)
            {
               if(this.§7!2§.length == 1)
               {
                  if(_loc7_ || param1)
                  {
                     addr84:
                     this.§;$§ = new Loader();
                     if(_loc6_ && _loc2_)
                     {
                     }
                     §§goto(addr113);
                  }
                  this.§;$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§1!<§);
                  addr113:
                  _loc3_ = new LoaderContext();
                  if(!_loc6_)
                  {
                     _loc3_.allowCodeImport = true;
                     if(_loc7_ || this)
                     {
                     }
                     §§goto(addr142);
                  }
                  this.§;$§.loadBytes(this.§3!1§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                  §§goto(addr142);
               }
               addr142:
               return;
            }
         }
         §§goto(addr84);
      }
      
      private function §1!<§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§;$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§1!<§);
         }
         var _loc2_:XML = this.§7!2§.shift();
         §"o§.§ else§(this.§;$§,_loc2_.Library[0]);
         if(_loc3_)
         {
            if(this.§7!2§.length > 0)
            {
               if(_loc3_ || this)
               {
                  this.§;$§ = new Loader();
                  if(_loc3_)
                  {
                     this.§;$§.contentLoaderInfo.addEventListener(Event.INIT,this.§1!<§);
                  }
                  §§goto(addr108);
               }
               this.§;$§.loadBytes(this.§3!1§(this.§7!2§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
         addr108:
         this.§]4§();
      }
      
      private function §,!+§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §7!1§.§?4§(this.getFileAsString(param1));
         if(!(_loc3_ && _loc3_))
         {
            §^!C§.§[!&§(_loc2_);
         }
      }
      
      private function §,S§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §^!C§.§throw§(param2,this.§3!1§(param1));
         }
      }
      
      protected function §;X§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc3_)
         {
            §4!<§.§0!1§(_loc2_);
         }
      }
      
      protected function §+t§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || _loc3_)
         {
            §§push(param1);
            if(_loc5_ || _loc2_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc6_ && param1))
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
                              if(§@Q§[_loc13_] == null)
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
                        §3c§.§2%§(new §^F§(_loc2_,_loc4_,param1.bitmapData));
                        §]4§();
                     };
                     if(_loc5_ || _loc3_)
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§]§);
                        if(_loc5_ || this)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(!(_loc6_ && _loc2_))
                        {
                           _loc3_.§]§ = _loc4_;
                        }
                        if(!(_loc6_ && this))
                        {
                           addr112:
                           var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
                           addr110:
                           if(!_loc6_)
                           {
                              addr124:
                              this.§5!;§(imagePath,onComplete);
                           }
                        }
                        §§goto(addr124);
                     }
                     return;
                  }
                  §§goto(addr110);
               }
               §§goto(addr124);
            }
         }
         §§goto(addr112);
      }
      
      protected function §]4§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§]§);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc1_)
            {
               _loc1_.§]§ = _loc2_;
            }
            if(!(_loc4_ && _loc3_))
            {
               if(this.§]§ == 0)
               {
                  if(_loc4_)
                  {
                  }
               }
               §§goto(addr82);
            }
            dispatchEvent(new Event(Event.COMPLETE));
         }
         addr82:
      }
      
      protected function §?h§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc4_ && _loc3_))
         {
            §§pop().§§slot[1] = param1;
            if(_loc3_ || _loc3_)
            {
               §§goto(addr58);
            }
            §§goto(addr63);
         }
         addr58:
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§0O§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         if(!_loc4_)
         {
            addr63:
            §§push(this);
            §§push("particle_emitters/");
            if(!_loc4_)
            {
               §§push(§§newactivation());
               if(_loc3_ || this)
               {
                  §§push(§§pop() + §§pop().§§slot[1]);
                  if(!_loc4_)
                  {
                     addr81:
                     §§push(§§pop() + ".png");
                     §§push(§§newactivation());
                  }
                  §§goto(addr81);
               }
               §§pop().§5!;§(§§pop(),§§pop().§§slot[2]);
               §§goto(addr84);
            }
            §§goto(addr81);
         }
         addr84:
      }
      
      protected function §[!B§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var spriteSheetClass:Class = null;
         if(!(_loc6_ && this))
         {
            §§push(§§newactivation());
            if(_loc5_)
            {
               §§pop().§§slot[1] = param1;
               if(!(_loc6_ && _loc2_))
               {
                  addr43:
                  §§push(§§newactivation());
                  if(!(_loc6_ && _loc3_))
                  {
                     §§pop().§§slot[2] = function(param1:Bitmap):void
                     {
                        §3c§.§2%§(new spriteSheetClass(dataObject,param1.bitmapData));
                        §]4§();
                     };
                     var _loc3_:*;
                     §§push((_loc3_ = this).§]§);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc4_:* = §§pop();
                     if(!(_loc6_ && this))
                     {
                        _loc3_.§]§ = _loc4_;
                     }
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§newactivation());
                        if(!_loc6_)
                        {
                           if(§§pop().§§slot[1].image)
                           {
                              if(!_loc6_)
                              {
                                 spriteSheetClass = §#0§;
                                 addr94:
                                 if(_loc5_ || param1)
                                 {
                                    §§push(this);
                                    §§push("sprite_sheets/");
                                    if(_loc5_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc5_ || this)
                                       {
                                          addr130:
                                          §§push(§§pop() + §§pop().§§slot[1].image);
                                          §§push(§§newactivation());
                                       }
                                       §§pop().§5!;§(§§pop(),§§pop().§§slot[2]);
                                       addr224:
                                       return;
                                       addr133:
                                    }
                                    §§goto(addr130);
                                 }
                              }
                              §§goto(addr133);
                           }
                           else
                           {
                              §§push(Boolean(dataObject.name));
                              if(!(_loc6_ && this))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§pop();
                                       if(!_loc6_)
                                       {
                                          addr177:
                                          §§push(§§newactivation());
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr165:
                                             §§push(Boolean(§§pop().§§slot[1].charCount));
                                          }
                                          §§pop().§§slot[3] = §3R§;
                                          if(!_loc6_)
                                          {
                                             §§push(this);
                                             §§push("sprite_sheets/");
                                             if(_loc5_ || this)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() + §§pop().§§slot[1].name);
                                                   if(_loc5_ || this)
                                                   {
                                                      addr216:
                                                      §§push(§§pop() + ".png");
                                                      §§push(§§newactivation());
                                                   }
                                                   §§goto(addr216);
                                                }
                                                §§pop().§5!;§(§§pop(),§§pop().§§slot[2]);
                                                addr219:
                                                §§goto(addr224);
                                             }
                                             §§goto(addr216);
                                          }
                                       }
                                       §§goto(addr224);
                                    }
                                 }
                              }
                              if(!§§pop())
                              {
                                 throw new Error("Invalid sprite sheet data.");
                              }
                              if(!(_loc6_ && this))
                              {
                                 §§goto(addr177);
                                 §§push(§§newactivation());
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr224);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr219);
                  }
                  §§goto(addr165);
               }
               §§goto(addr94);
            }
            §§goto(addr177);
         }
         §§goto(addr43);
      }
      
      protected function §2G§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc4_ || param1)
         {
            §§push(this);
            §§push(56895);
            if(!(_loc5_ && param1))
            {
               §§push(25147);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§ @§ = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               _loc2_ = int(Math.min(param1.length,65536) - 1);
            }
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ && _loc2_))
            {
               §§push(0);
               if(_loc4_)
               {
                  loop1:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        continue;
                     }
                     §§push(param1.length - 1);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(int(§§pop()));
                        if(_loc4_)
                        {
                           break loop0;
                        }
                        loop9:
                        while(true)
                        {
                           §§push(0);
                           addr206:
                           while(§§pop() >= §§pop())
                           {
                              param1[_loc2_] -= int(this.§5W§() * 255);
                              if(!(_loc5_ && _loc2_))
                              {
                                 break loop1;
                              }
                              break loop9;
                           }
                           addr204:
                           break;
                           loop2:
                           while(true)
                           {
                              §§push(_loc2_);
                              continue loop9;
                              addr196:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc5_ && _loc3_)
                                 {
                                    break loop9;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        addr215:
                        var _loc3_:int = Math.max(param1.length,65536) - 65536;
                        if(!_loc5_)
                        {
                           §§push(param1.length - 1);
                           if(_loc4_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc5_)
                              {
                                 _loc2_ = §§pop();
                                 if(!_loc4_)
                                 {
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    §§goto(addr271);
                                 }
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       param1[_loc2_] -= int(this.§5W§() * 255);
                                       if(_loc5_ && _loc3_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             §§push(2);
                                             if(_loc5_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(§§pop() - §§pop());
                                             while(true)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc5_)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          addr271:
                                          §§goto(addr291);
                                       }
                                    }
                                    §§goto(addr291);
                                 }
                                 param1.inflate();
                                 addr291:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc4_ || param1))
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 return;
                              }
                           }
                           §§goto(addr268);
                        }
                        §§goto(addr251);
                     }
                     while(true)
                     {
                        §§push(int(§§pop()));
                        if(!(_loc5_ && param1))
                        {
                           §§goto(addr196);
                        }
                        break;
                     }
                     §§goto(addr215);
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc5_)
                     {
                        §§push(§§pop() - int(this.§5W§() * 255));
                        if(!_loc5_)
                        {
                           §§goto(addr188);
                        }
                        break;
                     }
                     §§goto(addr196);
                  }
                  §§goto(addr215);
               }
               §§goto(addr206);
            }
            break;
            _loc2_ = §§pop();
            if(_loc4_ || param1)
            {
               continue;
            }
            §§goto(addr215);
         }
         _loc2_ = §§pop();
         if(!(_loc5_ && _loc2_))
         {
            §§goto(addr204);
         }
         §§goto(addr215);
      }
      
      protected function §5W§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§ @§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(this.§ @§);
               if(!_loc1_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§ @§ = §§pop();
            if(_loc2_)
            {
               §§push(this);
               §§push(this.§ @§);
               if(!_loc1_)
               {
                  §§push(§§pop() ^ this.§ @§ >>> 35);
               }
               §§pop().§ @§ = §§pop();
               if(_loc2_ || _loc2_)
               {
                  §§push(this);
                  §§push(this.§ @§);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(this.§ @§);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§ @§ = §§pop();
                  if(_loc2_ || _loc2_)
                  {
                     addr102:
                     §§push(this.§ @§);
                     if(!_loc1_)
                     {
                        §§push(0);
                        if(_loc2_ || _loc1_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr132:
                                 §§push(this);
                                 §§push(this.§ @§);
                                 if(!_loc1_)
                                 {
                                    §§push(§§pop() & 2147483647);
                                 }
                                 §§pop().§ @§ = §§pop();
                                 addr140:
                                 §§push(this.§ @§);
                                 §§push(2147483647);
                              }
                           }
                           §§goto(addr140);
                        }
                        return §§pop() / §§pop();
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr132);
               }
               §§goto(addr102);
            }
         }
         §§goto(addr132);
      }
   }
}
