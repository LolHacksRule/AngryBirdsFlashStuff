package §>!]§
{
   import §%b§.§0!Z§;
   
   public class §]!&§ extends §%G§
   {
       
      
      protected var § o§:String = null;
      
      protected var §3s§:Boolean = true;
      
      protected var §<!"§:Number = 1.0;
      
      public function §]!&§(param1:§0!Z§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§ o§ = param2;
         this.§3s§ = param3;
      }
      
      override public function init() : void
      {
         §]!8§.initEmptyEnvironment(this.§ o§,this.§3s§);
         §]!8§.camera.initSlowScroll(this.§<!"§);
      }
   }
}
