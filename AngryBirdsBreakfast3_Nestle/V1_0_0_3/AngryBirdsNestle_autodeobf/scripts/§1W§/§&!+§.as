package §1W§
{
   import §12§.§%!Z§;
   import §12§.§-!U§;
   import §3!!§.§5" §;
   import §3!!§.§?v§;
   
   public class §&!+§ extends §%!Z§
   {
       
      
      private var §0%§:§5" §;
      
      private var §]J§:String = "";
      
      public function §&!+§(param1:Number, param2:Number, param3:§5" §, param4:Array = null, param5:Class = null, param6:Number = 0, param7:Number = 1.7976931348623157E308)
      {
         this.§0%§ = param3;
         super(param1,param2,param4,param5,param6,param7);
      }
      
      public function set §^!M§(param1:String) : void
      {
         this.§]J§ = param1;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§;"$§ = null;
         super.dispose();
         for each(_loc1_ in §+!#§)
         {
            _loc1_.disposeRovioButton(this.§0%§);
         }
      }
      
      override protected function setRendererData(param1:§-!U§, param2:Object) : void
      {
         super.setRendererData(param1,param2);
         (param1 as §;"$§).§-!b§(this.§0%§,this.§]J§);
      }
      
      public function §8!`§(param1:int) : §?v§
      {
         return (§'W§[param1] as §;"$§).§=1§(true);
      }
      
      override protected function hide(param1:§-!U§) : void
      {
         (param1 as §;"$§).hide(this.§0%§);
         super.hide(param1);
      }
      
      public function get §8!j§() : int
      {
         return §3"+§;
      }
   }
}
