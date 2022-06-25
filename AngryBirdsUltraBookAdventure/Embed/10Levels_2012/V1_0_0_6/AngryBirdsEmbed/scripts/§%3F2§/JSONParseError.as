package §?2§
{
   public class JSONParseError extends Error
   {
       
      
      private var _location:int;
      
      private var _text:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super(param1);
            if(_loc4_ || param1)
            {
               name = "JSONParseError";
               if(_loc4_ || param1)
               {
                  §§goto(addr63);
               }
            }
            §§goto(addr73);
         }
         addr63:
         this._location = param2;
         if(_loc4_ || this)
         {
            addr73:
            this._text = param3;
         }
      }
      
      public function get location() : int
      {
         return this._location;
      }
      
      public function get text() : String
      {
         return this._text;
      }
   }
}
