package §-!n§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7v§ extends EventDispatcher
   {
       
      
      private var §;!-§:SoundChannel;
      
      private var §"E§:String;
      
      private var §#!u§:Number;
      
      private var §]E§:Boolean;
      
      public function §7v§(param1:SoundChannel, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
         }
         while(true)
         {
            this.§;!-§ = param1;
            loop1:
            while(_loc4_)
            {
               this.§"E§ = param2;
               while(true)
               {
                  this.§;!-§.addEventListener(Event.SOUND_COMPLETE,this.§8!r§);
                  loop3:
                  while(_loc4_)
                  {
                     this.§#!u§ = param1.soundTransform.volume;
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#!u§ = param1;
            while(!this.§]E§)
            {
               if(_loc3_)
               {
                  break;
               }
               addr60:
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               this.§4!%§(this.§#!u§);
               §§goto(addr60);
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function get volume() : Number
      {
         return this.§#!u§;
      }
      
      public function get id() : String
      {
         return this.§"E§;
      }
      
      public function get position() : Number
      {
         return this.§;!-§.position;
      }
      
      private function §8!r§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§;!-§.removeEventListener(Event.SOUND_COMPLETE,this.§8!r§);
         }
         do
         {
            dispatchEvent(param1);
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      private function §4!%§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SoundTransform = this.§;!-§.soundTransform;
         if(!_loc3_)
         {
            _loc2_.volume = param1;
            do
            {
               this.§;!-§.soundTransform = _loc2_;
            }
            while(_loc3_);
            
         }
      }
      
      public function § !5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.stop();
            do
            {
               this.§8!r§(new Event(Event.SOUND_COMPLETE));
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§;!-§)
            {
               if(_loc1_ || this)
               {
                  this.§;!-§.stop();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.stop();
            while(true)
            {
               this.§;!-§.removeEventListener(Event.SOUND_COMPLETE,this.§8!r§);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§;!-§ = null;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §7!t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§;!-§)
            {
               loop0:
               while(true)
               {
                  this.§4!%§(0);
                  addr68:
                  while(true)
                  {
                     this.§]E§ = true;
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!(_loc2_ && _loc1_))
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
         §§goto(addr68);
      }
      
      public function §6!%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§;!-§)
            {
               do
               {
                  this.§4!%§(this.§#!u§);
                  do
                  {
                     this.§]E§ = false;
                  }
                  while(_loc1_ && _loc1_);
                  
               }
               while(!(_loc2_ || _loc1_));
               
               addr71:
            }
            return;
         }
         §§goto(addr71);
      }
   }
}
