package §'!l§
{
   public class §;!g§
   {
       
      
      private var _x:int;
      
      private var _y:int;
      
      private var _width:int;
      
      private var _height:int;
      
      private var §?!,§:int;
      
      private var §<!R§:int;
      
      public function §;!g§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            super();
            while(true)
            {
               this._x = param1;
               while(!(_loc8_ && param1))
               {
                  this._y = param2;
                  loop2:
                  while(true)
                  {
                     this._width = param3;
                     while(true)
                     {
                        this._height = param4;
                        while(_loc7_ || this)
                        {
                           this.§?!,§ = param5;
                           loop5:
                           while(_loc7_)
                           {
                              while(true)
                              {
                                 this.§<!R§ = param6;
                                 if(_loc7_ || param2)
                                 {
                                    continue loop2;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                        }
                     }
                  }
                  if(_loc8_ && param3)
                  {
                     continue;
                  }
                  §§goto(addr63);
               }
            }
         }
         §§goto(addr70);
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this._y;
      }
      
      public function get width() : int
      {
         return this._width;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§?!,§;
      }
      
      public function get pivotY() : int
      {
         return this.§<!R§;
      }
   }
}
