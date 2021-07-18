package §6"&§
{
   public class JSONParseError extends Error
   {
       
      
      private var §'!D§:int;
      
      private var §!!Z§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super(param1);
            while(true)
            {
               name = "JSONParseError";
               loop1:
               while(_loc5_)
               {
                  this.§'!D§ = param2;
                  while(true)
                  {
                     this.§!!Z§ = param3;
                     if(_loc5_ || param1)
                     {
                        if(_loc5_ || param3)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get §6!1§() : int
      {
         return this.§'!D§;
      }
      
      public function get text() : String
      {
         return this.§!!Z§;
      }
   }
}
