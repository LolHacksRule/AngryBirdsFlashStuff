package §_-Aw§
{
   import §_-2J§.§_-3T§;
   import §_-2J§.§_-5A§;
   import §_-2J§.§_-i§;
   import §_-2J§.§_-uR§;
   import §_-IV§.§_-nb§;
   import §_-IV§.§_-o8§;
   import §_-Qx§.§_-Sf§;
   import §_-Qx§.§_-Wv§;
   import §_-Ra§.§_-fR§;
   import §_-UC§.§_-o§;
   import §_-UC§.§_-vw§;
   import §_-hq§.§_-AD§;
   import §_-mJ§.§_-4n§;
   import §_-wt§.§_-8C§;
   import §_-ya§.§_-u-§;
   import flash.display.Bitmap;
   import flash.utils.ByteArray;
   
   public class §_-BS§ implements §_-8C§
   {
      
      protected static var §_-z9§:int;
      
      protected static var §_-OM§:Object;
      
      protected static var §_-4a§:int = 0;
      
      protected static var §_-mE§:§_-BS§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-OM§ = {};
            if(!_loc2_)
            {
               §§goto(addr27);
            }
            §§goto(addr32);
         }
         addr27:
         if(!_loc2_)
         {
            addr32:
            §_-mE§ = new §_-BS§();
         }
      }
      
      public function §_-BS§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §_-BF§() : §_-BS§
      {
         return §_-mE§;
      }
      
      public function get §_-pi§() : Boolean
      {
         return §_-4a§ == 0;
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (§_-OM§[param1] as §_-o§).§_-QP§(false);
      }
      
      public function §_-Up§(param1:String) : ByteArray
      {
         return (§_-OM§[param1] as §_-o§).content;
      }
      
      public function §_-bo§(param1:String, param2:Function) : void
      {
         return §_-o8§.§_-yG§(this.§_-Up§(param1),param2);
      }
      
      public function §_-nS§(param1:ByteArray) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:§_-o§ = null;
         if(!(_loc7_ && _loc3_))
         {
            this.§_-lV§(param1);
         }
         var _loc2_:§_-vw§ = new §_-vw§();
         if(!(_loc7_ && _loc3_))
         {
            _loc2_.loadBytes(param1);
         }
         var _loc3_:Object = {};
         var _loc4_:* = int(_loc2_.§_-pu§() - 1);
         while(_loc4_ >= 0)
         {
            if((_loc5_ = _loc2_.§_-i1§(_loc4_)).§_-3K§.substr(-1) == "/")
            {
               if(_loc7_)
               {
               }
            }
            else
            {
               if(§_-OM§[_loc5_.§_-3K§])
               {
                  if(_loc7_)
                  {
                  }
                  addr94:
                  §§push(_loc4_);
                  if(!_loc7_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc4_ = §§pop();
                  continue;
               }
               §_-OM§[_loc5_.§_-3K§] = _loc3_[_loc5_.§_-3K§] = _loc5_;
               if(!_loc8_)
               {
                  continue;
               }
            }
            §§goto(addr94);
         }
         if(!(_loc7_ && _loc3_))
         {
            this.§_-WW§(_loc3_);
         }
      }
      
      protected function §_-WW§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var fileName:String = null;
         var levelNameResults:Array = null;
         var particleNameResults:Array = null;
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§newactivation());
            if(!_loc6_)
            {
               §§pop().§§slot[5] = null;
               var compositeNameResults:Array = null;
               if(_loc7_ || this)
               {
                  addr54:
                  §§push(§§newactivation());
                  if(_loc7_ || _loc2_)
                  {
                     addr77:
                     §§push(null);
                     if(!(_loc6_ && param1))
                     {
                        §§pop().§§slot[7] = §§pop();
                        addr73:
                        §§push(§§newactivation());
                        §§push(null);
                     }
                     §§pop().§§slot[8] = §§pop();
                     var packageFiles:Object = param1;
                     §§goto(addr79);
                  }
                  §§goto(addr73);
               }
               addr79:
               var _loc3_:int = 0;
               var _loc4_:* = packageFiles;
               while(§§hasnext(_loc4_,_loc3_))
               {
                  §§push(§§newactivation());
                  §§push(§§nextname(_loc3_,_loc4_));
                  if(!(_loc6_ && param1))
                  {
                     §§pop().§§slot[2] = §§pop();
                     if(fileName.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           try
                           {
                              §§push(§§newactivation());
                              if(_loc7_)
                              {
                                 §§pop().§§slot[8] = §_-AD§.§_-Ae§((packageFiles[fileName] as §_-o§).§_-QP§(false));
                                 this.§_-xC§(jsonObject);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    addr166:
                                    §§push(§§newactivation());
                                    §§push(§§newactivation());
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§push(§§pop().§§slot[2]);
                                       if(!_loc6_)
                                       {
                                          §§pop().§§slot[3] = §§pop().match(/^levels\/Level(.*)\.json$/i);
                                          if(_loc7_)
                                          {
                                             §§push(levelNameResults);
                                             if(_loc7_ || _loc2_)
                                             {
                                                if(§§pop())
                                                {
                                                   §_-Sf§.§_-DJ§(levelNameResults[1].toLowerCase(),§_-Wv§.§_-4s§(this.getFileAsString(fileName)));
                                                }
                                                §§push(§§newactivation());
                                                if(_loc7_ || param1)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop().§§slot[2]);
                                                      if(!_loc6_)
                                                      {
                                                         addr231:
                                                         §§pop().§§slot[4] = §§pop().match(/^particle_emitters\/(.*)\.pex$/i);
                                                         §§push(particleNameResults);
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  addr245:
                                                                  this.§_-BA§(particleNameResults[1]);
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     addr258:
                                                                     §§push(§§newactivation());
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        addr266:
                                                                        §§push(§§newactivation());
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           §§push(§§pop().§§slot[2]);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§pop().§§slot[5] = §§pop().match(/composites\/data\/(.*)\.xml$/i);
                                                                              §§push(compositeSpriteSheetNameResults);
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 addr293:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    this.§_-JP§(fileName);
                                                                                    if(!(_loc6_ && _loc2_))
                                                                                    {
                                                                                       addr305:
                                                                                       §§push(§§newactivation());
                                                                                       §§push(§§newactivation());
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr309:
                                                                                          §§push(§§pop().§§slot[2]);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr312:
                                                                                             §§pop().§§slot[6] = §§pop().match(/composites\/main\/(.*)\.xml$/i);
                                                                                             addr319:
                                                                                             §§push(compositeNameResults);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr323:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   this.§set §(fileName);
                                                                                                   addr331:
                                                                                                   var cutSceneNameResults:Array = fileName.match(/cutscenes.lua$/i);
                                                                                                   §§push(cutSceneNameResults);
                                                                                                   addr328:
                                                                                                   addr330:
                                                                                                   addr329:
                                                                                                }
                                                                                                §§goto(addr328);
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr331);
                                                                                       }
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                    this.§_-AM§(fileName);
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr305);
                                                                              }
                                                                              §§goto(addr323);
                                                                           }
                                                                           §§goto(addr312);
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         §§goto(addr293);
                                                      }
                                                      §§goto(addr331);
                                                   }
                                                   §§goto(addr309);
                                                }
                                                §§goto(addr329);
                                             }
                                             §§goto(addr293);
                                          }
                                          §§goto(addr331);
                                       }
                                       §§goto(addr231);
                                    }
                                    §§goto(addr331);
                                 }
                                 §§goto(addr258);
                              }
                           }
                           catch(e:Error)
                           {
                              throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.");
                           }
                           §§goto(addr266);
                        }
                        §§goto(addr245);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr331);
               }
               return;
            }
            §§goto(addr77);
         }
         §§goto(addr54);
      }
      
      private function §_-AM§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §_-nb§.§_-N§(this.getFileAsString(param1));
         if(_loc4_)
         {
            §_-u-§.§_-ej§(_loc2_);
         }
      }
      
      protected function §set §(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc3_)
         {
            §_-fR§.§_-ws§(_loc2_);
         }
      }
      
      protected function §_-JP§(param1:String) : void
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
               if(!_loc5_)
               {
                  §§push(§§newactivation());
                  if(!(_loc5_ && param1))
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
                           _loc8_ = (_loc7_ = _loc6_.@file).split("\\");
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
                           if(§_-OM§[_loc13_] == null)
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
                        §_-3T§.§_-uF§(new §_-5A§(_loc2_,_loc4_,param1.bitmapData));
                        --§_-4a§;
                     };
                     if(_loc6_)
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = §§findproperty(§_-4a§)).§_-4a§);
                        if(_loc6_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(_loc6_)
                        {
                           _loc3_.§_-4a§ = _loc4_;
                        }
                        if(_loc6_)
                        {
                           addr67:
                           var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
                           addr65:
                           if(_loc6_ || _loc2_)
                           {
                           }
                           §§goto(addr97);
                        }
                        addr97:
                        return;
                     }
                     this.§_-bo§(imagePath,onComplete);
                  }
               }
               §§goto(addr65);
            }
         }
         §§goto(addr67);
      }
      
      protected function §_-BA§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = param1;
            if(!_loc3_)
            {
               var onComplete:Function = function(param1:Bitmap):void
               {
                  §_-4n§.§_-i5§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
               };
               §§goto(addr26);
            }
            §§goto(addr43);
         }
         addr26:
         if(!(_loc3_ && this))
         {
            addr43:
            §§push(this);
            §§push("particle_emitters/" + id);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() + ".png");
            }
            §§pop().§_-bo§(§§pop(),onComplete);
         }
      }
      
      protected function §_-xC§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || this)
         {
            §§pop().§§slot[3] = null;
            §§push(§§newactivation());
            if(!(_loc6_ && _loc2_))
            {
               §§pop().§§slot[1] = param1;
               §§push(§§newactivation());
               if(_loc5_)
               {
                  addr41:
                  §§pop().§§slot[2] = function(param1:Bitmap):void
                  {
                     §_-3T§.§_-uF§(new spriteSheetClass(dataObject,param1.bitmapData));
                     --§_-4a§;
                  };
                  if(!(_loc6_ && _loc2_))
                  {
                     var _loc3_:*;
                     §§push((_loc3_ = §§findproperty(§_-4a§)).§_-4a§);
                     if(!_loc6_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc4_:* = §§pop();
                     if(!_loc6_)
                     {
                        _loc3_.§_-4a§ = _loc4_;
                     }
                     if(_loc5_ || param1)
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           if(§§pop().§§slot[1].image)
                           {
                              addr79:
                              §§push(§§newactivation());
                              if(!(_loc6_ && this))
                              {
                                 §§pop().§§slot[3] = §_-uR§;
                                 addr87:
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    this.§_-bo§("sprite_sheets/" + dataObject.image,onComplete);
                                 }
                                 else
                                 {
                                    addr150:
                                    var spriteSheetClass:Class = §_-i§;
                                    addr149:
                                    §§push(this);
                                    §§push("sprite_sheets/" + dataObject.name);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(§§pop() + ".png");
                                    }
                                    §§pop().§_-bo§(§§pop(),onComplete);
                                    if(!(_loc6_ && this))
                                    {
                                       addr185:
                                    }
                                 }
                                 §§goto(addr190);
                              }
                              else
                              {
                                 addr115:
                                 §§push(Boolean(§§pop().§§slot[1].name));
                                 if(_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          §§pop();
                                          if(!(_loc6_ && param1))
                                          {
                                             addr141:
                                             if(!dataObject.charCount)
                                             {
                                                throw new Error("Invalid sprite sheet data.");
                                             }
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§goto(addr149);
                                             }
                                             §§goto(addr185);
                                          }
                                          addr190:
                                          return;
                                       }
                                    }
                                 }
                                 §§goto(addr141);
                              }
                           }
                           else
                           {
                              §§push(§§newactivation());
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr150);
               }
               §§goto(addr141);
            }
            §§goto(addr41);
         }
         §§goto(addr87);
      }
      
      protected function §_-lV§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(!(_loc5_ && this))
         {
            §_-z9§ = 185;
            if(_loc4_ || _loc2_)
            {
               _loc2_ = int(Math.min(param1.length,65536) - 1);
            }
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            §§push(0);
            if(!_loc5_)
            {
               if(§§pop() >= §§pop())
               {
                  param1[_loc2_] -= int(this.§_-Vy§() * 255);
                  §§push(_loc2_);
                  §§push(2);
                  if(_loc4_ || this)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc4_ || this)
                     {
                        §§push(int(§§pop()));
                        if(_loc4_ || this)
                        {
                           _loc2_ = §§pop();
                           if(_loc4_)
                           {
                              continue;
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr129);
                     }
                  }
                  break;
               }
               if(!_loc5_)
               {
                  §§push(param1.length - 1);
                  if(!_loc5_)
                  {
                     _loc2_ = int(§§pop());
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || _loc2_)
                        {
                           break loop0;
                        }
                        break;
                        addr143:
                        while(true)
                        {
                           _loc2_ = int(§§pop());
                           continue loop1;
                        }
                     }
                     addr163:
                     var _loc3_:* = §§pop();
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(param1.length - 1);
                        if(!(_loc5_ && this))
                        {
                           §§push(int(§§pop()));
                           if(_loc4_)
                           {
                              _loc2_ = §§pop();
                              if(!_loc4_)
                              {
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr240:
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    addr241:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          §§goto(addr246);
                                       }
                                       param1[_loc2_] -= int(this.§_-Vy§() * 255);
                                       if(_loc5_)
                                       {
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc5_ && _loc2_)
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                    §§goto(addr244);
                                 }
                              }
                              addr239:
                           }
                           while(true)
                           {
                              §§push(2);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() - §§pop());
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    if(!(_loc5_ && param1))
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc4_ || this)
                                       {
                                          §§goto(addr239);
                                       }
                                       addr244:
                                       param1.inflate();
                                       addr246:
                                       return;
                                    }
                                    §§goto(addr240);
                                 }
                                 addr216:
                              }
                              §§goto(addr241);
                           }
                        }
                        §§goto(addr216);
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr143);
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     while(true)
                     {
                        §§push(§§pop() - int(this.§_-Vy§() * 255));
                        if(!(_loc5_ && param1))
                        {
                           §§goto(addr143);
                        }
                        break;
                     }
                     addr162:
                     §§push(int(§§pop()));
                     addr129:
                  }
                  §§goto(addr163);
               }
               addr126:
               §§goto(addr143);
            }
            break;
         }
         while(§§pop() >= §§pop())
         {
            param1[_loc2_] -= int(this.§_-Vy§() * 255);
            if(_loc5_ && _loc3_)
            {
               break;
            }
            §§goto(addr126);
         }
         §§goto(addr162);
         §§push(Math.max(param1.length,65536) - 65536);
      }
      
      protected function §_-Vy§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§§findproperty(§_-z9§));
            §§push(§_-z9§);
            if(!_loc2_)
            {
               §§push(§_-z9§);
               if(_loc1_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§_-z9§ = §§pop();
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§findproperty(§_-z9§));
               §§push(§_-z9§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() ^ §_-z9§ >>> 35);
               }
               §§pop().§_-z9§ = §§pop();
               if(_loc1_ || this)
               {
                  §§push(§§findproperty(§_-z9§));
                  §§push(§_-z9§);
                  if(_loc1_)
                  {
                     §§push(§_-z9§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§_-z9§ = §§pop();
                  if(_loc1_ || _loc2_)
                  {
                     §§push(§_-z9§);
                     if(_loc1_)
                     {
                        §§push(0);
                        if(!(_loc2_ && this))
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc1_)
                              {
                                 addr93:
                                 §§push(§§findproperty(§_-z9§));
                                 §§push(§_-z9§);
                                 if(_loc1_ || this)
                                 {
                                    §§push(§§pop() & 2147483647);
                                 }
                                 §§pop().§_-z9§ = §§pop();
                                 addr112:
                                 §§push(§_-z9§);
                                 §§push(2147483647);
                              }
                           }
                           §§goto(addr112);
                        }
                        return §§pop() / §§pop();
                     }
                     §§goto(addr112);
                  }
               }
            }
         }
         §§goto(addr93);
      }
   }
}
