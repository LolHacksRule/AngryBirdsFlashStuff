package §&!4§
{
   public class JSONParseError extends Error
   {
       
      
      private var §]n§:int;
      
      private var §?!Y§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1);
            loop0:
            do
            {
               name = "JSONParseError";
               while(true)
               {
                  this.§]n§ = param2;
                  while(_loc4_)
                  {
                     this.§?!Y§ = param3;
                     if(_loc4_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc5_ && param2);
            
         }
      }
      
      public function get location() : int
      {
         return this.§]n§;
      }
      
      public function get text() : String
      {
         return this.§?!Y§;
      }
   }
}
