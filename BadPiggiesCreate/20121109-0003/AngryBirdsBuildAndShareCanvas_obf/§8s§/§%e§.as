package §8s§
{
   public class §%e§
   {
       
      
      private var §7!Z§:int;
      
      private var §4s§:int;
      
      private var §2P§:int;
      
      private var _height:int;
      
      private var §?!D§:int;
      
      private var §`! §:int;
      
      public function §%e§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§7!Z§ = param1;
               addr105:
               while(true)
               {
                  this.§4s§ = param2;
                  addr71:
                  if(_loc8_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      public function get x() : int
      {
         return this.§7!Z§;
      }
      
      public function get y() : int
      {
         return this.§4s§;
      }
      
      public function get width() : int
      {
         return this.§2P§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§?!D§;
      }
      
      public function get pivotY() : int
      {
         return this.§`! §;
      }
   }
}
