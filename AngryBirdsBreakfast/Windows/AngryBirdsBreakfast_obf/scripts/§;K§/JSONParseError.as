package §;K§
{
   public class JSONParseError extends Error
   {
       
      
      private var §]!"§:int;
      
      private var _text:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1);
            loop0:
            while(true)
            {
               name = "JSONParseError";
               loop1:
               do
               {
                  this.§]!"§ = param2;
                  while(_loc4_)
                  {
                     this._text = param3;
                     if(_loc4_ || param2)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc5_);
               
            }
         }
      }
      
      public function get location() : int
      {
         return this.§]!"§;
      }
      
      public function get text() : String
      {
         return this._text;
      }
   }
}
