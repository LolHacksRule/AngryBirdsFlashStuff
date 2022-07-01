package §&=§
{
   import §[B§.§"d§;
   
   public class §"!z§ extends §0?§
   {
       
      
      protected var §6d§:String = null;
      
      protected var §1!A§:Boolean = true;
      
      protected var §3D§:Number = 1.0;
      
      public function §"!z§(param1:§"d§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§6d§ = param2;
         this.§1!A§ = param3;
      }
      
      override public function init() : void
      {
         §]!3§.initEmptyEnvironment(this.§6d§,this.§1!A§);
         §]!3§.camera.initSlowScroll(this.§3D§);
      }
   }
}
