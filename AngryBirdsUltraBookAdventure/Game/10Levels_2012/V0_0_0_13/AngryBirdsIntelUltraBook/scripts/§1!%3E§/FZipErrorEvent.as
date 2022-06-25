package §1!>§
{
   import flash.events.Event;
   
   public class FZipErrorEvent extends Event
   {
      
      public static const PARSE_ERROR:String = "parseError";
      
      {
         var PARSE_ERROR:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            do
            {
               PARSE_ERROR = "parseError";
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public var text:String;
      
      public function FZipErrorEvent(type:String, text:String = "", bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || type)
         {
         }
         if(_loc6_ || this)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop6:
                     for(; !(_loc5_ && type); if(_loc5_ && type)
                     {
                        continue;
                     },§§goto(addr64))
                     {
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                        super(type,bubbles,cancelable);
                        while(_loc6_)
                        {
                           continue loop1;
                           if(_loc6_ || this)
                           {
                              continue loop6;
                           }
                        }
                        loop5:
                        while(true)
                        {
                           if(_loc6_ || type)
                           {
                              continue loop6;
                           }
                           addr127:
                           while(true)
                           {
                              do
                              {
                                 this.text = text;
                                 continue loop5;
                              }
                              while(_loc5_ && text);
                              
                              return;
                              continue loop5;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr127);
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         return new FZipErrorEvent(type,this.text,bubbles,cancelable);
      }
   }
}
