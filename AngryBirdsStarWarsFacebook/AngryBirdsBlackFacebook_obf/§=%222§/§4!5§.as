package §="2§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §4!5§ extends EventDispatcher
   {
      
      public static const §0!P§:String = "onSoundEnded";
      
      private static const §'#9§:int = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §0!P§ = "onSoundEnded";
            do
            {
               §'#9§ = 500;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private var §]!U§:SoundChannel;
      
      private var §6##§:String;
      
      private var §4!=§:Number;
      
      private var §<O§:Boolean;
      
      private var §;c§:Number = 0.0;
      
      private var §>!Q§:Number = 0;
      
      public function §4!5§(param1:SoundChannel, param2:String, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§]!U§ = param1;
               loop1:
               while(true)
               {
                  this.§6##§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§]!U§.addEventListener(Event.SOUND_COMPLETE,this.§<"y§);
                     while(_loc5_)
                     {
                        this.§4!=§ = param1.soundTransform.volume;
                        while(_loc5_)
                        {
                           continue loop2;
                           loop6:
                           while(_loc5_ || param3)
                           {
                              continue loop1;
                              this.§>!Q§ = getTimer();
                              if(!_loc4_)
                              {
                                 addr36:
                                 if(_loc4_)
                                 {
                                    while(true)
                                    {
                                       this.§;c§ = param3;
                                       continue loop6;
                                       §§goto(addr36);
                                    }
                                    addr72:
                                 }
                                 return;
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§4!=§ = param1;
            while(!this.§<O§)
            {
               if(_loc3_)
               {
                  this.§`u§(this.§4!=§);
               }
               if(_loc3_ || this)
               {
                  addr66:
                  break;
               }
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function get volume() : Number
      {
         return this.§4!=§;
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function get §&"@§() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = Number(this.§]!U§.position);
         var _loc2_:int = getTimer() - this.§>!Q§;
         if(_loc3_)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               if(§§pop() < _loc2_ - §'#9§)
               {
                  if(_loc3_)
                  {
                     addr49:
                     §§push(_loc2_ - §'#9§);
                     if(_loc3_ || _loc1_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_)
                        {
                           addr72:
                           _loc1_ = §§pop();
                           return _loc1_;
                        }
                     }
                     §§goto(addr72);
                  }
               }
            }
            §§goto(addr72);
         }
         §§goto(addr49);
      }
      
      public function get §,?§() : Number
      {
         return this.§;c§;
      }
      
      public function get §3"o§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§,?§);
         if(_loc1_)
         {
            return §§pop() - this.§&"@§;
         }
      }
      
      private function §<"y§(param1:Event, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§]!U§)
            {
               while(true)
               {
                  this.§]!U§.removeEventListener(Event.SOUND_COMPLETE,this.§<"y§);
                  addr93:
                  while(true)
                  {
                  }
                  addr57:
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  addr19:
                  return;
                  addr64:
               }
            }
            loop2:
            while(true)
            {
               dispatchEvent(new Event(Event.SOUND_COMPLETE));
               for(; !param2; if(!(_loc3_ || _loc3_))
               {
                  continue;
               },if(!_loc3_)
               {
                  continue loop2;
               },dispatchEvent(new Event(§0!P§)),§§goto(addr57))
               {
                  if(_loc3_ || param1)
                  {
                     continue;
                  }
                  §§goto(addr57);
               }
               §§goto(addr19);
               §§goto(addr93);
            }
         }
         §§goto(addr64);
      }
      
      private function §`u§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SoundTransform = this.§]!U§.soundTransform;
         if(_loc4_)
         {
            _loc2_.volume = param1;
            do
            {
               this.§]!U§.soundTransform = _loc2_;
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      public function §!"^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.stop();
         }
         do
         {
            this.§<"y§(new Event(Event.SOUND_COMPLETE),true);
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§]!U§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr54:
                  this.§]!U§.stop();
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.stop();
            while(true)
            {
               this.§]!U§.removeEventListener(Event.SOUND_COMPLETE,this.§<"y§);
               loop1:
               while(!(_loc2_ && _loc1_))
               {
                  while(true)
                  {
                     this.§]!U§ = null;
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §^"w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§]!U§)
            {
               loop0:
               while(true)
               {
                  this.§`u§(0);
                  addr63:
                  while(true)
                  {
                     this.§<O§ = true;
                     if(_loc1_ || _loc2_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr19);
               }
            }
            addr19:
            return;
         }
         §§goto(addr63);
      }
      
      public function §<#D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§]!U§)
            {
               do
               {
                  this.§`u§(this.§4!=§);
                  do
                  {
                     this.§<O§ = false;
                  }
                  while(!_loc1_);
                  
               }
               while(!_loc1_);
               
               addr56:
            }
            return;
         }
         §§goto(addr56);
      }
   }
}
