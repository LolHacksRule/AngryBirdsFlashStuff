package §-%§
{
   import §2_§.§'u§;
   
   public class §]!K§ extends §+c§
   {
       
      
      protected var §<t§:String = null;
      
      protected var §8m§:Boolean = true;
      
      protected var §5%§:Number = 1.0;
      
      public function §]!K§(param1:§'u§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§<t§ = param2;
         this.§8m§ = param3;
      }
      
      override public function init() : void
      {
         §#!3§.initEmptyEnvironment(this.§<t§,this.§8m§);
         §#!3§.camera.initSlowScroll(this.§5%§);
      }
   }
}
