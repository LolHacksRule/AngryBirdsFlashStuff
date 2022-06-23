package §>k§
{
   public class §[!M§
   {
       
      
      private var §?!-§:int;
      
      private var §&6§:int;
      
      private var §?F§:int;
      
      private var _height:int;
      
      private var §3!M§:int;
      
      private var §2!5§:int;
      
      public function §[!M§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            super();
            this.§?!-§ = param1;
            if(!(_loc8_ && this))
            {
               this.§&6§ = param2;
               this.§?F§ = param3;
               if(!_loc8_)
               {
                  this._height = param4;
                  if(_loc7_)
                  {
                     addr68:
                     this.§3!M§ = param5;
                     if(!_loc7_)
                     {
                     }
                     §§goto(addr76);
                  }
                  this.§2!5§ = param6;
                  addr76:
                  return;
               }
            }
         }
         §§goto(addr68);
      }
      
      public function get x() : int
      {
         return this.§?!-§;
      }
      
      public function get y() : int
      {
         return this.§&6§;
      }
      
      public function get width() : int
      {
         return this.§?F§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§3!M§;
      }
      
      public function get pivotY() : int
      {
         return this.§2!5§;
      }
   }
}
