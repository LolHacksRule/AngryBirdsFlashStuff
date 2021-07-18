package §@g§
{
   import § ! §.§+D§;
   import §"n§.§?!=§;
   import §"n§.§`x§;
   import §'!l§.§2N§;
   import §'!l§.§4O§;
   import §'!l§.§5A§;
   import §'!l§.§9!#§;
   import §'!l§.§?!<§;
   import §'!l§.§]!e§;
   import §5&§.§ B§;
   import §5&§.§9!O§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §#!r§ extends EventDispatcher implements §%! §
   {
      
      protected static const §^!k§:Number = 100;
      
      protected static const §+]§:Number = 20;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §#!r§))
         {
            §^!k§ = 100;
            do
            {
               §+]§ = 20;
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      protected var §>"!§:int;
      
      protected var §<!@§:Object;
      
      protected var §1;§:String;
      
      protected var §"U§:int = 0;
      
      protected var §@!+§:§]!e§;
      
      protected var §="#§:Timer;
      
      protected var §@U§:Object;
      
      protected var §=!v§:Vector.<String>;
      
      public function §#!r§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§<!@§ = {};
            while(true)
            {
               super();
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(true)
                  {
                     this.§@!+§ = new §]!e§("packageManager");
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function get §-!-§() : §5A§
      {
         return this.§@!+§;
      }
      
      public function get §4!d§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§"U§ == 0);
            if(_loc2_ || this)
            {
               §§push(§§pop());
               loop0:
               while(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc2_ || _loc1_)
                     {
                        if(!§§pop())
                        {
                           for(; !(_loc1_ && this); §§push(this.§=!v§.length == 0),if(_loc2_ || this)
                           {
                              if(!_loc1_)
                              {
                                 break loop0;
                              }
                              continue loop3;
                           })
                           {
                              §§pop();
                              if(_loc2_)
                              {
                                 continue;
                              }
                              addr102:
                              addr102:
                              while(true)
                              {
                                 continue loop3;
                              }
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr102);
                           }
                           addr101:
                        }
                        break loop0;
                     }
                     continue loop0;
                  }
               }
               return §§pop();
            }
            §§goto(addr101);
         }
         §§goto(addr102);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.clear();
            do
            {
               this.§@!+§.dispose();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      protected function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§="#§)
            {
               while(true)
               {
                  this.§="#§.stop();
                  addr98:
                  while(true)
                  {
                     this.§="#§.removeEventListener(TimerEvent.TIMER,this.§`%§);
                     addr91:
                     while(true)
                     {
                        this.§="#§ = null;
                        addr72:
                        while(true)
                        {
                        }
                     }
                  }
                  addr39:
                  if(!_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr51:
               }
            }
            while(true)
            {
               this.§@U§ = null;
               while(!_loc2_)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     if(!_loc2_)
                     {
                        this.§=!v§ = null;
                        if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        }
                        §§goto(addr39);
                     }
                     §§goto(addr98);
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr51);
         }
         §§goto(addr91);
      }
      
      protected function §<z§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param2 + "/");
         if(!(_loc3_ && param1))
         {
            return §§pop() + param1;
         }
      }
      
      protected function §6!E§(param1:String, param2:String) : § B§
      {
         return this.§<!@§[this.§<z§(param1,param2)] as § B§;
      }
      
      protected function §'!S§(param1:String, param2:String, param3:§ B§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§<!@§[this.§<z§(param1,param2)] = param3;
         }
      }
      
      protected function §;E§(param1:String, param2:String = null) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param2);
            if(!(_loc5_ && this))
            {
               if(§§pop() == null)
               {
               }
               §§goto(addr56);
            }
            param2 = §§pop();
         }
         addr56:
         if(_loc4_ || param2)
         {
            §§push(this.§1;§);
            if(_loc4_ || this)
            {
               §§push(§§pop());
            }
         }
         var _loc3_:§ B§ = this.§6!E§(param1,param2);
         if(!_loc5_)
         {
            if(!_loc3_)
            {
               if(_loc4_ || _loc3_)
               {
                  throw new Error("File " + this.§<z§(param1,param2) + " not found",§?!=§.§#"-§);
               }
            }
         }
         return _loc3_.§41§(false);
      }
      
      protected function §3!a§(param1:String, param2:String = null) : ByteArray
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2);
            if(!_loc4_)
            {
               if(§§pop() == null)
               {
                  if(!_loc4_)
                  {
                     addr31:
                     §§push(this.§1;§);
                     if(!(_loc4_ && param2))
                     {
                        addr50:
                        §§push(§§pop());
                     }
                     param2 = §§pop();
                  }
               }
               var _loc3_:§ B§ = this.§6!E§(param1,param2);
               if(_loc5_ || param2)
               {
                  if(!_loc3_)
                  {
                     if(!(_loc4_ && param2))
                     {
                        throw new Error("File " + this.§<z§(param1,param2) + " not found",§?!=§.§#"-§);
                     }
                  }
               }
               return _loc3_.content;
            }
            §§goto(addr50);
         }
         §§goto(addr31);
      }
      
      protected function §+F§(param1:String, param2:Function) : void
      {
         return §`x§.§`!+§(this.§3!a§(param1),param2);
      }
      
      public function §;!h§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:§ B§ = null;
         if(_loc9_ || param1)
         {
            §§push(this.§4!d§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!(_loc8_ && param3))
                  {
                     break;
                  }
                  while(true)
                  {
                     addr36:
                     if(!(_loc8_ && param3))
                     {
                        if(false)
                        {
                           while(true)
                           {
                              §§push(param3);
                              if(_loc8_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    this.§ 9§(param1);
                                    addr53:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr50:
                              }
                              while(true)
                              {
                                 this.§1;§ = param2;
                                 if(!_loc9_)
                                 {
                                    continue;
                                 }
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 §§goto(addr50);
                              }
                              §§goto(addr36);
                           }
                           continue loop0;
                           addr45:
                        }
                        var _loc4_:§9!O§;
                        (_loc4_ = new §9!O§()).loadBytes(param1);
                        var _loc5_:Object = {};
                        var _loc6_:* = int(_loc4_.§3!?§() - 1);
                        addr180:
                        if(_loc6_ >= 0)
                        {
                           if((_loc7_ = _loc4_.§[!;§(_loc6_)).§!! §.substr(-1) == "/")
                           {
                              if(!(_loc8_ && this))
                              {
                                 addr148:
                                 §§push(_loc6_);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc6_ = §§pop();
                                 if(_loc9_)
                                 {
                                    addr155:
                                    if(false)
                                    {
                                       addr157:
                                       this.§'!S§(_loc7_.§!! §,this.§1;§,_loc7_);
                                       addr165:
                                       if(!(_loc8_ && param1))
                                       {
                                          addr147:
                                          §§goto(addr148);
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr165);
                              }
                              addr129:
                              _loc5_[_loc7_.§!! §] = this.§6!E§(_loc7_.§!! §,this.§1;§);
                              if(!(_loc8_ && param3))
                              {
                                 §§goto(addr147);
                                 addr146:
                              }
                              §§goto(addr155);
                           }
                           if(this.§6!E§(_loc7_.§!! §,this.§1;§))
                           {
                              if(!(_loc8_ && param1))
                              {
                                 §§goto(addr129);
                              }
                              §§goto(addr146);
                           }
                           _loc5_[_loc7_.§!! §] = _loc7_;
                           §§goto(addr157);
                        }
                        if(!(_loc8_ && param2))
                        {
                           this.§%T§(_loc5_);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr45);
            }
         }
         throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
      }
      
      public function §""0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.clear();
         }
      }
      
      protected function §"!N§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(!_loc4_)
            {
               addr30:
               var fileName:String = param1;
            }
            try
            {
               var jsonObject:Object = JSON.parse(this.§;E§(fileName));
               if(_loc5_ || this)
               {
                  this.§?U§(jsonObject);
               }
            }
            catch(e:Error)
            {
               throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§?!=§.§0w§);
            }
            return;
         }
         §§goto(addr30);
      }
      
      protected function initializeFile(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_)
            {
               if(§§pop().search(/^sprite_sheets\/(.*)\.json$/i) != -1)
               {
                  if(!_loc5_)
                  {
                     this.§"!N§(param1);
                     addr33:
                     §§push(param1);
                  }
               }
               §§goto(addr33);
            }
            var _loc2_:Array = §§pop().match(/composites\/data\/(.*)\.xml$/i);
            if(_loc4_ || this)
            {
               if(_loc2_)
               {
                  if(!_loc5_)
                  {
                     this.§=m§(param1);
                     addr52:
                  }
               }
               _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
               if(_loc4_ || _loc3_)
               {
                  if(_loc2_)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        this.§=m§(param1);
                     }
                  }
               }
               var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
               if(_loc4_ || param1)
               {
                  if(_loc3_)
                  {
                     if(_loc4_)
                     {
                        this.§<!,§(param1);
                     }
                  }
               }
               return;
            }
            §§goto(addr52);
         }
         §§goto(addr33);
      }
      
      protected function §%T§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%!?§(param1);
            loop0:
            while(this.§=y§())
            {
               loop1:
               while(true)
               {
                  if(this.§="#§)
                  {
                     this.§="#§.stop();
                     loop2:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              this.§="#§.start();
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              if(!_loc3_)
                              {
                                 continue loop1;
                              }
                              if(!_loc2_)
                              {
                                 break loop0;
                              }
                              addr69:
                           }
                           continue loop1;
                        }
                        addr77:
                        while(true)
                        {
                           this.§="#§ = new Timer(§+]§,0);
                        }
                        while(!_loc2_)
                        {
                           while(true)
                           {
                              this.§="#§.addEventListener(TimerEvent.TIMER,this.§`%§);
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr77);
               }
            }
            return;
         }
         §§goto(addr95);
      }
      
      private function §%!?§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!_loc5_)
         {
            this.§=!v§ = new Vector.<String>();
         }
         for(_loc2_ in param1)
         {
            if(!_loc5_)
            {
               this.§=!v§.push(_loc2_);
            }
         }
         if(_loc6_)
         {
            this.§@U§ = param1;
         }
      }
      
      private function §=y§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = getTimer();
         while(true)
         {
            §§push(getTimer() - _loc1_);
            §§push(§^!k§);
            if(!(_loc4_ && _loc1_))
            {
               §§push(§§pop() / 2);
            }
            if(§§pop() < §§pop())
            {
               §§push(this.§5!j§());
               if(!(_loc4_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     break;
                  }
                  continue;
               }
               addr65:
               var _loc2_:* = §§pop();
               if(_loc3_)
               {
                  §§push(this.§4!d§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           addr85:
                           dispatchEvent(new Event(Event.COMPLETE));
                        }
                     }
                     return _loc2_;
                  }
               }
               §§goto(addr85);
            }
            break;
         }
         §§goto(addr65);
         §§push(this.§=!v§.length > 0);
      }
      
      private function §5!j§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = null;
         if(_loc3_ || _loc3_)
         {
            if(this.§=!v§.length > 0)
            {
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_ = this.§=!v§[0];
               }
               do
               {
                  this.§=!v§.splice(0,1);
               }
               while(_loc2_ && _loc3_);
               
               this.initializeFile(_loc1_);
               §§push(true);
               addr62:
            }
            else
            {
               §§push(false);
               if(!(_loc2_ && this))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr62);
      }
      
      private function §`%§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!this.§=y§())
            {
               if(!_loc2_)
               {
                  if(this.§="#§)
                  {
                     if(!(_loc2_ && this))
                     {
                        addr59:
                        this.§="#§.stop();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      protected function §<!,§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:XML = new XML(this.§;E§(param1));
         if(!_loc3_)
         {
            §+D§.§@r§(_loc2_);
         }
      }
      
      protected function §=m§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            if(_loc5_)
            {
               §§pop().§§slot[2] = §§pop();
               loop1:
               while(true)
               {
                  §§push(§§newactivation());
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§pop().§§slot[1] = §§pop();
                        if(!(_loc5_ || _loc2_))
                        {
                           break;
                        }
                        loop4:
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§push(this.§1;§);
                              if(_loc5_)
                              {
                                 §§push(§§pop());
                                 if(_loc6_ && _loc3_)
                                 {
                                 }
                                 §§pop().§§slot[4] = §§pop().substr(0,filePath.length - 3) + "png";
                                 addr149:
                                 break loop3;
                              }
                              if(!_loc5_)
                              {
                                 continue loop3;
                              }
                              §§pop().§§slot[2] = §§pop();
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc5_ || this))
                                    {
                                       break;
                                    }
                                    if(!_loc6_)
                                    {
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
                                          var _loc2_:XML = new XML(§;E§(filePath,activePackageName));
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
                                                if(§6!E§(_loc13_,activePackageName) == null)
                                                {
                                                   _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                                                   _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                                                }
                                                if(_loc3_.indexOf(_loc9_) < 0)
                                                {
                                                   _loc3_.push(_loc9_);
                                                   _loc14_ = §;E§(_loc13_,activePackageName);
                                                   _loc4_.push(new XML(_loc14_));
                                                }
                                             }
                                          }
                                          §="!§(new §4O§(_loc2_,_loc4_,param1.bitmapData));
                                          §6!?§();
                                       };
                                       if(_loc6_)
                                       {
                                          break loop3;
                                       }
                                       if(_loc5_)
                                       {
                                          if(true)
                                          {
                                             var _loc3_:*;
                                             §§push((_loc3_ = this).§"U§);
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc4_:* = §§pop();
                                          }
                                          continue loop4;
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             _loc3_.§"U§ = _loc4_;
                                          }
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(§§newactivation());
                                             break;
                                          }
                                          break loop3;
                                       }
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr149);
                        }
                        continue loop0;
                     }
                     addr169:
                     this.§+F§(imagePath,onComplete);
                     if(!(_loc5_ || _loc3_))
                     {
                        §§goto(addr169);
                     }
                     return;
                  }
               }
            }
            §§goto(addr149);
         }
      }
      
      protected function §="!§(param1:§9!#§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§@!+§.§1!u§(param1);
         }
      }
      
      protected function §6!?§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§"U§);
            if(_loc4_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               _loc1_.§"U§ = _loc2_;
            }
            if(!(_loc3_ && _loc2_))
            {
               addr56:
               if(this.§4!d§)
               {
                  if(!_loc3_)
                  {
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      protected function §?U§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc6_ && param1))
         {
            §§pop().§§slot[3] = null;
            loop0:
            while(true)
            {
               addr42:
               addr241:
               while(true)
               {
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§pop().§§slot[1] = param1;
                  if(_loc6_ && this)
                  {
                     return;
                  }
                  addr160:
                  continue loop0;
               }
               loop2:
               for(; !§§pop().§§slot[1].image; while(_loc6_ && _loc3_)
               {
                  continue loop2;
               },§§pop().§§slot[3] = §2N§,§§goto(addr205))
               {
                  §§push(§§newactivation());
                  loop6:
                  while(true)
                  {
                     §§push(Boolean(§§pop().§§slot[1].name));
                     addr213:
                     addr186:
                     while(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop6;
                        }
                        continue loop2;
                     }
                     if(!§§pop())
                     {
                        throw new Error("Invalid sprite sheet data.");
                     }
                     if(!_loc6_)
                     {
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 continue loop2;
                              }
                              addr194:
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§+F§("sprite_sheets/" + dataObject.image,onComplete);
                                 break loop6;
                              }
                              addr248:
                           }
                        }
                        break;
                     }
                     addr205:
                     §§push(this);
                     §§push("sprite_sheets/" + dataObject.name);
                     if(_loc5_)
                     {
                        §§push(§§pop() + ".png");
                     }
                     §§pop().§+F§(§§pop(),onComplete);
                     §§goto(addr160);
                  }
                  while(true)
                  {
                     if(_loc6_)
                     {
                        break loop2;
                     }
                     §§goto(addr160);
                  }
               }
               while(true)
               {
                  §§goto(addr245);
                  §§goto(addr227);
               }
               §§goto(addr229);
            }
         }
         §§goto(addr210);
      }
      
      protected function § 9§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc5_)
         {
            §§push(this);
            §§push(56895);
            if(!(_loc4_ && _loc3_))
            {
               §§push(25147);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§>"!§ = §§pop();
            do
            {
               _loc2_ = int(Math.min(param1.length,65536) - 1);
            }
            while(!(_loc5_ || _loc3_));
            
         }
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               §§push(0);
               if(_loc5_ || param1)
               {
                  if(_loc5_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(param1.length - 1);
                           loop2:
                           while(!_loc4_)
                           {
                              §§push(int(§§pop()));
                              loop3:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr119:
                                 loop4:
                                 while(true)
                                 {
                                    if(_loc5_ || this)
                                    {
                                       while(true)
                                       {
                                          addr204:
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(!_loc4_)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr208:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         param1[_loc2_] -= int(this.§7!!§() * 255);
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(_loc2_);
                                                            if(_loc4_ && this)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(§§pop() - int(this.§7!!§() * 255));
                                                            if(_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr209:
                                                            §§push(Math.max(param1.length,65536) - 65536);
                                                         }
                                                         §§push(int(§§pop()));
                                                         break loop6;
                                                      }
                                                      §§goto(addr209);
                                                      continue loop8;
                                                   }
                                                }
                                                addr207:
                                             }
                                             break;
                                          }
                                       }
                                       addr69:
                                    }
                                    else
                                    {
                                       §§push(_loc2_);
                                       if(!_loc4_)
                                       {
                                          addr132:
                                          §§push(§§pop() - 2);
                                          break loop2;
                                       }
                                       addr164:
                                    }
                                    var _loc3_:* = §§pop();
                                    if(_loc5_)
                                    {
                                       addr318:
                                       _loc2_ = int(param1.length - 1);
                                       addr225:
                                       addr317:
                                       addr319:
                                       §§push(_loc2_);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc4_ && param1))
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         param1.inflate();
                                                      }
                                                      addr313:
                                                      §§push(_loc2_);
                                                      if(!_loc4_)
                                                      {
                                                         addr276:
                                                         §§push(§§pop() - 2);
                                                         if(!(_loc4_ && this))
                                                         {
                                                            addr285:
                                                            _loc2_ = int(§§pop());
                                                            §§goto(addr225);
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                      §§goto(addr285);
                                                      addr313:
                                                   }
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      if(_loc4_ && this)
                                                      {
                                                         §§goto(addr319);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr285);
                                                }
                                                param1[_loc2_] -= int(this.§7!!§() * 255);
                                                §§goto(addr313);
                                             }
                                             §§goto(addr276);
                                          }
                                          §§goto(addr318);
                                       }
                                       §§goto(addr285);
                                    }
                                    §§goto(addr313);
                                 }
                              }
                           }
                           §§goto(addr134);
                           §§push(int(§§pop()));
                        }
                        §§goto(addr119);
                     }
                     else
                     {
                        param1[_loc2_] -= int(this.§7!!§() * 255);
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr132);
               }
               §§goto(addr208);
            }
            §§goto(addr207);
         }
      }
      
      protected function §7!!§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push(this.§>"!§);
            if(!_loc2_)
            {
               §§push(this.§>"!§);
               if(!_loc2_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§>"!§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§>"!§);
               if(!_loc2_)
               {
                  §§push(§§pop() ^ this.§>"!§ >>> 35);
               }
               §§pop().§>"!§ = §§pop();
               addr110:
               while(true)
               {
                  §§push(this);
                  §§push(this.§>"!§);
                  if(_loc1_)
                  {
                     §§push(this.§>"!§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§>"!§ = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr75);
      }
   }
}
