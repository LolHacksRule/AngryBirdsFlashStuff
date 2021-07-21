package §#";§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §8V§ extends EventDispatcher
   {
       
      
      private var §3p§:SoundChannel;
      
      private var §&&§:String;
      
      private var §[+§:Number;
      
      private var §7!w§:Boolean;
      
      public function §8V§(param1:SoundChannel, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§3p§ = param1;
               while(true)
               {
                  this.§&&§ = param2;
                  while(_loc4_)
                  {
                     this.§3p§.addEventListener(Event.SOUND_COMPLETE,this.§,R§);
                     while(_loc4_ || param2)
                     {
                        this.§[+§ = param1.soundTransform.volume;
                        loop4:
                        while(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 this.§7!w§ = false;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              return;
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[+§ = param1;
            while(!this.§7!w§)
            {
               if(_loc2_ || _loc3_)
               {
                  if(_loc2_)
                  {
                     this.§`A§(this.§[+§);
                     addr60:
                     break;
                  }
                  continue;
               }
               §§goto(addr60);
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function get volume() : Number
      {
         return this.§[+§;
      }
      
      public function get id() : String
      {
         return this.§&&§;
      }
      
      public function get position() : Number
      {
         return this.§3p§.position;
      }
      
      private function §,R§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§3p§.removeEventListener(Event.SOUND_COMPLETE,this.§,R§);
         }
         do
         {
            dispatchEvent(param1);
         }
         while(_loc2_);
         
      }
      
      private function §`A§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SoundTransform = this.§3p§.soundTransform;
         if(_loc3_ || this)
         {
            _loc2_.volume = param1;
            do
            {
               this.§3p§.soundTransform = _loc2_;
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function §"",§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.stop();
         }
         do
         {
            this.§,R§(new Event(Event.SOUND_COMPLETE));
         }
         while(_loc1_ && this);
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§3p§)
            {
               if(!(_loc2_ && this))
               {
                  this.§3p§.stop();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.stop();
         }
         do
         {
            this.§3p§.removeEventListener(Event.SOUND_COMPLETE,this.§,R§);
            do
            {
               this.§3p§ = null;
            }
            while(!(_loc1_ || this));
            
         }
         while(!_loc1_);
         
      }
      
      public function §`§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§3p§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr66:
                  this.§`A§(0);
               }
               do
               {
                  this.§7!w§ = true;
               }
               while(!(_loc2_ || _loc1_));
               
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function §5!t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§3p§)
            {
               loop0:
               while(true)
               {
                  this.§`A§(this.§[+§);
                  addr65:
                  while(true)
                  {
                     this.§7!w§ = false;
                     if(!(_loc1_ && this))
                     {
                        if(!_loc1_)
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
         §§goto(addr65);
      }
   }
}
