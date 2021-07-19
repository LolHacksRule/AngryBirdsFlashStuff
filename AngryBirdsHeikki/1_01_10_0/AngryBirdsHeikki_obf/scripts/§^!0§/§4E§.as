package §^!0§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §4E§ extends EventDispatcher
   {
       
      
      private var §&l§:SoundChannel;
      
      private var §[M§:String;
      
      private var §,8§:Number;
      
      private var §#3§:Boolean;
      
      public function §4E§(param1:SoundChannel, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§&l§ = param1;
               while(_loc3_)
               {
                  this.§[M§ = param2;
                  while(true)
                  {
                     this.§&l§.addEventListener(Event.SOUND_COMPLETE,this.§3!M§);
                     §§goto(addr71);
                  }
               }
            }
         }
         addr71:
         while(true)
         {
            this.§,8§ = param1.soundTransform.volume;
            do
            {
               this.§#3§ = false;
            }
            while(_loc4_ && param2);
            
            if(!(_loc4_ && param2))
            {
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  continue loop1;
               }
               continue loop2;
            }
         }
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§,8§ = param1;
            loop0:
            for(; !this.§#3§; while(true)
            {
               if(_loc2_ || _loc3_)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!(_loc2_ || param1))
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§>!E§(this.§,8§);
            §§goto(addr53);
         }
      }
      
      public function get volume() : Number
      {
         return this.§,8§;
      }
      
      public function get id() : String
      {
         return this.§[M§;
      }
      
      public function get position() : Number
      {
         return this.§&l§.position;
      }
      
      private function §3!M§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§&l§.removeEventListener(Event.SOUND_COMPLETE,this.§3!M§);
            do
            {
               dispatchEvent(param1);
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      private function §>!E§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SoundTransform = this.§&l§.soundTransform;
         if(!(_loc4_ && this))
         {
            _loc2_.volume = param1;
         }
         do
         {
            this.§&l§.soundTransform = _loc2_;
         }
         while(!_loc3_);
         
      }
      
      public function §6`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.stop();
            do
            {
               this.§3!M§(new Event(Event.SOUND_COMPLETE));
            }
            while(_loc2_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§&l§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§&l§.stop();
               }
            }
         }
      }
      
      public function §&$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.stop();
         }
         while(true)
         {
            this.§&l§.removeEventListener(Event.SOUND_COMPLETE,this.§3!M§);
            while(!(_loc1_ && _loc1_))
            {
               this.§&l§ = null;
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §#!b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§&l§)
            {
               if(_loc2_ || this)
               {
                  addr61:
                  this.§>!E§(0);
               }
               do
               {
                  this.§#3§ = true;
               }
               while(!_loc2_);
               
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function §6E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§&l§)
            {
               loop0:
               while(true)
               {
                  this.§>!E§(this.§,8§);
                  addr70:
                  while(true)
                  {
                     this.§#3§ = false;
                     if(_loc2_ || _loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr35);
               }
            }
            addr35:
            return;
         }
         §§goto(addr70);
      }
   }
}
