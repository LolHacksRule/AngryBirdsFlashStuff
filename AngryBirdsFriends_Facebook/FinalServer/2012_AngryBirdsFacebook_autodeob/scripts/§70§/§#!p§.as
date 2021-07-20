package §70§
{
   import §0!2§.§5"L§;
   
   public class §#!p§ extends §[3§
   {
       
      
      protected var §," §:String = null;
      
      protected var §]!A§:Boolean = true;
      
      protected var §9?§:Number = 1.0;
      
      public function §#!p§(param1:§5"L§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§," § = param2;
         this.§]!A§ = param3;
      }
      
      override public function init() : void
      {
         §^!"§.initEmptyEnvironment(this.§," §,this.§]!A§);
         §^!"§.camera.initSlowScroll(this.§9?§);
      }
   }
}
