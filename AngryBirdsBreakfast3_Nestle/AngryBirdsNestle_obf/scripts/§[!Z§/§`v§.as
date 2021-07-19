package §[!Z§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class §`v§ extends EventDispatcher
   {
      
      private static const §0M§:int = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §`v§))
         {
            §0M§ = 500;
         }
      }
      
      private var §<?§:SoundChannel;
      
      private var §?0§:String;
      
      private var §=A§:Number;
      
      private var §+!W§:Boolean;
      
      private var §`!3§:Number = 0.0;
      
      private var §#%§:Number = 0;
      
      public function §`v§(param1:SoundChannel, param2:String, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§<?§ = param1;
            while(true)
            {
               this.§?0§ = param2;
               addr113:
               while(true)
               {
                  this.§<?§.addEventListener(Event.SOUND_COMPLETE,this.§true§);
                  continue loop0;
               }
               loop5:
               for(; !(_loc5_ && param3); if(_loc4_ || param1)
               {
                  addr42:
                  if(_loc5_)
                  {
                     while(true)
                     {
                        this.§+!W§ = false;
                        continue loop5;
                        §§goto(addr42);
                     }
                     addr82:
                  }
                  if(!_loc5_)
                  {
                     return;
                  }
                  continue loop0;
               })
               {
                  this.§`!3§ = param3;
                  while(!_loc5_)
                  {
                     this.§#%§ = getTimer();
                     if(!(_loc5_ && param2))
                     {
                        continue loop5;
                     }
                  }
                  §§goto(addr113);
               }
            }
         }
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§=A§ = param1;
            while(!this.§+!W§)
            {
               if(_loc3_)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  this.§!!;§(this.§=A§);
               }
               break;
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function get volume() : Number
      {
         return this.§=A§;
      }
      
      public function get id() : String
      {
         return this.§?0§;
      }
      
      public function get §'"2§() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = Number(this.§<?§.position);
         var _loc2_:int = getTimer() - this.§#%§;
         if(_loc4_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop() < _loc2_ - §0M§)
               {
                  if(_loc4_)
                  {
                     §§push(_loc2_ - §0M§);
                     if(!_loc3_)
                     {
                        addr65:
                        §§push(Number(§§pop()));
                        if(!_loc3_)
                        {
                           _loc1_ = §§pop();
                           addr69:
                           return _loc1_;
                        }
                     }
                  }
               }
               §§goto(addr69);
            }
            §§goto(addr65);
         }
         §§goto(addr69);
      }
      
      public function get §#!H§() : Number
      {
         return this.§`!3§;
      }
      
      public function get §%!+§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§#!H§);
         if(_loc2_ || _loc2_)
         {
            return §§pop() - this.§'"2§;
         }
      }
      
      private function §true§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§<?§)
            {
               while(true)
               {
                  this.§<?§.removeEventListener(Event.SOUND_COMPLETE,this.§true§);
                  addr66:
                  while(true)
                  {
                  }
               }
               addr59:
            }
            while(true)
            {
               dispatchEvent(new Event(Event.SOUND_COMPLETE));
               if(_loc2_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr66);
      }
      
      private function §!!;§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SoundTransform = this.§<?§.soundTransform;
         if(!(_loc4_ && _loc2_))
         {
            _loc2_.volume = param1;
         }
         do
         {
            this.§<?§.soundTransform = _loc2_;
         }
         while(!_loc3_);
         
      }
      
      public function §,^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.stop();
            do
            {
               this.§true§(new Event(Event.SOUND_COMPLETE));
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§<?§)
            {
               if(_loc2_)
               {
                  this.§<?§.stop();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.stop();
         }
         while(true)
         {
            this.§<?§.removeEventListener(Event.SOUND_COMPLETE,this.§true§);
            while(!(_loc1_ && _loc1_))
            {
               this.§<?§ = null;
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §?!t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§<?§)
            {
               if(_loc1_ || _loc2_)
               {
                  this.§!!;§(0);
                  do
                  {
                     this.§+!W§ = true;
                  }
                  while(_loc2_);
                  
                  addr63:
               }
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function §6T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§<?§)
            {
               if(_loc2_)
               {
                  addr56:
                  this.§!!;§(this.§=A§);
               }
               do
               {
                  this.§+!W§ = false;
               }
               while(_loc1_);
               
            }
            return;
         }
         §§goto(addr56);
      }
   }
}
