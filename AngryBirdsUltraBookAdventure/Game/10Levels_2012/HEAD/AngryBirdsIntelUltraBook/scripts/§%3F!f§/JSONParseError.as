package §?!f§
{
   public class JSONParseError extends Error
   {
       
      
      private var §`!S§:int;
      
      private var §]T§:String;
      
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
                  this.§`!S§ = param2;
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.§]T§ = param3;
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
         return this.§`!S§;
      }
      
      public function get text() : String
      {
         return this.§]T§;
      }
   }
}
