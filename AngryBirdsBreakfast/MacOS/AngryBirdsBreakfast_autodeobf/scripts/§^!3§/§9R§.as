package §^!3§
{
   import §8!K§.§5!Y§;
   import §@L§.§?!'§;
   
   public class §9R§ extends §%z§
   {
       
      
      protected var §^",§:String = null;
      
      protected var §+!s§:Boolean = true;
      
      protected var §,+§:Number = 1.0;
      
      public function §9R§(param1:§?!'§, param2:§5!Y§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§^",§ = param3;
         this.§+!s§ = param4;
      }
      
      override public function init() : void
      {
         §<Y§.initializeEmptyEnvironment(this.§^",§,this.§+!s§);
         §<Y§.camera.initSlowScroll(this.§,+§);
      }
   }
}
