package §]_§
{
   import §`!#§.§9!0§;
   import §`!#§.§?f§;
   import §`!#§.§[!O§;
   
   public class §=!X§ extends §9!0§
   {
       
      
      private var §-">§:Number;
      
      public function §=!X§(param1:§?f§, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,0);
            do
            {
               §!"-§ = param1.duration * param2;
               do
               {
                  this.§-">§ = param2;
               }
               while(_loc3_);
               
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function get scale() : Number
      {
         return this.§-">§;
      }
      
      override protected function newInstance() : §[!O§
      {
         return new §=!X§(§7"?§.clone() as §?f§,this.§-">§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §7"?§.update(param1 / this.scale);
         }
      }
   }
}
