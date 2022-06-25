package §&!"§
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
            while(PARSE_ERROR);
            
         }
      }
      
      public var text:String;
      
      public function FZipErrorEvent(type:String, text:String = "", bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         if(_loc6_ || text)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop4:
                     for(; _loc6_ || type; loop6:
                     while(!(_loc5_ && bubbles))
                     {
                        super(type,bubbles,cancelable);
                        while(true)
                        {
                           if(!(_loc6_ || this))
                           {
                              continue loop6;
                           }
                           if(_loc6_)
                           {
                              continue loop1;
                           }
                           §§goto(addr104);
                           addr79:
                           if(_loc5_)
                           {
                              continue;
                           }
                           addr37:
                           if(_loc6_ || text)
                           {
                              return;
                           }
                           addr117:
                           while(true)
                           {
                              break loop6;
                              §§goto(addr37);
                           }
                        }
                        continue loop1;
                     })
                     {
                        this.text = text;
                        while(true)
                        {
                           continue loop4;
                        }
                     }
                  }
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     continue loop0;
                  }
                  §§goto(addr79);
               }
            }
         }
         §§goto(addr117);
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return new FZipErrorEvent(type,this.text,bubbles,cancelable);
      }
   }
}
