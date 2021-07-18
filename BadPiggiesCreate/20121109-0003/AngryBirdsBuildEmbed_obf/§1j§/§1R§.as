package §1j§
{
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §5! §.§#!E§;
   import §5! §.§27§;
   import §7U§.§,!=§;
   import §7U§.§>Y§;
   import §7U§.§?!R§;
   import §7U§.§]!e§;
   import §7U§.§]'§;
   import §7v§.§%!M§;
   import §7v§.§2M§;
   import §8!Q§.§#R§;
   import §8!Q§.§<!R§;
   import §8!Q§.§?>§;
   import §9!$§.§,i§;
   import §;o§.ParticleManager;
   import §=U§.§<6§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   public class §1R§ extends EventDispatcher implements §2M§
   {
       
      
      protected var §#0§:int;
      
      protected var §&!T§:Object;
      
      protected var §&g§:int = 0;
      
      protected var §#!o§:§>Y§;
      
      protected var §+!"§:Vector.<XML>;
      
      protected var §&3§:Loader;
      
      public function §1R§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§&!T§ = {};
            if(!(_loc1_ && _loc2_))
            {
               this.§+!"§ = new Vector.<XML>();
               if(_loc2_)
               {
                  addr57:
                  super();
                  if(!(_loc1_ && _loc2_))
                  {
                     this.§#!o§ = new §>Y§();
                  }
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function get §#!a§() : §?!R§
      {
         return this.§#!o§;
      }
      
      public function get §>!J§() : Boolean
      {
         return this.§&g§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§#!o§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§&!T§[param1] as §#!E§).§'!K§(false);
      }
      
      public function §]!!§(param1:String) : ByteArray
      {
         return (this.§&!T§[param1] as §#!E§).content;
      }
      
      public function §'!N§(param1:String, param2:Function) : void
      {
         return §<!R§.§ J§(this.§]!!§(param1),param2);
      }
      
      public function §83§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:§#!E§ = null;
         if(_loc9_ || this)
         {
            if(param2)
            {
               if(!_loc8_)
               {
                  this.§@!,§(param1);
               }
            }
         }
         var _loc3_:§27§ = new §27§();
         if(_loc9_ || _loc3_)
         {
            _loc3_.loadBytes(param1);
         }
         var _loc4_:Object = {};
         var _loc5_:* = int(_loc3_.§-!p§() - 1);
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§0!i§(_loc5_)).§%n§.substr(-1) == "/")
            {
               if(_loc8_)
               {
                  addr105:
                  this.§&!T§[_loc6_.§%n§] = _loc4_[_loc6_.§%n§] = _loc6_;
                  if(_loc8_)
                  {
                     continue;
                  }
               }
               §§push(_loc5_);
               if(!_loc8_)
               {
                  §§push(§§pop() - 1);
               }
               _loc5_ = §§pop();
               continue;
            }
            if(this.§&!T§[_loc6_.§%n§])
            {
               if(!(_loc9_ || param1))
               {
                  continue;
               }
            }
            §§goto(addr105);
         }
         if(_loc9_)
         {
            this.§?!s§(_loc4_);
         }
      }
      
      protected function §?!s§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc7_ && _loc3_))
         {
            §§pop().§§slot[2] = null;
            if(_loc6_ || _loc2_)
            {
               var levelNameResults:Array = null;
            }
            §§push(§§newactivation());
            if(!_loc7_)
            {
               §§push(null);
               if(!(_loc7_ && param1))
               {
                  §§pop().§§slot[4] = §§pop();
                  if(!_loc7_)
                  {
                     §§push(§§newactivation());
                     if(!_loc7_)
                     {
                        §§push(null);
                        if(_loc6_ || _loc3_)
                        {
                           addr68:
                           §§pop().§§slot[5] = §§pop();
                           if(_loc6_)
                           {
                              addr72:
                              var compositeNameResults:Array = null;
                              §§push(§§newactivation());
                              if(!_loc7_)
                              {
                                 §§push(null);
                                 if(_loc6_)
                                 {
                                    §§pop().§§slot[7] = §§pop();
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc7_ && this))
                                       {
                                          addr100:
                                          §§pop().§§slot[8] = null;
                                          if(_loc6_ || this)
                                          {
                                             addr110:
                                             var packageFiles:Object = param1;
                                          }
                                       }
                                       §§goto(addr110);
                                    }
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr110);
                           }
                           var _loc3_:int = 0;
                           var _loc4_:* = packageFiles;
                           while(§§hasnext(_loc4_,_loc3_))
                           {
                              §§push(§§newactivation());
                              §§push(§§nextname(_loc3_,_loc4_));
                              if(_loc6_)
                              {
                                 §§pop().§§slot[2] = §§pop();
                                 §§push(fileName);
                                 if(!_loc7_)
                                 {
                                    if(§§pop().search(/^sprite_sheets\/(.*)\.json$/i) != -1)
                                    {
                                       try
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc7_)
                                          {
                                             §§pop().§§slot[8] = JSON.parse((packageFiles[fileName] as §#!E§).§'!K§(false));
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                this.§#!X§(jsonObject);
                                                if(!_loc6_)
                                                {
                                                   continue;
                                                }
                                                §§push(§§newactivation());
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop().§§slot[2]);
                                                      if(!_loc7_)
                                                      {
                                                         §§pop().§§slot[3] = §§pop().match(/^levels\/Level(.*)\.json$/i);
                                                         §§push(§§newactivation());
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop().§§slot[3]);
                                                            if(!_loc7_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §1^§.§`'§(levelNameResults[1].toLowerCase(),§2! §.§@t§(this.getFileAsString(fileName)));
                                                               }
                                                               §§push(§§newactivation());
                                                               §§push(§§newactivation());
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  §§push(§§pop().§§slot[2]);
                                                                  if(!(_loc7_ && _loc2_))
                                                                  {
                                                                     §§pop().§§slot[4] = §§pop().match(/^particle_emitters\/(.*)\.pex$/i);
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop().§§slot[4]);
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    this.§3!n§(particleNameResults[1]);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr307:
                                                                                       §§push(§§newactivation());
                                                                                       §§push(§§newactivation());
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr311:
                                                                                          §§push(§§pop().§§slot[2]);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             addr314:
                                                                                             §§pop().§§slot[5] = §§pop().match(/composites\/data\/(.*)\.xml$/i);
                                                                                             §§push(compositeSpriteSheetNameResults);
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc7_ && _loc3_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr338:
                                                                                                   this.§5!j§(fileName);
                                                                                                }
                                                                                                addr343:
                                                                                                §§push(§§newactivation());
                                                                                                §§push(§§newactivation());
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   addr351:
                                                                                                   §§push(§§pop().§§slot[2]);
                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                   {
                                                                                                      addr359:
                                                                                                      §§pop().§§slot[6] = §§pop().match(/composites\/main\/(.*)\.xml$/i);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(§§pop().§§slot[6]);
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               addr379:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr380:
                                                                                                                  this.§-!_§(fileName);
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     addr386:
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!(_loc7_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr396:
                                                                                                                        §§pop().§§slot[7] = fileName.match(/cutscenes.lua$/i);
                                                                                                                     }
                                                                                                                     addr411:
                                                                                                                     if(§§pop().§§slot[7])
                                                                                                                     {
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           this.§0§(fileName);
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              addr426:
                                                                                                                              if(fileName.toLowerCase() == "assetmap.xml")
                                                                                                                              {
                                                                                                                                 this.§,1§(fileName);
                                                                                                                                 addr431:
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§goto(addr426);
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!(_loc7_ && param1))
                                                                                                                  {
                                                                                                                     §§goto(addr411);
                                                                                                                  }
                                                                                                                  §§goto(addr426);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr386);
                                                                                                      }
                                                                                                      §§goto(addr380);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr396);
                                                                                             }
                                                                                             §§goto(addr379);
                                                                                          }
                                                                                          §§goto(addr359);
                                                                                       }
                                                                                       §§goto(addr351);
                                                                                    }
                                                                                    §§goto(addr431);
                                                                                 }
                                                                                 §§goto(addr338);
                                                                              }
                                                                              §§goto(addr307);
                                                                           }
                                                                           §§goto(addr379);
                                                                        }
                                                                        §§goto(addr343);
                                                                     }
                                                                     §§goto(addr386);
                                                                  }
                                                                  §§goto(addr314);
                                                               }
                                                               §§goto(addr351);
                                                            }
                                                            §§goto(addr379);
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      §§goto(addr396);
                                                   }
                                                   §§goto(addr311);
                                                }
                                                §§goto(addr396);
                                             }
                                             §§goto(addr426);
                                          }
                                       }
                                       catch(e:Error)
                                       {
                                          throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§?>§.§!!T§);
                                       }
                                       §§goto(addr307);
                                    }
                                    §§goto(addr193);
                                 }
                                 §§goto(addr426);
                              }
                              §§goto(addr396);
                           }
                           if(!(_loc7_ && _loc2_))
                           {
                              if(this.§&g§ == 0)
                              {
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    addr467:
                                    dispatchEvent(new Event(Event.COMPLETE));
                                 }
                              }
                              return;
                           }
                           §§goto(addr467);
                        }
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr72);
               }
               §§goto(addr68);
            }
            §§goto(addr100);
         }
         §§goto(addr110);
      }
      
      private function §,1§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            var _loc3_:*;
            §§push((_loc3_ = this).§&g§);
            if(!_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               _loc3_.§&g§ = _loc4_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc5_ || _loc3_)
         {
            this.§+!"§.push(_loc2_);
            if(_loc5_)
            {
               if(this.§+!"§.length == 1)
               {
                  if(!_loc6_)
                  {
                     addr75:
                     this.§&3§ = new Loader();
                     if(!(_loc6_ && this))
                     {
                        §§goto(addr96);
                     }
                     this.§&3§.loadBytes(this.§]!!§(_loc2_.Library.@swf));
                  }
               }
               §§goto(addr96);
            }
            §§goto(addr75);
         }
         addr96:
         this.§&3§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§+!e§);
         if(_loc5_ || this)
         {
         }
      }
      
      private function §+!e§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§&3§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§+!e§);
         }
         var _loc2_:XML = this.§+!"§.shift();
         if(!(_loc3_ && _loc2_))
         {
            §%!M§.§8N§(this.§&3§,_loc2_.Library[0]);
            if(!(_loc3_ && param1))
            {
               if(this.§+!"§.length > 0)
               {
                  if(_loc4_)
                  {
                     this.§&3§ = new Loader();
                     addr90:
                     this.§&3§.contentLoaderInfo.addEventListener(Event.INIT,this.§+!e§);
                     if(!_loc3_)
                     {
                        this.§&3§.loadBytes(this.§]!!§(this.§+!"§[0].Library.@swf));
                        addr111:
                        this.§@G§();
                     }
                     §§goto(addr111);
                  }
                  return;
               }
               §§goto(addr111);
            }
            §§goto(addr90);
         }
         §§goto(addr111);
      }
      
      private function §0§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §#R§.§2J§(this.getFileAsString(param1));
         if(!_loc3_)
         {
            §,i§.§6!m§(_loc2_);
         }
      }
      
      protected function §-!_§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc3_ || _loc3_)
         {
            §<6§.§1![§(_loc2_);
         }
      }
      
      protected function §5!j§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || _loc2_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc5_)
               {
                  addr93:
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
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
                              if(§&!T§[_loc13_] == null)
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
                        §#!o§.§ !n§(new §,!=§(_loc2_,_loc4_,param1.bitmapData));
                        §@G§();
                     };
                     if(!(_loc5_ && param1))
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§&g§);
                        if(_loc6_ || param1)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(!_loc5_)
                        {
                           _loc3_.§&g§ = _loc4_;
                        }
                        if(!_loc6_)
                        {
                        }
                        §§goto(addr110);
                     }
                     §§push(§§newactivation());
                  }
                  §§pop().§§slot[3] = filePath.substr(0,filePath.length - 3) + "png";
                  if(_loc5_ && param1)
                  {
                  }
                  §§goto(addr110);
               }
               addr110:
               this.§'!N§(imagePath,onComplete);
               return;
            }
            §§goto(addr93);
         }
         §§goto(addr38);
      }
      
      protected function §@G§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§&g§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               _loc1_.§&g§ = _loc2_;
            }
            if(!_loc3_)
            {
               if(this.§&g§ == 0)
               {
                  if(!_loc4_)
                  {
                  }
               }
               §§goto(addr78);
            }
            dispatchEvent(new Event(Event.COMPLETE));
         }
         addr78:
      }
      
      protected function §3!n§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§pop().§§slot[1] = param1;
            if(!_loc4_)
            {
               var onComplete:Function = function(param1:Bitmap):void
               {
                  ParticleManager.§^!t§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
               };
               addr38:
               if(_loc3_)
               {
                  §§push(this);
                  §§push("particle_emitters/");
                  if(!_loc4_)
                  {
                     §§push(§§newactivation());
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() + §§pop().§§slot[1]);
                        if(!(_loc4_ && param1))
                        {
                           addr76:
                           §§push(§§pop() + ".png");
                           §§push(§§newactivation());
                        }
                        §§goto(addr76);
                     }
                     §§pop().§'!N§(§§pop(),§§pop().§§slot[2]);
                     §§goto(addr79);
                  }
                  §§goto(addr76);
               }
            }
            addr79:
            return;
         }
         §§goto(addr38);
      }
      
      protected function §#!X§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || _loc2_)
         {
            §§pop().§§slot[3] = null;
            if(!(_loc5_ && this))
            {
               addr40:
               var dataObject:Object = param1;
               var onComplete:Function = function(param1:Bitmap):void
               {
                  §#!o§.§ !n§(new spriteSheetClass(dataObject,param1.bitmapData));
                  §@G§();
               };
               var _loc3_:*;
               §§push((_loc3_ = this).§&g§);
               if(_loc6_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(_loc6_)
               {
                  _loc3_.§&g§ = _loc4_;
               }
               §§push(§§newactivation());
               if(_loc6_ || _loc2_)
               {
                  if(§§pop().§§slot[1].image)
                  {
                     if(!_loc5_)
                     {
                        var spriteSheetClass:Class = §]'§;
                        §§push(this);
                        §§push("sprite_sheets/");
                        if(!_loc5_)
                        {
                           §§push(§§newactivation());
                           if(_loc6_ || this)
                           {
                              addr103:
                              §§push(§§pop() + §§pop().§§slot[1].image);
                              §§push(§§newactivation());
                           }
                           §§pop().§'!N§(§§pop(),§§pop().§§slot[2]);
                           §§goto(addr183);
                        }
                        §§goto(addr103);
                     }
                     else
                     {
                        addr138:
                        spriteSheetClass = §]!e§;
                        §§push(this);
                        §§push("sprite_sheets/");
                        if(_loc6_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc5_ && param1))
                           {
                              §§push(§§pop() + §§pop().§§slot[1].name);
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr175:
                                 §§push(§§pop() + ".png");
                                 §§push(§§newactivation());
                              }
                              §§goto(addr175);
                           }
                           §§pop().§'!N§(§§pop(),§§pop().§§slot[2]);
                           addr178:
                           §§goto(addr183);
                        }
                        §§goto(addr175);
                        addr137:
                     }
                     addr183:
                     return;
                  }
                  §§push(Boolean(dataObject.name));
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§pop();
                           §§push(§§newactivation());
                           if(_loc6_)
                           {
                              §§push(Boolean(§§pop().§§slot[1].charCount));
                           }
                           §§goto(addr138);
                        }
                     }
                  }
                  if(!§§pop())
                  {
                     throw new Error("Invalid sprite sheet data.");
                  }
                  if(!(_loc5_ && this))
                  {
                     §§goto(addr137);
                  }
               }
               §§goto(addr138);
            }
            §§goto(addr178);
         }
         §§goto(addr40);
      }
      
      protected function §@!,§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this);
            §§push(56895);
            if(!_loc5_)
            {
               §§push(25147);
               if(!_loc5_)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§#0§ = §§pop();
            if(_loc4_ || _loc3_)
            {
               addr43:
               _loc2_ = int(Math.min(param1.length,65536) - 1);
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               §§push(0);
               if(_loc4_)
               {
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        param1[_loc2_] -= int(this.§,e§() * 255);
                        §§push(_loc2_);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(2);
                           if(!(_loc4_ || _loc3_))
                           {
                              continue;
                           }
                           §§push(§§pop() - §§pop());
                           if(!_loc5_)
                           {
                              §§push(int(§§pop()));
                              if(!_loc5_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr179);
                           }
                           else
                           {
                              §§goto(addr104);
                           }
                        }
                        break;
                     }
                     §§push(param1.length - 1);
                     if(!(_loc5_ && _loc2_))
                     {
                        addr104:
                        _loc2_ = int(§§pop());
                        if(!_loc4_)
                        {
                        }
                        loop2:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!(_loc5_ && _loc2_))
                           {
                              while(true)
                              {
                                 §§push(0);
                                 §§push(int(§§pop()));
                                 addr162:
                                 break loop0;
                                 if(!(_loc5_ && this))
                                 {
                                    continue loop2;
                                 }
                              }
                              addr188:
                              §§push(int(Math.max(param1.length,65536) - 65536));
                              break;
                              addr179:
                           }
                           break;
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_)
                        {
                           §§push(param1.length - 1);
                           if(!_loc5_)
                           {
                              §§push(int(§§pop()));
                              if(_loc4_)
                              {
                                 _loc2_ = §§pop();
                                 if(!(_loc5_ && this))
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          loop6:
                                          while(true)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   addr273:
                                                   param1.inflate();
                                                   break;
                                                }
                                                break;
                                             }
                                             param1[_loc2_] -= int(this.§,e§() * 255);
                                             if(!(_loc5_ && param1))
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc4_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(2);
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(_loc5_ && this)
                                                            {
                                                               continue loop5;
                                                            }
                                                         }
                                                      }
                                                      addr248:
                                                   }
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         break loop6;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                addr230:
                                             }
                                             break;
                                          }
                                          return;
                                       }
                                    }
                                 }
                                 §§goto(addr230);
                              }
                              §§goto(addr248);
                           }
                           §§goto(addr257);
                        }
                        §§goto(addr273);
                        addr171:
                     }
                     §§goto(addr188);
                     §§goto(addr104);
                  }
                  while(true)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr171);
                  }
               }
               break;
            }
            while(true)
            {
               if(§§pop() >= §§pop())
               {
                  param1[_loc2_] -= int(this.§,e§() * 255);
                  if(_loc4_ || param1)
                  {
                     §§push(_loc2_);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() - int(this.§,e§() * 255));
                        if(!(_loc5_ && this))
                        {
                           §§goto(addr162);
                        }
                        else
                        {
                           §§goto(addr188);
                        }
                     }
                     §§goto(addr104);
                  }
                  else
                  {
                     §§goto(addr188);
                  }
               }
               §§goto(addr188);
               §§goto(addr188);
            }
         }
         §§goto(addr43);
      }
      
      protected function §,e§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            §§push(this.§#0§);
            if(!_loc1_)
            {
               §§push(this.§#0§);
               if(!_loc1_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§#0§ = §§pop();
            if(!(_loc1_ && _loc2_))
            {
               addr39:
               §§push(this);
               §§push(this.§#0§);
               if(_loc2_)
               {
                  §§push(§§pop() ^ this.§#0§ >>> 35);
               }
               §§pop().§#0§ = §§pop();
               if(_loc2_)
               {
                  §§push(this);
                  §§push(this.§#0§);
                  if(_loc2_ || this)
                  {
                     §§push(this.§#0§);
                     if(_loc2_ || this)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§#0§ = §§pop();
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.§#0§);
                     if(!(_loc1_ && this))
                     {
                        §§push(0);
                        if(_loc2_ || this)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 addr127:
                                 §§push(this);
                                 §§push(this.§#0§);
                                 if(!(_loc1_ && this))
                                 {
                                    §§push(§§pop() & 2147483647);
                                 }
                                 §§pop().§#0§ = §§pop();
                                 addr140:
                                 §§push(this.§#0§);
                                 §§push(2147483647);
                              }
                           }
                           §§goto(addr140);
                        }
                        return §§pop() / §§pop();
                     }
                  }
                  §§goto(addr140);
               }
            }
            §§goto(addr127);
         }
         §§goto(addr39);
      }
   }
}
