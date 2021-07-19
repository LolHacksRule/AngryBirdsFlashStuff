package §_-y7§
{
   public class §_-M4§ extends §_-VA§
   {
      
      public static const §_-Az§:String = "template";
       
      
      public function §_-M4§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §_-u7§ = true;
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
         if(_loc2_ != §_-VA§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §_-VA§.STATE_STATUS_RUNNING;
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
