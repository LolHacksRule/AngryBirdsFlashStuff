package §8w§
{
   import §4t§.§1j§;
   import §^!7§.§^A§;
   
   public class §-x§ extends §1j§
   {
       
      
      public function §-x§(param1:§^A§, param2:String = null, param3:Boolean = true, param4:Number = 1.0)
      {
         super(param1,param2,param3);
         §]!1§ = param4;
      }
      
      override public function init() : void
      {
         §<&§.initEmptyEnvironment(§8;§,§,$§);
         §<&§.camera.initSlowScroll(§]!1§);
         §<&§.camera.manualScale = 0.4;
      }
   }
}
