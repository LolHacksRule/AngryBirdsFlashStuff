package §,l§
{
   import §#"A§.§'"U§;
   import §#"A§.§^!8§;
   import §%!g§.ParticleManager;
   import §,"R§.§,! §;
   import §,"R§.§0"G§;
   import §,"R§.§4"@§;
   import §,"R§.§81§;
   import §,"R§.§>!E§;
   import §4;§.§=!^§;
   import §9!n§.§0"T§;
   import §9!n§.LevelManager;
   import §9@§.§1!j§;
   import §9@§.§["X§;
   import §9@§.§]o§;
   import §<T§.§?!Z§;
   import §<a§.§;L§;
   import §<a§.§]G§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §0z§ extends EventDispatcher implements §^!8§
   {
       
      
      protected var §-Q§:int;
      
      protected var §>8§:Object;
      
      protected var §-R§:int = 0;
      
      protected var §`J§:§0"G§;
      
      protected var §1"6§:Vector.<XML>;
      
      protected var §2!H§:Loader;
      
      private var §9![§:String;
      
      public function §0z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§>8§ = {};
            while(true)
            {
               this.§1"6§ = new Vector.<XML>();
               loop2:
               while(_loc1_ || _loc1_)
               {
                  this.§`J§ = new §0"G§();
                  if(!(_loc2_ && this))
                  {
                     addr60:
                     if(!_loc1_)
                     {
                        while(true)
                        {
                           super();
                           continue loop2;
                           §§goto(addr60);
                        }
                        addr81:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function §[T§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§9![§ = param1;
         }
      }
      
      public function get §#!y§() : §>!E§
      {
         return this.§`J§;
      }
      
      public function get §'!@§() : Boolean
      {
         return this.§-R§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§`J§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§>8§[param1] as §;L§).§["Z§(false);
      }
      
      public function §1+§(param1:String) : ByteArray
      {
         return (this.§>8§[param1] as §;L§).content;
      }
      
      public function §6v§(param1:String, param2:Function) : void
      {
         return §]o§.§]B§(this.§1+§(param1),param2);
      }
      
      public function §'S§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:§;L§ = null;
         if(_loc9_ || _loc3_)
         {
            if(param2)
            {
               if(!_loc8_)
               {
                  addr31:
                  this.§ "J§(param1);
               }
            }
            var _loc3_:§]G§ = new §]G§();
            if(!_loc8_)
            {
               _loc3_.loadBytes(param1);
            }
            var _loc4_:Object = {};
            var _loc5_:* = int(_loc3_.§6"A§() - 1);
            while(_loc5_ >= 0)
            {
               if((_loc6_ = _loc3_.§=![§(_loc5_)).§@"2§.substr(-1) == "/")
               {
                  if(!_loc9_)
                  {
                     this.§>8§[_loc6_.§@"2§] = _loc4_[_loc6_.§@"2§] = _loc6_;
                     addr85:
                     if(_loc8_)
                     {
                        continue;
                     }
                  }
                  addr111:
                  §§push(_loc5_);
                  if(!_loc8_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc5_ = §§pop();
                  continue;
               }
               if(this.§>8§[_loc6_.§@"2§])
               {
                  if(!_loc8_)
                  {
                     §§goto(addr85);
                  }
                  §§goto(addr111);
               }
               §§goto(addr85);
            }
            if(_loc9_)
            {
               this.§%!@§(_loc4_);
            }
            return;
         }
         §§goto(addr31);
      }
      
      protected function §%!@§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr177:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               addr179:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      private function §8!k§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LoaderContext = null;
         if(_loc6_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§-R§);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc6_ || _loc2_)
            {
               _loc4_.§-R§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc6_)
         {
            this.§1"6§.push(_loc2_);
            loop0:
            while(true)
            {
               loop1:
               while(this.§1"6§.length == 1)
               {
                  if(_loc6_)
                  {
                     this.§2!H§ = new Loader();
                  }
                  loop2:
                  while(_loc6_)
                  {
                     while(true)
                     {
                        this.§2!H§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§@-§);
                        if(_loc6_)
                        {
                           if(true)
                           {
                              _loc3_ = new LoaderContext(false,ApplicationDomain.currentDomain);
                              if(!(_loc7_ && _loc3_))
                              {
                                 _loc3_.allowCodeImport = true;
                                 if(!_loc7_)
                                 {
                                    this.§2!H§.loadBytes(this.§1+§(_loc2_.Library.@swf),_loc3_);
                                    break loop1;
                                 }
                                 break loop1;
                              }
                           }
                           continue loop1;
                           break loop1;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr93);
      }
      
      private function §@-§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§2!H§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§@-§);
         }
         var _loc2_:XML = this.§1"6§.shift();
         if(_loc4_ || _loc3_)
         {
            §'"U§.§!,§(this.§2!H§,_loc2_.Library[0]);
            loop0:
            while(true)
            {
               if(this.§1"6§.length <= 0)
               {
                  while(true)
                  {
                     this.§"!2§();
                     if(!(_loc4_ || _loc3_))
                     {
                        continue;
                     }
                     addr59:
                     if(_loc4_ || param1)
                     {
                        break;
                     }
                     addr141:
                     while(_loc4_)
                     {
                        if(_loc3_ && this)
                        {
                           continue loop0;
                        }
                        §§goto(addr59);
                     }
                     while(true)
                     {
                        this.§2!H§.contentLoaderInfo.addEventListener(Event.INIT,this.§@-§);
                        §§goto(addr104);
                     }
                     addr104:
                  }
               }
               continue;
               return;
            }
         }
         while(true)
         {
            this.§2!H§.loadBytes(this.§1+§(this.§1"6§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
            §§goto(addr94);
         }
      }
      
      private function §?J§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §["X§.§ ">§(this.getFileAsString(param1));
         if(_loc4_ || param1)
         {
            §=!^§.§[W§(_loc2_);
         }
      }
      
      private function §@_§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §=!^§.§3!E§(param2,this.§1+§(param1));
         }
      }
      
      protected function §#"@§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!_loc4_)
         {
            §?!Z§.§#!m§(_loc2_);
         }
      }
      
      protected function §4!a§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc6_ || _loc2_)
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
                              if(§>8§[_loc13_] == null)
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
                        §`J§.§default§(new §4"@§(_loc2_,_loc4_,param1.bitmapData));
                        §"!2§();
                     };
                     if(!(_loc5_ && this))
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§-R§);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(_loc6_)
                        {
                           _loc3_.§-R§ = _loc4_;
                        }
                        if(_loc5_)
                        {
                        }
                        return;
                        addr109:
                     }
                     addr113:
                     var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
                     addr111:
                     do
                     {
                        this.§6v§(imagePath,onComplete);
                     }
                     while(_loc5_ && param1);
                     
                  }
                  §§goto(addr111);
               }
               §§goto(addr109);
            }
         }
         §§goto(addr113);
      }
      
      protected function §"!2§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§-R§);
            if(!_loc4_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc1_)
            {
               _loc1_.§-R§ = _loc2_;
            }
            if(!(_loc4_ && _loc1_))
            {
               addr70:
               if(this.§-R§ == 0)
               {
                  if(_loc3_)
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      protected function § >§(param1:String) : void
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
                  ParticleManager.§4!z§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
               };
               do
               {
                  §§push(this);
                  §§push("particle_emitters/");
                  if(_loc3_ || param1)
                  {
                     §§push(§§newactivation());
                     if(!_loc4_)
                     {
                        §§push(§§pop() + §§pop().§§slot[1]);
                        if(_loc3_ || _loc2_)
                        {
                           addr67:
                           §§push(§§pop() + ".png");
                        }
                        §§push(§§newactivation());
                     }
                     continue;
                  }
                  §§goto(addr67);
               }
               while(§§pop().§6v§(§§pop(),§§pop().§§slot[2]), !_loc3_);
               
               if(_loc3_ || this)
               {
                  return;
               }
            }
         }
      }
      
      protected function §,Y§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§pop().§§slot[1] = param1;
                     if(_loc5_ || _loc2_)
                     {
                        if(!_loc5_)
                        {
                           continue loop1;
                        }
                        §§push(§§newactivation());
                        if(!(_loc6_ && param1))
                        {
                           if(_loc6_)
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              break loop2;
                           }
                           §§pop().§§slot[2] = function(param1:Bitmap):void
                           {
                              §`J§.§default§(new spriteSheetClass(dataObject,param1.bitmapData));
                              §"!2§();
                           };
                           if(!_loc6_)
                           {
                              if(true)
                              {
                                 var _loc3_:*;
                                 §§push((_loc3_ = this).§-R§);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc4_:* = §§pop();
                              }
                              continue loop2;
                              if(!_loc6_)
                              {
                                 _loc3_.§-R§ = _loc4_;
                              }
                              if(_loc5_ || _loc2_)
                              {
                                 addr249:
                                 if(!dataObject.image)
                                 {
                                    addr216:
                                    §§push(Boolean(dataObject.name));
                                    if(Boolean(dataObject.name))
                                    {
                                       addr231:
                                       §§pop();
                                       §§push(§§newactivation());
                                       if(!_loc6_)
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§push(Boolean(§§pop().§§slot[1].charCount));
                                             if(_loc5_ || this)
                                             {
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr216);
                                             }
                                             §§goto(addr231);
                                          }
                                          §§goto(addr249);
                                       }
                                       §§goto(addr192);
                                       addr232:
                                    }
                                    addr189:
                                    if(§§pop())
                                    {
                                       addr192:
                                       §§push(§§newactivation());
                                       if(!(_loc6_ && this))
                                       {
                                          if(!_loc6_)
                                          {
                                             §§pop().§§slot[3] = §81§;
                                             if(_loc5_ || _loc2_)
                                             {
                                                break;
                                             }
                                             addr252:
                                             §§push(§§newactivation());
                                          }
                                          §§pop().§§slot[3] = §,! §;
                                          §§push(this);
                                          §§push("sprite_sheets/");
                                          if(_loc5_)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc5_)
                                             {
                                                addr244:
                                                §§push(§§pop() + §§pop().§§slot[1].image);
                                                §§push(§§newactivation());
                                             }
                                             §§pop().§6v§(§§pop(),§§pop().§§slot[2]);
                                             §§goto(addr88);
                                          }
                                          §§goto(addr244);
                                          addr256:
                                       }
                                       §§goto(addr216);
                                    }
                                    throw new Error("Invalid sprite sheet data.");
                                 }
                                 §§goto(addr252);
                              }
                              break;
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr249);
                     }
                     break;
                  }
                  §§push(this);
                  §§push("sprite_sheets/");
                  if(_loc5_)
                  {
                     §§push(§§newactivation());
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(§§pop() + §§pop().§§slot[1].name);
                        if(!(_loc6_ && _loc2_))
                        {
                           addr144:
                           §§push(§§pop() + ".png");
                        }
                        §§push(§§newactivation());
                     }
                     §§pop().§6v§(§§pop(),§§pop().§§slot[2]);
                     if(!_loc6_)
                     {
                        if(!(_loc5_ || this))
                        {
                           §§goto(addr232);
                        }
                        if(!_loc5_)
                        {
                           §§goto(addr256);
                        }
                        addr88:
                        return;
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr144);
               }
               continue loop0;
            }
         }
      }
      
      protected function § "J§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this);
            §§push(56895);
            if(_loc5_)
            {
               §§push(25147);
               if(_loc5_)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§-Q§ = §§pop();
            do
            {
               _loc2_ = int(Math.min(param1.length,65536) - 1);
            }
            while(!(_loc5_ || this));
            
         }
         loop1:
         while(true)
         {
            §§push(_loc2_);
            loop2:
            while(true)
            {
               §§push(0);
               if(_loc5_ || param1)
               {
                  if(_loc5_)
                  {
                     if(§§pop() < §§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(param1.length - 1);
                           addr109:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 §§push(int(§§pop()));
                                 if(!(_loc4_ && param1))
                                 {
                                    _loc2_ = §§pop();
                                    if(!_loc4_)
                                    {
                                       if(_loc4_ && this)
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          addr204:
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc4_)
                                             {
                                                break;
                                                addr208:
                                             }
                                             §§push(0);
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   param1[_loc2_] -= int(this.§0"Z§() * 255);
                                                   if(_loc4_ && _loc2_)
                                                   {
                                                      addr209:
                                                      §§push(int(Math.max(param1.length,65536) - 65536));
                                                   }
                                                   else
                                                   {
                                                      addr209:
                                                   }
                                                   continue loop3;
                                                   break loop6;
                                                }
                                                §§goto(addr209);
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                    §§goto(addr209);
                                 }
                              }
                              else
                              {
                                 addr136:
                                 §§push(int(§§pop()));
                                 if(_loc5_ || param1)
                                 {
                                    addr154:
                                    _loc2_ = §§pop();
                                    continue loop1;
                                 }
                              }
                              addr217:
                              var _loc3_:* = §§pop();
                              if(!_loc4_)
                              {
                                 addr318:
                                 _loc2_ = int(param1.length - 1);
                                 addr225:
                                 addr319:
                                 addr317:
                                 §§push(_loc2_);
                                 if(_loc5_ || param1)
                                 {
                                    if(_loc5_ || this)
                                    {
                                       §§push(_loc3_);
                                       if(_loc5_ || this)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                param1.inflate();
                                             }
                                             if(!_loc5_)
                                             {
                                                addr277:
                                                if(_loc5_ || this)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr225);
                                                   }
                                                   §§goto(addr319);
                                                }
                                                §§push(_loc2_);
                                                if(_loc5_)
                                                {
                                                   addr267:
                                                   §§push(§§pop() - 2);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      addr276:
                                                      _loc2_ = int(§§pop());
                                                      §§goto(addr277);
                                                   }
                                                   §§goto(addr317);
                                                }
                                                §§goto(addr318);
                                                addr313:
                                             }
                                             return;
                                          }
                                          param1[_loc2_] -= int(this.§0"Z§() * 255);
                                          §§goto(addr313);
                                       }
                                       §§goto(addr267);
                                    }
                                    §§goto(addr277);
                                 }
                                 §§goto(addr276);
                              }
                              §§goto(addr277);
                           }
                        }
                     }
                     else
                     {
                        param1[_loc2_] -= int(this.§0"Z§() * 255);
                        if(_loc5_)
                        {
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              break;
                           }
                           §§goto(addr154);
                        }
                     }
                     §§goto(addr209);
                  }
                  break;
               }
               §§goto(addr208);
            }
            §§goto(addr136);
         }
      }
      
      protected function §0"Z§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push(this.§-Q§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(this.§-Q§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§-Q§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§-Q§);
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() ^ this.§-Q§ >>> 35);
               }
               §§pop().§-Q§ = §§pop();
               loop1:
               for(; !(_loc2_ && _loc2_); if(_loc2_ && _loc1_)
               {
                  continue;
               },§§goto(addr19))
               {
                  §§push(this);
                  §§push(this.§-Q§);
                  if(!_loc2_)
                  {
                     §§push(this.§-Q§);
                     if(_loc1_ || this)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§-Q§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§-Q§);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc2_ && this))
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(this);
                                    §§push(this.§-Q§);
                                    if(_loc1_)
                                    {
                                       §§push(§§pop() & 2147483647);
                                    }
                                    §§pop().§-Q§ = §§pop();
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           addr19:
                           §§push(this.§-Q§);
                           if(_loc1_)
                           {
                              §§push(2147483647);
                              if(!_loc2_)
                              {
                                 return §§pop() / §§pop();
                              }
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
   }
}
