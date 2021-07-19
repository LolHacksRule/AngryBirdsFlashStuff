package §`#@§
{
   public class JSONParseError extends Error
   {
       
      
      private var §3#^§:int;
      
      private var §-#@§:String;
      
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
                  this.§3#^§ = param2;
                  while(_loc4_ || this)
                  {
                     if(!_loc5_)
                     {
                        this.§-#@§ = param3;
                        if(!(_loc5_ && this))
                        {
                           return;
                           addr49:
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function get §1"-§() : int
      {
         return this.§3#^§;
      }
      
      public function get text() : String
      {
         return this.§-#@§;
      }
   }
}
