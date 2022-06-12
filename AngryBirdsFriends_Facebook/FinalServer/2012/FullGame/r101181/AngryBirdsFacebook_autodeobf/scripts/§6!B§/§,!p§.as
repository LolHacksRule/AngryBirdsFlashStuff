package §6!B§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §,!p§ extends EventDispatcher
   {
       
      
      private var §1"E§:SoundChannel;
      
      private var §;!Y§:String;
      
      private var §4a§:Number;
      
      private var §=2§:Boolean;
      
      public function §,!p§(param1:SoundChannel, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super();
            while(true)
            {
               this.§1"E§ = param1;
               while(_loc3_ || param2)
               {
                  this.§;!Y§ = param2;
                  loop2:
                  for(; _loc3_; if(_loc4_ && param2)
                  {
                     continue;
                  },§§goto(addr65))
                  {
                     this.§1"E§.addEventListener(Event.SOUND_COMPLETE,this.§0!U§);
                     while(true)
                     {
                        this.§4a§ = param1.soundTransform.volume;
                        while(_loc3_)
                        {
                           continue loop2;
                           this.§=2§ = false;
                           if(!(_loc4_ && this))
                           {
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§4a§ = param1;
            while(!this.§=2§)
            {
               if(_loc2_)
               {
                  break;
               }
               addr56:
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               this.§2"§(this.§4a§);
               §§goto(addr56);
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function get volume() : Number
      {
         return this.§4a§;
      }
      
      public function get id() : String
      {
         return this.§;!Y§;
      }
      
      public function get position() : Number
      {
         return this.§1"E§.position;
      }
      
      private function §0!U§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1"E§.removeEventListener(Event.SOUND_COMPLETE,this.§0!U§);
         }
         do
         {
            dispatchEvent(param1);
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      private function §2"§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SoundTransform = this.§1"E§.soundTransform;
         if(!_loc3_)
         {
            _loc2_.volume = param1;
         }
         do
         {
            this.§1"E§.soundTransform = _loc2_;
         }
         while(_loc3_);
         
      }
      
      public function §9!S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.stop();
         }
         do
         {
            this.§0!U§(new Event(Event.SOUND_COMPLETE));
         }
         while(_loc2_);
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§1"E§)
            {
               if(_loc1_)
               {
                  addr28:
                  this.§1"E§.stop();
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.stop();
            while(true)
            {
               this.§1"E§.removeEventListener(Event.SOUND_COMPLETE,this.§0!U§);
               §§goto(addr55);
            }
         }
         addr55:
         while(true)
         {
            this.§1"E§ = null;
            if(_loc1_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §@^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§1"E§)
            {
               if(!_loc1_)
               {
                  this.§2"§(0);
               }
               do
               {
                  this.§=2§ = true;
               }
               while(!(_loc2_ || _loc2_));
               
               addr45:
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §3!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§1"E§)
            {
               if(!_loc1_)
               {
                  this.§2"§(this.§4a§);
               }
               do
               {
                  this.§=2§ = false;
               }
               while(_loc1_);
               
               addr45:
            }
            return;
         }
         §§goto(addr45);
      }
   }
}
