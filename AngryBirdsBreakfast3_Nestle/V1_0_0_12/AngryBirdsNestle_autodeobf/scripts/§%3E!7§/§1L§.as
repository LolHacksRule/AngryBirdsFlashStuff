package §>!7§
{
   import §#b§.§!!8§;
   import §#b§.§[9§;
   import §4Y§.§ `§;
   import §4Y§.§%n§;
   
   public class §1L§ extends §!!8§
   {
       
      
      private var §@"5§:§%n§;
      
      private var §+R§:String = "";
      
      public function §1L§(param1:Number, param2:Number, param3:§%n§, param4:Array = null, param5:Class = null, param6:Number = 0, param7:Number = 1.7976931348623157E308)
      {
         this.§@"5§ = param3;
         super(param1,param2,param4,param5,param6,param7);
      }
      
      public function set §<!l§(param1:String) : void
      {
         this.§+R§ = param1;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§6!=§ = null;
         super.dispose();
         for each(_loc1_ in §`O§)
         {
            _loc1_.disposeRovioButton(this.§@"5§);
         }
      }
      
      override protected function setRendererData(param1:§[9§, param2:Object) : void
      {
         super.setRendererData(param1,param2);
         (param1 as §6!=§).§-w§(this.§@"5§,this.§+R§);
      }
      
      public function §,"6§(param1:int) : § `§
      {
         return (§!c§[param1] as §6!=§).§4""§(true);
      }
      
      override protected function hide(param1:§[9§) : void
      {
         (param1 as §6!=§).hide(this.§@"5§);
         super.hide(param1);
      }
      
      public function get §&3§() : int
      {
         return §0!§;
      }
   }
}
