package §1T§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §3!6§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §;?§:int;
      
      public var §'!7§:Number = 1;
      
      private var §^T§:Vector.<§8!Q§>;
      
      private var §`k§:Number;
      
      public function §3!6§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§;?§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§'!7§ = param3;
                     while(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           this.§`k§ = this.§'!7§;
                           while(!_loc5_)
                           {
                              continue loop2;
                              this.§^T§ = new Vector.<§8!Q§>();
                              if(_loc4_)
                              {
                                 return;
                                 addr32:
                              }
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr32);
      }
      
      public function §^n§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§8!Q§ = null;
         if(_loc3_)
         {
            if(this.§^T§.length < this.§;?§)
            {
               if(!_loc4_)
               {
                  return true;
               }
            }
         }
         var _loc1_:* = int(this.§^T§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§^T§[_loc1_];
            if(_loc3_ || _loc1_)
            {
               if(_loc2_.§1!n§ <= 0)
               {
                  if(!_loc4_)
                  {
                     _loc2_.§>!C§();
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                  }
               }
            }
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() - 1);
            }
            _loc1_ = §§pop();
         }
         return this.§^T§.length < this.§;?§;
      }
      
      public function §3!f§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §8!Q§
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
                     for(; _loc9_; while(_loc9_ || this)
                     {
                        §§goto(addr151);
                        §§push(param5);
                     })
                     {
                        §§pop().§§slot[3] = param3;
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§push(param4);
                              addr163:
                              while(true)
                              {
                                 §§pop().§§slot[4] = §§pop();
                                 addr164:
                                 while(_loc9_)
                                 {
                                    §§push(§§newactivation());
                                    continue loop4;
                                 }
                                 continue loop1;
                              }
                              addr30:
                              if(_loc8_ && this)
                              {
                                 continue;
                              }
                              §§pop().§§slot[7] = null;
                              if(!_loc8_)
                              {
                                 if(_loc9_ || this)
                                 {
                                    if(!_loc9_)
                                    {
                                       continue loop3;
                                    }
                                    if(false)
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          loop15:
                                          while(true)
                                          {
                                             §§pop().§§slot[6] = new SoundTransform(volume);
                                             addr61:
                                             loop16:
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc9_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   if(!_loc8_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         §§goto(addr30);
                                                      }
                                                      else
                                                      {
                                                         addr134:
                                                         while(true)
                                                         {
                                                            §§push(this.§`k§);
                                                            addr136:
                                                            addr151:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            addr151:
                                                            while(true)
                                                            {
                                                               §§pop().§§slot[5] = §§pop();
                                                               continue loop5;
                                                            }
                                                         }
                                                         addr134:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§push(volume);
                                                         if(_loc9_)
                                                         {
                                                            §§push(§§pop() * this.§`k§);
                                                            if(!(_loc8_ && this))
                                                            {
                                                               addr84:
                                                               if(!(_loc8_ && param3))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §§pop().§§slot[4] = §§pop();
                                                                     break loop16;
                                                                  }
                                                                  §§goto(addr151);
                                                               }
                                                               addr137:
                                                            }
                                                            if(!(_loc8_ && param2))
                                                            {
                                                               if(!(_loc9_ || param1))
                                                               {
                                                                  break;
                                                               }
                                                               §§pop().§§slot[4] = §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(_loc8_ && param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  addr126:
                                                                  while(!(_loc8_ && param1))
                                                                  {
                                                                     §§goto(addr134);
                                                                     §§push(§§newactivation());
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               §§goto(addr164);
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr84);
                                                      }
                                                      §§goto(addr163);
                                                      addr68:
                                                   }
                                                   §§goto(addr137);
                                                }
                                                §§goto(addr107);
                                             }
                                             addr140:
                                             while(true)
                                             {
                                                continue loop14;
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                    try
                                    {
                                       §§push(§§newactivation());
                                       if(_loc9_)
                                       {
                                          §§pop().§§slot[7] = snd.play(startTime,loop,soundTransform);
                                          if(_loc9_ || param3)
                                          {
                                             addr338:
                                             addr339:
                                             addr248:
                                             §§push(§§newactivation());
                                             if(_loc9_ || param2)
                                             {
                                                addr256:
                                                if(§§pop().§§slot[7] == null)
                                                {
                                                   if(!(_loc8_ && param3))
                                                   {
                                                      return null;
                                                   }
                                                }
                                                var sndEffect:§8!Q§ = new §8!Q§(sndChannel,sndID,snd.length * (loop + 1));
                                                §§push(§§newactivation());
                                                addr346:
                                                addr372:
                                             }
                                             §§pop().§§slot[8].addEventListener(Event.SOUND_COMPLETE,this.§9" §);
                                             addr344:
                                             if(this.§'!7§ == 0)
                                             {
                                                addr316:
                                                if(!(_loc8_ && this))
                                                {
                                                   addr325:
                                                   §§push(sndEffect);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      §§pop().§;Y§();
                                                      addr333:
                                                      if(_loc9_)
                                                      {
                                                         addr290:
                                                         this.§^T§.push(sndEffect);
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            if(_loc9_ || param3)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc9_ || param1)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(§§pop().§§slot[8]);
                                                                        if(_loc8_)
                                                                        {
                                                                           §§goto(addr325);
                                                                        }
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr346);
                                                                  }
                                                                  §§goto(addr338);
                                                               }
                                                               §§goto(addr325);
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      §§goto(addr372);
                                                   }
                                                   §§goto(addr339);
                                                }
                                                §§goto(addr344);
                                             }
                                             §§goto(addr290);
                                          }
                                          §§goto(addr325);
                                       }
                                       §§goto(addr256);
                                    }
                                    catch(e:Error)
                                    {
                                       dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message,e.errorID));
                                       if(_loc9_)
                                       {
                                          var sndChannel:SoundChannel = null;
                                       }
                                    }
                                    §§goto(addr248);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr61);
                           }
                        }
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      private function §9" §(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§8!Q§> = null;
         var _loc4_:§8!Q§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§8!Q§ = §8!Q§(param1.currentTarget);
         if(!_loc6_)
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§9" §);
            if(!_loc6_)
            {
               if(this.§^T§.indexOf(_loc2_) > -1)
               {
                  addr58:
                  _loc3_ = this.§^T§.splice(this.§^T§.indexOf(_loc2_),1);
                  (_loc4_ = _loc3_[0]).destroy();
                  _loc4_ = null;
                  _loc3_ = null;
                  _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
                  if(!_loc6_)
                  {
                     dispatchEvent(_loc5_);
                  }
               }
               return;
            }
         }
         §§goto(addr58);
      }
      
      public function §,!V§() : Boolean
      {
         return this.§^T§.length > 0;
      }
      
      public function §&j§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§8!Q§ = null;
         while(this.§^T§.length > 0)
         {
            _loc1_ = this.§^T§[0];
            if(!_loc2_)
            {
               _loc1_.§>!C§();
            }
         }
      }
      
      public function §>@§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§8!Q§ = null;
         if(_loc4_ || _loc2_)
         {
            this.§'!7§ = 0;
         }
         for each(_loc1_ in this.§^T§)
         {
            if(!_loc5_)
            {
               _loc1_.§;Y§();
            }
         }
      }
      
      public function §`!C§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§8!Q§ = null;
         if(!(_loc4_ && this))
         {
            this.§'!7§ = this.§`k§;
         }
         for each(_loc1_ in this.§^T§)
         {
            if(_loc5_)
            {
               _loc1_.§>!K§();
            }
         }
      }
      
      public function §6Y§(param1:String) : §8!Q§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§^T§.length)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(!(_loc4_ && _loc2_))
               {
                  return null;
               }
               addr86:
            }
            else if(§8!Q§(this.§^T§[_loc2_]).id == param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               §§goto(addr86);
            }
            _loc2_++;
         }
         return §8!Q§(this.§^T§[_loc2_]);
      }
   }
}
