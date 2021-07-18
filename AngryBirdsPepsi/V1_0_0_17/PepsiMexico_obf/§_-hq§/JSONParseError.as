package §_-hq§
{
   public class JSONParseError extends Error
   {
       
      
      private var §null§:int;
      
      private var §_-WD§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super(param1);
            if(_loc5_ || param1)
            {
               addr38:
               name = "JSONParseError";
               if(_loc5_ || param2)
               {
                  this.§null§ = param2;
                  if(_loc5_ || param1)
                  {
                     this.§_-WD§ = param3;
                  }
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function get §_-m7§() : int
      {
         return this.§null§;
      }
      
      public function get text() : String
      {
         return this.§_-WD§;
      }
   }
}
