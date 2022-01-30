package §,a§
{
   import §?!J§.§#e§;
   import §?!J§.§@!w§;
   import §[!F§.§3j§;
   import §[!F§.§^!g§;
   
   public class §[!?§ extends §@!w§
   {
       
      
      private var §1j§:§3j§;
      
      private var §'!'§:String = "";
      
      public function §[!?§(param1:Number, param2:Number, param3:§3j§, param4:Array = null, param5:Class = null, param6:Number = 0, param7:Number = 1.7976931348623157E308)
      {
         this.§1j§ = param3;
         super(param1,param2,param4,param5,param6,param7);
      }
      
      public function set § !o§(param1:String) : void
      {
         this.§'!'§ = param1;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§>O§ = null;
         super.dispose();
         for each(_loc1_ in §"u§)
         {
            _loc1_.disposeRovioButton(this.§1j§);
         }
      }
      
      override protected function setRendererData(param1:§#e§, param2:Object) : void
      {
         super.setRendererData(param1,param2);
         (param1 as §>O§).§'!1§(this.§1j§,this.§'!'§);
      }
      
      public function §"![§(param1:int) : §^!g§
      {
         return (§+&§[param1] as §>O§).§7!s§(true);
      }
      
      override protected function hide(param1:§#e§) : void
      {
         (param1 as §>O§).hide(this.§1j§);
         super.hide(param1);
      }
      
      public function get §&!y§() : int
      {
         return §#!"§;
      }
   }
}
