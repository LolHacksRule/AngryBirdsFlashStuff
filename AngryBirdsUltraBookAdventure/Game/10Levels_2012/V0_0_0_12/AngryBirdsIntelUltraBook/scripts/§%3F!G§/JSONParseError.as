package §?!G§
{
   public class JSONParseError extends Error
   {
       
      
      private var §0!f§:int;
      
      private var §]!7§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1);
            while(true)
            {
               name = "JSONParseError";
               while(_loc4_)
               {
                  this.§0!f§ = param2;
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.§]!7§ = param3;
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      public function get location() : int
      {
         return this.§0!f§;
      }
      
      public function get text() : String
      {
         return this.§]!7§;
      }
   }
}
