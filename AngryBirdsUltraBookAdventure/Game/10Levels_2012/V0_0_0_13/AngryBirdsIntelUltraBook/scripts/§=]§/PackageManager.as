package §=]§
{
   import §"L§.LevelManager;
   import §"L§.LevelModel;
   import §%!T§.§4k§;
   import §%!T§.LoadManager;
   import §,!_§.CompositeSpriteParser;
   import §1!>§.FZip;
   import §1!>§.FZipFile;
   import §1i§.ParticleManager;
   import §4u§.CutSceneManager;
   import §7p§.ImageDataUtils;
   import §7p§.LuaUtils;
   import §7p§.§]E§;
   import §`u§.§@K§;
   import §`u§.FontSheetJSONGGS;
   import §`u§.SpriteSheetContainer;
   import §`u§.SpriteSheetJSONGGS;
   import §`u§.SpriteSheetXMLGGS;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class PackageManager extends EventDispatcher implements §4k§
   {
       
      
      protected var §#2§:int;
      
      protected var §#!=§:Object;
      
      protected var §3!J§:int = 0;
      
      protected var §<!_§:SpriteSheetContainer;
      
      protected var §3!V§:Vector.<XML>;
      
      protected var §^v§:Loader;
      
      public function PackageManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§#!=§ = {};
            while(true)
            {
               this.§3!V§ = new Vector.<XML>();
               loop1:
               while(!(_loc1_ && this))
               {
                  super();
                  while(true)
                  {
                     this.§<!_§ = new SpriteSheetContainer();
                     if(_loc2_ || _loc1_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get §`!_§() : §@K§
      {
         return this.§<!_§;
      }
      
      public function get §<!h§() : Boolean
      {
         return this.§3!J§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<!_§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§#!=§[param1] as FZipFile).§`!W§(false);
      }
      
      public function §`!&§(param1:String) : ByteArray
      {
         return (this.§#!=§[param1] as FZipFile).content;
      }
      
      public function §#u§(param1:String, param2:Function) : void
      {
         return ImageDataUtils.§,U§(this.§`!&§(param1),param2);
      }
      
      public function §'#§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:FZipFile = null;
         if(!(_loc8_ && _loc3_))
         {
            if(param2)
            {
               if(!(_loc8_ && param1))
               {
                  this.§<e§(param1);
               }
            }
         }
         var _loc3_:FZip = new FZip();
         if(!_loc8_)
         {
            _loc3_.loadBytes(param1);
         }
         var _loc4_:Object = {};
         var _loc5_:* = int(_loc3_.§@!K§() - 1);
         while(_loc5_ >= 0)
         {
            _loc6_ = _loc3_.§?!H§(_loc5_);
            if(!(_loc9_ || param2))
            {
               continue;
            }
            if(_loc6_.§"!a§.substr(-1) == "/")
            {
               if(!(_loc9_ || param2))
               {
                  addr111:
                  this.§#!=§[_loc6_.§"!a§] = _loc4_[_loc6_.§"!a§] = _loc6_;
                  if(_loc8_)
                  {
                     continue;
                  }
               }
               addr137:
               §§push(_loc5_);
               if(_loc9_ || param1)
               {
                  §§push(§§pop() - 1);
                  if(!_loc8_)
                  {
                     addr148:
                     §§push(int(§§pop()));
                  }
                  _loc5_ = §§pop();
                  continue;
               }
               §§goto(addr148);
            }
            else if(this.§#!=§[_loc6_.§"!a§])
            {
               if(!(_loc8_ && param2))
               {
                  §§goto(addr111);
               }
               §§goto(addr137);
            }
            §§goto(addr111);
         }
         if(_loc9_ || param1)
         {
            this.§^R§(_loc4_);
         }
      }
      
      protected function §^R§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
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
                              while(_loc7_)
                              {
                                 §§pop().§§slot[4] = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop0;
                                    loop17:
                                    while(true)
                                    {
                                       if(_loc6_ && _loc3_)
                                       {
                                          continue loop8;
                                       }
                                       if(_loc6_ && param1)
                                       {
                                          break;
                                       }
                                       loop18:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          loop19:
                                          while(true)
                                          {
                                             §§push(null);
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             §§pop().§§slot[8] = §§pop();
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§newactivation());
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            continue loop6;
                                                         }
                                                         addr119:
                                                         while(_loc7_)
                                                         {
                                                            §§push(null);
                                                            while(true)
                                                            {
                                                               §§pop().§§slot[6] = §§pop();
                                                               addr124:
                                                               while(true)
                                                               {
                                                                  continue loop15;
                                                               }
                                                            }
                                                            continue loop15;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop19;
                                                }
                                                continue loop17;
                                                addr40:
                                                §§pop().§§slot[1] = param1;
                                                if(!(_loc7_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                if(!(_loc6_ && param1))
                                                {
                                                   continue loop18;
                                                }
                                                §§goto(addr124);
                                             }
                                             continue loop5;
                                          }
                                          addr94:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop().§§slot[7] = §§pop();
                                                   continue loop17;
                                                }
                                                addr135:
                                                while(_loc7_ || _loc3_)
                                                {
                                                   §§pop().§§slot[5] = §§pop();
                                                   break loop18;
                                                }
                                                continue loop7;
                                             }
                                             §§goto(addr122);
                                          }
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr119);
                                          §§goto(addr56);
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §8!>§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:LoaderContext = null;
         if(!(_loc6_ && _loc3_))
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§3!J§);
            if(_loc7_ || this)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(!(_loc6_ && param1))
            {
               _loc4_.§3!J§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!(_loc6_ && this))
         {
            this.§3!V§.push(_loc2_);
            loop0:
            while(true)
            {
               loop1:
               while(this.§3!V§.length == 1)
               {
                  loop2:
                  while(!_loc6_)
                  {
                     this.§^v§ = new Loader();
                     while(true)
                     {
                        this.§^v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§0;§);
                        if(_loc7_)
                        {
                           if(_loc7_)
                           {
                              if(true)
                              {
                                 _loc3_ = new LoaderContext();
                                 if(_loc7_ || this)
                                 {
                                    _loc3_.allowCodeImport = true;
                                    if(!(_loc6_ && this))
                                    {
                                       this.§^v§.loadBytes(this.§`!&§(_loc2_.Library.@swf),_loc3_);
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
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr106);
      }
      
      private function §0;§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§^v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§0;§);
         }
         var _loc2_:XML = this.§3!V§.shift();
         if(!_loc4_)
         {
            LoadManager.§]7§(this.§^v§,_loc2_.Library[0]);
            loop0:
            while(true)
            {
               if(this.§3!V§.length <= 0)
               {
                  loop4:
                  while(true)
                  {
                     this.§<!<§();
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     addr51:
                     if(_loc3_ || this)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     addr131:
                     while(_loc3_ || this)
                     {
                        this.§^v§.loadBytes(this.§`!&§(this.§3!V§[0].Library.@swf));
                        continue loop4;
                        §§goto(addr51);
                     }
                     while(true)
                     {
                        this.§^v§.contentLoaderInfo.addEventListener(Event.INIT,this.§0;§);
                        §§goto(addr96);
                     }
                     addr96:
                  }
                  return;
               }
               addr40:
            }
         }
         while(true)
         {
            §§goto(addr40);
         }
      }
      
      private function §&!g§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = LuaUtils.§<@§(this.getFileAsString(param1));
         if(!(_loc3_ && this))
         {
            CutSceneManager.§8!7§(_loc2_);
         }
      }
      
      protected function § 5§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!(_loc3_ && this))
         {
            CompositeSpriteParser.§@v§(_loc2_);
         }
      }
      
      protected function §^!D§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && param1))
         {
            §§push(param1);
            if(_loc6_ || _loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§newactivation());
                  if(_loc6_ || _loc2_)
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
                              if(§#!=§[_loc13_] == null)
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
                        §<!_§.§8!I§(new SpriteSheetXMLGGS(_loc2_,_loc4_,param1.bitmapData));
                        §<!<§();
                     };
                     if(!_loc5_)
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§3!J§);
                        if(_loc6_ || _loc2_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(_loc6_)
                        {
                           _loc3_.§3!J§ = _loc4_;
                        }
                        if(_loc6_)
                        {
                           addr122:
                           §§push(§§newactivation());
                           §§push(filePath);
                           if(!(_loc5_ && _loc2_))
                           {
                              addr131:
                              §§push(§§pop().substr(0,filePath.length - 3) + "png");
                           }
                           §§pop().§§slot[3] = §§pop();
                           addr90:
                        }
                        do
                        {
                           this.§#u§(imagePath,onComplete);
                        }
                        while(!(_loc6_ || _loc2_));
                        
                        return;
                     }
                  }
                  §§goto(addr122);
               }
               §§goto(addr90);
            }
            §§goto(addr131);
         }
         §§goto(addr122);
      }
      
      protected function §<!<§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§3!J§);
            if(_loc3_ || this)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.§3!J§ = _loc2_;
            }
            if(_loc3_)
            {
               §§goto(addr65);
            }
            §§goto(addr76);
         }
         addr65:
         if(this.§3!J§ == 0)
         {
            if(!(_loc4_ && _loc2_))
            {
               addr76:
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      protected function §5!X§(param1:String) : void
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
               if(!(_loc3_ && this))
               {
                  §§pop().§§slot[2] = function(param1:Bitmap):void
                  {
                     ParticleManager.§3!1§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
                  };
                  do
                  {
                     if(!(_loc4_ || _loc3_))
                     {
                        continue loop1;
                     }
                     §§push(this);
                     §§push("particle_emitters/");
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§newactivation());
                        if(_loc4_ || param1)
                        {
                           §§push(§§pop() + §§pop().§§slot[1]);
                           if(!(_loc3_ && _loc2_))
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
                  while(§§pop().§#u§(§§pop(),§§pop().§§slot[2]), !_loc4_);
                  
                  return;
               }
               break;
            }
         }
      }
      
      protected function §8!Y§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§pop().§§slot[3] = null;
            if(_loc6_ || _loc3_)
            {
               loop0:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§pop().§§slot[1] = param1;
                     if(_loc6_ || _loc2_)
                     {
                        §§push(§§newactivation());
                        if(_loc6_ || this)
                        {
                           if(_loc5_)
                           {
                              continue;
                           }
                           §§pop().§§slot[2] = function(param1:Bitmap):void
                           {
                              §<!_§.§8!I§(new spriteSheetClass(dataObject,param1.bitmapData));
                              §<!<§();
                           };
                           if(!_loc5_)
                           {
                              if(false)
                              {
                                 continue loop0;
                              }
                              var _loc3_:*;
                              §§push((_loc3_ = this).§3!J§);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(!_loc5_)
                              {
                                 _loc3_.§3!J§ = _loc4_;
                              }
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§push(this);
                              §§push("sprite_sheets/");
                              if(!_loc5_)
                              {
                                 §§push(§§newactivation());
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() + §§pop().§§slot[1].name);
                                    if(!_loc5_)
                                    {
                                       addr152:
                                       §§push(§§pop() + ".png");
                                    }
                                    §§push(§§newactivation());
                                 }
                                 §§pop().§#u§(§§pop(),§§pop().§§slot[2]);
                                 §§goto(addr89);
                              }
                              §§goto(addr152);
                              addr207:
                           }
                           addr282:
                           §§push(this);
                           §§push("sprite_sheets/");
                           if(!_loc5_)
                           {
                              §§push(§§newactivation());
                              if(!(_loc5_ && param1))
                              {
                                 addr267:
                                 §§push(§§pop() + §§pop().§§slot[1].image);
                                 §§push(§§newactivation());
                              }
                              §§pop().§#u§(§§pop(),§§pop().§§slot[2]);
                              §§goto(addr89);
                           }
                           §§goto(addr267);
                           addr282:
                        }
                        loop2:
                        while(true)
                        {
                           §§push(Boolean(§§pop().§§slot[1].image));
                           loop3:
                           while(!§§pop())
                           {
                              §§push(§§newactivation());
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§§pop().§§slot[1].name));
                                 if(_loc6_ || param1)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_ || param1)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       addr232:
                                       while(!(_loc5_ && _loc2_))
                                       {
                                          addr239:
                                          §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc6_)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop4;
                                                }
                                                if(!_loc5_)
                                                {
                                                   continue loop2;
                                                }
                                                addr278:
                                                §§pop().§§slot[3] = SpriteSheetJSONGGS;
                                                §§goto(addr282);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop().§§slot[3] = FontSheetJSONGGS;
                                                   if(_loc5_ && this)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      break loop3;
                                                   }
                                                   §§goto(addr207);
                                                   continue loop7;
                                                }
                                                addr194:
                                             }
                                             addr89:
                                             return;
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                       addr232:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                §§goto(addr194);
                                                §§push(§§newactivation());
                                             }
                                             break;
                                          }
                                          Boolean(§§pop().§§slot[1].charCount);
                                          addr174:
                                          throw new Error("Invalid sprite sheet data.");
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             continue;
                                          }
                                          §§goto(addr232);
                                       }
                                    }
                                    §§goto(addr282);
                                 }
                                 §§goto(addr232);
                              }
                           }
                           §§goto(addr278);
                        }
                        addr273:
                     }
                     break;
                  }
               }
            }
            §§push(§§newactivation());
         }
         §§goto(addr273);
      }
      
      protected function §<e§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(!_loc5_)
         {
            §§push(this);
            §§push(56895);
            if(_loc4_)
            {
               §§push(25147);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§#2§ = §§pop();
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
            if(!(_loc5_ && param1))
            {
               §§push(0);
               if(!(_loc5_ && _loc3_))
               {
                  if(!_loc5_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc4_ || _loc2_)
                        {
                           §§push(param1.length - 1);
                           loop2:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop3:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 if(!(_loc5_ && param1))
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       while(true)
                                       {
                                          addr206:
                                          addr220:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc5_)
                                             {
                                             }
                                             break;
                                          }
                                          addr220:
                                          var _loc3_:* = §§pop();
                                          if(_loc4_)
                                          {
                                             addr313:
                                             _loc2_ = int(param1.length - 1);
                                             addr228:
                                             addr314:
                                             addr312:
                                             §§push(_loc2_);
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               param1.inflate();
                                                            }
                                                            addr290:
                                                            §§goto(addr228);
                                                         }
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr314);
                                                            }
                                                            return;
                                                         }
                                                         addr268:
                                                         §§push(_loc2_ - 2);
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            addr287:
                                                            §§push(int(§§pop()));
                                                            if(_loc4_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                         §§goto(addr312);
                                                         addr307:
                                                      }
                                                      param1[_loc2_] -= int(this.§%#§() * 255);
                                                      §§goto(addr307);
                                                   }
                                                }
                                                §§goto(addr268);
                                             }
                                             §§goto(addr287);
                                          }
                                          §§goto(addr290);
                                       }
                                       addr62:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc4_ || _loc2_)
                                          {
                                             addr138:
                                             §§push(int(§§pop() - 2));
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(0);
                                                addr210:
                                                while(§§pop() >= §§pop())
                                                {
                                                   param1[_loc2_] -= int(this.§%#§() * 255);
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc4_)
                                                      {
                                                         if(!(_loc4_ || _loc2_))
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop() - int(this.§%#§() * 255));
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(!_loc5_)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     if(!_loc4_)
                                                                     {
                                                                        break loop3;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr220);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr138);
                                                               }
                                                            }
                                                            addr219:
                                                            §§goto(addr220);
                                                            §§push(int(§§pop()));
                                                         }
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                }
                                                break loop3;
                                             }
                                             addr209:
                                          }
                                          _loc2_ = §§pop();
                                          if(!(_loc4_ || this))
                                          {
                                             break loop3;
                                          }
                                          continue loop1;
                                       }
                                       addr174:
                                    }
                                    §§goto(addr209);
                                 }
                                 break;
                              }
                           }
                        }
                        §§goto(addr219);
                        §§push(Math.max(param1.length,65536) - 65536);
                     }
                     else
                     {
                        param1[_loc2_] -= int(this.§%#§() * 255);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr138);
               }
               §§goto(addr210);
            }
            §§goto(addr220);
         }
      }
      
      protected function §%#§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            §§push(this.§#2§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(this.§#2§);
               if(_loc2_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§#2§ = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this);
            §§push(this.§#2§);
            if(_loc2_)
            {
               §§push(§§pop() ^ this.§#2§ >>> 35);
            }
            §§pop().§#2§ = §§pop();
            loop1:
            while(true)
            {
               §§push(this);
               §§push(this.§#2§);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(this.§#2§);
                  if(!(_loc1_ && this))
                  {
                     §§push(§§pop() << 4);
                  }
                  §§push(§§pop() ^ §§pop());
               }
               §§pop().§#2§ = §§pop();
               loop2:
               while(true)
               {
                  §§push(this.§#2§);
                  loop3:
                  while(true)
                  {
                     §§push(0);
                     addr41:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc2_ || _loc1_)
                           {
                              if(_loc1_)
                              {
                                 continue loop1;
                              }
                              §§push(this);
                              §§push(this.§#2§);
                              if(!_loc1_)
                              {
                                 §§push(§§pop() & 2147483647);
                              }
                              §§pop().§#2§ = §§pop();
                           }
                           if(_loc2_)
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        continue loop3;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}
