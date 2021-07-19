package §6"2§
{
   import §1!k§.§"U§;
   import §1!k§.§?H§;
   import §1!k§.§^!B§;
   
   public class §`!u§ extends §"U§
   {
       
      
      private var §0"8§:Number;
      
      private var §5K§:Number;
      
      public function §`!u§(param1:§?H§, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,0);
            while(true)
            {
               §[m§ = param2 + param1.duration + param3;
            }
            addr83:
         }
         loop1:
         while(true)
         {
            this.§5K§ = param2;
            while(_loc4_ || this)
            {
               this.§0"8§ = param3;
               if(_loc5_ && this)
               {
                  continue;
               }
               if(_loc4_)
               {
                  break loop1;
               }
               §§goto(addr83);
            }
         }
      }
      
      public function get §%!i§() : Number
      {
         return this.§5K§;
      }
      
      override protected function newInstance() : §^!B§
      {
         return new §`!u§(§>d§.clone() as §?H§,this.§5K§,this.§0"8§);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §>d§.update(param1 - this.§5K§);
         }
      }
      
      public function get §9!_§() : Number
      {
         return this.§0"8§;
      }
   }
}
