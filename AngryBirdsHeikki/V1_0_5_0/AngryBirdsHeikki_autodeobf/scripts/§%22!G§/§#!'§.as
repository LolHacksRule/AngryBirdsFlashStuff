package §"!G§
{
   import §+D§.§5!P§;
   
   public class §#!'§ extends §&_§
   {
       
      
      protected var §]_§:String = null;
      
      protected var §8!Y§:Boolean = true;
      
      protected var §4!]§:Number = 1.0;
      
      public function §#!'§(param1:§5!P§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§]_§ = param2;
         this.§8!Y§ = param3;
      }
      
      override public function init() : void
      {
         §^!4§.initEmptyEnvironment(this.§]_§,this.§8!Y§);
         §^!4§.camera.initSlowScroll(this.§4!]§);
      }
   }
}
