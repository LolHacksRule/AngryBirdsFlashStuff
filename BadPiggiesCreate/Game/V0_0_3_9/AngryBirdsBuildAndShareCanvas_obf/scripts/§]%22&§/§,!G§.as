package §]"&§
{
   import §=b§.§-!K§;
   
   public class §,!G§ extends §`!z§
   {
       
      
      protected var §8!'§:String = null;
      
      protected var §@!5§:Boolean = true;
      
      protected var §,y§:Number = 1.0;
      
      public function §,!G§(param1:§-!K§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§8!'§ = param2;
         this.§@!5§ = param3;
      }
      
      override public function init() : void
      {
         §;!x§.initEmptyEnvironment(this.§8!'§,this.§@!5§);
         §;!x§.camera.initSlowScroll(this.§,y§);
      }
   }
}
