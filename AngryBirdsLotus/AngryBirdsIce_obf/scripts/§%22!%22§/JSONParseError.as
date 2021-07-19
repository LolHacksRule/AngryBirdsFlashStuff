package §"!"§
{
   public class JSONParseError extends Error
   {
       
      
      private var _location:int;
      
      private var _text:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super(param1);
            loop0:
            while(true)
            {
               name = "JSONParseError";
               loop1:
               while(true)
               {
                  this._location = param2;
                  loop2:
                  while(_loc5_)
                  {
                     while(true)
                     {
                        this._text = param3;
                        if(!_loc4_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr64);
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
