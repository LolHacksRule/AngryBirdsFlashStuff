package §;!9§
{
   import §;"+§.§9!M§;
   import §;"+§.§^!i§;
   import §[!a§.§]!@§;
   import §[!a§.§`?§;
   
   public class §["4§ extends §]!@§
   {
       
      
      private var §6z§:§^!i§;
      
      private var §?!Q§:String = "";
      
      public function §["4§(param1:Number, param2:Number, param3:§^!i§, param4:Array = null, param5:Class = null, param6:Number = 0, param7:Number = 1.7976931348623157E308)
      {
         this.§6z§ = param3;
         super(param1,param2,param4,param5,param6,param7);
      }
      
      public function set §!!e§(param1:String) : void
      {
         this.§?!Q§ = param1;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§1O§ = null;
         super.dispose();
         for each(_loc1_ in §9!r§)
         {
            _loc1_.disposeRovioButton(this.§6z§);
         }
      }
      
      override protected function setRendererData(param1:§`?§, param2:Object) : void
      {
         super.setRendererData(param1,param2);
         (param1 as §1O§).§[9§(this.§6z§,this.§?!Q§);
      }
      
      public function §-9§(param1:int) : §9!M§
      {
         return (§^`§[param1] as §1O§).§!!&§(true);
      }
      
      override protected function hide(param1:§`?§) : void
      {
         (param1 as §1O§).hide(this.§6z§);
         super.hide(param1);
      }
      
      public function get §!!w§() : int
      {
         return §;!,§;
      }
   }
}
