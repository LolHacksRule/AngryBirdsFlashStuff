package §<8§
{
   public class §5J§
   {
       
      
      private var §+5§:int;
      
      private var §;^§:int;
      
      private var §+n§:int;
      
      private var _height:int;
      
      private var §[S§:int;
      
      private var §11§:int;
      
      public function §5J§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.§+5§ = param1;
               loop1:
               while(true)
               {
                  this.§;^§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§+n§ = param3;
                     while(true)
                     {
                        this._height = param4;
                        while(_loc8_)
                        {
                           continue loop0;
                           if(_loc8_)
                           {
                              return;
                              addr52:
                           }
                        }
                        continue loop1;
                        addr57:
                        loop5:
                        while(!(_loc7_ && param2))
                        {
                           continue loop2;
                           while(true)
                           {
                              this.§11§ = param6;
                              if(_loc7_ && this)
                              {
                                 continue loop5;
                              }
                              §§goto(addr40);
                           }
                           §§goto(addr52);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function get x() : int
      {
         return this.§+5§;
      }
      
      public function get y() : int
      {
         return this.§;^§;
      }
      
      public function get width() : int
      {
         return this.§+n§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§[S§;
      }
      
      public function get pivotY() : int
      {
         return this.§11§;
      }
   }
}
