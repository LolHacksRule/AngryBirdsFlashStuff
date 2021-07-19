package §&^§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §&r§ extends EventDispatcher
   {
       
      
      private var §-=§:SoundChannel;
      
      private var §[!&§:String;
      
      private var §;!6§:Number;
      
      private var §-r§:Boolean;
      
      public function §&r§(param1:SoundChannel, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§-=§ = param1;
               this.§[!&§ = param2;
               while(true)
               {
                  this.§-=§.addEventListener(Event.SOUND_COMPLETE,this.§32§);
                  while(!_loc4_)
                  {
                     continue loop0;
                     this.§;!6§ = param1.soundTransform.volume;
                     if(!_loc4_)
                     {
                        this.§-r§ = false;
                        return;
                        addr27:
                     }
                  }
               }
            }
         }
         §§goto(addr27);
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;!6§ = param1;
            while(!this.§-r§)
            {
               if(!(_loc2_ && this))
               {
                  if(!_loc2_)
                  {
                     this.§=b§(this.§;!6§);
                     addr51:
                     break;
                  }
                  continue;
               }
               §§goto(addr51);
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function get volume() : Number
      {
         return this.§;!6§;
      }
      
      public function get id() : String
      {
         return this.§[!&§;
      }
      
      public function get position() : Number
      {
         return this.§-=§.position;
      }
      
      private function §32§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-=§.removeEventListener(Event.SOUND_COMPLETE,this.§32§);
         }
         do
         {
            dispatchEvent(param1);
         }
         while(_loc3_);
         
      }
      
      private function §=b§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:SoundTransform = this.§-=§.soundTransform;
         if(!(_loc3_ && param1))
         {
            _loc2_.volume = param1;
            do
            {
               this.§-=§.soundTransform = _loc2_;
            }
            while(!_loc4_);
            
         }
      }
      
      public function §-u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.stop();
         }
         do
         {
            this.§32§(new Event(Event.SOUND_COMPLETE));
         }
         while(!_loc1_);
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§-=§)
            {
               if(_loc1_)
               {
                  this.§-=§.stop();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.stop();
            while(true)
            {
               this.§-=§.removeEventListener(Event.SOUND_COMPLETE,this.§32§);
               while(_loc2_ || _loc1_)
               {
                  this.§-=§ = null;
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr55:
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §<3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§-=§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr71:
                  this.§=b§(0);
               }
               do
               {
                  this.§-r§ = true;
               }
               while(_loc1_ && _loc1_);
               
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function §<!3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§-=§)
            {
               if(!(_loc1_ && this))
               {
                  this.§=b§(this.§;!6§);
                  do
                  {
                     this.§-r§ = false;
                  }
                  while(!_loc2_);
                  
                  addr55:
               }
               §§goto(addr55);
            }
            return;
         }
         §§goto(addr55);
      }
   }
}
