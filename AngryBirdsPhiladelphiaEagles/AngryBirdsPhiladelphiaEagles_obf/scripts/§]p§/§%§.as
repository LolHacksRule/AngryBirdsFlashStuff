package §]p§
{
   import §#e§.§%Y§;
   import §'7§.§-!K§;
   import §+O§.§=F§;
   import §+O§.§?^§;
   import §0!E§.§+D§;
   import §0!E§.§5!K§;
   import §0!E§.§8E§;
   import §2!<§.§;!M§;
   import §2!<§.§`U§;
   import §4?§.ParticleManager;
   import §=I§.§#o§;
   import §=I§.§2i§;
   import §=I§.§70§;
   import §=I§.§^!!§;
   import §=I§.§^!@§;
   import §^]§.§[z§;
   import §^]§.§`!K§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §%§ extends EventDispatcher implements §`U§
   {
       
      
      protected var §>O§:int;
      
      protected var §;!,§:Object;
      
      protected var §8!=§:int = 0;
      
      protected var §>!7§:§#o§;
      
      protected var §&-§:Vector.<XML>;
      
      protected var §3P§:Loader;
      
      public function §%§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;!,§ = {};
         }
         while(true)
         {
            this.§&-§ = new Vector.<XML>();
            while(!(_loc1_ && _loc1_))
            {
               super();
               do
               {
                  this.§>!7§ = new §#o§();
               }
               while(!(_loc2_ || this));
               
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function get §;k§() : §2i§
      {
         return this.§>!7§;
      }
      
      public function get §9L§() : Boolean
      {
         return this.§8!=§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§>!7§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§;!,§[param1] as §=F§).§2o§(false);
      }
      
      public function § P§(param1:String) : ByteArray
      {
         return (this.§;!,§[param1] as §=F§).content;
      }
      
      public function §0i§(param1:String, param2:Function) : void
      {
         return §8E§.§"f§(this.§ P§(param1),param2);
      }
      
      public function §!$§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§=F§ = null;
         if(!(_loc9_ && this))
         {
            if(param2)
            {
               if(_loc8_)
               {
                  addr30:
                  this.§14§(param1);
               }
            }
            var _loc3_:§?^§ = new §?^§();
            if(_loc8_)
            {
               _loc3_.loadBytes(param1);
            }
            var _loc4_:Object = {};
            var _loc5_:* = int(_loc3_.§65§() - 1);
            while(_loc5_ >= 0)
            {
               if((_loc6_ = _loc3_.§,!;§(_loc5_)).§26§.substr(-1) == "/")
               {
                  if(!_loc8_)
                  {
                  }
               }
               else
               {
                  if(this.§;!,§[_loc6_.§26§])
                  {
                     if(!(_loc8_ || param2))
                     {
                        continue;
                     }
                  }
                  var _loc7_:*;
                  _loc4_[_loc6_.§26§] = _loc7_ = _loc6_;
                  this.§;!,§[_loc6_.§26§] = _loc7_;
                  if(_loc9_)
                  {
                     continue;
                  }
               }
               §§push(_loc5_);
               if(!(_loc9_ && param1))
               {
                  §§push(§§pop() - 1);
               }
               _loc5_ = §§pop();
            }
            if(_loc8_ || param2)
            {
               this.§;P§(_loc4_);
            }
            return;
         }
         §§goto(addr30);
      }
      
      protected function §;P§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         §§push(null);
         loop0:
         while(true)
         {
            §§pop().§§slot[2] = §§pop();
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[3] = null;
                  while(true)
                  {
                     §§push(§§newactivation());
                     if(!(_loc7_ || this))
                     {
                        break;
                     }
                     §§pop().§§slot[4] = null;
                     if(_loc6_ && this)
                     {
                        continue;
                     }
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[5] = §§pop();
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§push(§§newactivation());
                           §§push(null);
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[6] = §§pop();
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(null);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§pop().§§slot[7] = §§pop();
                                 while(true)
                                 {
                                    addr39:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       addr41:
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop6;
                                          }
                                          continue loop7;
                                       }
                                       continue loop5;
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      private function §!!A§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:LoaderContext = null;
         if(_loc7_ || param1)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§8!=§);
            if(_loc7_ || this)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc7_ || _loc3_)
            {
               _loc4_.§8!=§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc7_ || param1)
         {
            this.§&-§.push(_loc2_);
         }
         loop0:
         while(true)
         {
            addr102:
            addr160:
            while(this.§&-§.length == 1)
            {
               continue loop0;
            }
            return;
         }
      }
      
      private function §-!4§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§3P§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§-!4§);
         }
         var _loc2_:XML = this.§&-§.shift();
         if(_loc4_ || _loc2_)
         {
            §;!M§.§6S§(this.§3P§,_loc2_.Library[0]);
            loop0:
            do
            {
               if(this.§&-§.length > 0)
               {
                  while(true)
                  {
                     this.§3P§ = new Loader();
                     loop2:
                     while(true)
                     {
                        this.§3P§.contentLoaderInfo.addEventListener(Event.INIT,this.§-!4§);
                        if(!_loc4_)
                        {
                           break;
                           addr59:
                        }
                        this.§3P§.loadBytes(this.§ P§(this.§&-§[0].Library.@swf));
                        while(true)
                        {
                           this.§%[§();
                           if(_loc4_ || param1)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr59);
            }
            while(_loc3_);
            
         }
      }
      
      private function §7y§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = §+D§.§8!§(this.getFileAsString(param1));
         if(!_loc4_)
         {
            §-!K§.§&!E§(_loc2_);
         }
      }
      
      protected function §'%§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!(_loc4_ && _loc2_))
         {
            §%Y§.§3!M§(_loc2_);
         }
      }
      
      protected function §continue§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc6_ && this))
         {
            §§push(param1);
            if(_loc5_ || param1)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc6_ && _loc2_))
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
                              if(§;!,§[_loc13_] == null)
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
                        §>!7§.§>!>§(new §70§(_loc2_,_loc4_,param1.bitmapData));
                        §%[§();
                     };
                     if(_loc5_ || _loc2_)
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§8!=§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(_loc5_)
                        {
                           _loc3_.§8!=§ = _loc4_;
                        }
                        if(!(_loc6_ && _loc3_))
                        {
                           addr122:
                           var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
                           addr120:
                           do
                           {
                              this.§0i§(imagePath,onComplete);
                           }
                           while(_loc6_ && this);
                           
                           addr132:
                           addr89:
                        }
                        return;
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr120);
               }
               §§goto(addr89);
            }
         }
         §§goto(addr122);
      }
      
      protected function §%[§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§8!=§);
            if(!_loc4_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && _loc1_))
            {
               _loc1_.§8!=§ = _loc2_;
            }
            if(_loc3_ || _loc1_)
            {
               if(this.§8!=§ == 0)
               {
                  if(_loc3_)
                  {
                     addr71:
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
               return;
            }
         }
         §§goto(addr71);
      }
      
      protected function §&!5§(param1:String) : void
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
                  ParticleManager.§<&§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
               };
               do
               {
                  §§push(this);
                  §§push("particle_emitters/");
                  if(_loc3_)
                  {
                     §§push(§§newactivation());
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     §§push(§§pop() + §§pop().§§slot[1]);
                     if(_loc3_)
                     {
                        §§push(§§pop() + ".png");
                     }
                  }
               }
               while(§§pop().§0i§(§§pop(),§§pop().§§slot[2]), !(_loc3_ || _loc3_));
               
               if(_loc3_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §3!A§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || param1)
         {
            §§pop().§§slot[3] = null;
            loop0:
            while(true)
            {
               §§push(§§newactivation());
               if(!(_loc6_ && _loc2_))
               {
                  §§pop().§§slot[1] = param1;
                  if(!(_loc6_ && this))
                  {
                     continue;
                  }
                  addr86:
                  addr230:
                  addr233:
                  §§push(§§newactivation());
                  while(true)
                  {
                     if(§§pop().§§slot[1].image)
                     {
                        §§push(§§newactivation());
                        break;
                     }
                     §§push(§§newactivation());
                     if(!_loc6_)
                     {
                        break loop0;
                     }
                  }
                  §§pop().§§slot[3] = §^!!§;
                  §§push(this);
                  §§push("sprite_sheets/");
                  if(!_loc6_)
                  {
                     §§push(§§newactivation());
                     if(_loc5_ || _loc3_)
                     {
                        addr221:
                        §§push(§§pop() + §§pop().§§slot[1].image);
                        §§push(§§newactivation());
                     }
                     §§pop().§0i§(§§pop(),§§pop().§§slot[2]);
                     addr87:
                     return;
                  }
                  §§goto(addr221);
               }
               break;
            }
            §§push(Boolean(§§pop().§§slot[1].name));
            if(_loc5_ || _loc3_)
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§pop();
                     addr204:
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(!_loc6_)
                        {
                           addr149:
                           §§push(Boolean(§§pop().§§slot[1].charCount));
                           if(!(_loc6_ && param1))
                           {
                              break;
                           }
                           continue loop4;
                        }
                        §§goto(addr230);
                        continue loop4;
                     }
                  }
                  addr193:
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     throw new Error("Invalid sprite sheet data.");
                  }
                  if(_loc5_ || this)
                  {
                     if(_loc6_)
                     {
                        break;
                     }
                     var spriteSheetClass:Class = §^!@§;
                     §§goto(addr174);
                  }
                  else
                  {
                     §§goto(addr204);
                  }
               }
               §§goto(addr233);
            }
            §§goto(addr193);
         }
         §§goto(addr86);
      }
      
      protected function §14§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc4_)
         {
            §§push(this);
            §§push(56895);
            if(_loc4_ || _loc3_)
            {
               §§push(25147);
               if(!_loc5_)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§>O§ = §§pop();
            do
            {
               _loc2_ = int(Math.min(param1.length,65536) - 1);
            }
            while(_loc5_ && param1);
            
         }
         while(true)
         {
            §§push(_loc2_);
            loop2:
            while(_loc4_ || _loc2_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(param1.length - 1);
                     if(!_loc5_)
                     {
                        if(!(_loc5_ && this))
                        {
                           _loc2_ = int(§§pop());
                           loop3:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc2_);
                                 §§push(0);
                                 addr181:
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       param1[_loc2_] -= int(this.§2v§() * 255);
                                       §§push(_loc2_ - int(this.§2v§() * 255));
                                       if(_loc4_ || this)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc5_ && this)
                                          {
                                             break;
                                          }
                                          _loc2_ = §§pop();
                                          if(_loc4_)
                                          {
                                             if(false)
                                             {
                                                continue loop3;
                                             }
                                             continue;
                                          }
                                          addr144:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             §§push(2);
                                             if(!(_loc5_ && this))
                                             {
                                                addr108:
                                                §§push(int(§§pop() - §§pop()));
                                                break loop2;
                                             }
                                             continue loop6;
                                          }
                                          addr190:
                                          var _loc3_:* = §§pop();
                                          if(!_loc5_)
                                          {
                                             addr286:
                                             _loc2_ = int(param1.length - 1);
                                             addr198:
                                             addr285:
                                             addr287:
                                             §§push(_loc2_);
                                             if(!_loc5_)
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               if(!(_loc4_ || _loc3_))
                                                               {
                                                                  addr245:
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     addr262:
                                                                     §§goto(addr198);
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr240:
                                                                     §§push(_loc2_ - 2);
                                                                     if(_loc4_)
                                                                     {
                                                                        addr244:
                                                                        _loc2_ = int(§§pop());
                                                                        §§goto(addr245);
                                                                     }
                                                                     §§goto(addr285);
                                                                  }
                                                                  §§goto(addr287);
                                                               }
                                                               param1.inflate();
                                                            }
                                                            return;
                                                         }
                                                         param1[_loc2_] -= int(this.§2v§() * 255);
                                                         §§goto(addr245);
                                                      }
                                                      §§goto(addr240);
                                                   }
                                                   §§goto(addr286);
                                                }
                                                §§goto(addr240);
                                             }
                                             §§goto(addr244);
                                          }
                                          §§goto(addr262);
                                       }
                                       addr189:
                                       §§goto(addr190);
                                       §§push(int(§§pop()));
                                    }
                                    addr182:
                                    §§goto(addr189);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr189);
                  }
                  else
                  {
                     param1[_loc2_] -= int(this.§2v§() * 255);
                  }
                  §§goto(addr144);
               }
               §§goto(addr181);
            }
            _loc2_ = §§pop();
            if(_loc4_ || _loc3_)
            {
               continue;
            }
            §§goto(addr182);
         }
      }
      
      protected function §2v§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§>O§);
            if(!_loc2_)
            {
               §§push(this.§>O§);
               if(!_loc2_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§>O§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§>O§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() ^ this.§>O§ >>> 35);
               }
               §§pop().§>O§ = §§pop();
               loop1:
               while(!_loc2_)
               {
                  §§push(this);
                  §§push(this.§>O§);
                  if(_loc1_ || _loc1_)
                  {
                     §§push(this.§>O§);
                     if(!(_loc2_ && this))
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§>O§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§>O§);
                     while(true)
                     {
                        §§push(0);
                        loop4:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(this);
                                 §§push(this.§>O§);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() & 2147483647);
                                 }
                                 §§pop().§>O§ = §§pop();
                              }
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              §§push(this.§>O§);
                              if(_loc2_)
                              {
                                 break loop4;
                              }
                              §§push(2147483647);
                              if(_loc1_)
                              {
                                 return §§pop() / §§pop();
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
   }
}
