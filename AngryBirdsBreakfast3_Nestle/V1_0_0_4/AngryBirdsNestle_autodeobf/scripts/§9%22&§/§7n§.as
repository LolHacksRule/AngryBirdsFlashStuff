package §9"&§
{
   import §@#§.§4!O§;
   import §@#§.§9!'§;
   import §for §.§<!]§;
   import §for §.§extends§;
   
   public class §7n§ extends §extends§
   {
       
      
      private var §8Y§:§9!'§;
      
      private var §"s§:String = "";
      
      public function §7n§(param1:Number, param2:Number, param3:§9!'§, param4:Array = null, param5:Class = null, param6:Number = 0, param7:Number = 1.7976931348623157E308)
      {
         this.§8Y§ = param3;
         super(param1,param2,param4,param5,param6,param7);
      }
      
      public function set §]M§(param1:String) : void
      {
         this.§"s§ = param1;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§28§ = null;
         super.dispose();
         for each(_loc1_ in §6i§)
         {
            _loc1_.disposeRovioButton(this.§8Y§);
         }
      }
      
      override protected function setRendererData(param1:§<!]§, param2:Object) : void
      {
         super.setRendererData(param1,param2);
         (param1 as §28§).§7!#§(this.§8Y§,this.§"s§);
      }
      
      public function §>2§(param1:int) : §4!O§
      {
         return (§'Q§[param1] as §28§).§]!P§(true);
      }
      
      override protected function hide(param1:§<!]§) : void
      {
         (param1 as §28§).hide(this.§8Y§);
         super.hide(param1);
      }
      
      public function get §3!9§() : int
      {
         return §import§;
      }
   }
}
