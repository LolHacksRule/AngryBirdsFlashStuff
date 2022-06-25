package §5!c§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §try§ extends EventDispatcher
   {
       
      
      private var §[o§:SoundChannel;
      
      private var §@H§:String;
      
      private var §7m§:Number;
      
      private var §6!B§:Boolean;
      
      public function §try§(param1:SoundChannel, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§[o§ = param1;
               loop1:
               while(true)
               {
                  this.§@H§ = param2;
                  while(!_loc4_)
                  {
                     this.§[o§.addEventListener(Event.SOUND_COMPLETE,this.§,,§);
                     loop4:
                     while(!(_loc4_ && param1))
                     {
                        continue loop1;
                        this.§6!B§ = false;
                        if(!(_loc4_ && _loc3_))
                        {
                           addr34:
                           if(_loc4_ && this)
                           {
                              while(true)
                              {
                                 this.§7m§ = param1.soundTransform.volume;
                                 continue loop4;
                                 §§goto(addr34);
                              }
                              addr91:
                           }
                           return;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr91);
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7m§ = param1;
            loop0:
            while(!this.§6!B§)
            {
               if(!(_loc3_ && this))
               {
                  while(true)
                  {
                     this.§]9§(this.§7m§);
                  }
                  addr44:
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function get volume() : Number
      {
         return this.§7m§;
      }
      
      public function get id() : String
      {
         return this.§@H§;
      }
      
      public function get position() : Number
      {
         return this.§[o§.position;
      }
      
      private function §,,§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§[o§.removeEventListener(Event.SOUND_COMPLETE,this.§,,§);
         }
         do
         {
            dispatchEvent(param1);
         }
         while(_loc3_);
         
      }
      
      private function §]9§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:SoundTransform = this.§[o§.soundTransform;
         if(_loc3_ || _loc3_)
         {
            _loc2_.volume = param1;
            do
            {
               this.§[o§.soundTransform = _loc2_;
            }
            while(_loc4_);
            
         }
      }
      
      public function §#!e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§,,§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§[o§)
            {
               if(_loc2_)
               {
                  addr29:
                  this.§[o§.stop();
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.stop();
         }
         do
         {
            this.§[o§.removeEventListener(Event.SOUND_COMPLETE,this.§,,§);
            do
            {
               this.§[o§ = null;
            }
            while(_loc2_);
            
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §`d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§[o§)
            {
               do
               {
                  this.§]9§(0);
                  do
                  {
                     this.§6!B§ = true;
                  }
                  while(!_loc1_);
                  
               }
               while(!(_loc1_ || _loc2_));
               
               addr55:
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §5!'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§[o§)
            {
               if(!_loc2_)
               {
                  this.§]9§(this.§7m§);
               }
               do
               {
                  this.§6!B§ = false;
               }
               while(_loc2_);
               
               addr39:
            }
            return;
         }
         §§goto(addr39);
      }
   }
}
