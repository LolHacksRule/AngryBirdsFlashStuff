package §!%§
{
   import §'V§.§>!8§;
   import §'V§.§@!"§;
   import §0!!§.§%!"§;
   import §0!!§.§+!%§;
   import §0!!§.§4C§;
   import §0R§.§ for§;
   import §1n§.§"#§;
   import §3"§.§0$§;
   import §3"§.§8+§;
   import §9!3§.§;G§;
   import §9!3§.§=!6§;
   import §<<§.ParticleManager;
   import §`g§.§0K§;
   import §`g§.§=X§;
   import §`g§.§>!7§;
   import §`g§.§[N§;
   import §`g§.set;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   public class §=0§ extends EventDispatcher implements §@!"§
   {
       
      
      protected var §+R§:int;
      
      protected var §?X§:Object;
      
      protected var §'w§:int = 0;
      
      protected var §!"§:§=X§;
      
      protected var §5S§:Vector.<XML>;
      
      protected var §-?§:Loader;
      
      public function §=0§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§?X§ = {};
         }
         loop0:
         while(true)
         {
            this.§5S§ = new Vector.<XML>();
            loop1:
            do
            {
               super();
               while(!_loc1_)
               {
                  this.§!"§ = new §=X§();
                  if(!_loc1_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!(_loc2_ || _loc1_));
            
            return;
         }
      }
      
      public function get §->§() : §[N§
      {
         return this.§!"§;
      }
      
      public function get §>!0§() : Boolean
      {
         return this.§'w§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§!"§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§?X§[param1] as §;G§).§5r§(false);
      }
      
      public function §@H§(param1:String) : ByteArray
      {
         return (this.§?X§[param1] as §;G§).content;
      }
      
      public function §!<§(param1:String, param2:Function) : void
      {
         return §4C§.§9!G§(this.§@H§(param1),param2);
      }
      
      public function §6=§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:§;G§ = null;
         if(!(_loc8_ && _loc3_))
         {
            if(param2)
            {
               if(_loc9_ || this)
               {
                  this.§!w§(param1);
               }
            }
         }
         var _loc3_:§=!6§ = new §=!6§();
         if(!_loc8_)
         {
            _loc3_.loadBytes(param1);
         }
         var _loc4_:Object = {};
         var _loc5_:* = int(_loc3_.§#!,§() - 1);
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§1!D§(_loc5_)).§;V§.substr(-1) == "/")
            {
               if(!_loc9_)
               {
                  continue;
               }
            }
            else
            {
               if(this.§?X§[_loc6_.§;V§])
               {
                  if(!(_loc9_ || _loc3_))
                  {
                     continue;
                  }
               }
               this.§?X§[_loc6_.§;V§] = _loc4_[_loc6_.§;V§] = _loc6_;
               if(!(_loc9_ || _loc3_))
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
         }
         if(_loc9_ || param1)
         {
            this.§8m§(_loc4_);
         }
      }
      
      protected function §8m§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var fileName:String = null;
         var levelNameResults:Array = null;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            addr95:
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[5] = null;
                  §§push(§§newactivation());
                  addr66:
                  while(!(_loc7_ && _loc3_))
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function §finally§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && _loc2_))
         {
            var _loc3_:*;
            §§push((_loc3_ = this).§'w§);
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               _loc3_.§'w§ = _loc4_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!(_loc5_ && _loc3_))
         {
            this.§5S§.push(_loc2_);
            loop0:
            while(this.§5S§.length == 1)
            {
               if(!(_loc5_ && _loc3_))
               {
                  while(true)
                  {
                     this.§-?§ = new Loader();
                  }
                  addr122:
               }
               while(true)
               {
                  this.§-?§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§0Z§);
                  while(!_loc5_)
                  {
                     if(_loc6_)
                     {
                        this.§-?§.loadBytes(this.§@H§(_loc2_.Library.@swf));
                        if(_loc6_)
                        {
                           break loop0;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr122);
      }
      
      private function §0Z§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§-?§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§0Z§);
         }
         var _loc2_:XML = this.§5S§.shift();
         if(!_loc4_)
         {
            §>!8§.§3!§(this.§-?§,_loc2_.Library[0]);
            if(this.§5S§.length > 0)
            {
               this.§-?§ = new Loader();
               while(true)
               {
                  this.§-?§.contentLoaderInfo.addEventListener(Event.INIT,this.§0Z§);
                  while(true)
                  {
                     this.§-?§.loadBytes(this.§@H§(this.§5S§[0].Library.@swf));
                     while(!(_loc4_ && this))
                     {
                        while(true)
                        {
                           §§goto(addr38);
                        }
                     }
                  }
               }
            }
            addr38:
            while(true)
            {
               this.§6u§();
               if(!_loc4_)
               {
                  continue loop0;
               }
               continue loop2;
            }
            addr55:
            return;
         }
         §§goto(addr85);
      }
      
      private function §#Z§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = §+!%§.§>7§(this.getFileAsString(param1));
         if(_loc3_ || _loc2_)
         {
            § for§.§-x§(_loc2_);
         }
      }
      
      protected function §@!<§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!(_loc3_ && _loc3_))
         {
            §"#§.§`b§(_loc2_);
         }
      }
      
      protected function §^!8§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc5_ && _loc3_))
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc6_)
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
                              if(§?X§[_loc13_] == null)
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
                        §!"§.§^l§(new §0K§(_loc2_,_loc4_,param1.bitmapData));
                        §6u§();
                     };
                     if(_loc6_ || _loc2_)
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§'w§);
                        if(_loc6_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(!(_loc5_ && param1))
                        {
                           _loc3_.§'w§ = _loc4_;
                        }
                        if(_loc6_ || this)
                        {
                           addr113:
                           var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
                           addr111:
                           do
                           {
                              this.§!<§(imagePath,onComplete);
                           }
                           while(!_loc6_);
                           
                           addr123:
                        }
                        §§goto(addr123);
                     }
                     return;
                  }
               }
               §§goto(addr111);
            }
         }
         §§goto(addr113);
      }
      
      protected function §6u§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§'w§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               _loc1_.§'w§ = _loc2_;
            }
            if(_loc3_ || _loc2_)
            {
               if(this.§'w§ == 0)
               {
                  if(!_loc3_)
                  {
                  }
               }
               §§goto(addr77);
            }
            dispatchEvent(new Event(Event.COMPLETE));
         }
         addr77:
      }
      
      protected function §!B§(param1:String) : void
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
               if(!(_loc4_ && _loc3_))
               {
                  §§pop().§§slot[2] = function(param1:Bitmap):void
                  {
                     ParticleManager.§while§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
                  };
                  do
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(this);
                        §§push("particle_emitters/");
                        if(!_loc4_)
                        {
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              continue;
                           }
                           §§push(§§pop() + §§pop().§§slot[1]);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(§§pop() + ".png");
                           }
                        }
                        §§push(§§newactivation());
                        continue;
                     }
                     continue loop1;
                  }
                  while(§§pop().§!<§(§§pop(),§§pop().§§slot[2]), _loc4_ && _loc2_);
                  
                  return;
               }
               break;
            }
         }
      }
      
      protected function §-M§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[3] = null;
            while(true)
            {
               var dataObject:Object = param1;
               §§push(§§newactivation());
               if(!(_loc5_ || param1))
               {
                  break;
               }
               §§pop().§§slot[2] = function(param1:Bitmap):void
               {
                  §!"§.§^l§(new spriteSheetClass(dataObject,param1.bitmapData));
                  §6u§();
               };
               if(false)
               {
                  continue;
               }
               var _loc3_:*;
               §§push((_loc3_ = this).§'w§);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(_loc5_)
               {
                  _loc3_.§'w§ = _loc4_;
               }
               if(!_loc6_)
               {
                  if(!dataObject.image)
                  {
                     §§push(Boolean(dataObject.name));
                     loop2:
                     while(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 §§push(Boolean(dataObject.charCount));
                                 if(!_loc6_)
                                 {
                                    if(!_loc6_)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              addr154:
                           }
                        }
                        return;
                     }
                     if(!§§pop())
                     {
                        throw new Error("Invalid sprite sheet data.");
                     }
                     var spriteSheetClass:Class = set;
                     §§push(this);
                     §§push("sprite_sheets/");
                     if(_loc5_)
                     {
                        §§push(§§newactivation());
                        if(!_loc6_)
                        {
                           §§push(§§pop() + §§pop().§§slot[1].name);
                           if(!(_loc6_ && param1))
                           {
                              addr112:
                              §§push(§§pop() + ".png");
                              §§push(§§newactivation());
                           }
                           §§goto(addr112);
                        }
                        §§pop().§!<§(§§pop(),§§pop().§§slot[2]);
                        §§goto(addr68);
                     }
                     §§goto(addr112);
                  }
                  spriteSheetClass = §>!7§;
                  §§push(this);
                  §§push("sprite_sheets/");
                  if(!_loc6_)
                  {
                     §§push(§§newactivation());
                     if(!(_loc6_ && this))
                     {
                        addr171:
                        §§push(§§pop() + §§pop().§§slot[1].image);
                        §§push(§§newactivation());
                     }
                     §§pop().§!<§(§§pop(),§§pop().§§slot[2]);
                     §§goto(addr68);
                  }
                  §§goto(addr171);
               }
               §§goto(addr154);
            }
         }
      }
      
      protected function §!w§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc5_ || _loc2_)
         {
            §§push(this);
            §§push(56895);
            if(!(_loc4_ && param1))
            {
               §§push(25147);
               if(_loc5_)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§+R§ = §§pop();
         }
         do
         {
            _loc2_ = int(Math.min(param1.length,65536) - 1);
         }
         while(_loc4_ && this);
         
         loop1:
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               §§push(0);
               if(_loc5_ || _loc3_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§push(param1.length - 1);
                        if(!(_loc4_ && this))
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§push(int(§§pop()));
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr115:
                                 if(_loc5_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc4_ && param1))
                                    {
                                       addr125:
                                       loop2:
                                       while(true)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(!_loc4_)
                                             {
                                                addr200:
                                                §§push(0);
                                                while(§§pop() >= §§pop())
                                                {
                                                   param1[_loc2_] -= int(this.§6J§() * 255);
                                                   §§push(_loc2_);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop() - int(this.§6J§() * 255));
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         _loc2_ = int(§§pop());
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            if(false)
                                                            {
                                                               continue loop2;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop1;
                                                      }
                                                      addr209:
                                                      var _loc3_:int = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         addr295:
                                                         _loc2_ = int(param1.length - 1);
                                                         addr296:
                                                         addr294:
                                                         §§push(_loc2_);
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        param1.inflate();
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr296);
                                                                           }
                                                                           return;
                                                                        }
                                                                        addr255:
                                                                        §§push(_loc2_);
                                                                        if(_loc5_)
                                                                        {
                                                                           addr268:
                                                                           §§push(§§pop() - 2);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr272:
                                                                              _loc2_ = int(§§pop());
                                                                              addr273:
                                                                              §§goto(addr296);
                                                                           }
                                                                           §§goto(addr294);
                                                                        }
                                                                        §§goto(addr295);
                                                                        addr290:
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                                  param1[_loc2_] -= int(this.§6J§() * 255);
                                                                  §§goto(addr290);
                                                               }
                                                               §§goto(addr268);
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                   §§goto(addr209);
                                                }
                                                addr200:
                                             }
                                             §§goto(addr209);
                                          }
                                       }
                                    }
                                    §§goto(addr209);
                                    §§push(Math.max(param1.length,65536) - 65536);
                                 }
                                 else
                                 {
                                    addr128:
                                    §§push(2);
                                    if(!_loc4_)
                                    {
                                       _loc2_ = int(§§pop() - §§pop());
                                       addr132:
                                       continue;
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr200);
                              }
                              §§goto(addr209);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr125);
                  }
                  else
                  {
                     param1[_loc2_] -= int(this.§6J§() * 255);
                     §§push(_loc2_);
                  }
                  §§goto(addr128);
               }
               §§goto(addr200);
            }
            §§goto(addr115);
         }
      }
      
      protected function §6J§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            §§push(this.§+R§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(this.§+R§);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§+R§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§+R§);
               if(_loc2_)
               {
                  §§push(§§pop() ^ this.§+R§ >>> 35);
               }
               §§pop().§+R§ = §§pop();
               while(true)
               {
                  §§push(this);
                  §§push(this.§+R§);
                  if(_loc2_)
                  {
                     §§push(this.§+R§);
                     if(!_loc1_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§+R§ = §§pop();
                  continue loop0;
                  addr46:
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  §§push(this);
                  §§push(this.§+R§);
                  if(!_loc1_)
                  {
                     §§push(§§pop() & 2147483647);
                  }
                  §§pop().§+R§ = §§pop();
                  addr71:
                  §§push(this.§+R§);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(2147483647);
                     if(_loc1_)
                     {
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr46);
                              }
                           }
                           §§goto(addr71);
                        }
                        continue loop0;
                        addr41:
                     }
                     return §§pop() / §§pop();
                  }
                  while(true)
                  {
                     §§goto(addr41);
                     §§goto(addr71);
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr40);
         }
      }
   }
}
