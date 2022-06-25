package §"!@§
{
   import flash.events.Event;
   
   public class ColorFadeLayerEvent extends Event
   {
      
      public static const ON_FADE_TO_ALPHA_COMPLETE:String = "OnFadeToAlphaComplete";
      
      {
         var ON_FADE_TO_ALPHA_COMPLETE:Boolean = true;
         var _loc2_:Boolean = false;
         if(ON_FADE_TO_ALPHA_COMPLETE)
         {
            do
            {
               ON_FADE_TO_ALPHA_COMPLETE = "OnFadeToAlphaComplete";
            }
            while(!(ON_FADE_TO_ALPHA_COMPLETE || ON_FADE_TO_ALPHA_COMPLETE));
            
         }
      }
      
      public function ColorFadeLayerEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!(_loc4_ && type))
         {
            while(true)
            {
               loop1:
               for(; _loc5_ || bubbles; if(_loc4_ && type)
               {
                  continue;
               },§§goto(addr80))
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        super(type,bubbles,cancelable);
                        while(true)
                        {
                           if(_loc5_)
                           {
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           continue loop3;
                           addr80:
                           if(_loc5_ || cancelable)
                           {
                              return;
                              addr52:
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         return new ColorFadeLayerEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         return formatToString("ColorFadeLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
