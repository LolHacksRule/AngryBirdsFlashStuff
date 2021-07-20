package §_-VH§
{
   import §_-xo§.§_-Ar§;
   import §_-xo§.§_-E-§;
   import §_-xo§.§_-Lk§;
   
   public class §_-7W§ extends §_-Ar§
   {
       
      
      public function §_-7W§(param1:§_-Lk§, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super(param1,param2);
            if(_loc4_ || param2)
            {
               addr46:
               §_-7A§ = param1.duration;
            }
            return;
         }
         §§goto(addr46);
      }
      
      override protected function newInstance() : §_-E-§
      {
         return new §_-7W§(§_-Zc§.clone() as §_-Lk§,0);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §_-Zc§.update(§_-7A§ - param1);
         }
      }
   }
}
