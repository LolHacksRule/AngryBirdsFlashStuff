package §,!3§
{
   public class JSONParseError extends Error
   {
       
      
      private var §,=§:int;
      
      private var §?!9§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1);
         }
         do
         {
            name = "JSONParseError";
            do
            {
               this.§,=§ = param2;
               do
               {
                  this.§?!9§ = param3;
               }
               while(_loc4_);
               
            }
            while(_loc4_ && param2);
            
         }
         while(_loc4_ && param2);
         
      }
      
      public function get §#$§() : int
      {
         return this.§,=§;
      }
      
      public function get text() : String
      {
         return this.§?!9§;
      }
   }
}
