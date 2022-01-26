package §`!+§
{
   import §4A§.§&_§;
   
   public class §,'§ extends §!!9§
   {
       
      
      protected var §8!F§:String = null;
      
      protected var §3!J§:Boolean = true;
      
      protected var §]D§:Number = 1.0;
      
      public function §,'§(param1:§&_§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§8!F§ = param2;
         this.§3!J§ = param3;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(this.§8!F§,this.§3!J§);
         mLevelMain.camera.initSlowScroll(this.§]D§);
      }
   }
}
