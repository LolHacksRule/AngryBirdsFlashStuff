package §3"#§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §3![§ extends EventDispatcher
   {
      
      private static const §]!w§:int = 500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §]!w§ = 500;
         }
      }
      
      private var §=!&§:SoundChannel;
      
      private var §[!o§:String;
      
      private var §8!W§:Number;
      
      private var §9"1§:Boolean;
      
      private var §3!k§:Number = 0.0;
      
      private var §"t§:Number = 0;
      
      public function §3![§(param1:SoundChannel, param2:String, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§=!&§ = param1;
               addr113:
               while(true)
               {
                  this.§[!o§ = param2;
               }
            }
            addr116:
         }
         loop2:
         while(true)
         {
            this.§=!&§.addEventListener(Event.SOUND_COMPLETE,this.§;!m§);
            loop3:
            while(true)
            {
               if(_loc4_ || this)
               {
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        this.§8!W§ = param1.soundTransform.volume;
                        loop4:
                        while(true)
                        {
                           this.§9"1§ = false;
                           loop5:
                           while(true)
                           {
                              this.§3!k§ = param3;
                              while(true)
                              {
                                 if(_loc4_ || param2)
                                 {
                                    continue loop4;
                                 }
                                 continue loop5;
                                 addr61:
                                 this.§"t§ = getTimer();
                                 if(!_loc5_)
                                 {
                                    return;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr116);
                     }
                  }
                  break;
               }
               continue loop2;
            }
            §§goto(addr113);
         }
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8!W§ = param1;
            while(!this.§9"1§)
            {
               if(!_loc3_)
               {
                  this.§,F§(this.§8!W§);
               }
               if(!(_loc3_ && param1))
               {
                  addr60:
                  break;
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function get volume() : Number
      {
         return this.§8!W§;
      }
      
      public function get id() : String
      {
         return this.§[!o§;
      }
      
      public function get §implements§() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = Number(this.§=!&§.position);
         var _loc2_:int = getTimer() - this.§"t§;
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() < _loc2_ - §]!w§)
               {
                  if(!_loc4_)
                  {
                     §§push(_loc2_ - §]!w§);
                     if(!_loc4_)
                     {
                        §§goto(addr69);
                     }
                  }
               }
               §§goto(addr72);
            }
            addr69:
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
      
      public function get §@!k§() : Number
      {
         return this.§3!k§;
      }
      
      public function get §3!=§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§@!k§);
         if(!_loc2_)
         {
            return §§pop() - this.§implements§;
         }
      }
      
      private function §;!m§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§=!&§.removeEventListener(Event.SOUND_COMPLETE,this.§;!m§);
            do
            {
               dispatchEvent(new Event(Event.SOUND_COMPLETE));
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      private function §,F§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SoundTransform = this.§=!&§.soundTransform;
         if(!_loc3_)
         {
            _loc2_.volume = param1;
         }
         do
         {
            this.§=!&§.soundTransform = _loc2_;
         }
         while(_loc3_);
         
      }
      
      public function §,v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.stop();
            do
            {
               this.§;!m§(new Event(Event.SOUND_COMPLETE));
            }
            while(_loc2_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§=!&§)
            {
               if(_loc2_ || this)
               {
                  this.§=!&§.stop();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.stop();
            do
            {
               this.§=!&§.removeEventListener(Event.SOUND_COMPLETE,this.§;!m§);
               do
               {
                  this.§=!&§ = null;
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function §&`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§=!&§)
            {
               do
               {
                  this.§,F§(0);
                  do
                  {
                     this.§9"1§ = true;
                  }
                  while(!_loc1_);
                  
               }
               while(_loc2_ && _loc2_);
               
               addr56:
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function §%I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§=!&§)
            {
               if(!(_loc2_ && this))
               {
                  this.§,F§(this.§8!W§);
                  do
                  {
                     this.§9"1§ = false;
                  }
                  while(_loc2_ && _loc2_);
                  
                  addr74:
               }
               §§goto(addr74);
            }
            return;
         }
         §§goto(addr74);
      }
   }
}
