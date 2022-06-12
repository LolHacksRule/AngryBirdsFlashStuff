package §>i§
{
   public class §]!r§
   {
       
      
      private var §4m§:int;
      
      private var §]k§:int;
      
      private var §+5§:int;
      
      private var _height:int;
      
      private var §&,§:int;
      
      private var §0V§:int;
      
      public function §]!r§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            super();
            do
            {
               this.§4m§ = param1;
               do
               {
                  this.§]k§ = param2;
                  loop2:
                  do
                  {
                     this.§+5§ = param3;
                     while(true)
                     {
                        this._height = param4;
                        while(_loc7_)
                        {
                           this.§&,§ = param5;
                           while(!(_loc8_ && param3))
                           {
                              this.§0V§ = param6;
                              if(_loc7_ || param2)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  while(!(_loc7_ || this));
                  
               }
               while(_loc8_ && param1);
               
            }
            while(_loc8_ && this);
            
         }
      }
      
      public function get x() : int
      {
         return this.§4m§;
      }
      
      public function get y() : int
      {
         return this.§]k§;
      }
      
      public function get width() : int
      {
         return this.§+5§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§&,§;
      }
      
      public function get pivotY() : int
      {
         return this.§0V§;
      }
   }
}
