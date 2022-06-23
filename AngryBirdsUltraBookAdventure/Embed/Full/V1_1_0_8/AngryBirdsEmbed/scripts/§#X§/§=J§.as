package §#X§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §=J§ extends EventDispatcher
   {
       
      
      private var §]!'§:SoundChannel;
      
      private var §3!8§:String;
      
      private var §"!4§:Number;
      
      private var §,!B§:Boolean;
      
      public function §=J§(param1:SoundChannel, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super();
         if(_loc4_ || _loc3_)
         {
            this.§]!'§ = param1;
            if(!_loc3_)
            {
               this.§3!8§ = param2;
               addr54:
               this.§]!'§.addEventListener(Event.SOUND_COMPLETE,this.§<+§);
               if(_loc4_ || this)
               {
                  this.§"!4§ = param1.soundTransform.volume;
               }
               this.§,!B§ = false;
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§"!4§ = param1;
            if(_loc3_)
            {
               addr39:
               if(!this.§,!B§)
               {
                  if(_loc3_)
                  {
                     this.§'M§(this.§"!4§);
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function get volume() : Number
      {
         return this.§"!4§;
      }
      
      public function get id() : String
      {
         return this.§3!8§;
      }
      
      public function get position() : Number
      {
         return this.§]!'§.position;
      }
      
      private function §<+§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]!'§.removeEventListener(Event.SOUND_COMPLETE,this.§<+§);
            if(!(_loc2_ && this))
            {
               dispatchEvent(param1);
            }
         }
      }
      
      private function §'M§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(this.§]!'§ == null)
            {
               if(!_loc3_)
               {
                  return;
               }
            }
         }
         var _loc2_:SoundTransform = this.§]!'§.soundTransform;
         if(_loc4_ || param1)
         {
            if(_loc2_)
            {
               if(_loc4_)
               {
                  _loc2_.volume = param1;
                  if(_loc4_ || _loc2_)
                  {
                     addr77:
                     this.§]!'§.soundTransform = _loc2_;
                  }
               }
               §§goto(addr77);
            }
            return;
         }
         §§goto(addr77);
      }
      
      public function §3'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.stop();
            if(_loc1_)
            {
               addr27:
               this.§<+§(new Event(Event.SOUND_COMPLETE));
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§]!'§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr28:
                  this.§]!'§.stop();
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
         if(!(_loc2_ && _loc1_))
         {
            this.stop();
            if(_loc1_ || _loc1_)
            {
               §§goto(addr42);
            }
            §§goto(addr51);
         }
         addr42:
         this.§]!'§.removeEventListener(Event.SOUND_COMPLETE,this.§<+§);
         if(!_loc2_)
         {
            addr51:
            this.§]!'§ = null;
         }
      }
      
      public function §!h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§]!'§)
            {
               if(_loc1_ || _loc1_)
               {
                  addr38:
                  this.§'M§(0);
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§,!B§ = true;
                  }
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function §1J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§]!'§)
            {
               if(_loc1_ || _loc1_)
               {
                  this.§'M§(this.§"!4§);
                  if(!(_loc2_ && _loc1_))
                  {
                     addr49:
                     this.§,!B§ = false;
                  }
               }
               §§goto(addr49);
            }
            return;
         }
         §§goto(addr49);
      }
   }
}
