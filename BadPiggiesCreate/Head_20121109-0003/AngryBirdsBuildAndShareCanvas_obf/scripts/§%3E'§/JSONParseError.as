package §>'§
{
   public class JSONParseError extends Error
   {
       
      
      private var §`!R§:int;
      
      private var § m§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1);
            while(true)
            {
               name = "JSONParseError";
            }
            addr78:
         }
         loop1:
         do
         {
            this.§`!R§ = param2;
            while(_loc5_)
            {
               this.§ m§ = param3;
               if(_loc5_)
               {
                  continue loop1;
               }
            }
            §§goto(addr78);
         }
         while(!(_loc5_ || param2));
         
      }
      
      public function get §%!_§() : int
      {
         return this.§`!R§;
      }
      
      public function get text() : String
      {
         return this.§ m§;
      }
   }
}
