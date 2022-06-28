package §=E§
{
   import §3G§.§!E§;
   
   public class §;S§ extends §0?§
   {
       
      
      protected var §`!'§:String = null;
      
      protected var §;`§:Boolean = true;
      
      protected var §=D§:Number = 1.0;
      
      public function §;S§(param1:§!E§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§`!'§ = param2;
         this.§;`§ = param3;
      }
      
      override public function init() : void
      {
         §33§.initEmptyEnvironment(this.§`!'§,this.§;`§);
         §33§.camera.initSlowScroll(this.§=D§);
      }
   }
}
