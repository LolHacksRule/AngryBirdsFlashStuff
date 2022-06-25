package §]!+§
{
   import §"!i§.§"!'§;
   import §"!i§.LevelManager;
   import §-o§.§2!4§;
   import §-o§.§4w§;
   import §2"$§.§1!h§;
   import §2"$§.§=!,§;
   import §<-§.§"K§;
   import §<-§.§-"!§;
   import §<-§.§?K§;
   import §<8§.§!!o§;
   import §<8§.§!%§;
   import §<8§.§!B§;
   import §<8§.§+S§;
   import §<8§.§,!J§;
   import §=!A§.ParticleManager;
   import §=I§.§6g§;
   import §=`§.§4s§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §5!1§ extends EventDispatcher implements §2!4§
   {
       
      
      protected var §5!T§:int;
      
      protected var §"!J§:Object;
      
      protected var §4" §:int = 0;
      
      protected var §6L§:§!%§;
      
      protected var §3_§:Vector.<XML>;
      
      protected var §,!a§:Loader;
      
      private var §['§:String;
      
      public function §5!1§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§"!J§ = {};
         }
         while(true)
         {
            this.§3_§ = new Vector.<XML>();
            while(_loc1_)
            {
               super();
               do
               {
                  this.§6L§ = new §!%§();
               }
               while(!(_loc1_ || this));
               
               if(_loc1_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function §#!-§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§['§ = param1;
         }
      }
      
      public function get §8!s§() : §,!J§
      {
         return this.§6L§;
      }
      
      public function get §+<§() : Boolean
      {
         return this.§4" § == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§6L§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§"!J§[param1] as §=!,§).§7Y§(false);
      }
      
      public function §0!Z§(param1:String) : ByteArray
      {
         return (this.§"!J§[param1] as §=!,§).content;
      }
      
      public function §1!0§(param1:String, param2:Function) : void
      {
         return §?K§.§&B§(this.§0!Z§(param1),param2);
      }
      
      public function §?O§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§=!,§ = null;
         if(!(_loc9_ && param1))
         {
            if(param2)
            {
               if(_loc8_)
               {
                  this.§1i§(param1);
               }
            }
         }
         var _loc3_:§1!h§ = new §1!h§();
         if(!_loc9_)
         {
            _loc3_.loadBytes(param1);
         }
         var _loc4_:Object = {};
         var _loc5_:* = int(_loc3_.§]r§() - 1);
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§2t§(_loc5_)).§=!;§.substr(-1) == "/")
            {
               if(_loc9_ && _loc3_)
               {
                  continue;
               }
            }
            else
            {
               if(this.§"!J§[_loc6_.§=!;§])
               {
                  if(_loc9_)
                  {
                  }
                  addr120:
                  §§push(_loc5_);
                  if(!_loc9_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc5_ = §§pop();
                  continue;
               }
               var _loc7_:*;
               _loc4_[_loc6_.§=!;§] = _loc7_ = _loc6_;
               this.§"!J§[_loc6_.§=!;§] = _loc7_;
               if(!(_loc8_ || param1))
               {
                  continue;
               }
            }
            §§goto(addr120);
         }
         if(!(_loc9_ && param1))
         {
            this.§[4§(_loc4_);
         }
      }
      
      protected function §[4§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
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
                     while(true)
                     {
                        §§pop().§§slot[3] = §§pop();
                        while(!_loc6_)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(null);
                              addr175:
                              while(true)
                              {
                                 §§pop().§§slot[4] = §§pop();
                                 addr177:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(null);
                                       addr169:
                                       while(true)
                                       {
                                          §§pop().§§slot[5] = §§pop();
                                          addr171:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             addr162:
                                             while(true)
                                             {
                                                §§push(null);
                                                addr163:
                                                while(true)
                                                {
                                                   §§pop().§§slot[6] = §§pop();
                                                   addr165:
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr90:
                                       while(true)
                                       {
                                          if(_loc7_ || this)
                                          {
                                             continue loop0;
                                          }
                                          continue loop9;
                                          addr26:
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             continue loop6;
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      private function §<!,§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LoaderContext = null;
         if(_loc6_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§4" §);
            if(_loc6_ || this)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc6_ || _loc2_)
            {
               _loc4_.§4" § = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc6_ || param1)
         {
            this.§3_§.push(_loc2_);
            loop0:
            while(true)
            {
               loop1:
               while(this.§3_§.length == 1)
               {
                  loop2:
                  while(true)
                  {
                     this.§,!a§ = new Loader();
                     loop3:
                     while(!_loc7_)
                     {
                        while(true)
                        {
                           this.§,!a§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§57§);
                           if(!(_loc7_ && _loc3_))
                           {
                              if(!_loc7_)
                              {
                                 if(true)
                                 {
                                    _loc3_ = new LoaderContext();
                                    if(_loc6_)
                                    {
                                       _loc3_.allowCodeImport = true;
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          this.§,!a§.loadBytes(this.§0!Z§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
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
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr103);
      }
      
      private function §57§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§,!a§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§57§);
         }
         var _loc2_:XML = this.§3_§.shift();
         if(!_loc4_)
         {
            §4w§.§<!r§(this.§,!a§,_loc2_.Library[0]);
            loop0:
            while(true)
            {
               if(this.§3_§.length <= 0)
               {
                  while(true)
                  {
                     this.§^V§();
                     if(_loc3_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           break;
                        }
                        addr130:
                        while(true)
                        {
                           this.§,!a§.contentLoaderInfo.addEventListener(Event.INIT,this.§57§);
                           addr112:
                           while(true)
                           {
                              this.§,!a§.loadBytes(this.§0!Z§(this.§3_§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                           }
                        }
                     }
                     while(true)
                     {
                        if(_loc3_)
                        {
                           addr85:
                           if(_loc3_ || param1)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr112);
                     }
                  }
                  return;
               }
            }
         }
         while(true)
         {
            this.§,!a§ = new Loader();
            §§goto(addr130);
         }
      }
      
      private function §6'§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §-"!§.§4!c§(this.getFileAsString(param1));
         if(!(_loc3_ && this))
         {
            §6g§.§!!_§(_loc2_);
         }
      }
      
      private function §^1§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §6g§.§7D§(param2,this.§0!Z§(param1));
         }
      }
      
      protected function §;T§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!(_loc4_ && param1))
         {
            §4s§.§+!h§(_loc2_);
         }
      }
      
      protected function §3?§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc6_)
               {
                  addr107:
                  §§push(§§newactivation());
                  if(!_loc6_)
                  {
                     addr32:
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
                              if(§"!J§[_loc13_] == null)
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
                        §6L§.§^'§(new §!!o§(_loc2_,_loc4_,param1.bitmapData));
                        §^V§();
                     };
                     if(_loc5_)
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§4" §);
                        if(_loc5_ || param1)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(!(_loc6_ && _loc2_))
                        {
                           _loc3_.§4" § = _loc4_;
                        }
                        if(_loc6_ && _loc3_)
                        {
                        }
                        return;
                        addr103:
                     }
                     §§push(§§newactivation());
                  }
                  §§pop().§§slot[3] = filePath.substr(0,filePath.length - 3) + "png";
                  do
                  {
                     this.§1!0§(imagePath,onComplete);
                  }
                  while(!_loc5_);
                  
               }
               §§goto(addr103);
            }
            §§goto(addr107);
         }
         §§goto(addr32);
      }
      
      protected function §^V§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§4" §);
            if(_loc3_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               _loc1_.§4" § = _loc2_;
            }
            if(!_loc4_)
            {
               if(this.§4" § == 0)
               {
                  if(_loc4_ && _loc3_)
                  {
                  }
               }
               §§goto(addr72);
            }
            dispatchEvent(new Event(Event.COMPLETE));
         }
         addr72:
      }
      
      protected function §1d§(param1:String) : void
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
                  ParticleManager.§&!+§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
               };
               do
               {
                  §§push(this);
                  §§push("particle_emitters/");
                  if(_loc4_)
                  {
                     §§push(§§newactivation());
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §§push(§§pop() + §§pop().§§slot[1]);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() + ".png");
                     }
                  }
               }
               while(§§pop().§1!0§(§§pop(),§§pop().§§slot[2]), !_loc4_);
               
               if(!(_loc3_ && _loc3_))
               {
                  return;
               }
            }
         }
      }
      
      protected function §?+§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || _loc3_)
         {
            §§pop().§§slot[3] = null;
            if(_loc5_ || _loc3_)
            {
               loop0:
               while(true)
               {
                  §§push(§§newactivation());
                  if(!(_loc6_ && this))
                  {
                     §§pop().§§slot[1] = param1;
                     if(!_loc6_)
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           §§pop().§§slot[2] = function(param1:Bitmap):void
                           {
                              §6L§.§^'§(new spriteSheetClass(dataObject,param1.bitmapData));
                              §^V§();
                           };
                           if(_loc5_)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              var _loc3_:*;
                              §§push((_loc3_ = this).§4" §);
                              if(_loc5_ || param1)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc5_ || _loc3_)
                              {
                                 _loc3_.§4" § = _loc4_;
                              }
                              if(_loc5_)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(true)
                                 {
                                    if(!§§pop().§§slot[1].image)
                                    {
                                       §§push(§§newactivation());
                                       loop3:
                                       while(true)
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(Boolean(§§pop().§§slot[1].name));
                                             if(!_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      throw new Error("Invalid sprite sheet data.");
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§newactivation());
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break loop0;
                                                      }
                                                      continue loop8;
                                                   }
                                                   var spriteSheetClass:Class = §!B§;
                                                   §§push(this);
                                                   §§push("sprite_sheets/");
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc6_)
                                                      {
                                                         addr244:
                                                         §§push(§§pop() + §§pop().§§slot[1].image);
                                                         §§push(§§newactivation());
                                                      }
                                                      §§pop().§1!0§(§§pop(),§§pop().§§slot[2]);
                                                      addr93:
                                                      return;
                                                      addr247:
                                                   }
                                                   §§goto(addr244);
                                                }
                                                loop7:
                                                while(_loc5_ || _loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc6_)
                                                      {
                                                         if(!(_loc5_ || param1))
                                                         {
                                                            continue loop3;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop().§§slot[1].charCount));
                                                            if(_loc6_)
                                                            {
                                                               break loop3;
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                      }
                                                      §§goto(addr188);
                                                      continue loop7;
                                                   }
                                                }
                                                addr183:
                                                §§goto(addr247);
                                                addr215:
                                             }
                                             break;
                                          }
                                          §§goto(addr253);
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr215);
                                       }
                                    }
                                 }
                                 addr249:
                              }
                              §§goto(addr252);
                           }
                           §§goto(addr256);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr232);
                  }
                  break;
               }
               §§pop().§§slot[3] = §+S§;
               if(_loc5_)
               {
                  §§push(this);
                  §§push("sprite_sheets/");
                  if(_loc5_)
                  {
                     §§push(§§newactivation());
                     if(_loc5_ || this)
                     {
                        §§push(§§pop() + §§pop().§§slot[1].name);
                        if(!_loc6_)
                        {
                           addr154:
                           §§push(§§pop() + ".png");
                        }
                        §§push(§§newactivation());
                     }
                     §§pop().§1!0§(§§pop(),§§pop().§§slot[2]);
                     if(_loc6_ && param1)
                     {
                        §§goto(addr253);
                     }
                     else
                     {
                        addr166:
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr154);
               }
               §§goto(addr253);
            }
            §§goto(addr166);
         }
         §§goto(addr249);
      }
      
      protected function §1i§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc4_)
         {
            §§push(this);
            §§push(56895);
            if(!(_loc5_ && _loc2_))
            {
               §§push(25147);
               if(_loc4_ || this)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§5!T§ = §§pop();
         }
         do
         {
            _loc2_ = int(Math.min(param1.length,65536) - 1);
         }
         while(_loc5_);
         
         loop1:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               §§push(0);
               if(!(_loc5_ && param1))
               {
                  if(§§pop() >= §§pop())
                  {
                     param1[_loc2_] -= int(this.§[""§() * 255);
                     loop2:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           §§push(2);
                           if(_loc4_)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc4_)
                              {
                                 §§push(int(§§pop()));
                                 break;
                              }
                           }
                           else
                           {
                              loop9:
                              for(; §§pop() >= §§pop(); while(true)
                              {
                                 continue loop9;
                              })
                              {
                                 param1[_loc2_] -= int(this.§[""§() * 255);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_ || _loc2_)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() - int(this.§[""§() * 255));
                                       if(_loc4_)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc5_)
                                          {
                                             continue loop9;
                                          }
                                       }
                                       var _loc3_:int = §§pop();
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr317:
                                          _loc2_ = int(param1.length - 1);
                                          addr318:
                                          addr316:
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc5_ && this))
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(_loc5_ && _loc2_)
                                                         {
                                                            §§goto(addr318);
                                                         }
                                                         param1.inflate();
                                                         return;
                                                         addr260:
                                                      }
                                                      addr278:
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         §§goto(addr318);
                                                      }
                                                      §§push(_loc2_);
                                                      if(!_loc5_)
                                                      {
                                                         addr266:
                                                         §§push(§§pop() - 2);
                                                         if(_loc4_)
                                                         {
                                                            addr270:
                                                            §§push(int(§§pop()));
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               _loc2_ = §§pop();
                                                               §§goto(addr278);
                                                            }
                                                            §§goto(addr317);
                                                         }
                                                         §§goto(addr316);
                                                      }
                                                      §§goto(addr270);
                                                      addr312:
                                                   }
                                                   §§goto(addr260);
                                                }
                                                param1[_loc2_] -= int(this.§[""§() * 255);
                                                §§goto(addr312);
                                             }
                                             §§goto(addr266);
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr260);
                                    }
                                    if(_loc5_ && _loc3_)
                                    {
                                       break loop2;
                                    }
                                    _loc2_ = §§pop();
                                    if(!_loc4_)
                                    {
                                       break loop9;
                                    }
                                    if(_loc5_ && this)
                                    {
                                       continue;
                                    }
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       addr68:
                                       if(!(_loc5_ && this))
                                       {
                                          if(false)
                                          {
                                             while(true)
                                             {
                                             }
                                             addr77:
                                          }
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc4_)
                                             {
                                                continue loop9;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop2;
                                             }
                                             §§push(param1.length - 1);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(int(§§pop()));
                                                break loop10;
                                             }
                                             §§goto(addr220);
                                             §§goto(addr68);
                                          }
                                          addr112:
                                       }
                                       §§goto(addr221);
                                    }
                                    while(!(_loc5_ && param1))
                                    {
                                       §§goto(addr77);
                                    }
                                    continue loop1;
                                    addr126:
                                 }
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    §§goto(addr126);
                                 }
                              }
                              §§push(Math.max(param1.length,65536) - 65536);
                              addr212:
                           }
                        }
                        §§goto(addr221);
                     }
                     _loc2_ = §§pop();
                     continue;
                  }
                  §§goto(addr112);
               }
               §§goto(addr212);
            }
            §§goto(addr221);
         }
      }
      
      protected function §[""§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            §§push(this.§5!T§);
            if(!_loc1_)
            {
               §§push(this.§5!T§);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§5!T§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§5!T§);
               if(_loc2_)
               {
                  §§push(§§pop() ^ this.§5!T§ >>> 35);
               }
               §§pop().§5!T§ = §§pop();
               while(true)
               {
                  §§push(this);
                  §§push(this.§5!T§);
                  if(!_loc1_)
                  {
                     §§push(this.§5!T§);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§5!T§ = §§pop();
                  loop2:
                  while(_loc2_)
                  {
                     while(!_loc2_)
                     {
                        continue loop0;
                     }
                     §§push(this.§5!T§);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        addr41:
                        loop4:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              continue loop3;
                           }
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§5!T§);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§push(§§pop() & 2147483647);
                                 }
                                 §§pop().§5!T§ = §§pop();
                              }
                              addr44:
                           }
                           while(true)
                           {
                              if(!_loc2_)
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
         §§goto(addr44);
      }
   }
}
