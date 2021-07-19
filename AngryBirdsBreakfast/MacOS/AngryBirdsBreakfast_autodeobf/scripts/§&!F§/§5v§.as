package §&!F§
{
   import §-!u§.§2u§;
   import §-!u§.§@!c§;
   import §0"$§.§"!a§;
   import §0"$§.§;§;
   
   public class §5v§ extends §@!c§
   {
       
      
      private var §9!P§:§"!a§;
      
      private var §@!t§:String = "";
      
      public function §5v§(param1:Number, param2:Number, param3:§"!a§, param4:Array = null, param5:Class = null, param6:Number = 0, param7:Number = 1.7976931348623157E308)
      {
         this.§9!P§ = param3;
         super(param1,param2,param4,param5,param6,param7);
      }
      
      public function set §9F§(param1:String) : void
      {
         this.§@!t§ = param1;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§7n§ = null;
         super.dispose();
         for each(_loc1_ in §1`§)
         {
            _loc1_.disposeRovioButton(this.§9!P§);
         }
      }
      
      override protected function setRendererData(param1:§2u§, param2:Object) : void
      {
         super.setRendererData(param1,param2);
         (param1 as §7n§).§<!m§(this.§9!P§,this.§@!t§);
      }
      
      public function §&!c§(param1:int) : §;§
      {
         return (§+7§[param1] as §7n§).§+!6§(true);
      }
      
      override protected function hide(param1:§2u§) : void
      {
         (param1 as §7n§).hide(this.§9!P§);
         super.hide(param1);
      }
      
      public function get §!4§() : int
      {
         return §8! §;
      }
   }
}
