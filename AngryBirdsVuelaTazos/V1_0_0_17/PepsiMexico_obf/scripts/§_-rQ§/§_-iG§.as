package §_-rQ§
{
   import flash.events.Event;
   import flash.media.SoundChannel;
   
   public class §_-iG§
   {
       
      
      private var §_-Yu§:SoundChannel;
      
      private var §_-T2§:Function;
      
      public function §_-iG§(param1:SoundChannel, param2:Function = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super();
            if(!_loc3_)
            {
               this.§_-Yu§ = param1;
               if(_loc4_ || _loc3_)
               {
                  addr42:
                  this.§_-T2§ = param2;
                  if(_loc3_)
                  {
                  }
                  §§goto(addr61);
               }
               this.§_-Yu§.addEventListener(Event.SOUND_COMPLETE,this.§_-cE§);
               addr61:
               return;
            }
         }
         §§goto(addr42);
      }
      
      private function §_-cE§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-Yu§.removeEventListener(Event.SOUND_COMPLETE,this.§_-cE§);
            if(!_loc2_)
            {
               §§push(this.§_-T2§);
               if(!_loc2_)
               {
                  §§push(null);
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop() != §§pop())
                     {
                        if(!(_loc2_ && this))
                        {
                           addr55:
                           this.§_-T2§.call(null,this);
                           addr54:
                           addr52:
                           if(_loc3_ || this)
                           {
                           }
                           §§goto(addr74);
                        }
                        this.§_-T2§ = null;
                        §§goto(addr74);
                     }
                     addr74:
                     return;
                  }
                  §§goto(addr55);
               }
               §§goto(addr54);
            }
            §§goto(addr52);
         }
         §§goto(addr55);
      }
      
      public function §_-py§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§_-cE§(new Event(Event.SOUND_COMPLETE));
         }
      }
      
      public function get §_-D8§() : SoundChannel
      {
         return this.§_-Yu§;
      }
      
      public function §_-g0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§_-Yu§.removeEventListener(Event.SOUND_COMPLETE,this.§_-cE§);
            if(!_loc1_)
            {
               this.§_-Yu§ = null;
            }
         }
      }
   }
}
