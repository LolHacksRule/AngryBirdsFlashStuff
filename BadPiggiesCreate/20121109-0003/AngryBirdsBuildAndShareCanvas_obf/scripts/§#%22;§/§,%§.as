package §#";§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §,%§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §2"?§:int;
      
      public var §[+§:Number = 1;
      
      private var §`w§:Vector.<§8V§>;
      
      private var §<!Q§:Number;
      
      public function §,%§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               loop1:
               for(; !(_loc4_ && param1); if(_loc4_ && this)
               {
                  continue;
               },§§goto(addr57))
               {
                  this.§2"?§ = param2;
                  while(true)
                  {
                     this.§[+§ = param3;
                     loop3:
                     while(!(_loc4_ && this))
                     {
                        this.§<!Q§ = this.§[+§;
                        while(true)
                        {
                           this.§`w§ = new Vector.<§8V§>();
                           if(_loc5_ || this)
                           {
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §+!k§() : Boolean
      {
         return this.§`w§.length < this.§2"?§;
      }
      
      public function §9"2§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §8V§
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
                  loop3:
                  while(_loc8_)
                  {
                     §§push(§§newactivation());
                     while(!_loc9_)
                     {
                        §§pop().§§slot[3] = param3;
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§push(param4);
                              addr138:
                              while(true)
                              {
                                 §§pop().§§slot[4] = §§pop();
                                 addr139:
                                 while(_loc8_ || this)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(param5);
                                       addr133:
                                       while(true)
                                       {
                                          §§pop().§§slot[5] = §§pop();
                                          addr134:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                              if(_loc9_ && param2)
                              {
                                 continue;
                              }
                              addr44:
                              §§pop().§§slot[7] = null;
                              if(_loc8_ || param2)
                              {
                                 if(!_loc9_)
                                 {
                                    if(false)
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          loop16:
                                          while(true)
                                          {
                                             if(!(_loc9_ && this))
                                             {
                                                §§pop().§§slot[6] = new SoundTransform(volume);
                                                while(true)
                                                {
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§newactivation());
                                                      if(!(_loc8_ || this))
                                                      {
                                                         continue loop16;
                                                      }
                                                      §§goto(addr30);
                                                   }
                                                   §§goto(addr134);
                                                   §§goto(addr44);
                                                }
                                                continue loop5;
                                                addr73:
                                             }
                                             else
                                             {
                                                addr107:
                                             }
                                             while(_loc8_)
                                             {
                                                §§push(this.§<!Q§);
                                                if(!_loc9_)
                                                {
                                                   if(!(_loc9_ && this))
                                                   {
                                                      addr121:
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         §§pop().§§slot[4] = §§pop();
                                                         break loop16;
                                                      }
                                                      §§goto(addr133);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr138);
                                                   }
                                                }
                                                §§goto(addr121);
                                                continue loop16;
                                             }
                                             continue loop0;
                                             §§goto(addr133);
                                          }
                                          addr129:
                                          while(true)
                                          {
                                             continue loop15;
                                          }
                                       }
                                       addr58:
                                    }
                                    try
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc9_)
                                       {
                                          §§pop().§§slot[7] = snd.play(startTime,loop,soundTransform);
                                          if(_loc8_)
                                          {
                                             addr230:
                                             §§push(§§newactivation());
                                             if(_loc8_ || param2)
                                             {
                                                addr238:
                                                if(§§pop().§§slot[7] == null)
                                                {
                                                   if(!(_loc9_ && param3))
                                                   {
                                                      return null;
                                                   }
                                                   addr341:
                                                   if(this.§[+§ == 0)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         addr316:
                                                         §§push(§§newactivation());
                                                         if(!(_loc9_ && param3))
                                                         {
                                                            addr324:
                                                            §§push(§§pop().§§slot[8]);
                                                            if(!(_loc9_ && this))
                                                            {
                                                               §§pop().§`§();
                                                               addr285:
                                                               this.§`w§.push(sndEffect);
                                                               addr332:
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc9_ && param3))
                                                                        {
                                                                           if(_loc8_ || param3)
                                                                           {
                                                                              §§push(§§pop().§§slot[8]);
                                                                              if(!(_loc8_ || this))
                                                                              {
                                                                                 §§goto(addr324);
                                                                              }
                                                                              return §§pop();
                                                                           }
                                                                           addr353:
                                                                           §§pop().§§slot[8] = new §8V§(sndChannel,sndID);
                                                                           addr336:
                                                                           sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§&!o§);
                                                                           §§goto(addr341);
                                                                           addr361:
                                                                        }
                                                                        §§goto(addr316);
                                                                     }
                                                                     §§goto(addr361);
                                                                  }
                                                                  §§goto(addr341);
                                                               }
                                                               addr332:
                                                               §§goto(addr332);
                                                            }
                                                         }
                                                         §§goto(addr336);
                                                      }
                                                      §§goto(addr332);
                                                   }
                                                   §§goto(addr285);
                                                }
                                                else
                                                {
                                                   §§push(§§newactivation());
                                                }
                                             }
                                             §§goto(addr353);
                                          }
                                          §§goto(addr341);
                                       }
                                       §§goto(addr238);
                                    }
                                    catch(e:Error)
                                    {
                                       dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message,e.errorID));
                                       if(_loc8_ || param3)
                                       {
                                          var sndChannel:SoundChannel = null;
                                       }
                                    }
                                    §§goto(addr230);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr73);
                           }
                        }
                        if(!(_loc8_ || param3))
                        {
                           continue;
                        }
                        if(§§pop().§§slot[4] < 0)
                        {
                           if(!_loc9_)
                           {
                              if(_loc8_)
                              {
                                 §§goto(addr107);
                                 §§push(§§newactivation());
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr58);
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      private function §&!o§(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§8V§> = null;
         var _loc4_:§8V§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§8V§ = §8V§(param1.currentTarget);
         if(_loc6_ || _loc2_)
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§&!o§);
            if(!_loc7_)
            {
               if(this.§`w§.indexOf(_loc2_) > -1)
               {
                  addr62:
                  _loc3_ = this.§`w§.splice(this.§`w§.indexOf(_loc2_),1);
                  (_loc4_ = _loc3_[0]).destroy();
                  _loc4_ = null;
                  _loc3_ = null;
                  _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
                  if(!(_loc7_ && this))
                  {
                     dispatchEvent(_loc5_);
                  }
               }
               return;
            }
         }
         §§goto(addr62);
      }
      
      public function §4C§() : Boolean
      {
         return this.§`w§.length > 0;
      }
      
      public function §4"#§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§8V§ = null;
         while(this.§`w§.length > 0)
         {
            _loc1_ = this.§`w§[0];
            if(!_loc2_)
            {
               _loc1_.stop();
               if(!(_loc2_ && this))
               {
                  _loc1_.§"",§();
               }
            }
         }
      }
      
      public function §"g§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§8V§ = null;
         if(_loc4_ || _loc2_)
         {
            this.§[+§ = 0;
         }
         for each(_loc1_ in this.§`w§)
         {
            if(_loc4_ || this)
            {
               _loc1_.§`§();
            }
         }
      }
      
      public function §=x§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§8V§ = null;
         if(!(_loc5_ && _loc3_))
         {
            this.§[+§ = this.§<!Q§;
         }
         for each(_loc1_ in this.§`w§)
         {
            if(!_loc5_)
            {
               _loc1_.§5!t§();
            }
         }
      }
      
      public function §<!j§(param1:String) : §8V§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§`w§.length)
            {
               if(!_loc3_)
               {
                  break;
               }
               loop2:
               while(!(_loc4_ || param1))
               {
                  while(true)
                  {
                     continue loop2;
                  }
               }
               continue;
               addr44:
            }
            else if(§8V§(this.§`w§[_loc2_]).id == param1)
            {
               if(!_loc3_)
               {
                  return §8V§(this.§`w§[_loc2_]);
               }
               §§goto(addr82);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr44);
            }
         }
         return null;
      }
   }
}
