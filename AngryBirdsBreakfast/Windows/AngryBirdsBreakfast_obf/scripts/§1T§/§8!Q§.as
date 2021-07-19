package §1T§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §8!Q§ extends EventDispatcher
   {
      
      private static const §,!r§:int = 500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §8!Q§))
         {
            §,!r§ = 500;
         }
      }
      
      private var §@C§:SoundChannel;
      
      private var §>6§:String;
      
      private var §'!7§:Number;
      
      private var §6+§:Boolean;
      
      private var §4;§:Number = 0.0;
      
      private var §8j§:Number = 0;
      
      public function §8!Q§(param1:SoundChannel, param2:String, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               this.§@C§ = param1;
               while(true)
               {
                  this.§>6§ = param2;
                  loop4:
                  while(_loc4_ || param3)
                  {
                     this.§6+§ = false;
                     loop5:
                     while(_loc4_ || param2)
                     {
                        this.§4;§ = param3;
                        while(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              this.§8j§ = getTimer();
                              if(!(_loc5_ && param2))
                              {
                                 if(!(_loc5_ && param3))
                                 {
                                    addr47:
                                    if(_loc5_ && param1)
                                    {
                                       while(true)
                                       {
                                          this.§@C§.addEventListener(Event.SOUND_COMPLETE,this.§2!7§);
                                          break loop5;
                                          §§goto(addr47);
                                       }
                                       addr123:
                                    }
                                    return;
                                 }
                                 continue loop5;
                                 continue loop5;
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop4;
                     }
                     while(true)
                     {
                        this.§'!7§ = param1.soundTransform.volume;
                        continue loop4;
                        §§goto(addr78);
                     }
                     addr78:
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§'!7§ = param1;
         }
         while(!this.§6+§)
         {
            if(!_loc3_)
            {
               if(!_loc2_)
               {
                  continue;
               }
               this.§1!4§(this.§'!7§);
            }
            break;
         }
      }
      
      public function get volume() : Number
      {
         return this.§'!7§;
      }
      
      public function get id() : String
      {
         return this.§>6§;
      }
      
      public function get §0F§() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = Number(this.§@C§.position);
         var _loc2_:int = getTimer() - this.§8j§;
         if(_loc3_)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() < _loc2_ - §,!r§)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr64);
         }
         addr59:
         §§push(_loc2_ - §,!r§);
         if(!_loc4_)
         {
            addr64:
            §§push(Number(§§pop()));
            if(!(_loc4_ && _loc1_))
            {
               _loc1_ = §§pop();
               addr83:
               return _loc1_;
            }
         }
      }
      
      public function get §%!L§() : Number
      {
         return this.§4;§;
      }
      
      public function get §1!n§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§%!L§);
         if(!_loc1_)
         {
            return §§pop() - this.§0F§;
         }
      }
      
      private function §2!7§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§@C§)
            {
               if(_loc2_ || _loc3_)
               {
                  this.§@C§.removeEventListener(Event.SOUND_COMPLETE,this.§2!7§);
               }
               while(true)
               {
                  §§goto(addr23);
               }
            }
            addr23:
            §§goto(addr42);
         }
         addr42:
         while(true)
         {
            dispatchEvent(new Event(Event.SOUND_COMPLETE));
            if(!_loc3_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      private function §1!4§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SoundTransform = this.§@C§.soundTransform;
         if(!(_loc3_ && this))
         {
            _loc2_.volume = param1;
         }
         do
         {
            this.§@C§.soundTransform = _loc2_;
         }
         while(!(_loc4_ || _loc2_));
         
      }
      
      public function §>!C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.stop();
         }
         do
         {
            this.§2!7§(new Event(Event.SOUND_COMPLETE));
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§@C§)
            {
               if(_loc2_)
               {
                  this.§@C§.stop();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.stop();
            while(true)
            {
               this.§@C§.removeEventListener(Event.SOUND_COMPLETE,this.§2!7§);
               while(_loc1_)
               {
                  this.§@C§ = null;
                  if(_loc1_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §;Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§@C§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr71:
                  this.§1!4§(0);
               }
               do
               {
                  this.§6+§ = true;
               }
               while(_loc1_ && _loc1_);
               
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function §>!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§@C§)
            {
               loop0:
               while(true)
               {
                  this.§1!4§(this.§'!7§);
                  addr70:
                  while(true)
                  {
                     this.§6+§ = false;
                     if(!(_loc1_ && _loc2_))
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr20);
               }
            }
            addr20:
            return;
         }
         §§goto(addr70);
      }
   }
}
