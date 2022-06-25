package §#X§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §;1§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §[_§:int;
      
      public var §"!4§:Number = 1;
      
      private var §-g§:Vector.<§=J§>;
      
      private var §&+§:Number;
      
      public function §;1§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super();
            if(!_loc4_)
            {
               this.mName = param1;
               if(!_loc4_)
               {
                  addr43:
                  this.§[_§ = param2;
                  if(_loc5_)
                  {
                     this.§"!4§ = param3;
                     if(_loc5_ || param1)
                     {
                     }
                     §§goto(addr79);
                  }
                  this.§&+§ = this.§"!4§;
                  if(_loc5_ || this)
                  {
                     §§goto(addr79);
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr43);
         }
         addr79:
         this.§-g§ = new Vector.<§=J§>();
      }
      
      public function §]!!§() : Boolean
      {
         return this.§-g§.length < this.§[_§;
      }
      
      public function §;v§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §=J§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(§§newactivation());
         if(_loc9_ || param3)
         {
            §§pop().§§slot[1] = param1;
            §§push(§§newactivation());
            if(!_loc8_)
            {
               addr34:
               §§pop().§§slot[2] = param2;
               if(_loc9_)
               {
                  var loop:int = param3;
                  §§push(§§newactivation());
                  if(_loc9_)
                  {
                     addr44:
                     §§push(param4);
                     if(!(_loc8_ && param2))
                     {
                        §§pop().§§slot[4] = §§pop();
                        §§push(§§newactivation());
                        if(!_loc8_)
                        {
                           §§push(param5);
                           if(_loc9_ || param3)
                           {
                              §§pop().§§slot[5] = §§pop();
                              addr65:
                              if(volume < 0)
                              {
                                 if(_loc9_)
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc8_)
                                    {
                                       addr74:
                                       §§push(this.§&+§);
                                       if(_loc9_)
                                       {
                                          addr79:
                                          §§pop().§§slot[4] = Number(§§pop());
                                          §§push(§§newactivation());
                                       }
                                       §§goto(addr79);
                                    }
                                    §§pop().§§slot[6] = new SoundTransform(volume);
                                 }
                                 addr88:
                                 var sndChannel:SoundChannel = null;
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(_loc9_)
                                    {
                                       §§pop().§§slot[7] = snd.play(startTime,loop,soundTransform);
                                       if(!(_loc8_ && param3))
                                       {
                                          §§goto(addr156);
                                       }
                                       §§goto(addr179);
                                    }
                                 }
                                 catch(e:Error)
                                 {
                                    dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false,e.message,e.errorID));
                                    if(!_loc8_)
                                    {
                                       sndChannel = null;
                                    }
                                    addr156:
                                    §§push(§§newactivation());
                                    if(_loc9_)
                                    {
                                       if(§§pop().§§slot[7] == null)
                                       {
                                          if(!_loc8_)
                                          {
                                             return null;
                                          }
                                          addr210:
                                          if(this.§"!4§ == 0)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc9_ || param3)
                                             {
                                                §§goto(addr222);
                                             }
                                             §§goto(addr237);
                                          }
                                          §§goto(addr231);
                                       }
                                       else
                                       {
                                          §§push(§§newactivation());
                                          if(_loc9_)
                                          {
                                             §§pop().§§slot[8] = new §=J§(sndChannel,sndID);
                                             addr179:
                                             §§push(§§newactivation());
                                             if(!(_loc8_ && param2))
                                             {
                                                addr187:
                                                §§push(§§pop().§§slot[8]);
                                                if(_loc9_ || this)
                                                {
                                                   §§pop().addEventListener(Event.SOUND_COMPLETE,this.§[! §);
                                                   §§goto(addr210);
                                                }
                                                §§goto(addr230);
                                             }
                                          }
                                       }
                                    }
                                    addr222:
                                    §§push(§§pop().§§slot[8]);
                                    if(!(_loc8_ && param3))
                                    {
                                       addr230:
                                       §§pop().§!h§();
                                       addr231:
                                       this.§-g§.push(sndEffect);
                                       addr237:
                                       §§push(sndEffect);
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr187);
                              }
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr88);
               }
               §§goto(addr65);
            }
            §§goto(addr44);
         }
         §§goto(addr34);
      }
      
      private function §[! §(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§=J§> = null;
         var _loc4_:§=J§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§=J§ = §=J§(param1.currentTarget);
         if(_loc6_ || _loc3_)
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§[! §);
            if(!(_loc7_ && _loc2_))
            {
               if(this.§-g§.indexOf(_loc2_) > -1)
               {
                  _loc3_ = this.§-g§.splice(this.§-g§.indexOf(_loc2_),1);
                  (_loc4_ = _loc3_[0]).destroy();
                  _loc4_ = null;
                  _loc3_ = null;
                  _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
                  addr67:
                  if(!_loc7_)
                  {
                     dispatchEvent(_loc5_);
                  }
               }
               return;
            }
         }
         §§goto(addr67);
      }
      
      public function §]n§() : Boolean
      {
         return this.§-g§.length > 0;
      }
      
      public function §?X§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§=J§ = null;
         while(this.§-g§.length > 0)
         {
            _loc1_ = this.§-g§[0];
            if(!_loc2_)
            {
               _loc1_.stop();
               if(_loc3_ || _loc3_)
               {
                  _loc1_.§3'§();
               }
            }
         }
      }
      
      public function §<g§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§=J§ = null;
         if(!_loc4_)
         {
            this.§"!4§ = 0;
         }
         for each(_loc1_ in this.§-g§)
         {
            if(_loc5_)
            {
               _loc1_.§!h§();
            }
         }
      }
      
      public function §@z§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§=J§ = null;
         if(!_loc4_)
         {
            this.§"!4§ = this.§&+§;
         }
         var _loc3_:* = this.§-g§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               _loc1_.§1J§();
            }
         }
      }
      
      public function §4!?§(param1:String) : §=J§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-g§.length)
         {
            if(§=J§(this.§-g§[_loc2_]).id == param1)
            {
               if(!(_loc3_ && this))
               {
                  return §=J§(this.§-g§[_loc2_]);
               }
            }
            else
            {
               _loc2_++;
               if(!_loc4_)
               {
                  break;
               }
            }
         }
         return null;
      }
   }
}
