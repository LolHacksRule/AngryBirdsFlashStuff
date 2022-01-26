package §_-Py§
{
   public class §_-Au§ extends §_-eK§
   {
      
      public static const §_-bg§:String = "template";
       
      
      public function §_-Au§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §_-M4§ = true;
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
         if(_loc2_ != §_-eK§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §_-eK§.STATE_STATUS_RUNNING;
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
