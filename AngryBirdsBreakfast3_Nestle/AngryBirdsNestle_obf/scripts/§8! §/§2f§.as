package §8! §
{
   public class §2f§
   {
       
      
      private var _x:int;
      
      private var _y:int;
      
      private var _width:int;
      
      private var _height:int;
      
      private var §,!9§:int;
      
      private var §4-§:int;
      
      public function §2f§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            while(true)
            {
               this._x = param1;
               while(true)
               {
                  this._y = param2;
                  loop2:
                  while(true)
                  {
                     this._width = param3;
                     addr75:
                     while(true)
                     {
                        this._height = param4;
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§4-§ = param6;
            if(!(_loc7_ && param1))
            {
               if(!_loc7_)
               {
                  break;
               }
               §§goto(addr75);
            }
            §§goto(addr52);
         }
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
         return this.§,!9§;
      }
      
      public function get pivotY() : int
      {
         return this.§4-§;
      }
   }
}
