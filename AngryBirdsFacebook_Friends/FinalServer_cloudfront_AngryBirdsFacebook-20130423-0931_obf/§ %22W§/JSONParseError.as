package § "W§
{
   public class JSONParseError extends Error
   {
       
      
      private var §!!?§:int;
      
      private var §7!G§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super(param1);
         }
         while(true)
         {
            name = "JSONParseError";
            while(!_loc4_)
            {
               this.§!!?§ = param2;
               do
               {
                  this.§7!G§ = param3;
               }
               while(!(_loc5_ || param3));
               
               if(!_loc4_)
               {
                  return;
               }
            }
         }
      }
      
      public function get location() : int
      {
         return this.§!!?§;
      }
      
      public function get text() : String
      {
         return this.§7!G§;
      }
   }
}
