package §_-cu§
{
   public class §_-Vu§ extends §_-UO§
   {
      
      public static const §_-1h§:String = "template";
       
      
      public function §_-Vu§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §_-D9§ = true;
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
         if(_loc2_ != §_-UO§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §_-UO§.STATE_STATUS_RUNNING;
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
