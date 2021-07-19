package §+6§
{
   public class §29§
   {
       
      
      private var §8^§:int;
      
      private var §3!S§:int;
      
      private var §+H§:int;
      
      private var _height:int;
      
      private var §7§:int;
      
      private var §&Q§:int;
      
      public function §29§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param3))
         {
            super();
            while(true)
            {
               this.§8^§ = param1;
               loop1:
               while(true)
               {
                  this.§3!S§ = param2;
                  addr105:
                  while(true)
                  {
                     this.§+H§ = param3;
                     while(true)
                     {
                        this._height = param4;
                        addr35:
                        if(_loc8_ || param1)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               addr73:
               if(_loc7_ && param2)
               {
                  continue;
               }
               this.§&Q§ = param6;
               if(_loc8_)
               {
                  §§goto(addr35);
               }
               loop5:
               while(true)
               {
                  if(_loc8_ || param1)
                  {
                     if(!_loc8_)
                     {
                        break;
                     }
                     §§goto(addr73);
                  }
                  addr85:
                  while(true)
                  {
                     this.§7§ = param5;
                     continue loop5;
                  }
                  §§goto(addr59);
               }
               addr80:
               §§goto(addr105);
            }
         }
         §§goto(addr85);
      }
      
      public function get x() : int
      {
         return this.§8^§;
      }
      
      public function get y() : int
      {
         return this.§3!S§;
      }
      
      public function get width() : int
      {
         return this.§+H§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§7§;
      }
      
      public function get pivotY() : int
      {
         return this.§&Q§;
      }
   }
}
