package §#!O§
{
   import §7z§.§]!-§;
   
   public class §>!A§ extends §7j§
   {
       
      
      protected var §,!F§:String = null;
      
      protected var §6!;§:Boolean = true;
      
      protected var §,!K§:Number = 1.0;
      
      public function §>!A§(param1:§]!-§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§,!F§ = param2;
         this.§6!;§ = param3;
      }
      
      override public function init() : void
      {
         §^'§.initEmptyEnvironment(this.§,!F§,this.§6!;§);
         §^'§.camera.initSlowScroll(this.§,!K§);
      }
   }
}
