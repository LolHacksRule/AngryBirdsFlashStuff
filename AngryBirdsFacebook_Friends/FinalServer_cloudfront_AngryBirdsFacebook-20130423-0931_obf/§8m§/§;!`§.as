package §8m§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §;!`§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var § y§:int;
      
      public var §3N§:Number = 1;
      
      private var §`"!§:Vector.<§7!>§>;
      
      private var §2q§:Number;
      
      public function §;!`§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§ y§ = param2;
                  while(true)
                  {
                     this.§3N§ = param3;
                     loop3:
                     while(!_loc5_)
                     {
                        this.§2q§ = this.§3N§;
                        loop4:
                        while(!_loc5_)
                        {
                           while(true)
                           {
                              this.§`"!§ = new Vector.<§7!>§>();
                              if(_loc4_ || param3)
                              {
                                 if(_loc5_ && this)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr71);
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §5[§() : Boolean
      {
         return this.§`"!§.length < this.§ y§;
      }
      
      public function §3"C§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §7!>§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[3] = param3;
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§push(param4);
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
                                       §§push(param5);
                                       loop10:
                                       while(true)
                                       {
                                          §§pop().§§slot[5] = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             if(!_loc8_)
                                             {
                                                continue loop9;
                                             }
                                             addr99:
                                             loop16:
                                             while(true)
                                             {
                                                §§push(this.§2q§);
                                                if(_loc9_)
                                                {
                                                   if(!(_loc9_ || this))
                                                   {
                                                      break;
                                                   }
                                                   §§push(Number(§§pop()));
                                                }
                                                if(!(_loc8_ && param2))
                                                {
                                                   §§pop().§§slot[4] = §§pop();
                                                   loop12:
                                                   while(_loc9_)
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§pop().§§slot[6] = new SoundTransform(volume);
                                                            while(true)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§push(§§newactivation());
                                                               if(!(_loc9_ || param3))
                                                               {
                                                                  continue loop14;
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  continue loop16;
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§pop().§§slot[7] = null;
                                                               if(_loc8_ && param2)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc8_ && param3)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  break loop13;
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               if(false)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               try
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     §§pop().§§slot[7] = snd.play(startTime,loop,soundTransform);
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr216:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           if(§§pop().§§slot[7] == null)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 return null;
                                                                              }
                                                                              addr317:
                                                                              if(this.§3N§ == 0)
                                                                              {
                                                                                 addr277:
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr280:
                                                                                    §§push(§§newactivation());
                                                                                    if(!(_loc8_ && this))
                                                                                    {
                                                                                       addr298:
                                                                                       §§pop().§§slot[8].§["?§();
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr251:
                                                                                          this.§`"!§.push(sndEffect);
                                                                                          if(_loc9_ || this)
                                                                                          {
                                                                                             if(_loc9_ || param3)
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§push(§§pop().§§slot[8]);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(!(_loc9_ || this))
                                                                                                      {
                                                                                                         addr312:
                                                                                                         §§pop().addEventListener(Event.SOUND_COMPLETE,this.§4s§);
                                                                                                         §§goto(addr317);
                                                                                                      }
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   §§goto(addr298);
                                                                                                }
                                                                                                §§goto(addr280);
                                                                                             }
                                                                                             §§goto(addr277);
                                                                                          }
                                                                                          §§goto(addr298);
                                                                                       }
                                                                                       §§goto(addr317);
                                                                                       addr287:
                                                                                    }
                                                                                    addr304:
                                                                                    addr319:
                                                                                    if(_loc9_ || param3)
                                                                                    {
                                                                                       addr311:
                                                                                       §§goto(addr312);
                                                                                       §§push(§§pop().§§slot[8]);
                                                                                    }
                                                                                    §§pop().§§slot[8] = new §7!>§(sndChannel,sndID);
                                                                                    §§goto(addr304);
                                                                                    §§push(§§newactivation());
                                                                                    addr327:
                                                                                 }
                                                                                 §§goto(addr327);
                                                                              }
                                                                              §§goto(addr251);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§§newactivation());
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        §§goto(addr287);
                                                                     }
                                                                     §§goto(addr304);
                                                                  }
                                                               }
                                                               catch(e:Error)
                                                               {
                                                                  dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message,e.errorID));
                                                                  if(_loc9_ || param3)
                                                                  {
                                                                     var sndChannel:SoundChannel = null;
                                                                  }
                                                                  §§goto(addr216);
                                                               }
                                                               §§goto(addr311);
                                                            }
                                                            continue loop12;
                                                         }
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop5;
                                                   addr119:
                                                }
                                                continue loop7;
                                             }
                                             continue loop10;
                                          }
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc8_ && param3)
                  {
                     continue;
                  }
                  if(_loc8_)
                  {
                     continue loop0;
                  }
                  if(§§pop().§§slot[4] < 0)
                  {
                     if(_loc9_)
                     {
                        §§goto(addr99);
                        §§push(§§newactivation());
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr60);
               }
            }
         }
      }
      
      private function §4s§(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§7!>§> = null;
         var _loc4_:§7!>§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§7!>§ = §7!>§(param1.currentTarget);
         if(_loc7_)
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§4s§);
            if(_loc7_)
            {
               §§goto(addr52);
            }
            §§goto(addr58);
         }
         addr52:
         if(this.§`"!§.indexOf(_loc2_) > -1)
         {
            addr58:
            _loc3_ = this.§`"!§.splice(this.§`"!§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            if(_loc7_ || this)
            {
               dispatchEvent(_loc5_);
            }
         }
      }
      
      public function §6",§() : Boolean
      {
         return this.§`"!§.length > 0;
      }
      
      public function §3!s§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§7!>§ = null;
         while(this.§`"!§.length > 0)
         {
            _loc1_ = this.§`"!§[0];
            if(_loc3_)
            {
               _loc1_.stop();
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.§7s§();
               }
            }
         }
      }
      
      public function §#!z§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§7!>§ = null;
         if(_loc4_ || _loc1_)
         {
            this.§3N§ = 0;
         }
         for each(_loc1_ in this.§`"!§)
         {
            if(_loc4_ || this)
            {
               _loc1_.§["?§();
            }
         }
      }
      
      public function §^!s§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§7!>§ = null;
         if(_loc5_ || _loc3_)
         {
            this.§3N§ = this.§2q§;
         }
         var _loc3_:* = this.§`"!§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.§2!!§();
            }
         }
      }
      
      public function § "?§(param1:String) : §7!>§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§`"!§.length)
            {
               if(!(_loc3_ && this))
               {
                  return null;
               }
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(§7!>§(this.§`"!§[_loc2_]).id == param1)
            {
               break;
            }
            §§goto(addr57);
         }
         while(_loc4_);
         
         return §7!>§(this.§`"!§[_loc2_]);
      }
   }
}
