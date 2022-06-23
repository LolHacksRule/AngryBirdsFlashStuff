package §#h§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §@b§ extends EventDispatcher
   {
       
      
      private var §8r§:SoundChannel;
      
      private var §]v§:String;
      
      private var §&x§:Number;
      
      private var §+S§:Boolean;
      
      public function §@b§(param1:SoundChannel, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super();
         if(_loc4_)
         {
            this.§8r§ = param1;
            if(_loc4_)
            {
               this.§]v§ = param2;
               this.§8r§.addEventListener(Event.SOUND_COMPLETE,this.§,F§);
               this.§&x§ = param1.soundTransform.volume;
               if(!(_loc3_ && param2))
               {
                  this.§+S§ = false;
               }
            }
         }
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§&x§ = param1;
            if(_loc2_ || _loc2_)
            {
               if(!this.§+S§)
               {
                  if(!_loc2_)
                  {
                  }
               }
               §§goto(addr52);
            }
            this.§-6§(this.§&x§);
         }
         addr52:
      }
      
      public function get volume() : Number
      {
         return this.§&x§;
      }
      
      public function get id() : String
      {
         return this.§]v§;
      }
      
      public function get position() : Number
      {
         return this.§8r§.position;
      }
      
      private function §,F§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8r§.removeEventListener(Event.SOUND_COMPLETE,this.§,F§);
            if(!(_loc3_ && this))
            {
               dispatchEvent(param1);
            }
         }
      }
      
      private function §-6§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SoundTransform = this.§8r§.soundTransform;
         if(!_loc3_)
         {
            _loc2_.volume = param1;
            if(!_loc3_)
            {
               addr29:
               this.§8r§.soundTransform = _loc2_;
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §`C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§,F§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§8r§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§8r§.stop();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.stop();
            if(!_loc2_)
            {
               addr37:
               this.§8r§.removeEventListener(Event.SOUND_COMPLETE,this.§,F§);
               if(!(_loc2_ && _loc2_))
               {
                  this.§8r§ = null;
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function §5!H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§8r§)
            {
               if(_loc1_ || _loc2_)
               {
                  this.§-6§(0);
                  if(_loc1_)
                  {
                     addr43:
                     this.§+S§ = true;
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §6c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§8r§)
            {
               if(!(_loc1_ && this))
               {
                  this.§-6§(this.§&x§);
                  if(_loc1_ && _loc1_)
                  {
                  }
                  §§goto(addr58);
               }
               this.§+S§ = false;
            }
         }
         addr58:
      }
   }
}
