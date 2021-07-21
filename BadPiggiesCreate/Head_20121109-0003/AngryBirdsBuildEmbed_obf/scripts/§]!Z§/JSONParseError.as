package §]!Z§
{
   public class JSONParseError extends Error
   {
       
      
      private var _location:int;
      
      private var _text:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super(param1);
            if(!(_loc4_ && this))
            {
               addr54:
               name = "JSONParseError";
               if(!(_loc4_ && param1))
               {
                  §§goto(addr64);
               }
               §§goto(addr69);
            }
            addr64:
            this._location = param2;
            if(!_loc4_)
            {
               addr69:
               this._text = param3;
            }
            return;
         }
         §§goto(addr54);
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
