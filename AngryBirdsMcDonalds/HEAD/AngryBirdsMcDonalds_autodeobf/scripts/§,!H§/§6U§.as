package §,!H§
{
   public class §6U§ extends § for§
   {
      
      public static const §>d§:String = "template";
       
      
      public function §6U§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §%!a§ = true;
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
         if(_loc2_ != § for§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return § for§.STATE_STATUS_RUNNING;
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
