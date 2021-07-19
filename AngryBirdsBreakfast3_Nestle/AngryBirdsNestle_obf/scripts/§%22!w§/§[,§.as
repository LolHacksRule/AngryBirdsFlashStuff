package §"!w§
{
   import §2`§.§6y§;
   import §4!i§.§2!Z§;
   import §4!i§.§9w§;
   import §8! §.§"f§;
   import §8! §.§&$§;
   import §8! §.§+1§;
   import §8! §.§+C§;
   import §8! §.§2!f§;
   import §8! §.§9q§;
   import §@!G§.§4!Z§;
   import §@!G§.§]b§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §[,§ extends EventDispatcher implements §&t§
   {
      
      protected static const §,!r§:Number = 100;
      
      protected static const §4! §:Number = 20;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,!r§ = 100;
         }
         do
         {
            §4! § = 20;
         }
         while(!(_loc2_ || §[,§));
         
      }
      
      protected var §`!g§:int;
      
      protected var §+4§:Object;
      
      protected var §"u§:String;
      
      protected var §4c§:int = 0;
      
      protected var §6!9§:§2!f§;
      
      protected var §="'§:Timer;
      
      protected var § !>§:Object;
      
      protected var §]!L§:Vector.<String>;
      
      public function §[,§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+4§ = {};
         }
         while(true)
         {
            super();
            while(!_loc1_)
            {
               this.§6!9§ = new §2!f§("packageManager");
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function get §"1§() : §+C§
      {
         return this.§6!9§;
      }
      
      public function get §^!;§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§4c§ == 0);
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(!this.§]!L§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc1_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop5:
                                 while(!_loc2_)
                                 {
                                    §§pop();
                                    if(!(_loc2_ && this))
                                    {
                                       while(true)
                                       {
                                          §§push(this.§]!L§.length == 0);
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
                                 continue loop2;
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.clear();
         }
         do
         {
            this.§6!9§.dispose();
         }
         while(_loc2_ && this);
         
      }
      
      protected function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§="'§)
            {
               loop0:
               while(true)
               {
                  this.§="'§.stop();
                  loop1:
                  while(true)
                  {
                     this.§="'§.removeEventListener(TimerEvent.TIMER,this.§1T§);
                     while(true)
                     {
                        this.§="'§ = null;
                        loop3:
                        for(; !(_loc2_ && _loc2_); while(true)
                        {
                           this.§]!L§ = null;
                           if(!_loc2_)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        },return)
                        {
                           if(_loc2_ && _loc1_)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              this.§ !>§ = null;
                              continue loop3;
                           }
                        }
                     }
                  }
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr59);
         }
         §§goto(addr63);
      }
      
      protected function §#v§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param2 + "/");
         if(_loc4_)
         {
            return §§pop() + param1;
         }
      }
      
      protected function §7Z§(param1:String, param2:String) : §]b§
      {
         return this.§+4§[this.§#v§(param1,param2)] as §]b§;
      }
      
      protected function §1!$§(param1:String, param2:String, param3:§]b§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§+4§[this.§#v§(param1,param2)] = param3;
         }
      }
      
      protected function §5"-§(param1:String, param2:String = null) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param2);
            if(_loc5_)
            {
               if(§§pop() == null)
               {
                  if(_loc5_)
                  {
                     addr26:
                     §§push(this.§"u§);
                     if(_loc5_)
                     {
                        addr31:
                        param2 = §§pop();
                     }
                     §§goto(addr31);
                  }
               }
               var _loc3_:§]b§ = this.§7Z§(param1,param2);
               if(!(_loc4_ && param2))
               {
                  if(!_loc3_)
                  {
                     if(_loc5_)
                     {
                        throw new Error("File " + this.§#v§(param1,param2) + " not found",§9w§.§^!"§);
                     }
                  }
               }
               return _loc3_.§9!y§(false);
            }
            §§goto(addr31);
         }
         §§goto(addr26);
      }
      
      protected function §!!>§(param1:String, param2:String = null) : ByteArray
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §§push(param2);
            if(_loc5_)
            {
               if(§§pop() == null)
               {
               }
               §§goto(addr47);
            }
            param2 = §§pop();
         }
         addr47:
         if(_loc5_)
         {
            §§push(this.§"u§);
            if(_loc5_)
            {
               §§push(§§pop());
            }
         }
         var _loc3_:§]b§ = this.§7Z§(param1,param2);
         if(!_loc4_)
         {
            if(!_loc3_)
            {
               if(_loc5_ || param2)
               {
                  throw new Error("File " + this.§#v§(param1,param2) + " not found",§9w§.§^!"§);
               }
            }
         }
         return _loc3_.content;
      }
      
      protected function §,D§(param1:String, param2:Function) : void
      {
         return §2!Z§.§;P§(this.§!!>§(param1),param2);
      }
      
      public function §,!L§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§]b§ = null;
         if(_loc8_)
         {
            §§push(this.§^!;§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§goto(addr58);
               }
               while(true)
               {
                  §§push(param3);
                  if(!(_loc9_ && param2))
                  {
                     if(§§pop())
                     {
                        while(_loc8_)
                        {
                           this.§+!"§(param1);
                           while(true)
                           {
                           }
                           if(_loc9_ && param3)
                           {
                              continue;
                           }
                           §§goto(addr35);
                        }
                        continue;
                     }
                     while(true)
                     {
                        this.§"u§ = param2;
                        if(!_loc8_)
                        {
                           continue;
                        }
                        §§goto(addr28);
                     }
                     addr35:
                  }
                  continue loop0;
                  if(!_loc8_)
                  {
                     addr58:
                  }
                  if(true)
                  {
                     break;
                  }
                  continue;
                  throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
               }
               var _loc4_:§4!Z§;
               (_loc4_ = new §4!Z§()).loadBytes(param1);
               var _loc5_:Object = {};
               var _loc6_:* = int(_loc4_.§%!1§() - 1);
               loop4:
               while(_loc6_ >= 0)
               {
                  if((_loc7_ = _loc4_.§76§(_loc6_)).§@z§.substr(-1) == "/")
                  {
                     if(!_loc9_)
                     {
                        while(true)
                        {
                           §§push(_loc6_);
                           if(!(_loc9_ && param1))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc6_ = §§pop();
                           if(!(_loc9_ && this))
                           {
                              if(!(_loc9_ && param3))
                              {
                                 if(true)
                                 {
                                    continue loop4;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                 }
                                 addr173:
                              }
                              while(true)
                              {
                                 this.§1!$§(_loc7_.§@z§,this.§"u§,_loc7_);
                              }
                           }
                           addr166:
                           while(true)
                           {
                           }
                        }
                        addr132:
                     }
                     else
                     {
                        addr130:
                     }
                     while(true)
                     {
                        §§goto(addr132);
                        §§goto(addr166);
                     }
                     continue;
                  }
                  if(this.§7Z§(_loc7_.§@z§,this.§"u§))
                  {
                     if(_loc8_ || param2)
                     {
                        _loc5_[_loc7_.§@z§] = this.§7Z§(_loc7_.§@z§,this.§"u§);
                        if(_loc8_)
                        {
                           §§goto(addr130);
                        }
                     }
                     §§goto(addr166);
                  }
                  else
                  {
                     _loc5_[_loc7_.§@z§] = _loc7_;
                  }
                  §§goto(addr173);
               }
               if(!_loc9_)
               {
                  this.§7A§(_loc5_);
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      public function §#!?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.clear();
         }
      }
      
      protected function § !v§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(!(_loc4_ && _loc3_))
            {
               addr35:
               var fileName:String = param1;
            }
            try
            {
               var jsonObject:Object = JSON.parse(this.§5"-§(fileName));
               if(_loc5_ || _loc2_)
               {
                  this.§,!E§(jsonObject);
               }
            }
            catch(e:Error)
            {
               throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§9w§.§'!H§);
            }
            return;
         }
         §§goto(addr35);
      }
      
      protected function initializeFile(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            §§push(param1);
            if(!(_loc4_ && this))
            {
               if(§§pop().search(/^sprite_sheets\/(.*)\.json$/i) != -1)
               {
                  if(!_loc4_)
                  {
                     this.§ !v§(param1);
                     addr44:
                     §§push(param1);
                  }
               }
               §§goto(addr44);
            }
            var _loc2_:Array = §§pop().match(/composites\/data\/(.*)\.xml$/i);
            if(_loc5_ || this)
            {
               if(_loc2_)
               {
                  if(_loc5_ || param1)
                  {
                     this.§";§(param1);
                  }
               }
            }
            _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
            if(!(_loc4_ && _loc2_))
            {
               if(_loc2_)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     addr105:
                     this.§";§(param1);
                  }
               }
               var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
               if(!(_loc4_ && this))
               {
                  if(_loc3_)
                  {
                     if(!_loc4_)
                     {
                        addr137:
                        this.§]!O§(param1);
                     }
                  }
                  return;
               }
               §§goto(addr137);
            }
            §§goto(addr105);
         }
         §§goto(addr44);
      }
      
      protected function §7A§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3+§(param1);
            loop0:
            for(; this.§3!k§(); while(true)
            {
               if(!(_loc2_ || param1))
               {
                  continue loop0;
               }
               this.§="'§ = new Timer(§4! §,0);
               §§goto(addr104);
            })
            {
               while(true)
               {
                  if(!this.§="'§)
                  {
                     continue loop0;
                  }
                  this.§="'§.stop();
                  loop2:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && this))
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     addr73:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr78);
      }
      
      private function §3+§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_)
         {
            this.§]!L§ = new Vector.<String>();
         }
         for(_loc2_ in param1)
         {
            if(_loc5_)
            {
               this.§]!L§.push(_loc2_);
            }
         }
         if(!_loc6_)
         {
            this.§ !>§ = param1;
         }
      }
      
      private function §3!k§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = getTimer();
         while(true)
         {
            §§push(getTimer() - _loc1_);
            §§push(§,!r§);
            if(_loc4_)
            {
               §§push(§§pop() / 2);
            }
            if(§§pop() < §§pop())
            {
               §§push(this.§!h§());
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     break;
                  }
                  continue;
               }
               addr56:
               var _loc2_:* = §§pop();
               if(!(_loc3_ && _loc3_))
               {
                  §§push(this.§^!;§);
                  if(_loc4_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           dispatchEvent(new Event(Event.COMPLETE));
                           addr92:
                           §§push(_loc2_);
                        }
                     }
                     §§goto(addr92);
                  }
                  return §§pop();
               }
               §§goto(addr92);
            }
            break;
         }
         §§goto(addr56);
         §§push(this.§]!L§.length > 0);
      }
      
      private function §!h§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = null;
         if(!_loc3_)
         {
            if(this.§]!L§.length > 0)
            {
               do
               {
                  _loc1_ = this.§]!L§[0];
                  do
                  {
                     this.§]!L§.splice(0,1);
                  }
                  while(!_loc2_);
                  
                  this.initializeFile(_loc1_);
               }
               while(_loc3_ && _loc2_);
               
               §§push(true);
               addr93:
            }
            else
            {
               §§push(false);
               if(!(_loc3_ && _loc2_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr93);
      }
      
      private function §1T§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§3!k§())
            {
               if(_loc3_)
               {
                  if(this.§="'§)
                  {
                     if(_loc3_)
                     {
                        this.§="'§.stop();
                     }
                  }
               }
            }
         }
      }
      
      protected function §]!O§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:XML = new XML(this.§5"-§(param1));
         if(_loc4_)
         {
            §6y§.§@!%§(_loc2_);
         }
      }
      
      protected function §";§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc5_ || this)
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
                        if(_loc5_)
                        {
                           while(true)
                           {
                              §§push(§§newactivation());
                              if(!(_loc5_ || _loc3_))
                              {
                                 break;
                              }
                              if(!_loc6_)
                              {
                                 §§push(this.§"u§);
                                 if(_loc5_ || this)
                                 {
                                    if(_loc6_ && this)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc6_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop());
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§pop().§§slot[2] = §§pop();
                                       if(_loc6_ && this)
                                       {
                                          break loop3;
                                       }
                                       §§push(§§newactivation());
                                       if(_loc6_ && _loc3_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§pop().§§slot[4] = §§pop().substr(0,filePath.length - 3) + "png";
                                 this.§,D§(imagePath,onComplete);
                                 addr174:
                                 if(!_loc5_)
                                 {
                                    §§goto(addr174);
                                 }
                                 break loop1;
                                 addr154:
                              }
                              continue loop2;
                           }
                           addr152:
                           §§goto(addr154);
                           §§push(filePath);
                           addr44:
                        }
                        break;
                     }
                     addr136:
                     §§goto(addr152);
                  }
               }
               break;
            }
            addr150:
            return;
         }
      }
      
      protected function §"J§(param1:§9q§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§6!9§.§^",§(param1);
         }
      }
      
      protected function §,5§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§4c§);
            if(_loc4_ || this)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               _loc1_.§4c§ = _loc2_;
            }
            if(_loc4_ || _loc3_)
            {
               if(this.§^!;§)
               {
                  if(!_loc3_)
                  {
                     addr71:
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
               }
            }
            return;
         }
         §§goto(addr71);
      }
      
      protected function §,!E§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && _loc2_))
         {
            §§pop().§§slot[3] = null;
            if(!_loc5_)
            {
               loop0:
               while(true)
               {
                  §§push(§§newactivation());
                  if(!(_loc5_ && _loc2_))
                  {
                     §§pop().§§slot[1] = param1;
                     if(!_loc5_)
                     {
                        §§push(§§newactivation());
                        if(!_loc5_)
                        {
                           §§pop().§§slot[2] = function(param1:Bitmap):void
                           {
                              §"J§(new spriteSheetClass(dataObject,param1.bitmapData));
                              §,5§();
                           };
                           if(_loc6_ || _loc2_)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              var _loc3_:*;
                              §§push((_loc3_ = this).§4c§);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(!(_loc5_ && param1))
                              {
                                 _loc3_.§4c§ = _loc4_;
                              }
                              if(_loc6_ || _loc2_)
                              {
                                 §§push(§§newactivation());
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop().§§slot[1].image)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(§§newactivation());
                                          break loop0;
                                       }
                                    }
                                    else
                                    {
                                       §§push(§§newactivation());
                                       loop6:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop().§§slot[1].name));
                                          if(_loc6_ || _loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop3:
                                                   for(; _loc6_ || _loc3_; continue loop9)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(!(_loc6_ || _loc3_))
                                                            {
                                                               continue loop5;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop().§§slot[1].charCount));
                                                               if(_loc5_ && _loc2_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push("sprite_sheets/" + dataObject.name);
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           §§push(§§pop() + ".png");
                                                                        }
                                                                        §§pop().§,D§(§§pop(),onComplete);
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                     }
                                                                     addr94:
                                                                     return;
                                                                     addr187:
                                                                  }
                                                                  throw new Error("Invalid sprite sheet data.");
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break loop0;
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop().§§slot[3] = §+1§;
                                                               §§goto(addr187);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr244:
                                                   addr223:
                                                   this.§,D§("sprite_sheets/" + dataObject.image,onComplete);
                                                   §§goto(addr94);
                                                }
                                                addr204:
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr204);
                                       }
                                    }
                                    §§goto(addr244);
                                 }
                                 addr93:
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr212);
                  }
                  break;
               }
               §§pop().§§slot[3] = §"f§;
               §§goto(addr244);
            }
            §§goto(addr93);
         }
         §§goto(addr167);
      }
      
      protected function §+!"§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         if(!_loc5_)
         {
            §§push(this);
            §§push(56895);
            if(!(_loc5_ && _loc3_))
            {
               §§push(25147);
               if(!_loc5_)
               {
                  §§push(§§pop() >> 1);
               }
               §§push(§§pop() & §§pop());
            }
            §§pop().§`!g§ = §§pop();
         }
         do
         {
            _loc2_ = int(Math.min(param1.length,65536) - 1);
         }
         while(!(_loc4_ || param1));
         
         loop1:
         while(true)
         {
            §§push(_loc2_);
            loop2:
            while(true)
            {
               §§push(0);
               if(!_loc5_)
               {
                  if(§§pop() >= §§pop())
                  {
                     param1[_loc2_] -= int(this.§<I§() * 255);
                     while(true)
                     {
                        §§push(_loc2_);
                        loop4:
                        while(true)
                        {
                           §§push(2);
                           if(!_loc5_)
                           {
                              §§push(§§pop() - §§pop());
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr140:
                                 _loc2_ = int(§§pop());
                                 break;
                              }
                              addr215:
                              §§push(int(§§pop()));
                           }
                           else
                           {
                              loop10:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    param1[_loc2_] -= int(this.§<I§() * 255);
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc4_ || _loc2_)
                                       {
                                          if(_loc5_ && this)
                                          {
                                             break;
                                          }
                                          §§push(§§pop() - int(this.§<I§() * 255));
                                          if(!(_loc5_ && param1))
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(int(§§pop()));
                                                if(!_loc5_)
                                                {
                                                   addr56:
                                                   _loc2_ = §§pop();
                                                   if(_loc4_ || this)
                                                   {
                                                      continue;
                                                   }
                                                   addr208:
                                                   addr208:
                                                   §§push(Math.max(param1.length,65536) - 65536);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      continue loop10;
                                                   }
                                                   addr206:
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      _loc2_ = §§pop();
                                                      if(_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            addr203:
                                                            addr216:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr206);
                                                            }
                                                            addr216:
                                                            var _loc3_:* = §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               addr307:
                                                               _loc2_ = int(param1.length - 1);
                                                               addr224:
                                                               addr306:
                                                               addr308:
                                                               §§push(_loc2_);
                                                               if(!_loc5_)
                                                               {
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 param1.inflate();
                                                                                 §§goto(addr255);
                                                                              }
                                                                              §§goto(addr308);
                                                                           }
                                                                           addr255:
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr268:
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 §§goto(addr224);
                                                                              }
                                                                              §§push(_loc2_);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr263:
                                                                                 §§push(§§pop() - 2);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr267:
                                                                                    _loc2_ = int(§§pop());
                                                                                    §§goto(addr268);
                                                                                 }
                                                                                 §§goto(addr306);
                                                                              }
                                                                              §§goto(addr307);
                                                                              addr302:
                                                                           }
                                                                           return;
                                                                        }
                                                                        param1[_loc2_] -= int(this.§<I§() * 255);
                                                                        §§goto(addr302);
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               §§goto(addr267);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         addr77:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr208);
                                                      }
                                                   }
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr140);
                                                addr110:
                                             }
                                             §§goto(addr216);
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr56);
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr208);
                              }
                              addr207:
                           }
                           §§goto(addr216);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr100);
               }
               §§goto(addr207);
            }
         }
      }
      
      protected function §<I§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this);
            §§push(this.§`!g§);
            if(!_loc1_)
            {
               §§push(this.§`!g§);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop() << 21);
               }
               §§push(§§pop() ^ §§pop());
            }
            §§pop().§`!g§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§`!g§);
               if(_loc2_)
               {
                  §§push(§§pop() ^ this.§`!g§ >>> 35);
               }
               §§pop().§`!g§ = §§pop();
               while(true)
               {
                  §§push(this);
                  §§push(this.§`!g§);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§`!g§);
                     if(!_loc1_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§push(§§pop() ^ §§pop());
                  }
                  §§pop().§`!g§ = §§pop();
                  addr104:
                  while(_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§`!g§);
            loop4:
            while(true)
            {
               §§push(0);
               addr51:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        if(_loc2_)
                        {
                           §§push(this);
                           §§push(this.§`!g§);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop() & 2147483647);
                           }
                           §§pop().§`!g§ = §§pop();
                        }
                        else
                        {
                           §§goto(addr104);
                        }
                     }
                  }
                  continue loop4;
               }
            }
         }
      }
   }
}
