package §7b§
{
   import §2z§.§2!U§;
   
   public class §"! § extends §@H§
   {
       
      
      protected var §7!K§:String = null;
      
      protected var §1!U§:Boolean = true;
      
      protected var §!!&§:Number = 1.0;
      
      public function §"! §(param1:§2!U§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§7!K§ = param2;
         this.§1!U§ = param3;
      }
      
      override public function init() : void
      {
         §7o§.initEmptyEnvironment(this.§7!K§,this.§1!U§);
         §7o§.camera.initSlowScroll(this.§!!&§);
      }
   }
}
