package §%R§
{
   import §1!i§.§8"x§;
   import §1!i§.§^a§;
   import §2d§.§ "5§;
   import §2d§.§+!g§;
   import §2d§.§1"[§;
   import §2d§.§3!R§;
   import §2d§.§3"_§;
   import §2d§.§;H§;
   import §7!F§.§^"U§;
   import §;"j§.§4"W§;
   import §;"j§.§[h§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §@"F§ extends EventDispatcher implements §[!a§
   {
      
      protected static const §'#X§:Number = 100;
      
      protected static const §6#G§:Number = 20;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §'#X§ = 100;
         }
         do
         {
            §6#G§ = 20;
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      protected var §+"u§:int;
      
      protected var §-#!§:Object;
      
      protected var §5"O§:String;
      
      protected var §7!u§:XML;
      
      protected var §5c§:int = 0;
      
      protected var §5W§:§+!g§;
      
      protected var §1J§:Timer;
      
      protected var §-"Y§:Object;
      
      protected var §!!;§:Vector.<String>;
      
      public function §@"F§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§-#!§ = {};
         }
         while(true)
         {
            super();
            while(_loc1_ || _loc1_)
            {
               this.§5W§ = new §+!g§("packageManager");
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function get §!"$§() : §3!R§
      {
         return this.§5W§;
      }
      
      public function get §^!p§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§5c§ == 0);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(!this.§!!;§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc2_ && _loc1_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop5:
                                 while(_loc1_)
                                 {
                                    §§pop();
                                    if(_loc1_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§!!;§.length == 0);
                                          if(!_loc2_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop5;
                                       }
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr83);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.clear();
         }
         do
         {
            this.§5W§.dispose();
         }
         while(!_loc2_);
         
      }
      
      protected function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§1J§)
            {
               loop0:
               while(true)
               {
                  this.§1J§.stop();
                  while(true)
                  {
                     this.§1J§.removeEventListener(TimerEvent.TIMER,this.§-K§);
                     while(!_loc2_)
                     {
                        this.§1J§ = null;
                        while(!(_loc2_ && this))
                        {
                           continue loop0;
                           while(_loc1_)
                           {
                              this.§!!;§ = null;
                              if(!(_loc2_ && _loc1_))
                              {
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               this.§-"Y§ = null;
               §§goto(addr39);
            }
         }
         §§goto(addr70);
      }
      
      protected function §+"1§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param2 + "/");
         if(_loc3_)
         {
            return §§pop() + param1;
         }
      }
      
      protected function §`#;§(param1:String, param2:String) : §4"W§
      {
         return this.§-#!§[this.§+"1§(param1,param2)] as §4"W§;
      }
      
      protected function §+!<§(param1:String, param2:String, param3:§4"W§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§-#!§[this.§+"1§(param1,param2)] = param3;
         }
      }
      
      protected function §^k§(param1:String, param2:String = null) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param2);
            if(!(_loc5_ && param2))
            {
               if(§§pop() == null)
               {
                  if(_loc4_)
                  {
                     addr30:
                     §§push(this.§5"O§);
                     if(_loc4_)
                     {
                        addr34:
                        §§push(§§pop());
                     }
                     param2 = §§pop();
                  }
               }
               var _loc3_:§4"W§ = this.§`#;§(param1,param2);
               if(!(_loc5_ && param2))
               {
                  if(!_loc3_)
                  {
                     if(_loc4_ || param2)
                     {
                        throw new Error("File " + this.§+"1§(param1,param2) + " not found",§8"x§.§"!D§);
                     }
                  }
               }
               return _loc3_.§7#E§(false);
            }
            §§goto(addr34);
         }
         §§goto(addr30);
      }
      
      protected function §2h§(param1:String, param2:String = null) : ByteArray
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            §§push(param2);
            if(!_loc4_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr36:
                     §§push(this.§5"O§);
                     if(!(_loc4_ && this))
                     {
                        addr56:
                        param2 = §§pop();
                     }
                     §§goto(addr56);
                  }
               }
               var _loc3_:§4"W§ = this.§`#;§(param1,param2);
               if(!_loc4_)
               {
                  if(!_loc3_)
                  {
                     if(_loc5_)
                     {
                        throw new Error("File " + this.§+"1§(param1,param2) + " not found",§8"x§.§"!D§);
                     }
                  }
               }
               return _loc3_.content;
            }
            §§goto(addr56);
         }
         §§goto(addr36);
      }
      
      protected function §<F§(param1:String, param2:Function) : void
      {
         return §^a§.§]#E§(this.§2h§(param1),param2);
      }
      
      public function §[#!§(param1:ByteArray, param2:String, param3:Boolean = true, param4:XML = null) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:§4"W§ = null;
         if(_loc10_ || this)
         {
            §§push(this.§^!p§);
            while(true)
            {
               if(!§§pop())
               {
                  throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
               }
               loop1:
               while(true)
               {
                  §§push(param3);
                  if(!_loc10_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        this.§3!u§(param1);
                        addr67:
                        while(true)
                        {
                        }
                     }
                     addr64:
                  }
                  loop4:
                  while(true)
                  {
                     this.§5"O§ = param2;
                     while(true)
                     {
                        if(!_loc9_)
                        {
                           if(!_loc10_)
                           {
                              continue loop1;
                           }
                           if(!(_loc9_ && param2))
                           {
                              this.§7!u§ = param4;
                              if(!(_loc9_ && param3))
                              {
                                 if(!_loc9_)
                                 {
                                    while(false)
                                    {
                                       continue loop4;
                                    }
                                    var _loc5_:§[h§;
                                    (_loc5_ = new §[h§()).loadBytes(param1);
                                    var _loc6_:Object = {};
                                    var _loc7_:* = int(_loc5_.§[B§() - 1);
                                    loop7:
                                    while(_loc7_ >= 0)
                                    {
                                       if((_loc8_ = _loc5_.§[!<§(_loc7_)).§1"n§.substr(-1) == "/")
                                       {
                                          if(_loc10_ || param2)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                if(_loc10_ || param2)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc7_ = §§pop();
                                                if(!_loc9_)
                                                {
                                                   if(true)
                                                   {
                                                      continue loop7;
                                                   }
                                                   loop9:
                                                   while(true)
                                                   {
                                                      this.§+!<§(_loc8_.§1"n§,this.§5"O§,_loc8_);
                                                      addr186:
                                                      while(true)
                                                      {
                                                         continue loop9;
                                                      }
                                                   }
                                                   addr169:
                                                }
                                                while(_loc9_)
                                                {
                                                   §§goto(addr186);
                                                   §§goto(addr169);
                                                }
                                             }
                                             addr155:
                                          }
                                          loop12:
                                          while(true)
                                          {
                                             addr154:
                                             while(true)
                                             {
                                                §§goto(addr155);
                                                continue loop12;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       else if(this.§`#;§(_loc8_.§1"n§,this.§5"O§))
                                       {
                                          if(!(_loc9_ && param2))
                                          {
                                             _loc6_[_loc8_.§1"n§] = this.§`#;§(_loc8_.§1"n§,this.§5"O§);
                                             if(_loc10_ || param2)
                                             {
                                                §§goto(addr154);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          _loc6_[_loc8_.§1"n§] = _loc8_;
                                       }
                                       §§goto(addr186);
                                    }
                                    if(!_loc9_)
                                    {
                                       this.§#!T§(_loc6_);
                                    }
                                    return;
                                    addr41:
                                 }
                                 break;
                              }
                              continue;
                           }
                        }
                        else
                        {
                           §§goto(addr64);
                        }
                     }
                     §§goto(addr67);
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      public function §6q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.clear();
         }
      }
      
      protected function §2!;§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || _loc3_)
         {
            §§pop().§§slot[2] = null;
            if(_loc4_ || this)
            {
               addr39:
               var fileName:String = param1;
            }
            try
            {
               var jsonObject:Object = JSON.parse(this.§^k§(fileName));
               if(_loc4_ || param1)
               {
                  this.§;"0§(jsonObject);
               }
            }
            catch(e:Error)
            {
               throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§8"x§.§`4§);
            }
            return;
         }
         §§goto(addr39);
      }
      
      protected function initializeFile(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            §§push(param1);
            if(!_loc4_)
            {
               if(§§pop().search(/^sprite_sheets\/(.*)\.json$/i) != -1)
               {
                  if(_loc5_ || _loc3_)
                  {
                     this.§2!;§(param1);
                     addr44:
                     §§push(param1);
                  }
               }
               §§goto(addr44);
            }
            var _loc2_:Array = §§pop().match(/composites\/data\/(.*)\.xml$/i);
            if(!(_loc4_ && _loc2_))
            {
               if(_loc2_)
               {
                  if(!_loc4_)
                  {
                     addr73:
                     this.§2"c§(param1);
                  }
               }
               _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
               if(_loc5_)
               {
                  if(_loc2_)
                  {
                     if(_loc5_)
                     {
                        addr90:
                        this.§2"c§(param1);
                     }
                  }
                  var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
                  if(!(_loc4_ && this))
                  {
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           addr122:
                           this.§^"z§(param1);
                        }
                     }
                     return;
                  }
                  §§goto(addr122);
               }
               §§goto(addr90);
            }
            §§goto(addr73);
         }
         §§goto(addr44);
      }
      
      protected function §#!T§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<"U§(param1);
            loop0:
            for(; this.§9"]§(); while(_loc3_ || _loc3_)
            {
            })
            {
               while(true)
               {
                  if(!this.§1J§)
                  {
                     continue loop0;
                  }
                  this.§1J§.stop();
                  loop2:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     addr74:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
            }
            return;
         }
         while(true)
         {
            this.§1J§ = new Timer(§6#G§,0);
            §§goto(addr105);
         }
      }
      
      private function §<"U§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!_loc5_)
         {
            this.§!!;§ = new Vector.<String>();
         }
         var _loc3_:int = 0;
         for(_loc2_ in param1)
         {
            if(!_loc5_)
            {
               this.§!!;§.push(_loc2_);
            }
         }
         if(!(_loc5_ && _loc3_))
         {
            this.§-"Y§ = param1;
         }
      }
      
      private function §9"]§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = getTimer();
         while(true)
         {
            §§push(getTimer() - _loc1_);
            §§push(§'#X§);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() / 2);
            }
            if(§§pop() < §§pop())
            {
               §§push(this.§;!w§());
               if(_loc4_ || _loc1_)
               {
                  if(!§§pop())
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     break;
                  }
                  continue;
               }
               addr66:
               var _loc2_:* = §§pop();
               if(!_loc3_)
               {
                  §§push(this.§^!p§);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           this.§@!j§();
                           addr93:
                           §§push(_loc2_);
                        }
                     }
                     §§goto(addr93);
                  }
                  return §§pop();
               }
               §§goto(addr93);
            }
            break;
         }
         §§goto(addr66);
         §§push(this.§!!;§.length > 0);
      }
      
      private function §@!j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §;!w§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = null;
         if(_loc2_)
         {
            if(this.§!!;§.length > 0)
            {
               _loc1_ = this.§!!;§[0];
               do
               {
                  this.§!!;§.splice(0,1);
                  do
                  {
                     this.initializeFile(_loc1_);
                  }
                  while(_loc3_ && _loc1_);
                  
               }
               while(!(_loc2_ || _loc1_));
               
               return true;
            }
            else
            {
               addr22:
               §§push(false);
               if(_loc2_ || _loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr22);
      }
      
      private function §-K§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§9"]§())
            {
               if(!_loc2_)
               {
                  addr44:
                  if(this.§1J§)
                  {
                     if(!_loc2_)
                     {
                        this.§1J§.stop();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      protected function §^"z§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:XML = new XML(this.§^k§(param1));
         if(_loc3_ || _loc3_)
         {
            §^"U§.§8B§(_loc2_);
         }
      }
      
      protected function §2"c§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               if(!_loc6_)
               {
                  break;
               }
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§push(param1);
                  addr94:
                  while(_loc6_ || _loc2_)
                  {
                     §§pop().§§slot[1] = §§pop();
                     while(true)
                     {
                        addr42:
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop0;
                        }
                        addr78:
                        continue loop2;
                        if(!_loc6_)
                        {
                           continue;
                        }
                        §§push(§§newactivation());
                        if(_loc6_ || param1)
                        {
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           if(!_loc6_)
                           {
                              continue loop2;
                           }
                           §§pop().§§slot[3] = function(param1:Bitmap):void
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
                              var _loc2_:XML = new XML(§^k§(filePath,activePackageName));
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
                                    if(§`#;§(_loc13_,activePackageName) == null)
                                    {
                                       _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                                       _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                                    }
                                    if(_loc3_.indexOf(_loc9_) < 0)
                                    {
                                       _loc3_.push(_loc9_);
                                       _loc14_ = §^k§(_loc13_,activePackageName);
                                       _loc4_.push(new XML(_loc14_));
                                    }
                                 }
                              }
                              addSpriteSheet(new §1"[§(_loc2_,_loc4_,param1.bitmapData));
                              §5"V§();
                           };
                           if(!_loc5_)
                           {
                              if(false)
                              {
                                 §§goto(addr42);
                              }
                              else
                              {
                                 var _loc3_:*;
                                 §§push((_loc3_ = this).§5c§);
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc4_:* = §§pop();
                                 if(_loc6_)
                                 {
                                    _loc3_.§5c§ = _loc4_;
                                 }
                                 if(!(_loc5_ && this))
                                 {
                                    break loop1;
                                 }
                                 return;
                                 addr151:
                              }
                           }
                           this.§<F§(imagePath,onComplete);
                           addr175:
                           if(!_loc6_)
                           {
                              §§goto(addr175);
                           }
                           §§goto(addr151);
                        }
                        §§pop().§§slot[4] = filePath.substr(0,filePath.length - 3) + "png";
                        §§goto(addr175);
                     }
                  }
                  continue loop1;
               }
            }
            §§goto(addr153);
         }
      }
      
      protected function addSpriteSheet(param1:§;H§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§5W§.§-5§(param1);
         }
      }
      
      protected function §5"V§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§5c§);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               _loc1_.§5c§ = _loc2_;
            }
            if(!(_loc3_ && _loc1_))
            {
               if(this.§^!p§)
               {
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr78);
            }
            this.§@!j§();
         }
         addr78:
      }
      
      protected function §;"0§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            if(!(_loc6_ && _loc2_))
            {
               loop1:
               while(true)
               {
                  §§push(§§newactivation());
                  if(!_loc6_)
                  {
                     §§pop().§§slot[1] = param1;
                     if(_loc5_ || this)
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           if(_loc6_)
                           {
                              continue loop0;
                           }
                           §§pop().§§slot[2] = function(param1:Bitmap):void
                           {
                              addSpriteSheet(new spriteSheetClass(dataObject,param1.bitmapData));
                              §5"V§();
                           };
                           if(!(_loc6_ && this))
                           {
                              if(false)
                              {
                                 continue;
                              }
                              var _loc3_:*;
                              §§push((_loc3_ = this).§5c§);
                              if(_loc5_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc5_ || this)
                              {
                                 _loc3_.§5c§ = _loc4_;
                              }
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    if(!§§pop().§§slot[1].image)
                                    {
                                       §§push(§§newactivation());
                                       while(true)
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             break loop1;
                                          }
                                          §§goto(addr235);
                                       }
                                       addr188:
                                    }
                                    addr234:
                                    addr235:
                                    §§pop().§§slot[3] = §3"_§;
                                    §§goto(addr93);
                                 }
                                 addr231:
                              }
                           }
                           while(true)
                           {
                              §§push(§§newactivation());
                              addr176:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§pop().§§slot[3] = § "5§;
                                       break loop0;
                                    }
                                    §§goto(addr231);
                                 }
                                 §§goto(addr188);
                              }
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr235);
                     }
                     addr93:
                     this.§<F§("sprite_sheets/" + dataObject.image,onComplete);
                     return;
                  }
                  break;
               }
               while(true)
               {
                  §§push(Boolean(§§pop().§§slot[1].name));
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           §§push(§§newactivation());
                           if(!_loc6_)
                           {
                              §§push(Boolean(§§pop().§§slot[1].charCount));
                              if(_loc6_)
                              {
                                 continue;
                              }
                              if(!§§pop())
                              {
                                 throw new Error("Invalid sprite sheet data.");
                              }
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    §§goto(addr175);
                                 }
                                 §§goto(addr234);
                              }
                           }
                           break;
                        }
                        §§goto(addr176);
                        addr207:
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr207);
               }
            }
            break;
         }
         do
         {
            §§push(this);
            §§push("sprite_sheets/" + dataObject.name);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() + ".png");
            }
            §§pop().§<F§(§§pop(),onComplete);
         }
         while(_loc6_);
         
         if(!(_loc5_ || _loc3_))
         {
            §§goto(addr173);
         }
         §§goto(addr161);
      }
      
      protected function §3!u§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            §§push(this);
            §§push(56895);
            if(!(_loc4_ && this))
            {
               §§push(25147);
               if(_loc5_)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§+"u§ = §§pop();
         }
         do
         {
            _loc2_ = int(Math.min(param1.length,65536) - 1);
         }
         while(!(_loc5_ || _loc2_));
         
         loop1:
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               §§push(0);
               if(_loc5_)
               {
                  if(_loc5_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(param1.length - 1);
                           while(true)
                           {
                              §§push(int(§§pop()));
                              if(_loc5_ || _loc2_)
                              {
                                 if(!_loc4_)
                                 {
                                    _loc2_ = §§pop();
                                    loop3:
                                    while(true)
                                    {
                                       addr62:
                                       while(true)
                                       {
                                          addr199:
                                          addr217:
                                          loop5:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc5_ || param1)
                                             {
                                                addr207:
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr208:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         param1[_loc2_] -= int(this.§@"7§() * 255);
                                                         if(!(_loc5_ || this))
                                                         {
                                                            addr209:
                                                            §§push(int(Math.max(param1.length,65536) - 65536));
                                                         }
                                                         else
                                                         {
                                                            addr216:
                                                         }
                                                         continue loop3;
                                                         break loop5;
                                                      }
                                                      §§goto(addr209);
                                                      continue loop11;
                                                   }
                                                   addr135:
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc5_)
                                                            {
                                                               §§push(2);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc4_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(int(§§pop()));
                                                               }
                                                               §§goto(addr216);
                                                               addr125:
                                                            }
                                                            continue loop10;
                                                         }
                                                         addr164:
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                addr207:
                                             }
                                             break;
                                          }
                                          var _loc3_:* = §§pop();
                                          if(_loc5_)
                                          {
                                             addr303:
                                             _loc2_ = int(param1.length - 1);
                                             addr225:
                                             addr302:
                                             addr304:
                                             §§push(_loc2_);
                                             if(_loc5_ || this)
                                             {
                                                if(_loc5_ || param1)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     addr296:
                                                                     if(_loc5_)
                                                                     {
                                                                        addr264:
                                                                        §§push(_loc2_ - 2);
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr268:
                                                                           _loc2_ = int(§§pop());
                                                                           addr269:
                                                                           §§goto(addr225);
                                                                        }
                                                                        §§goto(addr302);
                                                                        addr298:
                                                                     }
                                                                     §§goto(addr304);
                                                                  }
                                                                  param1.inflate();
                                                                  return;
                                                                  addr260:
                                                               }
                                                               §§goto(addr269);
                                                            }
                                                            §§goto(addr260);
                                                         }
                                                         param1[_loc2_] -= int(this.§@"7§() * 255);
                                                         §§goto(addr296);
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   §§goto(addr303);
                                                }
                                                §§goto(addr264);
                                             }
                                             §§goto(addr268);
                                          }
                                          §§goto(addr298);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    §§goto(addr135);
                                 }
                              }
                              §§goto(addr217);
                           }
                        }
                        §§goto(addr216);
                     }
                     else
                     {
                        param1[_loc2_] -= int(this.§@"7§() * 255);
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr125);
               }
               §§goto(addr208);
            }
            §§goto(addr207);
         }
      }
      
      protected function §@"7§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this);
            §§push(this.§+"u§);
            if(_loc1_ || this)
            {
               §§push(this.§+"u§);
               if(!_loc2_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§+"u§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§+"u§);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop() ^ this.§+"u§ >>> 35);
               }
               §§pop().§+"u§ = §§pop();
               while(true)
               {
                  §§push(this);
                  §§push(this.§+"u§);
                  if(_loc1_)
                  {
                     §§push(this.§+"u§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§+"u§ = §§pop();
                  loop2:
                  for(; _loc1_; if(_loc2_ && _loc2_)
                  {
                     continue;
                  },§§push(this),§§push(this.§+"u§),if(!_loc2_)
                  {
                     §§push(§§pop() & 2147483647);
                  },§§pop().§+"u§ = §§pop())
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     §§push(this.§+"u§);
                     while(true)
                     {
                        §§push(0);
                        loop4:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              addr68:
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              §§push(this.§+"u§);
                              if(_loc2_)
                              {
                                 break loop4;
                              }
                              §§push(2147483647);
                              if(!_loc2_)
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
         §§goto(addr68);
      }
   }
}
