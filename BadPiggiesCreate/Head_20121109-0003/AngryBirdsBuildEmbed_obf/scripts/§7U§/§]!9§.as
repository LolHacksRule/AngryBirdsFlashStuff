package §7U§
{
   public class §]!9§
   {
       
      
      private var §2!p§:int;
      
      private var §&U§:int;
      
      private var §!!A§:int;
      
      private var _height:int;
      
      private var §'x§:int;
      
      private var §1w§:int;
      
      public function §]!9§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param2))
         {
            super();
            if(!_loc7_)
            {
               this.§2!p§ = param1;
               this.§&U§ = param2;
               addr41:
               if(!(_loc7_ && param2))
               {
                  this.§!!A§ = param3;
                  if(_loc8_)
                  {
                     this._height = param4;
                     if(_loc8_ || param1)
                     {
                        addr76:
                        this.§'x§ = param5;
                        addr79:
                        this.§1w§ = param6;
                     }
                     §§goto(addr79);
                  }
                  return;
               }
            }
            §§goto(addr76);
         }
         §§goto(addr41);
      }
      
      public function get x() : int
      {
         return this.§2!p§;
      }
      
      public function get y() : int
      {
         return this.§&U§;
      }
      
      public function get width() : int
      {
         return this.§!!A§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§'x§;
      }
      
      public function get pivotY() : int
      {
         return this.§1w§;
      }
   }
}
