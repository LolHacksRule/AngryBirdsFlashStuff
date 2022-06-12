package § !9§
{
   public class JSONParseError extends Error
   {
       
      
      private var §%"F§:int;
      
      private var §'!B§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super(param1);
            loop0:
            while(true)
            {
               name = "JSONParseError";
               while(true)
               {
                  this.§%"F§ = param2;
                  loop2:
                  while(!_loc5_)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§'!B§ = param3;
                        if(!_loc5_)
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
         §§goto(addr68);
      }
      
      public function get location() : int
      {
         return this.§%"F§;
      }
      
      public function get text() : String
      {
         return this.§'!B§;
      }
   }
}
