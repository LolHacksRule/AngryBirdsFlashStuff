package §4t§
{
   import §^!7§.§^A§;
   
   public class §1j§ extends §;h§
   {
       
      
      protected var §8;§:String = null;
      
      protected var §,$§:Boolean = true;
      
      protected var §]!1§:Number = 1.0;
      
      public function §1j§(param1:§^A§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§8;§ = param2;
         this.§,$§ = param3;
      }
      
      override public function init() : void
      {
         §<&§.initEmptyEnvironment(this.§8;§,this.§,$§);
         §<&§.camera.initSlowScroll(this.§]!1§);
      }
   }
}
