package §`!K§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §<9§
   {
       
      
      private var §^!#§:SoundChannel;
      
      private var §,+§:Function;
      
      private var §>!S§:Number;
      
      public function §<9§(param1:SoundChannel, param2:Function = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super();
            while(true)
            {
               this.§^!#§ = param1;
               loop1:
               while(_loc4_ || _loc3_)
               {
                  this.§,+§ = param2;
                  loop2:
                  do
                  {
                     this.§^!#§.addEventListener(Event.SOUND_COMPLETE,this.§6!;§);
                     while(!_loc3_)
                     {
                        this.§>!S§ = param1.soundTransform.volume;
                        if(!(_loc3_ && param2))
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(_loc3_);
                  
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      private function §6!;§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§^!#§.removeEventListener(Event.SOUND_COMPLETE,this.§6!;§);
         }
         loop0:
         while(true)
         {
            §§push(this.§,+§);
            if(_loc2_)
            {
               §§push(null);
               if(_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     break;
                  }
                  if(_loc2_ || _loc3_)
                  {
                     addr64:
                     this.§,+§.call(null,this);
                  }
                  while(!_loc3_)
                  {
                     this.§,+§ = null;
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
                  continue;
               }
            }
            §§goto(addr64);
         }
      }
      
      public function §+q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§6!;§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§^!#§)
            {
               if(!_loc1_)
               {
                  this.§^!#§.stop();
               }
            }
         }
      }
      
      public function §4b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^!#§.removeEventListener(Event.SOUND_COMPLETE,this.§6!;§);
         }
         do
         {
            this.§^!#§ = null;
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function §+!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§^!#§)
            {
               if(!_loc1_)
               {
                  addr44:
                  this.§^!#§.soundTransform = new SoundTransform(0);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §>! §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§^!#§)
            {
               if(!_loc1_)
               {
                  this.§^!#§.soundTransform = new SoundTransform(this.§>!S§);
               }
            }
         }
      }
   }
}
