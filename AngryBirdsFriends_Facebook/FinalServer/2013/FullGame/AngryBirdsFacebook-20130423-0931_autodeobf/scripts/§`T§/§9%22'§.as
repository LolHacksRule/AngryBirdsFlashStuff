package §`T§
{
   import flash.utils.getTimer;
   
   public class §9"'§
   {
       
      
      private var §0"D§:Number;
      
      private var §,"Y§:Number;
      
      public function §9"'§(param1:Number)
      {
         super();
         this.§@Q§ = param1;
      }
      
      public function set §@Q§(param1:Number) : void
      {
         this.§,"Y§ = getTimer();
         this.§0"D§ = param1;
      }
      
      public function get §?!;§() : Number
      {
         var _loc1_:Number = getTimer() - this.§,"Y§;
         return this.§0"D§ + _loc1_;
      }
   }
}
