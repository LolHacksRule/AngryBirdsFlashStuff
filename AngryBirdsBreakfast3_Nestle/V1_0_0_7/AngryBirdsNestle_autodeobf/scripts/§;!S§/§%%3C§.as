package §;!S§
{
   import §+g§.§'!e§;
   import §+g§.§1!i§;
   import §>P§.§73§;
   import §>P§.§]"4§;
   
   public class §%<§ extends §1!i§
   {
       
      
      private var §]>§:§]"4§;
      
      private var §?&§:String = "";
      
      public function §%<§(param1:Number, param2:Number, param3:§]"4§, param4:Array = null, param5:Class = null, param6:Number = 0, param7:Number = 1.7976931348623157E308)
      {
         this.§]>§ = param3;
         super(param1,param2,param4,param5,param6,param7);
      }
      
      public function set §implements§(param1:String) : void
      {
         this.§?&§ = param1;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§9z§ = null;
         super.dispose();
         for each(_loc1_ in §+o§)
         {
            _loc1_.disposeRovioButton(this.§]>§);
         }
      }
      
      override protected function setRendererData(param1:§'!e§, param2:Object) : void
      {
         super.setRendererData(param1,param2);
         (param1 as §9z§).§4!H§(this.§]>§,this.§?&§);
      }
      
      public function §"!D§(param1:int) : §73§
      {
         return (§0;§[param1] as §9z§).§!!9§(true);
      }
      
      override protected function hide(param1:§'!e§) : void
      {
         (param1 as §9z§).hide(this.§]>§);
         super.hide(param1);
      }
      
      public function get §,!b§() : int
      {
         return §7!U§;
      }
   }
}
