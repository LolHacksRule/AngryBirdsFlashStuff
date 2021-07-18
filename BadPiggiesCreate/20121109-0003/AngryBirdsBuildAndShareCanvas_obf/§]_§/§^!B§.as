package §]_§
{
   import §`!#§.§9!0§;
   import §`!#§.§?f§;
   import §`!#§.§[!O§;
   
   public class §^!B§ extends §9!0§
   {
       
      
      private var §@!?§:Number;
      
      private var §5!A§:Number;
      
      public function §^!B§(param1:§?f§, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,0);
         }
         while(true)
         {
            §!"-§ = param2 + param1.duration + param3;
            while(_loc4_ || param2)
            {
               this.§5!A§ = param2;
               do
               {
                  this.§@!?§ = param3;
               }
               while(!(_loc4_ || param1));
               
               if(_loc4_ || param3)
               {
                  return;
               }
            }
         }
      }
      
      public function get §@"$§() : Number
      {
         return this.§5!A§;
      }
      
      override protected function newInstance() : §[!O§
      {
         return new §^!B§(§7"?§.clone() as §?f§,this.§5!A§,this.§@!?§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §7"?§.update(param1 - this.§5!A§);
         }
      }
      
      public function get §],§() : Number
      {
         return this.§@!?§;
      }
   }
}
