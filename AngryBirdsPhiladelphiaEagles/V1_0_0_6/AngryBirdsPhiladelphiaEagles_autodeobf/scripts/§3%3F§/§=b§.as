package §3?§
{
   import §4!-§.§%o§;
   
   public class §=b§ extends §,f§
   {
       
      
      protected var §7J§:String = null;
      
      protected var §4F§:Boolean = true;
      
      protected var §2z§:Number = 1.0;
      
      public function §=b§(param1:§%o§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§7J§ = param2;
         this.§4F§ = param3;
      }
      
      override public function init() : void
      {
         §'!8§.initEmptyEnvironment(this.§7J§,this.§4F§);
         §'!8§.camera.initSlowScroll(this.§2z§);
      }
   }
}
