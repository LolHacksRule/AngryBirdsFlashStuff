package §-H§
{
   public class §>!T§ extends §&c§
   {
      
      public static const §9!P§:String = "template";
       
      
      public function §>!T§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §=!I§ = true;
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
         if(_loc2_ != §&c§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §&c§.STATE_STATUS_RUNNING;
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
