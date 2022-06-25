package §5!3§
{
   import flash.events.Event;
   
   public class ColorFadeLayerEvent extends Event
   {
      
      public static const ON_FADE_TO_ALPHA_COMPLETE:String = "OnFadeToAlphaComplete";
      
      {
         var ON_FADE_TO_ALPHA_COMPLETE:Boolean = false;
         var _loc2_:Boolean = true;
         if(ON_FADE_TO_ALPHA_COMPLETE && _loc2_)
         {
         }
         do
         {
            ON_FADE_TO_ALPHA_COMPLETE = "OnFadeToAlphaComplete";
         }
         while(ON_FADE_TO_ALPHA_COMPLETE && _loc2_);
         
      }
      
      public function ColorFadeLayerEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(!_loc5_)
         {
            while(true)
            {
               while(true)
               {
                  loop3:
                  while(_loc4_ || type)
                  {
                     super(type,bubbles,cancelable);
                     while(true)
                     {
                        if(_loc4_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     while(true)
                     {
                        continue loop3;
                     }
                     return;
                  }
               }
               if(!(_loc4_ || bubbles))
               {
                  continue;
               }
               §§goto(addr58);
            }
         }
         §§goto(addr82);
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && _loc1_)
         {
         }
         return new ColorFadeLayerEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_ && this)
         {
         }
         return formatToString("ColorFadeLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
