package §6!B§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7M§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §#"B§:int;
      
      public var §4a§:Number = 1;
      
      private var §;C§:Vector.<§,!p§>;
      
      private var §"!;§:Number;
      
      public function §7M§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
            while(true)
            {
               this.mName = param1;
               loop1:
               while(_loc4_)
               {
                  this.§#"B§ = param2;
                  while(true)
                  {
                     this.§4a§ = param3;
                     loop3:
                     while(!(_loc5_ && param2))
                     {
                        if(_loc4_)
                        {
                           while(true)
                           {
                              this.§"!;§ = this.§4a§;
                              do
                              {
                                 this.§;C§ = new Vector.<§,!p§>();
                              }
                              while(_loc5_ && this);
                              
                              if(!_loc5_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §&!m§() : Boolean
      {
         return this.§;C§.length < this.§#"B§;
      }
      
      public function §7N§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §,!p§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
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
                  addr160:
                  while(true)
                  {
                     §§push(§§newactivation());
                     addr151:
                     while(true)
                     {
                        §§pop().§§slot[3] = param3;
                        addr153:
                        while(!_loc9_)
                        {
                           §§push(§§newactivation());
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
                  addr79:
                  if(_loc9_ && this)
                  {
                     continue;
                  }
                  if(§§pop().§§slot[4] < 0)
                  {
                     loop13:
                     while(_loc8_ || param3)
                     {
                        §§push(§§newactivation());
                        loop14:
                        while(!(_loc9_ && param3))
                        {
                           §§push(this.§"!;§);
                           if(!(_loc9_ && this))
                           {
                              if(!_loc9_)
                              {
                                 addr116:
                                 §§push(Number(§§pop()));
                                 if(!(_loc9_ && param2))
                                 {
                                    §§pop().§§slot[4] = §§pop();
                                    loop15:
                                    for(; !(_loc9_ && param2); for(; !(_loc9_ && param1); §§pop().§§slot[7] = null,if(!(_loc8_ || this))
                                    {
                                       continue;
                                    },§§goto(addr37))
                                    {
                                       if(_loc9_)
                                       {
                                          continue loop13;
                                       }
                                       if(_loc8_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc8_)
                                          {
                                             if(!_loc9_)
                                             {
                                                continue;
                                             }
                                             continue loop14;
                                          }
                                          §§goto(addr48);
                                       }
                                       §§goto(addr136);
                                    })
                                    {
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          addr48:
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                                §§pop().§§slot[6] = new SoundTransform(volume);
                                                continue loop15;
                                             }
                                             loop12:
                                             while(true)
                                             {
                                                if(_loc8_ || param2)
                                                {
                                                   §§goto(addr79);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param5);
                                                      addr135:
                                                      while(true)
                                                      {
                                                         §§pop().§§slot[5] = §§pop();
                                                         addr136:
                                                         while(true)
                                                         {
                                                            continue loop12;
                                                         }
                                                      }
                                                      continue loop12;
                                                   }
                                                   addr134:
                                                }
                                             }
                                             continue loop2;
                                          }
                                          addr37:
                                          §§goto(addr151);
                                          if(!(_loc8_ || this))
                                          {
                                             break;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          try
                                          {
                                             §§push(§§newactivation());
                                             if(!_loc9_)
                                             {
                                                §§pop().§§slot[7] = snd.play(startTime,loop,soundTransform);
                                                if(_loc8_ || param1)
                                                {
                                                   addr235:
                                                   §§push(§§newactivation());
                                                   if(!(_loc9_ && this))
                                                   {
                                                      if(§§pop().§§slot[7] == null)
                                                      {
                                                         if(_loc8_ || param3)
                                                         {
                                                            return null;
                                                         }
                                                         addr310:
                                                         §§push(§§newactivation());
                                                         if(_loc8_ || param3)
                                                         {
                                                            addr329:
                                                            §§pop().§§slot[8].§@^§();
                                                            addr282:
                                                            this.§;C§.push(sndEffect);
                                                            addr330:
                                                            if(_loc8_ || this)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr269:
                                                                        §§push(§§pop().§§slot[8]);
                                                                        if(_loc8_ || param3)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr334:
                                                                              §§pop().addEventListener(Event.SOUND_COMPLETE,this.§3!m§);
                                                                              addr339:
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(this.§4a§ == 0)
                                                                                 {
                                                                                    if(!(_loc9_ && param3))
                                                                                    {
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                    §§goto(addr330);
                                                                                 }
                                                                                 §§goto(addr282);
                                                                              }
                                                                              §§goto(addr334);
                                                                              §§push(sndEffect);
                                                                              addr351:
                                                                           }
                                                                           return §§pop();
                                                                        }
                                                                        §§goto(addr329);
                                                                     }
                                                                     §§goto(addr334);
                                                                  }
                                                                  §§goto(addr310);
                                                               }
                                                               §§goto(addr339);
                                                            }
                                                            §§goto(addr329);
                                                            addr328:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(§§newactivation());
                                                      }
                                                      §§pop().§§slot[8] = new §,!p§(sndChannel,sndID);
                                                      §§goto(addr351);
                                                   }
                                                   §§goto(addr328);
                                                }
                                                §§goto(addr329);
                                             }
                                          }
                                          catch(e:Error)
                                          {
                                             dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message,e.errorID));
                                             if(_loc8_ || param1)
                                             {
                                                var sndChannel:SoundChannel = null;
                                             }
                                             §§goto(addr235);
                                          }
                                          §§goto(addr269);
                                       }
                                       §§goto(addr153);
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§pop().§§slot[4] = §§pop();
                                       §§goto(addr116);
                                    }
                                    addr147:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr134);
                                 }
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr116);
                        }
                        continue loop0;
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr46);
               }
            }
         }
      }
      
      private function §3!m§(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§,!p§> = null;
         var _loc4_:§,!p§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§,!p§ = §,!p§(param1.currentTarget);
         if(_loc7_)
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§3!m§);
            if(_loc7_)
            {
               if(this.§;C§.indexOf(_loc2_) > -1)
               {
                  addr58:
                  _loc3_ = this.§;C§.splice(this.§;C§.indexOf(_loc2_),1);
                  (_loc4_ = _loc3_[0]).destroy();
                  _loc4_ = null;
                  _loc3_ = null;
                  _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
                  if(!(_loc6_ && this))
                  {
                     dispatchEvent(_loc5_);
                  }
               }
               return;
            }
         }
         §§goto(addr58);
      }
      
      public function §5%§() : Boolean
      {
         return this.§;C§.length > 0;
      }
      
      public function §&!^§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§,!p§ = null;
         while(this.§;C§.length > 0)
         {
            _loc1_ = this.§;C§[0];
            if(!_loc3_)
            {
               _loc1_.stop();
               if(!_loc2_)
               {
                  continue;
               }
            }
            _loc1_.§9!S§();
         }
      }
      
      public function §'Y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§,!p§ = null;
         if(_loc4_ || _loc1_)
         {
            this.§4a§ = 0;
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§;C§)
         {
            if(_loc4_ || _loc2_)
            {
               _loc1_.§@^§();
            }
         }
      }
      
      public function §?t§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,!p§ = null;
         if(_loc5_)
         {
            this.§4a§ = this.§"!;§;
         }
         for each(_loc1_ in this.§;C§)
         {
            if(_loc5_ || this)
            {
               _loc1_.§3!<§();
            }
         }
      }
      
      public function §?"+§(param1:String) : §,!p§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§;C§.length)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(!(_loc4_ && param1))
               {
                  return null;
               }
            }
            else if(§,!p§(this.§;C§[_loc2_]).id == param1)
            {
               break;
            }
            _loc2_++;
         }
         while(_loc3_ || this);
         
         return §,!p§(this.§;C§[_loc2_]);
      }
   }
}
