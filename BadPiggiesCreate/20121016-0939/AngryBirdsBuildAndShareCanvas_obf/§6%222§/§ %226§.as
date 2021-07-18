package §6"2§
{
   import §1!k§.§"U§;
   import §1!k§.§?H§;
   import §1!k§.§^!B§;
   
   public class § "6§ extends §"U§
   {
       
      
      private var §-e§:Number;
      
      public function § "6§(param1:§?H§, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,0);
            do
            {
               §[m§ = param1.duration * param2;
               do
               {
                  this.§-e§ = param2;
               }
               while(!_loc4_);
               
            }
            while(!(_loc4_ || this));
            
         }
      }
      
      public function get scale() : Number
      {
         return this.§-e§;
      }
      
      override protected function newInstance() : §^!B§
      {
         return new § "6§(§>d§.clone() as §?H§,this.§-e§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §>d§.update(param1 / this.scale);
         }
      }
   }
}
