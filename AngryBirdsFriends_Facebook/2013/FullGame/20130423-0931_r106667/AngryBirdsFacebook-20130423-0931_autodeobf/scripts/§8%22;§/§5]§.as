package §8";§
{
   public class §5]§ extends §+d§
   {
      
      public static const STATE_NAME:String = "template";
       
      
      public function §5]§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §]!§ = true;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
   }
}
