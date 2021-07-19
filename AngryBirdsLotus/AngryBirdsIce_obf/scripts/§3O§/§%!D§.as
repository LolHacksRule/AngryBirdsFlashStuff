package §3O§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §%!D§
   {
       
      
      private var §9!4§:SoundChannel;
      
      private var § S§:Function;
      
      private var §2!"§:Number;
      
      public function §%!D§(param1:SoundChannel, param2:Function = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            loop0:
            do
            {
               this.§9!4§ = param1;
               loop1:
               while(true)
               {
                  this.§ S§ = param2;
                  do
                  {
                     this.§9!4§.addEventListener(Event.SOUND_COMPLETE,this.§0!2§);
                     continue loop1;
                  }
                  while(_loc4_);
                  
                  continue loop0;
               }
            }
            while(!(_loc3_ || param2));
            
         }
      }
      
      private function §0!2§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§9!4§.removeEventListener(Event.SOUND_COMPLETE,this.§0!2§);
         }
         while(true)
         {
            §§push(this.§ S§);
            if(_loc2_)
            {
               §§push(null);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() == §§pop())
                  {
                     return;
                  }
                  loop1:
                  for(; !_loc3_; while(true)
                  {
                     §§pop().call(§§pop(),this);
                     do
                     {
                        this.§ S§ = null;
                     }
                     while(!_loc2_);
                     
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     continue loop1;
                  })
                  {
                     §§push(this.§ S§);
                     while(true)
                     {
                        §§push(null);
                        continue loop1;
                     }
                  }
                  continue;
               }
               §§goto(addr81);
            }
            §§goto(addr80);
         }
      }
      
      public function §=!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§0!2§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§9!4§)
            {
               if(!_loc2_)
               {
                  addr28:
                  this.§9!4§.stop();
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§9!4§.removeEventListener(Event.SOUND_COMPLETE,this.§0!2§);
         }
         do
         {
            this.§9!4§ = null;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function §[=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§9!4§)
            {
               if(!_loc1_)
               {
                  this.§9!4§.soundTransform = new SoundTransform(0);
               }
            }
         }
      }
      
      public function §=D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§9!4§)
            {
               if(!_loc1_)
               {
                  this.§9!4§.soundTransform = new SoundTransform(this.§2!"§);
               }
            }
         }
      }
   }
}
