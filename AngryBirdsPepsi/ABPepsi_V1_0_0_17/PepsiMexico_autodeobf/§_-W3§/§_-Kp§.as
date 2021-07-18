package §_-W3§
{
   import §_-OJ§.§_-tL§;
   
   public class §_-Kp§ extends §_-c4§
   {
       
      
      private var §_-Tt§:String = null;
      
      private var §_-KR§:Boolean = true;
      
      public function §_-Kp§(param1:§_-tL§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§_-Tt§ = param2;
         this.§_-KR§ = param3;
      }
      
      override public function init() : void
      {
         §_-Ag§.initEmptyEnvironment(this.§_-Tt§,this.§_-KR§);
         §_-Ag§.camera.initSlowScroll();
      }
   }
}
