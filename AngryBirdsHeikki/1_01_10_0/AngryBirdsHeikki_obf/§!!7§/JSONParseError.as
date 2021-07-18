package §!!7§
{
   public class JSONParseError extends Error
   {
       
      
      private var §0]§:int;
      
      private var §3,§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super(param1);
            while(true)
            {
               name = "JSONParseError";
               while(true)
               {
                  this.§0]§ = param2;
                  §§goto(addr73);
               }
            }
         }
         addr73:
         while(true)
         {
            this.§3,§ = param3;
            if(!(_loc5_ && this))
            {
               if(_loc4_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr58:
      }
      
      public function get § case§() : int
      {
         return this.§0]§;
      }
      
      public function get text() : String
      {
         return this.§3,§;
      }
   }
}
