package §0!M§
{
   public class §7!8§
   {
       
      
      private var §&>§:int;
      
      private var §^!a§:int;
      
      private var §`!q§:int;
      
      private var _height:int;
      
      private var §;!Y§:int;
      
      private var §+S§:int;
      
      public function §7!8§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.§&>§ = param1;
               loop1:
               while(true)
               {
                  this.§^!a§ = param2;
                  while(true)
                  {
                     this.§`!q§ = param3;
                     loop3:
                     while(_loc8_ || param2)
                     {
                        if(!_loc7_)
                        {
                           this._height = param4;
                           loop4:
                           while(!_loc7_)
                           {
                              this.§;!Y§ = param5;
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function get x() : int
      {
         return this.§&>§;
      }
      
      public function get y() : int
      {
         return this.§^!a§;
      }
      
      public function get width() : int
      {
         return this.§`!q§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§;!Y§;
      }
      
      public function get pivotY() : int
      {
         return this.§+S§;
      }
   }
}
