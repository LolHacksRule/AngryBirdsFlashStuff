package §-!Q§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §^J§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §?[§:int;
      
      public var §+!#§:Number = 1;
      
      private var §7s§:Vector.<§;l§>;
      
      private var §+!Z§:Number;
      
      public function §^J§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            while(true)
            {
               this.mName = param1;
               loop1:
               while(!_loc4_)
               {
                  this.§?[§ = param2;
                  while(true)
                  {
                     this.§+!#§ = param3;
                     addr56:
                     if(!(_loc4_ && param1))
                     {
                        if(!_loc4_)
                        {
                           this.§7s§ = new Vector.<§;l§>();
                           addr65:
                           if(!_loc4_)
                           {
                              return;
                           }
                           loop4:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr56);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§+!Z§ = this.§+!#§;
                                    continue loop4;
                                 }
                                 addr70:
                              }
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function § O§() : Boolean
      {
         return this.§7s§.length < this.§?[§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §;l§
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
               loop2:
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
                        while(!(_loc8_ && param3))
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(_loc9_)
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
                                    for(; _loc9_; loop12:
                                    for(; _loc9_ || this; while(true)
                                    {
                                       if(_loc9_ || this)
                                       {
                                          continue loop0;
                                       }
                                       continue loop12;
                                    },continue loop0)
                                    {
                                       if(§§pop().§§slot[4] < 0)
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             if(!_loc8_)
                                             {
                                                §§push(§§newactivation());
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(this.§+!Z§);
                                                   if(!_loc8_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Number(§§pop()));
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      §§pop().§§slot[4] = §§pop();
                                                      while(!_loc8_)
                                                      {
                                                         do
                                                         {
                                                            §§push(§§newactivation());
                                                            continue loop12;
                                                         }
                                                         while(false);
                                                         
                                                         try
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc9_)
                                                            {
                                                               §§pop().§§slot[7] = snd.play(startTime,loop,soundTransform);
                                                               if(_loc9_)
                                                               {
                                                                  addr216:
                                                                  §§push(§§newactivation());
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr219:
                                                                     if(§§pop().§§slot[7] == null)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           return null;
                                                                        }
                                                                        addr248:
                                                                        this.§7s§.push(sndEffect);
                                                                        addr276:
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(§§pop().§§slot[8]);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(_loc8_ && param1)
                                                                                       {
                                                                                          addr280:
                                                                                          §§pop().addEventListener(Event.SOUND_COMPLETE,this.§^[§);
                                                                                          if(_loc9_ || this)
                                                                                          {
                                                                                             if(this.§+!#§ == 0)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr272:
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      addr275:
                                                                                                      §§pop().§§slot[8].§^!f§();
                                                                                                      §§goto(addr276);
                                                                                                   }
                                                                                                   addr279:
                                                                                                   §§goto(addr280);
                                                                                                   §§push(§§pop().§§slot[8]);
                                                                                                }
                                                                                                §§goto(addr276);
                                                                                             }
                                                                                             §§goto(addr248);
                                                                                          }
                                                                                          §§goto(addr279);
                                                                                          §§push(§§newactivation());
                                                                                          addr312:
                                                                                       }
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr275);
                                                                                 }
                                                                                 addr304:
                                                                                 §§pop().§§slot[8] = new §;l§(sndChannel,sndID);
                                                                                 §§goto(addr312);
                                                                              }
                                                                              §§goto(addr272);
                                                                           }
                                                                           §§goto(addr280);
                                                                        }
                                                                        §§goto(addr248);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§§newactivation());
                                                                     }
                                                                  }
                                                                  §§goto(addr304);
                                                               }
                                                               §§goto(addr248);
                                                            }
                                                         }
                                                         catch(e:Error)
                                                         {
                                                            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message,e.errorID));
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               var sndChannel:SoundChannel = null;
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         §§goto(addr219);
                                                         while(!(_loc8_ && param1))
                                                         {
                                                            if(!(_loc8_ && this))
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc9_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop12;
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      addr111:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr119);
                                                   }
                                                   §§goto(addr120);
                                                }
                                                continue loop7;
                                             }
                                             continue loop8;
                                          }
                                          §§goto(addr111);
                                       }
                                       §§goto(addr42);
                                    })
                                    {
                                       §§push(param5);
                                       while(true)
                                       {
                                          §§pop().§§slot[5] = §§pop();
                                          addr120:
                                          while(_loc9_)
                                          {
                                             §§push(§§newactivation());
                                             continue loop9;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              if(!(_loc9_ || param2))
                              {
                                 continue;
                              }
                              §§pop().§§slot[7] = null;
                              if(!_loc9_)
                              {
                                 §§goto(addr64);
                              }
                              §§goto(addr40);
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
               }
            }
            if(!(_loc9_ || param2))
            {
               continue;
            }
            §§pop().§§slot[6] = new SoundTransform(volume);
            §§goto(addr64);
         }
      }
      
      private function §^[§(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§;l§> = null;
         var _loc4_:§;l§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§;l§ = §;l§(param1.currentTarget);
         if(!(_loc6_ && _loc3_))
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§^[§);
            if(_loc7_)
            {
               §§goto(addr47);
            }
            §§goto(addr63);
         }
         addr47:
         if(this.§7s§.indexOf(_loc2_) > -1)
         {
            addr63:
            _loc3_ = this.§7s§.splice(this.§7s§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§;@§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            if(_loc7_ || param1)
            {
               dispatchEvent(_loc5_);
            }
         }
      }
      
      public function §`!N§() : Boolean
      {
         return this.§7s§.length > 0;
      }
      
      public function §13§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§;l§ = null;
         while(this.§7s§.length > 0)
         {
            _loc1_ = this.§7s§[0];
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.stop();
               if(!_loc3_)
               {
                  continue;
               }
            }
            _loc1_.§8!K§();
         }
      }
      
      public function §`j§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§;l§ = null;
         if(_loc4_)
         {
            this.§+!#§ = 0;
         }
         for each(_loc1_ in this.§7s§)
         {
            if(!_loc5_)
            {
               _loc1_.§^!f§();
            }
         }
      }
      
      public function §2!^§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;l§ = null;
         if(_loc5_ || _loc2_)
         {
            this.§+!#§ = this.§+!Z§;
         }
         for each(_loc1_ in this.§7s§)
         {
            if(_loc5_)
            {
               _loc1_.§2!?§();
            }
         }
      }
      
      public function § !I§(param1:String) : §;l§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§7s§.length)
            {
               if(!(_loc4_ && _loc2_))
               {
                  return null;
               }
               loop2:
               while(!(_loc3_ || _loc3_))
               {
                  while(true)
                  {
                     continue loop2;
                  }
               }
               continue;
               addr48:
            }
            else if(§;l§(this.§7s§[_loc2_]).id == param1)
            {
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr86);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr48);
            }
         }
         return §;l§(this.§7s§[_loc2_]);
      }
   }
}
