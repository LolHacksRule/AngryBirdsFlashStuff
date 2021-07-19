package §%!$§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §5v§
   {
       
      
      private var §>!!§:SoundChannel;
      
      private var §"!W§:Function;
      
      private var §-C§:Number;
      
      public function §5v§(param1:SoundChannel, param2:Function = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super();
            while(true)
            {
               this.§>!!§ = param1;
               while(_loc3_)
               {
                  while(!(_loc4_ && param1))
                  {
                     this.§>!!§.addEventListener(Event.SOUND_COMPLETE,this.§-!5§);
                     do
                     {
                        this.§-C§ = param1.soundTransform.volume;
                     }
                     while(!(_loc3_ || this));
                     
                     if(_loc3_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§"!W§ = param2;
            §§goto(addr67);
         }
      }
      
      private function §-!5§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>!!§.removeEventListener(Event.SOUND_COMPLETE,this.§-!5§);
         }
         do
         {
            §§push(this.§"!W§);
            if(_loc3_)
            {
               §§push(null);
               if(!(_loc2_ && param1))
               {
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr20);
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§"!W§);
                     addr71:
                     while(true)
                     {
                        §§push(null);
                        continue loop1;
                     }
                  }
                  addr69:
               }
               while(true)
               {
                  §§pop().call(§§pop(),this);
                  do
                  {
                     this.§"!W§ = null;
                  }
                  while(_loc2_);
                  
                  if(!(_loc2_ && this))
                  {
                     break;
                  }
                  §§goto(addr69);
               }
               continue;
            }
            §§goto(addr71);
         }
         while(_loc2_ && this);
         
         addr20:
      }
      
      public function §?!!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§-!5§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§>!!§)
            {
               if(_loc2_)
               {
                  addr49:
                  this.§>!!§.stop();
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §1W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§>!!§.removeEventListener(Event.SOUND_COMPLETE,this.§-!5§);
            do
            {
               this.§>!!§ = null;
            }
            while(_loc2_);
            
         }
      }
      
      public function §#d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§>!!§)
            {
               if(_loc1_)
               {
                  addr43:
                  this.§>!!§.soundTransform = new SoundTransform(0);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function § W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§>!!§)
            {
               if(!_loc1_)
               {
                  this.§>!!§.soundTransform = new SoundTransform(this.§-C§);
               }
            }
         }
      }
   }
}
