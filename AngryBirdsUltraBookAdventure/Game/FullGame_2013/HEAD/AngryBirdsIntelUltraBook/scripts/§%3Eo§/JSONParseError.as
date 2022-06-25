package §>o§
{
   public class JSONParseError extends Error
   {
       
      
      private var §+N§:int;
      
      private var §=r§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super(param1);
         }
         do
         {
            name = "JSONParseError";
            do
            {
               this.§+N§ = param2;
               do
               {
                  this.§=r§ = param3;
               }
               while(!(_loc4_ || param2));
               
            }
            while(!_loc4_);
            
         }
         while(_loc5_);
         
      }
      
      public function get location() : int
      {
         return this.§+N§;
      }
      
      public function get text() : String
      {
         return this.§=r§;
      }
   }
}
