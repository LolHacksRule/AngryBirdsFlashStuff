package §6w§
{
   public class §1_§
   {
       
      
      private var §"!3§:int;
      
      private var §?m§:int;
      
      private var §%3§:int;
      
      private var _height:int;
      
      private var §&w§:int;
      
      private var §>!N§:int;
      
      public function §1_§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            loop0:
            while(true)
            {
               this.§"!3§ = param1;
               while(true)
               {
                  this.§?m§ = param2;
                  while(!(_loc8_ && param3))
                  {
                     this.§%3§ = param3;
                     loop3:
                     while(true)
                     {
                        this._height = param4;
                        while(true)
                        {
                           if(!(_loc8_ && this))
                           {
                              this.§&w§ = param5;
                              continue;
                           }
                           continue loop3;
                        }
                     }
                     if(!(_loc8_ && param2))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function get x() : int
      {
         return this.§"!3§;
      }
      
      public function get y() : int
      {
         return this.§?m§;
      }
      
      public function get width() : int
      {
         return this.§%3§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§&w§;
      }
      
      public function get pivotY() : int
      {
         return this.§>!N§;
      }
   }
}
