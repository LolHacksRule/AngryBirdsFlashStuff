package §?!7§
{
   public class JSONParseError extends Error
   {
       
      
      private var _location:int;
      
      private var _text:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1);
            if(!(_loc5_ && param2))
            {
               addr38:
               name = "JSONParseError";
               if(!(_loc5_ && param1))
               {
                  this._location = param2;
                  if(!_loc5_)
                  {
                     this._text = param3;
                  }
               }
            }
            return;
         }
         §§goto(addr38);
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
