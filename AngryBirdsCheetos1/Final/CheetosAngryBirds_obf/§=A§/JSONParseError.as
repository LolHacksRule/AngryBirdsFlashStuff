package §=A§
{
   public class JSONParseError extends Error
   {
       
      
      private var §9w§:int;
      
      private var §?4§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1);
            while(true)
            {
               name = "JSONParseError";
            }
            addr72:
         }
         while(true)
         {
            this.§9w§ = param2;
            for(; !(_loc5_ && param1); this.§?4§ = param3,if(!_loc5_)
            {
               return;
            })
            {
               if(!_loc5_)
               {
                  continue;
               }
               §§goto(addr72);
            }
         }
      }
      
      public function get §=!@§() : int
      {
         return this.§9w§;
      }
      
      public function get text() : String
      {
         return this.§?4§;
      }
   }
}
