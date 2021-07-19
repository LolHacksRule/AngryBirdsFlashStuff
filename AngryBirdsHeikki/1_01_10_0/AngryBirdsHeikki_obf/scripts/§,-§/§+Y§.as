package §,-§
{
   public class §+Y§
   {
       
      
      private var §,!F§:int;
      
      private var §#!T§:int;
      
      private var §@1§:int;
      
      private var _height:int;
      
      private var §4i§:int;
      
      private var §;!U§:int;
      
      public function §+Y§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            while(true)
            {
               this.§,!F§ = param1;
               addr94:
               while(true)
               {
                  this.§#!T§ = param2;
                  addr29:
                  if(_loc7_ || param3)
                  {
                     return;
                     addr36:
                  }
               }
               addr55:
               if(!(_loc7_ || param2))
               {
                  continue;
               }
               this.§;!U§ = param6;
               if(_loc7_)
               {
                  §§goto(addr29);
               }
               loop5:
               while(true)
               {
                  if(!_loc8_)
                  {
                     if(_loc7_)
                     {
                        §§goto(addr55);
                     }
                     else
                     {
                        while(true)
                        {
                           this.§@1§ = param3;
                           addr74:
                           while(true)
                           {
                              this._height = param4;
                           }
                        }
                        §§goto(addr36);
                        addr89:
                     }
                  }
                  while(_loc7_)
                  {
                     this.§4i§ = param5;
                     continue loop5;
                  }
                  §§goto(addr74);
               }
               addr62:
               §§goto(addr94);
            }
         }
         §§goto(addr89);
      }
      
      public function get x() : int
      {
         return this.§,!F§;
      }
      
      public function get y() : int
      {
         return this.§#!T§;
      }
      
      public function get width() : int
      {
         return this.§@1§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§4i§;
      }
      
      public function get pivotY() : int
      {
         return this.§;!U§;
      }
   }
}
