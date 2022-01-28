package §_-QG§
{
   public class §_-iL§ extends §_-t6§
   {
      
      public static const §_-8r§:String = "template";
       
      
      public function §_-iL§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §_-cw§ = true;
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
         if(_loc2_ != §_-t6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §_-t6§.STATE_STATUS_RUNNING;
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
