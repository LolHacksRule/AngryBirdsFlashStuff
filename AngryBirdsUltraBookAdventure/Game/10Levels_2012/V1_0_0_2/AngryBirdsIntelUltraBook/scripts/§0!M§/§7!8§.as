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
               while(true)
               {
                  this.§^!a§ = param2;
                  loop3:
                  while(!(_loc7_ && param2))
                  {
                     this._height = param4;
                     while(true)
                     {
                        this.§;!Y§ = param5;
                        while(_loc8_)
                        {
                           continue loop0;
                           this.§+S§ = param6;
                           if(_loc7_)
                           {
                              continue;
                           }
                           if(_loc7_)
                           {
                              continue loop3;
                           }
                           addr32:
                           if(_loc8_)
                           {
                              return;
                           }
                           addr90:
                           while(true)
                           {
                              this.§`!q§ = param3;
                              continue loop3;
                              §§goto(addr32);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr90);
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
