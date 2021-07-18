package §9!2§
{
   import § in§.§[!U§;
   import §,-§.§ set§;
   import §,-§.§0!M§;
   import §,-§.§3!f§;
   import §,-§.§<!&§;
   import §,-§.§?"§;
   import §7Z§.§5!>§;
   import §<N§.§'M§;
   import §<N§.§8]§;
   import §=! §.§0!!§;
   import §=! §.§1!O§;
   import §=! §.§?;§;
   import §=!<§.§`[§;
   import §?!G§.§#<§;
   import §?!G§.§?!^§;
   import §^!5§.§&!E§;
   import §^!5§.§,4§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §8[§ extends EventDispatcher implements §8]§
   {
       
      
      protected var §<!F§:int;
      
      protected var §3!-§:Object;
      
      protected var §'e§:int = 0;
      
      protected var §+W§:§0!M§;
      
      protected var §9,§:Vector.<XML>;
      
      protected var §',§:Loader;
      
      public function §8[§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§3!-§ = {};
         }
         loop0:
         do
         {
            this.§9,§ = new Vector.<XML>();
            while(true)
            {
               super();
               while(_loc2_ || _loc1_)
               {
                  this.§+W§ = new §0!M§();
                  if(_loc2_ || _loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc1_);
         
      }
      
      public function get §1!=§() : §3!f§
      {
         return this.§+W§;
      }
      
      public function get §-!4§() : Boolean
      {
         return this.§'e§ == 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§+W§.dispose();
         }
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§3!-§[param1] as §#<§).§!!§(false);
      }
      
      public function §4g§(param1:String) : ByteArray
      {
         return (this.§3!-§[param1] as §#<§).content;
      }
      
      public function §24§(param1:String, param2:Function) : void
      {
         return §1!O§.§#!9§(this.§4g§(param1),param2);
      }
      
      public function §'#§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§#<§ = null;
         if(_loc8_)
         {
            if(param2)
            {
               if(!(_loc9_ && param1))
               {
                  this.§9!^§(param1);
               }
            }
         }
         var _loc3_:§?!^§ = new §?!^§();
         if(!(_loc9_ && param2))
         {
            _loc3_.loadBytes(param1);
         }
         var _loc4_:Object = {};
         var _loc5_:* = int(_loc3_.§;!M§() - 1);
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§ n§(_loc5_)).§<l§.substr(-1) == "/")
            {
               if(!_loc8_)
               {
               }
            }
            else
            {
               if(this.§3!-§[_loc6_.§<l§])
               {
                  if(!_loc8_)
                  {
                  }
                  addr105:
                  §§push(_loc5_);
                  if(_loc8_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc5_ = §§pop();
                  continue;
               }
               this.§3!-§[_loc6_.§<l§] = _loc4_[_loc6_.§<l§] = _loc6_;
               if(_loc9_)
               {
                  continue;
               }
            }
            §§goto(addr105);
         }
         if(!_loc9_)
         {
            this.§;!T§(_loc4_);
         }
      }
      
      protected function §;!T§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
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
                           while(_loc6_)
                           {
                              §§push(null);
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[4] = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
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
                                             loop12:
                                             for(; !_loc7_; loop15:
                                             while(true)
                                             {
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(null);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(_loc7_ && _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc6_ || param1)
                                                         {
                                                            §§pop().§§slot[7] = §§pop();
                                                            continue loop11;
                                                         }
                                                         continue loop1;
                                                      }
                                                      §§goto(addr131);
                                                      addr54:
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§push(null);
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            if(_loc7_ && _loc3_)
                                                            {
                                                               break;
                                                               addr71:
                                                            }
                                                            §§pop().§§slot[8] = §§pop();
                                                            while(true)
                                                            {
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§newactivation());
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               §§goto(addr133);
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop16;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop12;
                                             },continue loop6)
                                             {
                                                §§push(null);
                                                while(true)
                                                {
                                                   §§pop().§§slot[6] = §§pop();
                                                   addr133:
                                                   while(_loc6_)
                                                   {
                                                      §§push(§§newactivation());
                                                      continue loop12;
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                             continue loop9;
                                             loop17:
                                             while(true)
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   if(!(_loc6_ || param1))
                                                   {
                                                      break;
                                                      addr52:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr54);
                                                      continue loop17;
                                                   }
                                                   continue;
                                                }
                                                continue loop11;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                     if(!(_loc6_ || param1))
                     {
                        continue;
                     }
                     §§pop().§§slot[1] = param1;
                     if(_loc6_)
                     {
                        §§goto(addr43);
                     }
                     §§goto(addr71);
                  }
               }
            }
         }
      }
      
      private function §8!E§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LoaderContext = null;
         if(_loc6_ || this)
         {
            var _loc4_:*;
            §§push((_loc4_ = this).§'e§);
            if(!(_loc7_ && _loc2_))
            {
               §§push(§§pop() + 1);
            }
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               _loc4_.§'e§ = _loc5_;
            }
         }
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(!(_loc7_ && _loc2_))
         {
            this.§9,§.push(_loc2_);
            while(true)
            {
               addr98:
               addr144:
               addr89:
               while(this.§9,§.length == 1)
               {
                  while(true)
                  {
                     this.§',§ = new Loader();
                  }
               }
               return;
               if(!(_loc6_ || this))
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr98);
               }
               _loc3_ = new LoaderContext();
               if(!_loc7_)
               {
                  _loc3_.allowCodeImport = true;
                  if(_loc6_)
                  {
                     this.§',§.loadBytes(this.§4g§(_loc2_.Library.@swf),_loc3_);
                     addr125:
                  }
                  §§goto(addr144);
               }
               §§goto(addr125);
            }
         }
         while(true)
         {
            this.§',§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§38§);
            if(!(_loc6_ || _loc3_))
            {
               continue;
            }
            if(_loc6_)
            {
               §§goto(addr89);
            }
            §§goto(addr104);
         }
      }
      
      private function §38§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§',§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§38§);
         }
         var _loc2_:XML = this.§9,§.shift();
         if(_loc4_)
         {
            §'M§.§"!5§(this.§',§,_loc2_.Library[0]);
         }
         loop0:
         for(; this.§9,§.length > 0; if(_loc3_ && param1)
         {
            continue;
         },this.§',§ = new Loader(),§§goto(addr121))
         {
            if(_loc4_ || _loc2_)
            {
               continue;
            }
            addr121:
            loop1:
            while(true)
            {
               this.§',§.contentLoaderInfo.addEventListener(Event.INIT,this.§38§);
               do
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§',§.loadBytes(this.§4g§(this.§9,§[0].Library.@swf));
                     while(true)
                     {
                        break loop0;
                     }
                     continue;
                     addr79:
                  }
                  continue loop1;
               }
               while(!_loc4_);
               
               return;
            }
         }
         while(true)
         {
            this.§>Q§();
            if(!(_loc4_ || this))
            {
               continue;
            }
            §§goto(addr54);
         }
      }
      
      private function §-c§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §0!!§.§4$§(this.getFileAsString(param1));
         if(!_loc3_)
         {
            §5!>§.§;!2§(_loc2_);
         }
      }
      
      protected function §+e§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         if(_loc4_ || _loc2_)
         {
            §`[§.§ e§(_loc2_);
         }
      }
      
      protected function §7!e§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || this)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc5_ && param1))
               {
                  §§push(§§newactivation());
                  if(_loc6_ || param1)
                  {
                     §§goto(addr48);
                  }
                  §§goto(addr106);
               }
               §§goto(addr90);
            }
            §§goto(addr106);
         }
         addr48:
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
                  if(§3!-§[_loc13_] == null)
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
            §+W§.§3u§(new § set§(_loc2_,_loc4_,param1.bitmapData));
            §>Q§();
         };
         if(_loc6_ || _loc3_)
         {
            var _loc3_:*;
            §§push((_loc3_ = this).§'e§);
            if(!(_loc5_ && _loc2_))
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               _loc3_.§'e§ = _loc4_;
            }
            if(!_loc5_)
            {
               var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
               addr106:
               do
               {
                  this.§24§(imagePath,onComplete);
               }
               while(!_loc6_);
               
               addr90:
            }
         }
      }
      
      protected function §>Q§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§'e§);
            if(!_loc3_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               _loc1_.§'e§ = _loc2_;
            }
            if(!_loc3_)
            {
               addr46:
               if(this.§'e§ == 0)
               {
                  if(!_loc3_)
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      protected function §[>§(param1:String) : void
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
               if(_loc3_ && _loc3_)
               {
                  break;
               }
               §§pop().§§slot[2] = function(param1:Bitmap):void
               {
                  §[!U§.§5Q§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
               };
               do
               {
                  §§push(this);
                  §§push("particle_emitters/" + id);
                  if(_loc4_ || this)
                  {
                     §§push(§§pop() + ".png");
                  }
                  §§pop().§24§(§§pop(),onComplete);
               }
               while(!_loc4_);
               
               if(_loc4_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §@!0§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc6_ && _loc3_))
         {
            §§pop().§§slot[3] = null;
            if(_loc5_)
            {
               loop0:
               while(true)
               {
                  §§push(§§newactivation());
                  loop1:
                  while(true)
                  {
                     §§pop().§§slot[1] = param1;
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(!(_loc6_ && param1))
                        {
                           if(!(_loc5_ || this))
                           {
                              continue loop1;
                           }
                           §§pop().§§slot[2] = function(param1:Bitmap):void
                           {
                              §+W§.§3u§(new spriteSheetClass(dataObject,param1.bitmapData));
                              §>Q§();
                           };
                           if(_loc5_ || this)
                           {
                              if(_loc6_ && param1)
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 continue loop0;
                              }
                              var _loc3_:*;
                              §§push((_loc3_ = this).§'e§);
                              if(_loc5_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc5_)
                              {
                                 _loc3_.§'e§ = _loc4_;
                              }
                              if(!(_loc6_ && _loc2_))
                              {
                                 addr256:
                                 if(!dataObject.image)
                                 {
                                    addr216:
                                    §§push(§§newactivation());
                                    if(!_loc6_)
                                    {
                                       if(_loc5_ || this)
                                       {
                                          §§push(Boolean(§§pop().§§slot[1].name));
                                          if(!_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                addr232:
                                                §§pop();
                                                §§push(§§newactivation());
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   break;
                                                }
                                                addr206:
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr216);
                                                }
                                                §§pop().§§slot[3] = §?"§;
                                                §§push(this);
                                                §§push("sprite_sheets/" + dataObject.name);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(§§pop() + ".png");
                                                }
                                                §§pop().§24§(§§pop(),onComplete);
                                                if(_loc5_)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      if(!(_loc5_ || param1))
                                                      {
                                                         addr260:
                                                         var spriteSheetClass:Class = §<!&§;
                                                         this.§24§("sprite_sheets/" + dataObject.image,onComplete);
                                                         addr263:
                                                         addr244:
                                                         addr259:
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr244);
                                                addr233:
                                             }
                                             §§goto(addr196);
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr256);
                                    }
                                    §§goto(addr260);
                                 }
                              }
                              §§goto(addr259);
                           }
                           §§goto(addr260);
                        }
                        break;
                     }
                     §§push(Boolean(§§pop().§§slot[1].charCount));
                     if(!(_loc6_ && _loc3_))
                     {
                        addr196:
                        if(§§pop())
                        {
                           if(!(_loc6_ && param1))
                           {
                              §§goto(addr206);
                              §§push(§§newactivation());
                           }
                           §§goto(addr233);
                        }
                        throw new Error("Invalid sprite sheet data.");
                     }
                     §§goto(addr232);
                  }
               }
            }
         }
         §§goto(addr260);
      }
      
      protected function §9!^§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc4_)
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
            §§pop().§<!F§ = §§pop();
            do
            {
               _loc2_ = int(Math.min(param1.length,65536) - 1);
            }
            while(!(_loc4_ || _loc3_));
            
         }
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ && _loc2_))
            {
               if(_loc4_)
               {
                  §§push(0);
                  if(_loc4_ || param1)
                  {
                     if(!_loc5_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           param1[_loc2_] -= int(this.§9W§() * 255);
                           loop2:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 addr143:
                                 §§push(§§pop() - 2);
                              }
                              else
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr207:
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          param1[_loc2_] -= int(this.§9W§() * 255);
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                addr216:
                                                §§push(_loc2_);
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() - int(this.§9W§() * 255));
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(!(_loc5_ && this))
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(!(_loc4_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   addr215:
                                                   §§push(int(§§pop()));
                                                }
                                                var _loc3_:* = §§pop();
                                                if(!(_loc5_ && param1))
                                                {
                                                   addr322:
                                                   _loc2_ = int(param1.length - 1);
                                                }
                                                addr229:
                                                addr323:
                                                §§push(_loc2_);
                                                if(_loc4_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               param1.inflate();
                                                               addr258:
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(!(_loc4_ || param1))
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr278:
                                                                        §§push(§§pop() - 2);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr282:
                                                                           §§push(int(§§pop()));
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              addr290:
                                                                              §§goto(addr229);
                                                                           }
                                                                        }
                                                                        §§goto(addr322);
                                                                     }
                                                                     §§goto(addr282);
                                                                     addr317:
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr323);
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      param1[_loc2_] -= int(this.§9W§() * 255);
                                                      §§goto(addr317);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr282);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc5_ && _loc2_)
                                                   {
                                                      break loop2;
                                                   }
                                                   §§push(param1.length - 1);
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc4_ || this))
                                                   {
                                                      addr145:
                                                      _loc2_ = int(§§pop());
                                                      addr144:
                                                      break loop2;
                                                   }
                                                   §§push(int(§§pop()));
                                                   if(_loc4_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         while(true)
                                                         {
                                                            addr203:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                      addr135:
                                                   }
                                                   §§goto(addr216);
                                                }
                                                addr107:
                                             }
                                             §§goto(addr215);
                                          }
                                       }
                                       §§goto(addr215);
                                    }
                                 }
                                 addr206:
                              }
                              §§goto(addr144);
                           }
                           continue;
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr207);
               }
               §§goto(addr145);
            }
            §§goto(addr206);
         }
      }
      
      protected function §9W§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            §§push(this.§<!F§);
            if(_loc1_)
            {
               §§push(this.§<!F§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§<!F§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§<!F§);
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() ^ this.§<!F§ >>> 35);
               }
               §§pop().§<!F§ = §§pop();
               while(true)
               {
                  §§push(this);
                  §§push(this.§<!F§);
                  if(_loc1_ || _loc1_)
                  {
                     §§push(this.§<!F§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§<!F§ = §§pop();
                  addr100:
                  while(_loc1_)
                  {
                  }
                  continue loop0;
                  addr63:
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  addr24:
                  §§push(this.§<!F§);
                  if(!_loc2_)
                  {
                     §§push(2147483647);
                     if(_loc2_ && _loc1_)
                     {
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 §§push(this);
                                 §§push(this.§<!F§);
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§push(§§pop() & 2147483647);
                                 }
                                 §§pop().§<!F§ = §§pop();
                              }
                              §§goto(addr63);
                           }
                           §§goto(addr24);
                        }
                        §§goto(addr100);
                        addr45:
                     }
                     return §§pop() / §§pop();
                  }
                  while(true)
                  {
                     §§goto(addr45);
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr44);
         }
      }
   }
}
