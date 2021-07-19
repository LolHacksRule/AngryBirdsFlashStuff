package §,!D§
{
   public class JSONParseError extends Error
   {
       
      
      private var §#s§:int;
      
      private var §9!X§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1);
         }
         loop0:
         while(true)
         {
            name = "JSONParseError";
            while(true)
            {
               this.§#s§ = param2;
               while(!_loc4_)
               {
                  continue loop0;
                  this.§9!X§ = param3;
                  if(_loc5_ || param1)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function get §%!6§() : int
      {
         return this.§#s§;
      }
      
      public function get text() : String
      {
         return this.§9!X§;
      }
   }
}
