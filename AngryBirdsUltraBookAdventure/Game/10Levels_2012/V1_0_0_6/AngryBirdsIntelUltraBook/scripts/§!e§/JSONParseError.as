package §!e§
{
   public class JSONParseError extends Error
   {
       
      
      private var §"g§:int;
      
      private var §!<§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1);
            do
            {
               name = "JSONParseError";
               do
               {
                  this.§"g§ = param2;
                  do
                  {
                     this.§!<§ = param3;
                  }
                  while(!_loc5_);
                  
               }
               while(_loc4_);
               
            }
            while(_loc4_ && param1);
            
         }
      }
      
      public function get location() : int
      {
         return this.§"g§;
      }
      
      public function get text() : String
      {
         return this.§!<§;
      }
   }
}
