package §8m§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §7!>§ extends EventDispatcher
   {
       
      
      private var §^!h§:SoundChannel;
      
      private var §&N§:String;
      
      private var §3N§:Number;
      
      private var §="X§:Boolean;
      
      public function §7!>§(param1:SoundChannel, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§^!h§ = param1;
            loop1:
            while(true)
            {
               this.§&N§ = param2;
               loop2:
               while(!_loc4_)
               {
                  this.§^!h§.addEventListener(Event.SOUND_COMPLETE,this.§]#§);
                  loop3:
                  while(!_loc4_)
                  {
                     this.§3N§ = param1.soundTransform.volume;
                     while(true)
                     {
                        if(_loc3_ || param2)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§3N§ = param1;
            while(!this.§="X§)
            {
               if(_loc2_)
               {
                  break;
               }
               addr56:
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               addr52:
               this.§"!u§(this.§3N§);
               §§goto(addr56);
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function get volume() : Number
      {
         return this.§3N§;
      }
      
      public function get id() : String
      {
         return this.§&N§;
      }
      
      public function get position() : Number
      {
         return this.§^!h§.position;
      }
      
      private function §]#§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^!h§.removeEventListener(Event.SOUND_COMPLETE,this.§]#§);
            do
            {
               dispatchEvent(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      private function §"!u§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§^!h§ == null)
            {
               if(!(_loc4_ && param1))
               {
                  §§goto(addr39);
               }
            }
            var _loc2_:SoundTransform = this.§^!h§.soundTransform;
            if(!(_loc4_ && _loc3_))
            {
               if(_loc2_)
               {
                  do
                  {
                     _loc2_.volume = param1;
                     do
                     {
                        this.§^!h§.soundTransform = _loc2_;
                     }
                     while(!(_loc3_ || _loc3_));
                     
                  }
                  while(_loc4_);
                  
                  addr84:
               }
               return;
            }
            §§goto(addr84);
         }
         addr39:
      }
      
      public function §7s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.stop();
            do
            {
               this.§]#§(new Event(Event.SOUND_COMPLETE));
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§^!h§)
            {
               if(!_loc1_)
               {
                  addr24:
                  this.§^!h§.stop();
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.stop();
            while(true)
            {
               this.§^!h§.removeEventListener(Event.SOUND_COMPLETE,this.§]#§);
               loop1:
               while(!(_loc2_ && this))
               {
                  while(true)
                  {
                     this.§^!h§ = null;
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §["?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§^!h§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§"!u§(0);
                  do
                  {
                     this.§="X§ = true;
                  }
                  while(_loc1_);
                  
                  addr54:
               }
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §2!!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§^!h§)
            {
               if(!_loc1_)
               {
                  this.§"!u§(this.§3N§);
                  do
                  {
                     this.§="X§ = false;
                  }
                  while(!(_loc2_ || _loc2_));
                  
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
