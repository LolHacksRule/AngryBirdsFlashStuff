package §,U§
{
   import § !;§.§#c§;
   import § !;§.§,'§;
   import § !;§.§=-§;
   import §"X§.§&?§;
   import §"X§.§^!;§;
   import §'6§.§7!>§;
   import §'6§.§[!8§;
   import §-!0§.§[!-§;
   import §2!#§.§9!5§;
   import §;!'§.ParticleManager;
   import §<!B§.§+!D§;
   import §<!B§.§6w§;
   import §<!B§.§<O§;
   import §<!B§.§>!$§;
   import §<!B§.§^i§;
   import §>!C§.§6M§;
   import §>!C§.§9R§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §+u§ extends EventDispatcher implements §&?§
   {
       
      
      protected var §2!+§:int;
      
      protected var §1!H§:Object;
      
      protected var §+A§:int = 0;
      
      protected var §@!§:§+!D§;
      
      protected var §7r§:Vector.<XML>;
      
      protected var §^!#§:Loader;
      
      public function §+u§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§1!H§ = {};
            if(_loc1_ || _loc1_)
            {
               this.§7r§ = new Vector.<XML>();
               if(_loc1_ || this)
               {
                  addr66:
                  super();
                  if(_loc1_ || _loc2_)
                  {
                     addr75:
                     this.§@!§ = new §+!D§();
                  }
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr66);
      }
      
      public function get §'a§() : §<O§
      {
         return this.§@!§;
      }
      
      public function get §98§() : Boolean
      {
         return this.§+A§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§@!§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§1!H§[param1] as §7!>§).§=Y§(false);
      }
      
      public function §7"§(param1:String) : ByteArray
      {
         return (this.§1!H§[param1] as §7!>§).content;
      }
      
      public function §"$§(param1:String, param2:Function) : void
      {
         return §,'§.§28§(this.§7"§(param1),param2);
      }
      
      public function §?s§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§7!>§ = null;
         if(_loc8_ || param1)
         {
            if(param2)
            {
               if(!_loc9_)
               {
                  addr30:
                  this.§9J§(param1);
               }
            }
            var _loc3_:§[!8§ = new §[!8§();
            if(_loc8_)
            {
               _loc3_.loadBytes(param1);
            }
            var _loc4_:Object = {};
            var _loc5_:* = int(_loc3_.§+$§() - 1);
            while(_loc5_ >= 0)
            {
               if((_loc6_ = _loc3_.§=$§(_loc5_)).§`"§.substr(-1) == "/")
               {
                  if(_loc9_ && this)
                  {
                     continue;
                  }
               }
               else
               {
                  if(this.§1!H§[_loc6_.§`"§])
                  {
                     if(_loc9_ && this)
                     {
                        continue;
                     }
                  }
                  this.§1!H§[_loc6_.§`"§] = _loc4_[_loc6_.§`"§] = _loc6_;
                  if(!_loc8_)
                  {
                     continue;
                  }
               }
               §§push(_loc5_);
               if(!(_loc9_ && this))
               {
                  §§push(§§pop() - 1);
               }
               _loc5_ = §§pop();
            }
            if(_loc8_ || _loc3_)
            {
               this.§@u§(_loc4_);
            }
            return;
         }
         §§goto(addr30);
      }
      
      protected function §@u§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc7_)
         {
            §§push(null);
            if(_loc6_ || this)
            {
               §§pop().§§slot[2] = §§pop();
               §§push(§§newactivation());
               if(_loc6_ || _loc2_)
               {
                  §§push(null);
                  if(_loc6_ || _loc3_)
                  {
                     §§pop().§§slot[3] = §§pop();
                     §§push(§§newactivation());
                     if(!(_loc7_ && _loc2_))
                     {
                        §§push(null);
                        if(!(_loc7_ && param1))
                        {
                           addr67:
                           §§pop().§§slot[4] = §§pop();
                           §§push(§§newactivation());
                           if(_loc6_ || _loc2_)
                           {
                              §§push(null);
                              if(!_loc7_)
                              {
                                 addr80:
                                 §§pop().§§slot[5] = §§pop();
                                 if(!_loc7_)
                                 {
                                    addr86:
                                    var compositeNameResults:Array = null;
                                    addr90:
                                    var cutSceneNameResults:Array = null;
                                    addr89:
                                    if(_loc6_)
                                    {
                                       addr94:
                                       §§push(§§newactivation());
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§pop().§§slot[8] = null;
                                          if(!_loc7_)
                                          {
                                             addr108:
                                             var packageFiles:Object = param1;
                                          }
                                       }
                                       §§goto(addr108);
                                    }
                                    var _loc3_:int = 0;
                                    var _loc4_:* = packageFiles;
                                    while(§§hasnext(_loc4_,_loc3_))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc6_)
                                       {
                                          §§push(§§nextname(_loc3_,_loc4_));
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             §§pop().§§slot[2] = §§pop();
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                §§push(§§newactivation());
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§push(§§pop().§§slot[2]);
                                                   if(_loc6_)
                                                   {
                                                      if(§§pop().search(/^sprite_sheets\/(.*)\.json$/i) != -1)
                                                      {
                                                         if(_loc6_ || param1)
                                                         {
                                                            try
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc7_)
                                                               {
                                                                  §§pop().§§slot[8] = JSON.parse((packageFiles[fileName] as §7!>§).§=Y§(false));
                                                                  this.§9!8§(jsonObject);
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr212:
                                                                     §§push(§§newactivation());
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(§§pop().§§slot[2]);
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              §§pop().§§slot[3] = §§pop().match(/^levels\/Level(.*)\.json$/i);
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop().§§slot[3]);
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §6M§.§%Q§(levelNameResults[1].toLowerCase(),§9R§.§07§(this.getFileAsString(fileName)));
                                                                                    }
                                                                                    §§push(§§newactivation());
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop().§§slot[2]);
                                                                                          if(_loc6_ || _loc3_)
                                                                                          {
                                                                                             §§pop().§§slot[4] = §§pop().match(/^particle_emitters\/(.*)\.pex$/i);
                                                                                             if(!(_loc7_ && _loc2_))
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   addr319:
                                                                                                   §§push(§§pop().§§slot[4]);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         this.§9!D§(particleNameResults[1]);
                                                                                                         addr329:
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!(_loc7_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[2]);
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  addr348:
                                                                                                                  §§pop().§§slot[5] = §§pop().match(/composites\/data\/(.*)\.xml$/i);
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     addr358:
                                                                                                                     §§push(§§pop().§§slot[5]);
                                                                                                                     if(!(_loc7_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr366:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           this.§-"§(fileName);
                                                                                                                           addr371:
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              addr374:
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(!(_loc7_ && param1))
                                                                                                                              {
                                                                                                                                 addr382:
                                                                                                                                 §§push(§§pop().§§slot[2]);
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr420:
                                                                                                                                 §§pop().§§slot[7] = §§pop().match(/cutscenes.lua$/i);
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(!(_loc7_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr436:
                                                                                                                                    if(§§pop().§§slot[7])
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr444:
                                                                                                                                          this.§?X§(fileName);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr459:
                                                                                                                                    if(fileName.toLowerCase() == "assetmap.xml")
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          addr465:
                                                                                                                                          this.§'@§(fileName);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr459);
                                                                                                                              }
                                                                                                                              addr419:
                                                                                                                              §§goto(addr420);
                                                                                                                              §§push(§§pop().§§slot[2]);
                                                                                                                           }
                                                                                                                           §§push(§§pop().§§slot[6]);
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    this.§!T§(fileName);
                                                                                                                                    if(_loc6_ || this)
                                                                                                                                    {
                                                                                                                                       addr410:
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(_loc6_ || param1)
                                                                                                                                       {
                                                                                                                                          addr418:
                                                                                                                                          §§goto(addr419);
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                       }
                                                                                                                                       §§goto(addr459);
                                                                                                                                    }
                                                                                                                                    §§goto(addr444);
                                                                                                                                 }
                                                                                                                                 §§goto(addr465);
                                                                                                                              }
                                                                                                                              §§goto(addr410);
                                                                                                                           }
                                                                                                                           §§goto(addr436);
                                                                                                                        }
                                                                                                                        §§goto(addr371);
                                                                                                                     }
                                                                                                                     §§goto(addr436);
                                                                                                                  }
                                                                                                                  §§goto(addr418);
                                                                                                               }
                                                                                                               §§pop().§§slot[6] = §§pop().match(/composites\/main\/(.*)\.xml$/i);
                                                                                                               §§goto(addr371);
                                                                                                               §§push(§§newactivation());
                                                                                                            }
                                                                                                            §§goto(addr419);
                                                                                                         }
                                                                                                         §§goto(addr436);
                                                                                                      }
                                                                                                      §§goto(addr329);
                                                                                                   }
                                                                                                   §§goto(addr366);
                                                                                                }
                                                                                                §§goto(addr374);
                                                                                             }
                                                                                             §§goto(addr371);
                                                                                          }
                                                                                          §§goto(addr348);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr374);
                                                                                 }
                                                                                 §§goto(addr436);
                                                                              }
                                                                              §§goto(addr418);
                                                                           }
                                                                           §§goto(addr420);
                                                                        }
                                                                        §§goto(addr382);
                                                                     }
                                                                     §§goto(addr418);
                                                                  }
                                                                  §§goto(addr329);
                                                               }
                                                            }
                                                            catch(e:Error)
                                                            {
                                                               throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§=-§.§>!?§);
                                                            }
                                                            §§goto(addr319);
                                                         }
                                                         §§goto(addr382);
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr436);
                                                }
                                                §§goto(addr371);
                                             }
                                             §§goto(addr465);
                                          }
                                          §§goto(addr382);
                                       }
                                       §§goto(addr358);
                                    }
                                    if(!_loc7_)
                                    {
                                       if(this.§+A§ == 0)
                                       {
                                          if(!_loc7_)
                                          {
                                             addr481:
                                             dispatchEvent(new Event(Event.COMPLETE));
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr481);
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr86);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr67);
               }
               §§goto(addr86);
            }
            §§goto(addr90);
         }
         §§goto(addr108);
      }
      
      private function §'@§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LoaderContext = null;
         if(!_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§+A§);
            if(_loc6_ || param1)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!(_loc7_ && this))
            {
               _loc4_.§+A§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!(_loc7_ && _loc2_))
         {
            this.§7r§.push(_loc2_);
            if(_loc6_)
            {
               if(this.§7r§.length == 1)
               {
                  if(_loc6_ || param1)
                  {
                     addr88:
                     this.§^!#§ = new Loader();
                     if(_loc6_ || this)
                     {
                     }
                     §§goto(addr117);
                  }
                  this.§^!#§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§;E§);
                  addr117:
                  _loc3_ = new LoaderContext();
                  if(_loc6_ || param1)
                  {
                     _loc3_.allowCodeImport = true;
                     if(!_loc6_)
                     {
                     }
                     §§goto(addr142);
                  }
                  this.§^!#§.loadBytes(this.§7"§(_loc2_.Library.@swf),_loc3_);
                  §§goto(addr142);
               }
               addr142:
               return;
            }
            §§goto(addr117);
         }
         §§goto(addr88);
      }
      
      private function §;E§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§^!#§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§;E§);
         }
         var _loc2_:XML = this.§7r§.shift();
         §^!;§.§1!%§(this.§^!#§,_loc2_.Library[0]);
         if(this.§7r§.length > 0)
         {
            this.§^!#§ = new Loader();
            if(_loc4_)
            {
               this.§^!#§.contentLoaderInfo.addEventListener(Event.INIT,this.§;E§);
               this.§^!#§.loadBytes(this.§7"§(this.§7r§[0].Library.@swf));
            }
         }
         this.§%p§();
      }
      
      private function §?X§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = §#c§.§#`§(this.getFileAsString(param1));
         if(_loc3_)
         {
            §9!5§.§7J§(_loc2_);
         }
      }
      
      protected function §!T§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!_loc3_)
         {
            §[!-§.§"1§(_loc2_);
         }
      }
      
      protected function §-"§(param1:String) : void
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
                  if(_loc6_ || _loc3_)
                  {
                     §§goto(addr38);
                  }
                  §§goto(addr91);
               }
               §§goto(addr90);
            }
            §§goto(addr93);
         }
         addr38:
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
                  if(§1!H§[_loc13_] == null)
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
            §@!§.§]Y§(new §6w§(_loc2_,_loc4_,param1.bitmapData));
            §%p§();
         };
         if(_loc6_)
         {
            var _loc3_:*;
            §§push((_loc3_ = this).§+A§);
            if(_loc6_ || this)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc6_ || this)
            {
               _loc3_.§+A§ = _loc4_;
            }
            if(_loc6_)
            {
               addr93:
               var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
               addr91:
               addr90:
               if(_loc5_)
               {
               }
               §§goto(addr111);
            }
            this.§"$§(imagePath,onComplete);
         }
         addr111:
      }
      
      protected function §%p§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§+A§);
            if(!(_loc4_ && _loc1_))
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               _loc1_.§+A§ = _loc2_;
            }
            if(_loc3_ || _loc3_)
            {
               §§goto(addr65);
            }
            §§goto(addr76);
         }
         addr65:
         if(this.§+A§ == 0)
         {
            if(_loc3_ || _loc2_)
            {
               addr76:
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      protected function §9!D§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§pop().§§slot[1] = param1;
            if(!(_loc3_ && this))
            {
               addr44:
               var onComplete:Function = function(param1:Bitmap):void
               {
                  ParticleManager.§%X§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
               };
               if(!_loc3_)
               {
                  §§push(this);
                  §§push("particle_emitters/");
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§newactivation());
                     if(!(_loc3_ && this))
                     {
                        §§push(§§pop() + §§pop().§§slot[1]);
                        if(!(_loc3_ && this))
                        {
                           addr87:
                           §§push(§§pop() + ".png");
                           §§push(§§newactivation());
                        }
                        §§goto(addr87);
                     }
                     §§pop().§"$§(§§pop(),§§pop().§§slot[2]);
                     §§goto(addr90);
                  }
                  §§goto(addr87);
               }
            }
            addr90:
            return;
         }
         §§goto(addr44);
      }
      
      protected function §9!8§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && _loc2_))
         {
            §§pop().§§slot[3] = null;
            if(_loc6_)
            {
               §§push(§§newactivation());
               if(_loc6_)
               {
                  addr37:
                  §§pop().§§slot[1] = param1;
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§newactivation());
                     if(!(_loc5_ && _loc2_))
                     {
                        §§pop().§§slot[2] = function(param1:Bitmap):void
                        {
                           §@!§.§]Y§(new spriteSheetClass(dataObject,param1.bitmapData));
                           §%p§();
                        };
                        if(_loc6_)
                        {
                           addr59:
                           var _loc3_:*;
                           §§push((_loc3_ = this).§+A§);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc4_:* = §§pop();
                           if(!(_loc5_ && param1))
                           {
                              _loc3_.§+A§ = _loc4_;
                           }
                        }
                        §§push(§§newactivation());
                        if(!(_loc5_ && this))
                        {
                           addr92:
                           if(§§pop().§§slot[1].image)
                           {
                              §§push(§§newactivation());
                              if(!_loc5_)
                              {
                                 §§pop().§§slot[3] = §>!$§;
                                 §§push(this);
                                 §§push("sprite_sheets/");
                                 if(_loc6_)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc6_ || _loc3_)
                                    {
                                       addr126:
                                       §§push(§§pop() + §§pop().§§slot[1].image);
                                       §§push(§§newactivation());
                                    }
                                    §§pop().§"$§(§§pop(),§§pop().§§slot[2]);
                                    if(_loc6_ || this)
                                    {
                                       §§goto(addr229);
                                    }
                                    else
                                    {
                                       addr182:
                                       var spriteSheetClass:Class = §^i§;
                                       addr181:
                                       §§push(this);
                                       §§push("sprite_sheets/");
                                       if(_loc6_)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() + §§pop().§§slot[1].name);
                                             if(_loc6_ || _loc2_)
                                             {
                                                addr212:
                                                §§push(§§pop() + ".png");
                                             }
                                             §§push(§§newactivation());
                                          }
                                          §§pop().§"$§(§§pop(),§§pop().§§slot[2]);
                                          if(_loc5_ && this)
                                          {
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr212);
                                    }
                                 }
                                 §§goto(addr126);
                              }
                              else
                              {
                                 addr170:
                                 if(!§§pop().§§slot[1].charCount)
                                 {
                                    throw new Error("Invalid sprite sheet data.");
                                 }
                                 if(_loc6_ || param1)
                                 {
                                    §§goto(addr181);
                                 }
                              }
                              §§goto(addr229);
                           }
                           else
                           {
                              §§push(§§newactivation());
                              if(_loc6_ || _loc3_)
                              {
                              }
                              §§goto(addr170);
                           }
                        }
                        §§push(Boolean(§§pop().§§slot[1].name));
                        if(_loc6_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 §§pop();
                                 if(!_loc5_)
                                 {
                                    addr162:
                                    §§push(§§newactivation());
                                    if(_loc6_ || param1)
                                    {
                                       §§goto(addr170);
                                    }
                                    §§goto(addr182);
                                 }
                                 addr229:
                                 return;
                              }
                           }
                        }
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr162);
               }
               §§goto(addr92);
            }
            §§goto(addr59);
         }
         §§goto(addr37);
      }
      
      protected function §9J§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc4_)
         {
            §§push(this);
            §§push(56895);
            if(_loc4_ || param1)
            {
               §§push(25147);
               if(!_loc5_)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§2!+§ = §§pop();
            if(!_loc5_)
            {
               addr38:
               _loc2_ = int(Math.min(param1.length,65536) - 1);
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc4_ || this)
                           {
                              break;
                           }
                           addr121:
                           while(true)
                           {
                              §§push(_loc2_);
                              break loop1;
                           }
                           addr184:
                           §§push(Math.max(param1.length,65536) - 65536);
                        }
                        else
                        {
                           param1[_loc2_] -= int(this.§%3§() * 255);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(_loc2_);
                           if(_loc5_ && param1)
                           {
                              continue loop1;
                           }
                           §§push(2);
                           if(_loc5_)
                           {
                              continue;
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc4_ || _loc3_)
                           {
                              §§push(int(§§pop()));
                              if(_loc4_)
                              {
                                 continue loop0;
                              }
                              addr161:
                              while(true)
                              {
                                 §§push(§§pop() - int(this.§%3§() * 255));
                                 if(_loc4_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc4_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             §§goto(addr184);
                                          }
                                          addr183:
                                       }
                                       addr195:
                                       var _loc3_:* = §§pop();
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(param1.length - 1);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                _loc2_ = §§pop();
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         addr291:
                                                         while(true)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               break loop6;
                                                            }
                                                            param1[_loc2_] -= int(this.§%3§() * 255);
                                                            if(!_loc5_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            addr294:
                                                            param1.inflate();
                                                         }
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr294);
                                                      }
                                                   }
                                                   addr289:
                                                }
                                                return;
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr273);
                                       }
                                       §§goto(addr289);
                                    }
                                    addr175:
                                 }
                                 break;
                              }
                           }
                        }
                        addr194:
                        §§goto(addr195);
                     }
                     §§push(param1.length - 1);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(int(§§pop()));
                        if(_loc4_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr175);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     param1[_loc2_] -= int(this.§%3§() * 255);
                     addr122:
                     if(!(_loc5_ && _loc3_))
                     {
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!(_loc5_ && this))
                           {
                              §§goto(addr161);
                           }
                           break;
                           §§goto(addr122);
                        }
                        §§goto(addr195);
                        addr153:
                     }
                     else
                     {
                        §§goto(addr121);
                     }
                     §§goto(addr194);
                  }
                  §§goto(addr121);
               }
            }
         }
         §§goto(addr38);
      }
      
      protected function §%3§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push(this.§2!+§);
            if(_loc1_)
            {
               §§push(this.§2!+§);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§2!+§ = §§pop();
            if(_loc1_ || _loc1_)
            {
               §§push(this);
               §§push(this.§2!+§);
               if(!_loc2_)
               {
                  §§push(§§pop() ^ this.§2!+§ >>> 35);
               }
               §§pop().§2!+§ = §§pop();
               if(!_loc2_)
               {
                  §§push(this);
                  §§push(this.§2!+§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§2!+§);
                     if(_loc1_ || this)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§2!+§ = §§pop();
                  if(_loc1_ || this)
                  {
                     §§push(this.§2!+§);
                     if(_loc1_)
                     {
                        §§push(0);
                        if(!(_loc2_ && _loc1_))
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 addr126:
                                 §§push(this);
                                 §§push(this.§2!+§);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() & 2147483647);
                                 }
                                 §§pop().§2!+§ = §§pop();
                                 addr134:
                                 §§push(this.§2!+§);
                                 §§push(2147483647);
                              }
                           }
                           §§goto(addr134);
                        }
                        return §§pop() / §§pop();
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr126);
               }
            }
         }
         §§goto(addr126);
      }
   }
}
