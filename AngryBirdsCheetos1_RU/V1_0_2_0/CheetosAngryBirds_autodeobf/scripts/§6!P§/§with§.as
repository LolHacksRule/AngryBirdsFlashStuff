package §6!P§
{
   import §-A§.§%9§;
   
   public class §with§ extends §>A§
   {
       
      
      protected var §@3§:String = null;
      
      protected var §%r§:Boolean = true;
      
      protected var §+T§:Number = 1.0;
      
      public function §with§(param1:§%9§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§@3§ = param2;
         this.§%r§ = param3;
      }
      
      override public function init() : void
      {
         §return§.initEmptyEnvironment(this.§@3§,this.§%r§);
         §return§.camera.initSlowScroll(this.§+T§);
      }
   }
}
