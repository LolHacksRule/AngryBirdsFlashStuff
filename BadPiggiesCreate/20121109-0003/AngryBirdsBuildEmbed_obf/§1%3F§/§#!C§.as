package §1?§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §#!C§
   {
       
      
      private var §^!"§:SoundChannel;
      
      private var §,!Z§:Function;
      
      private var §&!5§:Number;
      
      public function §#!C§(param1:SoundChannel, param2:Function = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super();
            if(!(_loc4_ && param2))
            {
               this.§^!"§ = param1;
               if(_loc3_)
               {
                  this.§,!Z§ = param2;
                  if(!_loc4_)
                  {
                     addr62:
                     this.§^!"§.addEventListener(Event.SOUND_COMPLETE,this.§;!2§);
                     if(_loc3_ || this)
                     {
                        this.§&!5§ = param1.soundTransform.volume;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      private function §;!2§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§^!"§.removeEventListener(Event.SOUND_COMPLETE,this.§;!2§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(this.§,!Z§);
               if(_loc2_ || _loc3_)
               {
                  §§push(null);
                  if(!(_loc3_ && param1))
                  {
                     if(§§pop() != §§pop())
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr85:
                           this.§,!Z§.call(null,this);
                           if(_loc2_ || param1)
                           {
                              addr94:
                              this.§,!Z§ = null;
                           }
                        }
                     }
                     return;
                  }
               }
               §§goto(addr85);
            }
         }
         §§goto(addr94);
      }
      
      public function §[s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§;!2§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§^!"§)
            {
               if(!_loc2_)
               {
                  addr23:
                  this.§^!"§.stop();
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function destroy() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^!"§.removeEventListener(Event.SOUND_COMPLETE,this.§;!2§);
            if(!_loc2_)
            {
               addr27:
               this.§^!"§ = null;
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function §<!>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§^!"§)
            {
               if(!_loc1_)
               {
                  addr39:
                  this.§^!"§.soundTransform = new SoundTransform(0);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §6h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§^!"§)
            {
               if(_loc1_ || _loc2_)
               {
                  addr38:
                  this.§^!"§.soundTransform = new SoundTransform(this.§&!5§);
               }
            }
            return;
         }
         §§goto(addr38);
      }
   }
}
