package §_-VH§
{
   import §_-xo§.§_-Ar§;
   import §_-xo§.§_-E-§;
   import §_-xo§.§_-Lk§;
   
   public class §_-QD§ extends §_-Ar§
   {
       
      
      private var §_-09§:Number;
      
      public function §_-QD§(param1:§_-Lk§, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,0);
            if(!(_loc4_ && param1))
            {
               §_-7A§ = param1.duration * param2;
               if(!(_loc4_ && _loc3_))
               {
                  addr53:
                  this.§_-09§ = param2;
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function get scale() : Number
      {
         return this.§_-09§;
      }
      
      override protected function newInstance() : §_-E-§
      {
         return new §_-QD§(§_-Zc§.clone() as §_-Lk§,this.§_-09§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §_-Zc§.update(param1 / this.scale);
         }
      }
   }
}
