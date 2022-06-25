package §@!Z§
{
   public class JSONParseError extends Error
   {
       
      
      private var §;!0§:int;
      
      private var §<9§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super(param1);
            while(true)
            {
               name = "JSONParseError";
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     this.§;!0§ = param2;
                     do
                     {
                        this.§<9§ = param3;
                     }
                     while(_loc4_ && param2);
                     
                     if(_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function get location() : int
      {
         return this.§;!0§;
      }
      
      public function get text() : String
      {
         return this.§<9§;
      }
   }
}
