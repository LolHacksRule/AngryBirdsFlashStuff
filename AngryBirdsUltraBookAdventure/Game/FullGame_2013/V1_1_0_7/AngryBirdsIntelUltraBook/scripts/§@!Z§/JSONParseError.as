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
         if(_loc5_ || param2)
         {
            super(param1);
            loop0:
            do
            {
               name = "JSONParseError";
               while(true)
               {
                  this.§;!0§ = param2;
                  while(!(_loc4_ && this))
                  {
                     this.§<9§ = param3;
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc5_ || param3));
            
         }
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
