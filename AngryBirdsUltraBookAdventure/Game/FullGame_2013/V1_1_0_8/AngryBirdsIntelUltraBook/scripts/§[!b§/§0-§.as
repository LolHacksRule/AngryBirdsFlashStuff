package §[!b§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §0-§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §+g§:int;
      
      public var §'9§:Number = 1;
      
      private var §,!9§:Vector.<§,!W§>;
      
      private var §]!h§:Number;
      
      public function §0-§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super();
            while(true)
            {
               this.mName = param1;
               while(!_loc5_)
               {
                  this.§+g§ = param2;
                  loop4:
                  while(_loc4_ || param3)
                  {
                     this.§,!9§ = new Vector.<§,!W§>();
                     if(_loc5_ && param1)
                     {
                        continue;
                     }
                     addr52:
                     if(!(_loc5_ && this))
                     {
                        addr59:
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              this.§'9§ = param3;
                              addr89:
                              while(true)
                              {
                                 this.§]!h§ = this.§'9§;
                                 continue loop4;
                                 §§goto(addr52);
                              }
                              §§goto(addr59);
                           }
                           addr94:
                        }
                        return;
                     }
                     §§goto(addr89);
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §@m§() : Boolean
      {
         return this.§,!9§.length < this.§+g§;
      }
      
      public function §#3§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §,!W§
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
                                 while(_loc8_)
                                 {
                                    if(_loc8_ || param2)
                                    {
                                       §§push(§§newactivation());
                                       loop9:
                                       while(_loc8_)
                                       {
                                          §§push(param5);
                                          loop10:
                                          for(; !(_loc9_ && param1); if(!(_loc8_ || param3))
                                          {
                                             continue;
                                          },§§goto(addr114),§§push(Number(§§pop())))
                                          {
                                             §§pop().§§slot[5] = §§pop();
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc9_)
                                                {
                                                   continue loop0;
                                                }
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(this.§]!h§);
                                                   if(!(_loc9_ && param3))
                                                   {
                                                      continue loop10;
                                                   }
                                                   addr114:
                                                   §§pop().§§slot[4] = §§pop();
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            loop14:
                                                            while(_loc8_)
                                                            {
                                                               §§pop().§§slot[6] = new SoundTransform(volume);
                                                               while(true)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr72:
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     else
                                                                     {
                                                                        addr96:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop16;
                                                                        §§goto(addr72);
                                                                     }
                                                                     addr41:
                                                                     §§pop().§§slot[7] = null;
                                                                     if(!(_loc8_ || param3))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc9_ && this)
                                                                     {
                                                                        break loop13;
                                                                     }
                                                                  }
                                                                  continue loop17;
                                                                  if(true)
                                                                  {
                                                                     try
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§pop().§§slot[7] = snd.play(startTime,loop,soundTransform);
                                                                           if(_loc8_)
                                                                           {
                                                                              addr220:
                                                                              §§push(§§newactivation());
                                                                              if(_loc8_)
                                                                              {
                                                                                 if(§§pop().§§slot[7] == null)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       return null;
                                                                                    }
                                                                                 }
                                                                                 addr303:
                                                                                 var sndEffect:§,!W§ = new §,!W§(sndChannel,sndID);
                                                                                 addr296:
                                                                                 sndEffect.addEventListener(Event.SOUND_COMPLETE,this.§"!z§);
                                                                                 addr295:
                                                                                 addr301:
                                                                                 addr311:
                                                                                 if(this.§'9§ == 0)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       addr282:
                                                                                       §§push(sndEffect);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§pop().§3!?§();
                                                                                          addr285:
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             addr252:
                                                                                             this.§,!9§.push(sndEffect);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc8_ || param1)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§goto(addr246);
                                                                                                         }
                                                                                                         §§goto(addr303);
                                                                                                      }
                                                                                                      §§goto(addr295);
                                                                                                   }
                                                                                                   §§goto(addr282);
                                                                                                }
                                                                                                §§goto(addr301);
                                                                                             }
                                                                                             §§goto(addr285);
                                                                                          }
                                                                                          §§goto(addr311);
                                                                                       }
                                                                                       §§goto(addr296);
                                                                                    }
                                                                                    §§goto(addr285);
                                                                                 }
                                                                                 §§goto(addr252);
                                                                              }
                                                                              §§goto(addr282);
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                     }
                                                                     catch(e:Error)
                                                                     {
                                                                        dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message,e.errorID));
                                                                        if(_loc8_)
                                                                        {
                                                                           var sndChannel:SoundChannel = null;
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                     addr246:
                                                                     §§push(§§pop().§§slot[8]);
                                                                  }
                                                                  continue loop13;
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§goto(addr282);
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               continue loop17;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop5;
                                                         addr60:
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                                continue loop10;
                                             }
                                             continue loop0;
                                          }
                                          continue loop7;
                                       }
                                       continue loop4;
                                    }
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §"!z§(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§,!W§> = null;
         var _loc4_:§,!W§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§,!W§ = §,!W§(param1.currentTarget);
         if(_loc6_ || _loc3_)
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§"!z§);
            if(!_loc7_)
            {
               if(this.§,!9§.indexOf(_loc2_) > -1)
               {
                  addr62:
                  _loc3_ = this.§,!9§.splice(this.§,!9§.indexOf(_loc2_),1);
                  (_loc4_ = _loc3_[0]).destroy();
                  _loc4_ = null;
                  _loc3_ = null;
                  _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
                  if(!(_loc7_ && param1))
                  {
                     dispatchEvent(_loc5_);
                  }
               }
               return;
            }
         }
         §§goto(addr62);
      }
      
      public function §!!#§() : Boolean
      {
         return this.§,!9§.length > 0;
      }
      
      public function §4!$§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§,!W§ = null;
         while(this.§,!9§.length > 0)
         {
            _loc1_ = this.§,!9§[0];
            if(!_loc2_)
            {
               _loc1_.stop();
               if(!_loc3_)
               {
                  continue;
               }
            }
            _loc1_.§@!M§();
         }
      }
      
      public function §"A§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§,!W§ = null;
         if(_loc4_)
         {
            this.§'9§ = 0;
         }
         for each(_loc1_ in this.§,!9§)
         {
            if(!_loc5_)
            {
               _loc1_.§3!?§();
            }
         }
      }
      
      public function §^^§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,!W§ = null;
         if(!_loc4_)
         {
            this.§'9§ = this.§]!h§;
         }
         for each(_loc1_ in this.§,!9§)
         {
            if(_loc5_ || this)
            {
               _loc1_.§9!n§();
            }
         }
      }
      
      public function §9K§(param1:String) : §,!W§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§,!9§.length)
            {
               if(_loc4_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  return null;
               }
            }
            else if(§,!W§(this.§,!9§[_loc2_]).id == param1)
            {
               break;
            }
            _loc2_++;
         }
         while(!(_loc4_ && _loc2_));
         
         return §,!W§(this.§,!9§[_loc2_]);
      }
   }
}
