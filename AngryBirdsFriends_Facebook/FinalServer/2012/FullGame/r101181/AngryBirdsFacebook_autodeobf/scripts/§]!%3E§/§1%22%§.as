package §]!>§
{
   import §#!e§.§1"B§;
   import §#!e§.LevelManager;
   import §3"7§.ParticleManager;
   import §6!D§.§9R§;
   import §9A§.§5Y§;
   import §9A§.§>"§;
   import §<a§.§!!m§;
   import §<a§.§+!l§;
   import §<a§.§6"0§;
   import §>i§.§!7§;
   import §>i§.§'!p§;
   import §>i§.§,!e§;
   import §>i§.§-"D§;
   import §>i§.§5"7§;
   import §?" §.§7"8§;
   import §?" §.§=!L§;
   import §`!]§.§3x§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §1"%§ extends EventDispatcher implements §7"8§
   {
       
      
      protected var §!l§:int;
      
      protected var §%Y§:Object;
      
      protected var §>"6§:int = 0;
      
      protected var §?!L§:§-"D§;
      
      protected var §["1§:Vector.<XML>;
      
      protected var §]D§:Loader;
      
      public function §1"%§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§%Y§ = {};
            loop0:
            while(true)
            {
               this.§["1§ = new Vector.<XML>();
               while(true)
               {
                  super();
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        this.§?!L§ = new §-"D§();
                        if(!(_loc1_ && _loc1_))
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function get §1S§() : §'!p§
      {
         return this.§?!L§;
      }
      
      public function get §%!'§() : Boolean
      {
         return this.§>"6§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§?!L§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§%Y§[param1] as §>"§).§,q§(false);
      }
      
      public function §@"'§(param1:String) : ByteArray
      {
         return (this.§%Y§[param1] as §>"§).content;
      }
      
      public function §2";§(param1:String, param2:Function) : void
      {
         return §+!l§.§7b§(this.§@"'§(param1),param2);
      }
      
      public function §,!T§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§>"§ = null;
         if(_loc8_ || param2)
         {
            if(param2)
            {
               if(!(_loc9_ && param2))
               {
                  addr35:
                  this.§#q§(param1);
               }
            }
            var _loc3_:§5Y§ = new §5Y§();
            if(_loc8_)
            {
               _loc3_.loadBytes(param1);
            }
            var _loc4_:Object = {};
            var _loc5_:* = int(_loc3_.§"z§() - 1);
            while(_loc5_ >= 0)
            {
               if((_loc6_ = _loc3_.§9!8§(_loc5_)).§>" §.substr(-1) == "/")
               {
                  if(_loc9_ && this)
                  {
                     continue;
                  }
               }
               else
               {
                  if(this.§%Y§[_loc6_.§>" §])
                  {
                     if(_loc8_ || _loc3_)
                     {
                     }
                     addr130:
                     §§push(_loc5_);
                     if(_loc8_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc5_ = §§pop();
                     continue;
                  }
                  this.§%Y§[_loc6_.§>" §] = _loc4_[_loc6_.§>" §] = _loc6_;
                  if(!(_loc8_ || param1))
                  {
                     continue;
                  }
               }
               §§goto(addr130);
            }
            if(_loc8_)
            {
               this.§#X§(_loc4_);
            }
            return;
         }
         §§goto(addr35);
      }
      
      protected function §#X§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
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
                           while(true)
                           {
                              §§push(null);
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[4] = §§pop();
                                 while(_loc6_ || this)
                                 {
                                    §§push(§§newactivation());
                                    while(true)
                                    {
                                       §§push(null);
                                       loop10:
                                       while(!_loc7_)
                                       {
                                          §§pop().§§slot[5] = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             addr104:
                                             while(true)
                                             {
                                                §§push(null);
                                                addr105:
                                                while(true)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(_loc7_ && this)
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         §§pop().§§slot[6] = §§pop();
                                                         continue loop11;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                                 continue loop5;
                              }
                              if(_loc6_ || param1)
                              {
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(!(_loc7_ && _loc3_))
            {
               §§push(null);
               if(_loc6_)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     §§pop().§§slot[8] = §§pop();
                     §§goto(addr71);
                  }
                  §§goto(addr105);
               }
               §§goto(addr95);
            }
         }
      }
      
      private function §7O§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LoaderContext = null;
         if(_loc6_)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§>"6§);
            if(_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc6_ || param1)
            {
               _loc4_.§>"6§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc6_)
         {
            this.§["1§.push(_loc2_);
            loop0:
            while(true)
            {
               addr76:
               addr138:
               while(this.§["1§.length == 1)
               {
                  if(!(_loc6_ || _loc2_))
                  {
                     continue loop0;
                  }
               }
               return;
            }
         }
         while(true)
         {
            this.§]D§ = new Loader();
            §§goto(addr93);
         }
      }
      
      private function §["8§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§]D§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§["8§);
         }
         var _loc2_:XML = this.§["1§.shift();
         if(!(_loc4_ && param1))
         {
            §=!L§.§ !v§(this.§]D§,_loc2_.Library[0]);
            while(true)
            {
               if(this.§["1§.length > 0)
               {
                  if(!_loc4_)
                  {
                     this.§]D§ = new Loader();
                  }
                  loop1:
                  for(; _loc3_; loop3:
                  while(_loc3_ || this)
                  {
                     while(true)
                     {
                        continue loop3;
                     }
                  })
                  {
                     this.§]D§.contentLoaderInfo.addEventListener(Event.INIT,this.§["8§);
                     while(true)
                     {
                        this.§]D§.loadBytes(this.§@"'§(this.§["1§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
                        continue loop1;
                        addr68:
                        if(!(_loc4_ && _loc3_))
                        {
                           return;
                           addr75:
                        }
                     }
                  }
                  continue;
               }
               while(true)
               {
                  this.§["3§();
                  if(_loc3_ || param1)
                  {
                     §§goto(addr68);
                  }
                  §§goto(addr93);
               }
               §§goto(addr75);
            }
         }
         §§goto(addr100);
      }
      
      private function §#"'§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §6"0§.§<I§(this.getFileAsString(param1));
         if(!(_loc3_ && param1))
         {
            §3x§.§#!%§(_loc2_);
         }
      }
      
      protected function § %§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!_loc4_)
         {
            §9R§.§!&§(_loc2_);
         }
      }
      
      protected function §1b§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc6_ || param1)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc6_ || _loc2_)
               {
                  §§push(§§newactivation());
                  if(_loc6_ || param1)
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
                              if(§%Y§[_loc13_] == null)
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
                        §?!L§.§'`§(new §5"7§(_loc2_,_loc4_,param1.bitmapData));
                        §["3§();
                     };
                     addr48:
                     if(_loc6_ || param1)
                     {
                        var _loc3_:*;
                        §§push((_loc3_ = this).§>"6§);
                        if(_loc6_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(_loc6_)
                        {
                           _loc3_.§>"6§ = _loc4_;
                        }
                        if(_loc6_)
                        {
                           addr118:
                           var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
                           addr85:
                        }
                        do
                        {
                           this.§2";§(imagePath,onComplete);
                        }
                        while(!(_loc6_ || this));
                        
                        return;
                     }
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr118);
         }
         §§goto(addr48);
      }
      
      protected function §["3§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§>"6§);
            if(!_loc3_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.§>"6§ = _loc2_;
            }
            if(!_loc3_)
            {
               if(this.§>"6§ == 0)
               {
                  if(_loc4_)
                  {
                     addr67:
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
            return;
         }
         §§goto(addr67);
      }
      
      protected function §"!s§(param1:String) : void
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
               if(_loc4_ || _loc3_)
               {
                  §§pop().§§slot[2] = function(param1:Bitmap):void
                  {
                     ParticleManager.§`+§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
                  };
                  do
                  {
                     if(_loc4_ || param1)
                     {
                        §§push(this);
                        §§push("particle_emitters/");
                        if(_loc4_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_ && param1)
                           {
                              continue;
                           }
                           §§push(§§pop() + §§pop().§§slot[1]);
                           if(_loc4_ || param1)
                           {
                              §§push(§§pop() + ".png");
                           }
                        }
                        §§push(§§newactivation());
                        continue;
                     }
                     continue loop1;
                  }
                  while(§§pop().§2";§(§§pop(),§§pop().§§slot[2]), _loc3_ && _loc2_);
                  
                  return;
               }
               break;
            }
         }
      }
      
      protected function §7!E§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§pop().§§slot[3] = null;
            if(_loc5_)
            {
               loop0:
               while(true)
               {
                  §§push(§§newactivation());
                  if(!_loc6_)
                  {
                     §§pop().§§slot[1] = param1;
                     if(_loc5_ || _loc2_)
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           §§pop().§§slot[2] = function(param1:Bitmap):void
                           {
                              §?!L§.§'`§(new spriteSheetClass(dataObject,param1.bitmapData));
                              §["3§();
                           };
                           if(!_loc6_)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              var _loc3_:*;
                              §§push((_loc3_ = this).§>"6§);
                              if(_loc5_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(!_loc6_)
                              {
                                 _loc3_.§>"6§ = _loc4_;
                              }
                              if(_loc5_)
                              {
                                 §§push(§§newactivation());
                                 loop1:
                                 while(true)
                                 {
                                    if(!§§pop().§§slot[1].image)
                                    {
                                       §§push(§§newactivation());
                                       while(true)
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             break loop0;
                                          }
                                          break;
                                          loop4:
                                          for(; _loc5_ || param1; loop6:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc5_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop4;
                                             addr201:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop6;
                                                addr155:
                                                §§push(Boolean(§§pop().§§slot[1].charCount));
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   while(§§pop())
                                                   {
                                                      §§push(§§newactivation());
                                                      continue loop4;
                                                      §§goto(addr155);
                                                   }
                                                   throw new Error("Invalid sprite sheet data.");
                                                   addr165:
                                                }
                                             }
                                          })
                                          {
                                             while(true)
                                             {
                                                §§pop().§§slot[3] = §,!e§;
                                                if(_loc6_)
                                                {
                                                   continue loop4;
                                                }
                                                if(_loc6_)
                                                {
                                                   break loop1;
                                                }
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
                                                         addr131:
                                                         §§push(§§pop() + ".png");
                                                      }
                                                      §§push(§§newactivation());
                                                   }
                                                   §§pop().§2";§(§§pop(),§§pop().§§slot[2]);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      addr143:
                                                   }
                                                   else
                                                   {
                                                      addr232:
                                                   }
                                                   §§goto(addr73);
                                                }
                                                §§goto(addr131);
                                             }
                                          }
                                       }
                                       addr238:
                                       §§pop().§§slot[3] = §!7§;
                                       §§push(this);
                                       §§push("sprite_sheets/");
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc5_)
                                          {
                                             addr229:
                                             §§push(§§pop() + §§pop().§§slot[1].image);
                                             §§push(§§newactivation());
                                          }
                                          §§pop().§2";§(§§pop(),§§pop().§§slot[2]);
                                          §§goto(addr232);
                                       }
                                       §§goto(addr229);
                                    }
                                    break;
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr238);
                                 §§push(§§newactivation());
                              }
                           }
                           §§goto(addr212);
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr143);
                  }
                  break;
               }
               while(true)
               {
                  §§push(Boolean(§§pop().§§slot[1].name));
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr201);
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr201);
               }
            }
            addr73:
            return;
         }
         §§goto(addr175);
      }
      
      protected function §#q§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(!(_loc5_ && param1))
         {
            §§push(this);
            §§push(56895);
            if(_loc4_)
            {
               §§push(25147);
               if(_loc4_)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§!l§ = §§pop();
            do
            {
               _loc2_ = int(Math.min(param1.length,65536) - 1);
            }
            while(_loc5_ && param1);
            
         }
         loop1:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§push(0);
                  if(!(_loc5_ && this))
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           §§push(param1.length - 1);
                           loop2:
                           while(_loc4_ || _loc2_)
                           {
                              §§push(int(§§pop()));
                              if(!(_loc5_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr138:
                                    loop4:
                                    while(_loc4_)
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(!_loc5_)
                                             {
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr222:
                                                   loop8:
                                                   while(§§pop() >= §§pop())
                                                   {
                                                      param1[_loc2_] -= int(this.§9-§() * 255);
                                                      if(_loc5_ && _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         §§push(_loc2_);
                                                         if(!_loc4_)
                                                         {
                                                            addr230:
                                                            break loop6;
                                                         }
                                                         §§push(§§pop() - int(this.§9-§() * 255));
                                                         if(!(_loc4_ || _loc2_))
                                                         {
                                                            §§push(int(§§pop()));
                                                            break loop6;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc5_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               addr188:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  §§push(2);
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     break loop2;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                            break loop6;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr230);
                                                }
                                                addr221:
                                             }
                                             break;
                                          }
                                          var _loc3_:* = §§pop();
                                          if(_loc4_ || this)
                                          {
                                             addr332:
                                             _loc2_ = int(param1.length - 1);
                                             addr331:
                                          }
                                          addr333:
                                          §§push(_loc2_);
                                          if(!(_loc5_ && this))
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(_loc3_);
                                                if(_loc4_)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         param1.inflate();
                                                      }
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(!(_loc4_ || param1))
                                                            {
                                                               §§goto(addr333);
                                                            }
                                                            return;
                                                         }
                                                         addr292:
                                                         §§push(_loc2_);
                                                         if(!_loc5_)
                                                         {
                                                            addr305:
                                                            §§push(§§pop() - 2);
                                                            if(!_loc5_)
                                                            {
                                                               addr309:
                                                               _loc2_ = int(§§pop());
                                                               addr310:
                                                               §§goto(addr333);
                                                            }
                                                            §§goto(addr331);
                                                         }
                                                         §§goto(addr332);
                                                         addr327:
                                                      }
                                                      §§goto(addr310);
                                                   }
                                                   param1[_loc2_] -= int(this.§9-§() * 255);
                                                   §§goto(addr327);
                                                }
                                                §§goto(addr305);
                                             }
                                             §§goto(addr292);
                                          }
                                          §§goto(addr309);
                                       }
                                    }
                                    continue loop1;
                                 }
                                 addr137:
                              }
                              §§goto(addr221);
                           }
                           addr170:
                           _loc2_ = int(§§pop());
                           continue;
                        }
                        §§goto(addr138);
                     }
                     else
                     {
                        param1[_loc2_] -= int(this.§9-§() * 255);
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr222);
               }
               §§goto(addr170);
            }
            §§goto(addr137);
         }
      }
      
      protected function §9-§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this);
            §§push(this.§!l§);
            if(_loc1_ || this)
            {
               §§push(this.§!l§);
               if(_loc1_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§!l§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§!l§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() ^ this.§!l§ >>> 35);
               }
               §§pop().§!l§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push(this.§!l§);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(this.§!l§);
                     if(_loc1_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§!l§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§!l§);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        addr50:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr24);
         }
      }
   }
}
