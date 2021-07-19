package §&^§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §-!F§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §@j§:int;
      
      public var §;!6§:Number = 1;
      
      private var §4!3§:Vector.<§&r§>;
      
      private var §1!<§:Number;
      
      public function §-!F§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            this.mName = param1;
            this.§@j§ = param2;
            this.§;!6§ = param3;
            while(true)
            {
               this.§1!<§ = this.§;!6§;
               while(_loc5_ || param1)
               {
                  this.§4!3§ = new Vector.<§&r§>();
                  if(!(_loc5_ || param1))
                  {
                     continue;
                  }
                  return;
                  addr58:
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §^P§() : Boolean
      {
         return this.§4!3§.length < this.§@j§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §&r§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var snd:Sound = param1;
         loop0:
         while(true)
         {
            §§push(§§newactivation());
            loop1:
            while(true)
            {
               §§pop().§§slot[2] = param2;
               var loop:int = param3;
               §§push(§§newactivation());
               while(true)
               {
                  §§push(param4);
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[4] = §§pop();
                     §§push(§§newactivation());
                     if(!(_loc8_ || param2))
                     {
                        break;
                     }
                     §§push(param5);
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[5] = §§pop();
                        if(volume >= 0)
                        {
                           break;
                        }
                        §§push(§§newactivation());
                        addr65:
                        §§push(this.§1!<§);
                        continue loop0;
                        if(!_loc9_)
                        {
                           §§push(Number(§§pop()));
                        }
                        if(!(_loc8_ || param3))
                        {
                           continue;
                        }
                        if(!(_loc8_ || param3))
                        {
                           continue loop3;
                        }
                        §§pop().§§slot[4] = §§pop();
                        while(true)
                        {
                           break loop4;
                        }
                        addr86:
                     }
                     loop5:
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(_loc9_)
                        {
                           break;
                        }
                        §§pop().§§slot[6] = new SoundTransform(volume);
                        while(_loc8_ || param3)
                        {
                           var sndChannel:SoundChannel = null;
                           if(_loc9_ && param2)
                           {
                              continue;
                           }
                           if(false)
                           {
                              continue loop5;
                           }
                           try
                           {
                              §§push(§§newactivation());
                              if(_loc8_)
                              {
                                 §§pop().§§slot[7] = snd.play(startTime,loop,soundTransform);
                                 if(_loc8_ || this)
                                 {
                                    addr183:
                                    §§push(§§newactivation());
                                    if(!_loc9_)
                                    {
                                       if(§§pop().§§slot[7] == null)
                                       {
                                          return null;
                                       }
                                       addr282:
                                       var sndEffect:§&r§ = new §&r§(sndChannel,sndID);
                                       addr290:
                                       §§push(§§newactivation());
                                       if(_loc8_ || param1)
                                       {
                                          addr275:
                                          §§pop().§§slot[8].addEventListener(Event.SOUND_COMPLETE,this.§48§);
                                          addr280:
                                          if(this.§;!6§ == 0)
                                          {
                                             addr240:
                                             if(!_loc9_)
                                             {
                                                addr243:
                                                §§push(§§newactivation());
                                                if(_loc8_)
                                                {
                                                   addr246:
                                                   §§pop().§§slot[8].§<3§();
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      addr221:
                                                      this.§4!3§.push(sndEffect);
                                                      if(_loc8_ || param3)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc9_ && this))
                                                         {
                                                            §§push(§§pop().§§slot[8]);
                                                            if(_loc8_ || this)
                                                            {
                                                               if(!(_loc8_ || param2))
                                                               {
                                                                  §§goto(addr275);
                                                               }
                                                               return §§pop();
                                                            }
                                                            §§goto(addr246);
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                      §§goto(addr240);
                                                   }
                                                }
                                                §§goto(addr290);
                                             }
                                             §§goto(addr280);
                                          }
                                          §§goto(addr221);
                                          addr274:
                                       }
                                       §§goto(addr282);
                                    }
                                    §§goto(addr274);
                                 }
                                 §§goto(addr275);
                              }
                           }
                           catch(e:Error)
                           {
                              dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message,e.errorID));
                              if(_loc8_)
                              {
                                 sndChannel = null;
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr275);
                        }
                        §§goto(addr86);
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §48§(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§&r§> = null;
         var _loc4_:§&r§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§&r§ = §&r§(param1.currentTarget);
         if(_loc7_ || _loc2_)
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§48§);
            if(!_loc6_)
            {
               if(this.§4!3§.indexOf(_loc2_) > -1)
               {
                  addr63:
                  _loc3_ = this.§4!3§.splice(this.§4!3§.indexOf(_loc2_),1);
                  (_loc4_ = _loc3_[0]).destroy();
                  _loc4_ = null;
                  _loc3_ = null;
                  _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
                  if(_loc7_)
                  {
                     dispatchEvent(_loc5_);
                  }
               }
               return;
            }
         }
         §§goto(addr63);
      }
      
      public function §+c§() : Boolean
      {
         return this.§4!3§.length > 0;
      }
      
      public function §=0§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§&r§ = null;
         while(this.§4!3§.length > 0)
         {
            _loc1_ = this.§4!3§[0];
            if(!_loc2_)
            {
               _loc1_.stop();
               if(_loc2_)
               {
                  continue;
               }
            }
            _loc1_.§-u§();
         }
      }
      
      public function §&g§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§&r§ = null;
         if(_loc5_ || _loc3_)
         {
            this.§;!6§ = 0;
         }
         for each(_loc1_ in this.§4!3§)
         {
            if(!_loc4_)
            {
               _loc1_.§<3§();
            }
         }
      }
      
      public function §=@§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§&r§ = null;
         if(_loc5_ || _loc3_)
         {
            this.§;!6§ = this.§1!<§;
         }
         for each(_loc1_ in this.§4!3§)
         {
            if(_loc5_ || this)
            {
               _loc1_.§<!3§();
            }
         }
      }
      
      public function §0w§(param1:String) : §&r§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§4!3§.length)
            {
               if(_loc3_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     return null;
                  }
                  break;
               }
            }
            else if(§&r§(this.§4!3§[_loc2_]).id == param1)
            {
               break;
            }
            _loc2_++;
         }
         return §&r§(this.§4!3§[_loc2_]);
      }
   }
}
