package §5u§
{
   import §"!1§.§4!b§;
   import §"!1§.§?!q§;
   import §%!K§.§ i§;
   import §%!K§.§7J§;
   import §&z§.§'!i§;
   import §8s§.§<5§;
   import §8s§.§=!d§;
   import §8s§.§>4§;
   import §8s§.§@M§;
   import §8s§.§`s§;
   import §;"7§.§3"#§;
   import §<!1§.§-#§;
   import §<!1§.§9!6§;
   import §<!1§.§@"4§;
   import §<i§.§'!e§;
   import §<i§.§`!r§;
   import §`",§.§2M§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §-!h§ extends EventDispatcher implements §7J§
   {
       
      
      protected var §]7§:int;
      
      protected var §[!b§:Object;
      
      protected var §^T§:int = 0;
      
      protected var §4e§:§>4§;
      
      protected var §^" §:Vector.<XML>;
      
      protected var §5$§:Loader;
      
      public function §-!h§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§[!b§ = {};
            while(true)
            {
               this.§^" § = new Vector.<XML>();
               while(true)
               {
                  super();
                  §§goto(addr68);
               }
            }
         }
         addr68:
         while(true)
         {
            this.§4e§ = new §>4§();
            if(!(_loc2_ && _loc2_))
            {
               if(!(_loc2_ && this))
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr64:
      }
      
      public function get §1h§() : §=!d§
      {
         return this.§4e§;
      }
      
      public function get §?!M§() : Boolean
      {
         return this.§^T§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4e§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§[!b§[param1] as §4!b§).§^! §(false);
      }
      
      public function §6@§(param1:String) : ByteArray
      {
         return (this.§[!b§[param1] as §4!b§).content;
      }
      
      public function §?A§(param1:String, param2:Function) : void
      {
         return §-#§.§6!Y§(this.§6@§(param1),param2);
      }
      
      public function §+"0§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:§4!b§ = null;
         if(!_loc8_)
         {
            if(param2)
            {
               if(_loc9_ || this)
               {
                  this.§[!§(param1);
               }
            }
         }
         var _loc3_:§?!q§ = new §?!q§();
         if(!_loc8_)
         {
            _loc3_.loadBytes(param1);
         }
         var _loc4_:Object = {};
         var _loc5_:* = int(_loc3_.§-!E§() - 1);
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§@!M§(_loc5_)).§['§.substr(-1) == "/")
            {
               if(_loc8_)
               {
               }
            }
            else
            {
               if(this.§[!b§[_loc6_.§['§])
               {
                  if(_loc8_ && _loc3_)
                  {
                     continue;
                  }
               }
               this.§[!b§[_loc6_.§['§] = _loc4_[_loc6_.§['§] = _loc6_;
               if(!_loc9_)
               {
                  continue;
               }
            }
            §§push(_loc5_);
            if(_loc9_ || this)
            {
               §§push(§§pop() - 1);
            }
            _loc5_ = §§pop();
         }
         if(!(_loc8_ && _loc3_))
         {
            this.§ !D§(_loc4_);
         }
      }
      
      protected function § !D§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr156:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               addr158:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      private function §4!3§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:LoaderContext = null;
         if(_loc7_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§^T§);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc7_ || _loc2_)
            {
               _loc4_.§^T§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc7_)
         {
            this.§^" §.push(_loc2_);
            while(true)
            {
               §§goto(addr92);
            }
         }
         while(true)
         {
            if(false)
            {
               addr92:
               §§goto(addr159);
            }
            else
            {
               _loc3_ = new LoaderContext();
               if(!(_loc6_ && param1))
               {
                  _loc3_.allowCodeImport = true;
                  if(!(_loc6_ && _loc2_))
                  {
                     this.§5$§.loadBytes(this.§6@§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                  }
               }
            }
            addr159:
            while(this.§^" §.length == 1)
            {
               continue loop0;
            }
            return;
         }
      }
      
      private function §0!'§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§5$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§0!'§);
         }
         var _loc2_:XML = this.§^" §.shift();
         if(!_loc3_)
         {
            § i§.§@5§(this.§5$§,_loc2_.Library[0]);
            while(true)
            {
               if(this.§^" §.length > 0)
               {
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        this.§5$§ = new Loader();
                     }
                     addr105:
                  }
                  loop1:
                  for(; !_loc3_; loop3:
                  while(_loc4_ || this)
                  {
                     while(true)
                     {
                        this.§+i§();
                        if(!(_loc4_ || _loc2_))
                        {
                           continue loop3;
                        }
                        if(_loc4_)
                        {
                           break;
                        }
                        §§goto(addr96);
                     }
                     return;
                  })
                  {
                     this.§5$§.contentLoaderInfo.addEventListener(Event.INIT,this.§0!'§);
                     while(true)
                     {
                        this.§5$§.loadBytes(this.§6@§(this.§^" §[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                        continue loop1;
                     }
                  }
                  continue;
               }
               §§goto(addr39);
            }
         }
         §§goto(addr105);
      }
      
      private function §38§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = §9!6§.§1!G§(this.getFileAsString(param1));
         if(!(_loc4_ && this))
         {
            §2M§.§[!R§(_loc2_);
         }
      }
      
      protected function §0!p§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc4_)
         {
            §3"#§.§9E§(_loc2_);
         }
      }
      
      protected function §'!T§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc6_ && this))
         {
            §§push(param1);
            if(_loc5_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc5_)
               {
                  §§push(§§newactivation());
                  if(_loc5_)
                  {
                     addr37:
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
                              if(§[!b§[_loc13_] == null)
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
                        §4e§.§9!E§(new §<5§(_loc2_,_loc4_,param1.bitmapData));
                        §+i§();
                     };
                     if(_loc5_ || param1)
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§^T§);
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(_loc5_)
                        {
                           _loc3_.§^T§ = _loc4_;
                        }
                     }
                     §§goto(addr98);
                  }
                  §§pop().§§slot[3] = filePath.substr(0,filePath.length - 3) + "png";
                  addr102:
                  do
                  {
                     this.§?A§(imagePath,onComplete);
                  }
                  while(!(_loc5_ || param1));
                  
               }
               addr98:
               if(_loc5_)
               {
                  §§push(§§newactivation());
               }
               return;
            }
            §§goto(addr102);
         }
         §§goto(addr37);
      }
      
      protected function §+i§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§^T§);
            if(_loc3_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               _loc1_.§^T§ = _loc2_;
            }
            if(_loc3_ || _loc3_)
            {
               if(this.§^T§ == 0)
               {
                  if(!_loc4_)
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
         }
      }
      
      protected function §<j§(param1:String) : void
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
               if(!(_loc4_ || param1))
               {
                  break;
               }
               §§pop().§§slot[2] = function(param1:Bitmap):void
               {
                  §'!i§.§ ""§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
               };
               do
               {
                  §§push(this);
                  §§push("particle_emitters/" + id);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + ".png");
                  }
                  §§pop().§?A§(§§pop(),onComplete);
               }
               while(!(_loc4_ || param1));
               
               if(_loc4_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §]!#§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            if(_loc6_ || _loc2_)
            {
               while(true)
               {
                  §§push(§§newactivation());
                  if(!(_loc6_ || _loc3_))
                  {
                     break;
                  }
                  §§pop().§§slot[1] = param1;
                  if(!_loc6_)
                  {
                     return;
                  }
                  addr89:
                  §§push(§§newactivation());
                  if(_loc5_)
                  {
                     break;
                  }
                  continue loop0;
               }
               loop9:
               while(true)
               {
                  §§push(Boolean(§§pop().§§slot[1].charCount));
                  if(_loc6_ || this)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(§§newactivation());
                                 }
                                 else
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc6_ || param1)
                                       {
                                          addr151:
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             continue loop9;
                                          }
                                          addr204:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop().§§slot[1].name));
                                             addr207:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   break loop5;
                                                }
                                                continue loop6;
                                             }
                                             §§goto(addr151);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr210);
                                    }
                                    addr210:
                                    addr209:
                                 }
                                 if(_loc6_ || param1)
                                 {
                                    §§pop().§§slot[3] = §@M§;
                                    break;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    §§pop().§§slot[3] = §`s§;
                                    break loop0;
                                    addr240:
                                    while(true)
                                    {
                                       continue loop7;
                                    }
                                 }
                                 §§goto(addr89);
                                 addr223:
                                 addr241:
                              }
                              break;
                           }
                           throw new Error("Invalid sprite sheet data.");
                        }
                        if(_loc6_)
                        {
                           §§push(this);
                           §§push("sprite_sheets/" + dataObject.name);
                           if(!_loc5_)
                           {
                              §§push(§§pop() + ".png");
                           }
                           §§pop().§?A§(§§pop(),onComplete);
                           if(_loc5_ && this)
                           {
                              addr221:
                              if(!_loc6_)
                              {
                                 §§goto(addr240);
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr89);
                        }
                        break loop0;
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr209);
               }
               addr45:
            }
            break;
         }
         while(true)
         {
            this.§?A§("sprite_sheets/" + dataObject.image,onComplete);
            §§goto(addr221);
         }
      }
      
      protected function §[!§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc4_ || param1)
         {
            §§push(this);
            §§push(56895);
            if(_loc4_ || _loc2_)
            {
               §§push(25147);
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§]7§ = §§pop();
         }
         do
         {
            _loc2_ = int(Math.min(param1.length,65536) - 1);
         }
         while(!_loc4_);
         
         loop1:
         while(true)
         {
            §§push(_loc2_);
            loop2:
            while(true)
            {
               §§push(0);
               if(_loc4_ || this)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(param1.length - 1);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(int(§§pop()));
                           if(_loc4_)
                           {
                              _loc2_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 addr67:
                                 while(true)
                                 {
                                    addr198:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc5_ && param1))
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(0);
                                             addr207:
                                             loop8:
                                             for(; §§pop() >= §§pop(); continue loop6)
                                             {
                                                param1[_loc2_] -= int(this.§&!v§() * 255);
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc4_ || this))
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() - int(this.§&!v§() * 255));
                                                   if(_loc4_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(!_loc4_)
                                                         {
                                                            break loop8;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         continue;
                                                      }
                                                      loop11:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         addr134:
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     §§push(2);
                                                                     if(_loc5_ && param1)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        continue loop11;
                                                                     }
                                                                     addr216:
                                                                     addr215:
                                                                     addr215:
                                                                     addr216:
                                                                     var _loc3_:int = §§pop();
                                                                     if(_loc4_)
                                                                     {
                                                                        addr307:
                                                                        _loc2_ = int(param1.length - 1);
                                                                        addr224:
                                                                        addr306:
                                                                        addr308:
                                                                        §§push(_loc2_);
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(§§pop() < §§pop())
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          addr253:
                                                                                          param1.inflate();
                                                                                          addr255:
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc5_ && _loc3_)
                                                                                             {
                                                                                                addr268:
                                                                                                §§push(_loc2_ - 2);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr272:
                                                                                                   §§push(int(§§pop()));
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      _loc2_ = §§pop();
                                                                                                      addr275:
                                                                                                      §§goto(addr224);
                                                                                                   }
                                                                                                   §§goto(addr307);
                                                                                                }
                                                                                                §§goto(addr306);
                                                                                                addr302:
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                          §§goto(addr275);
                                                                                       }
                                                                                       §§goto(addr308);
                                                                                    }
                                                                                    §§goto(addr255);
                                                                                 }
                                                                                 param1[_loc2_] -= int(this.§&!v§() * 255);
                                                                                 §§goto(addr302);
                                                                              }
                                                                           }
                                                                           §§goto(addr268);
                                                                        }
                                                                        §§goto(addr272);
                                                                     }
                                                                     §§goto(addr253);
                                                                  }
                                                                  §§goto(addr216);
                                                                  continue loop10;
                                                               }
                                                               addr163:
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr215);
                                                }
                                             }
                                             §§goto(addr215);
                                          }
                                       }
                                    }
                                 }
                              }
                              addr111:
                           }
                        }
                        §§goto(addr216);
                     }
                     §§goto(addr111);
                  }
                  else
                  {
                     param1[_loc2_] -= int(this.§&!v§() * 255);
                  }
                  §§goto(addr163);
               }
               §§goto(addr207);
            }
         }
      }
      
      protected function §&!v§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this);
            §§push(this.§]7§);
            if(_loc1_)
            {
               §§push(this.§]7§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§]7§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§]7§);
               if(_loc1_)
               {
                  §§push(§§pop() ^ this.§]7§ >>> 35);
               }
               §§pop().§]7§ = §§pop();
               loop1:
               while(!(_loc2_ && _loc1_))
               {
                  §§push(this);
                  §§push(this.§]7§);
                  if(!_loc2_)
                  {
                     §§push(this.§]7§);
                     if(_loc1_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§]7§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§]7§);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        addr45:
                        loop4:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              continue loop3;
                           }
                           if(_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§]7§);
                                 if(_loc1_)
                                 {
                                    §§push(§§pop() & 2147483647);
                                 }
                                 §§pop().§]7§ = §§pop();
                              }
                           }
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 break loop4;
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
   }
}
