package §3"#§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §5!W§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §4!M§:int;
      
      public var §8!W§:Number = 1;
      
      private var §,b§:Vector.<§3![§>;
      
      private var §'!l§:Number;
      
      public function §5!W§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.mName = param1;
            }
            addr94:
         }
         loop1:
         while(true)
         {
            this.§4!M§ = param2;
            loop2:
            while(true)
            {
               this.§8!W§ = param3;
               while(_loc4_)
               {
                  this.§'!l§ = this.§8!W§;
                  while(_loc4_)
                  {
                     continue loop2;
                     this.§,b§ = new Vector.<§3![§>();
                     if(!(_loc5_ && param3))
                     {
                        return;
                     }
                  }
               }
               continue loop1;
            }
         }
      }
      
      public function §`K§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3![§ = null;
         if(!(_loc4_ && _loc3_))
         {
            if(this.§,b§.length < this.§4!M§)
            {
               if(!(_loc4_ && this))
               {
                  return true;
               }
            }
         }
         var _loc1_:* = int(this.§,b§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,b§[_loc1_];
            if(!(_loc4_ && _loc3_))
            {
               if(_loc2_.§3!=§ <= 0)
               {
                  if(_loc4_ && _loc1_)
                  {
                     continue;
                  }
                  addr83:
                  _loc2_.§,v§();
                  if(_loc4_ && this)
                  {
                     continue;
                  }
               }
               §§push(_loc1_);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() - 1);
               }
               _loc1_ = §§pop();
               continue;
            }
            §§goto(addr83);
         }
         return this.§,b§.length < this.§4!M§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §3![§
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
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(param4);
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[4] = §§pop();
                                 loop8:
                                 while(_loc9_ || param3)
                                 {
                                    §§push(§§newactivation());
                                    while(!_loc8_)
                                    {
                                       §§push(param5);
                                       while(true)
                                       {
                                          §§pop().§§slot[5] = §§pop();
                                          addr167:
                                          loop11:
                                          while(!_loc8_)
                                          {
                                             if(!(_loc9_ || this))
                                             {
                                                continue loop5;
                                             }
                                             §§push(§§newactivation());
                                             loop12:
                                             while(true)
                                             {
                                                if(§§pop().§§slot[4] < 0)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      addr147:
                                                      while(_loc9_)
                                                      {
                                                         §§push(this.§'!l§);
                                                         while(_loc9_ || param3)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            while(true)
                                                            {
                                                               §§pop().§§slot[4] = §§pop();
                                                               addr160:
                                                               while(true)
                                                               {
                                                                  addr70:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§§slot[6] = new SoundTransform(volume);
                                                                        addr78:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc8_ && param3)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr146:
                                                }
                                                else
                                                {
                                                   §§push(§§newactivation());
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      continue loop12;
                                                   }
                                                   §§goto(addr147);
                                                }
                                                continue loop4;
                                             }
                                          }
                                          continue loop8;
                                       }
                                       if(!(_loc9_ || param1))
                                       {
                                          continue;
                                       }
                                       if(_loc8_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(volume);
                                       if(_loc9_ || this)
                                       {
                                          if(!_loc8_)
                                          {
                                             §§push(§§pop() * this.§'!l§);
                                             if(_loc9_ || this)
                                             {
                                                addr127:
                                                if(_loc9_)
                                                {
                                                   addr130:
                                                   §§push(Number(§§pop()));
                                                   if(_loc9_)
                                                   {
                                                      §§pop().§§slot[4] = §§pop();
                                                      while(!(_loc8_ && this))
                                                      {
                                                         §§goto(addr70);
                                                         if(_loc8_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc8_ && this))
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr70);
                                                                  }
                                                                  else
                                                                  {
                                                                     try
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc8_ && param3))
                                                                        {
                                                                           §§pop().§§slot[7] = snd.play(startTime,loop,soundTransform);
                                                                           if(_loc9_)
                                                                           {
                                                                              addr273:
                                                                              §§push(§§newactivation());
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(§§pop().§§slot[7] == null)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       return null;
                                                                                    }
                                                                                    addr359:
                                                                                    if(this.§8!W§ == 0)
                                                                                    {
                                                                                       addr332:
                                                                                       §§push(§§newactivation());
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr361:
                                                                                          if(_loc9_ || param2)
                                                                                          {
                                                                                             addr342:
                                                                                             §§pop().§§slot[8].§&`§();
                                                                                             if(_loc9_ || param3)
                                                                                             {
                                                                                                addr303:
                                                                                                this.§,b§.push(sndEffect);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(_loc9_ || param2)
                                                                                                   {
                                                                                                      if(!(_loc8_ && param2))
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop().§§slot[8]);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr354:
                                                                                                                  §§pop().addEventListener(Event.SOUND_COMPLETE,this.§^k§);
                                                                                                                  §§goto(addr359);
                                                                                                               }
                                                                                                               return §§pop();
                                                                                                            }
                                                                                                            §§goto(addr342);
                                                                                                         }
                                                                                                         §§goto(addr332);
                                                                                                      }
                                                                                                      §§goto(addr359);
                                                                                                   }
                                                                                                   §§goto(addr332);
                                                                                                }
                                                                                                §§goto(addr342);
                                                                                                addr350:
                                                                                             }
                                                                                             addr353:
                                                                                             §§goto(addr354);
                                                                                             §§push(sndEffect);
                                                                                             addr387:
                                                                                          }
                                                                                          §§pop().§§slot[8] = new §3![§(sndChannel,sndID,snd.length * (loop + 1));
                                                                                          §§goto(addr387);
                                                                                       }
                                                                                       §§goto(addr353);
                                                                                    }
                                                                                    §§goto(addr303);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                 }
                                                                                 §§goto(addr361);
                                                                              }
                                                                              §§goto(addr353);
                                                                           }
                                                                           §§goto(addr350);
                                                                        }
                                                                        §§goto(addr353);
                                                                     }
                                                                     catch(e:Error)
                                                                     {
                                                                        dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message,e.errorID));
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           var sndChannel:SoundChannel = null;
                                                                        }
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                            §§goto(addr146);
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      continue loop3;
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr151);
                                             }
                                             §§goto(addr130);
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr127);
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §^k§(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§3![§> = null;
         var _loc4_:§3![§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§3![§ = §3![§(param1.currentTarget);
         if(!_loc7_)
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§^k§);
            if(!(_loc7_ && this))
            {
               §§goto(addr56);
            }
            §§goto(addr62);
         }
         addr56:
         if(this.§,b§.indexOf(_loc2_) > -1)
         {
            addr62:
            _loc3_ = this.§,b§.splice(this.§,b§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            if(_loc6_)
            {
               dispatchEvent(_loc5_);
            }
         }
      }
      
      public function §9"%§() : Boolean
      {
         return this.§,b§.length > 0;
      }
      
      public function §'N§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3![§ = null;
         while(this.§,b§.length > 0)
         {
            _loc1_ = this.§,b§[0];
            if(_loc3_ || _loc1_)
            {
               _loc1_.§,v§();
            }
         }
      }
      
      public function §%!?§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§3![§ = null;
         if(!(_loc4_ && this))
         {
            this.§8!W§ = 0;
         }
         for each(_loc1_ in this.§,b§)
         {
            if(_loc5_ || _loc1_)
            {
               _loc1_.§&`§();
            }
         }
      }
      
      public function §`!d§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§3![§ = null;
         if(!(_loc5_ && _loc3_))
         {
            this.§8!W§ = this.§'!l§;
         }
         for each(_loc1_ in this.§,b§)
         {
            if(!(_loc5_ && this))
            {
               _loc1_.§%I§();
            }
         }
      }
      
      public function §<" §(param1:String) : §3![§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§,b§.length)
            {
               if(_loc3_)
               {
                  continue;
               }
               if(!(_loc3_ && _loc3_))
               {
                  if(_loc4_)
                  {
                     return null;
                  }
                  break;
               }
            }
            else if(§3![§(this.§,b§[_loc2_]).id == param1)
            {
               break;
            }
            _loc2_++;
         }
         return §3![§(this.§,b§[_loc2_]);
      }
   }
}
