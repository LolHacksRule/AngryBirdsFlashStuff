package §,j§
{
   public class JSONParseError extends Error
   {
       
      
      private var §1!3§:int;
      
      private var _text:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1);
            while(true)
            {
               name = "JSONParseError";
            }
            addr72:
         }
         loop1:
         while(true)
         {
            this.§1!3§ = param2;
            while(_loc4_)
            {
               this._text = param3;
               if(!(_loc4_ || this))
               {
                  continue;
               }
               if(_loc4_)
               {
                  break loop1;
               }
               §§goto(addr72);
            }
         }
      }
      
      public function get location() : int
      {
         return this.§1!3§;
      }
      
      public function get text() : String
      {
         return this._text;
      }
   }
}
