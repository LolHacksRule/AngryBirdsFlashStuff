package §2d§
{
   public class §`!K§
   {
       
      
      private var _x:int;
      
      private var _y:int;
      
      private var §%!t§:int;
      
      private var _height:int;
      
      private var §!#@§:int;
      
      private var §1#a§:int;
      
      public function §`!K§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            super();
         }
         loop0:
         while(true)
         {
            this._x = param1;
            while(true)
            {
               this._y = param2;
               while(!_loc7_)
               {
                  this.§%!t§ = param3;
                  continue loop0;
                  while(!(_loc7_ && param3))
                  {
                     this.§!#@§ = param5;
                     while(!_loc7_)
                     {
                        this.§1#a§ = param6;
                        if(!_loc7_)
                        {
                           addr35:
                           if(!(_loc7_ && this))
                           {
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
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
         return this.§%!t§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§!#@§;
      }
      
      public function get pivotY() : int
      {
         return this.§1#a§;
      }
   }
}
