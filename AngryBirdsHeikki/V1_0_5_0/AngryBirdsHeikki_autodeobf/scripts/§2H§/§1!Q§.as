package §2H§
{
   public class §1!Q§ extends §>!^§
   {
      
      public static const §4l§:String = "template";
       
      
      public function §1!Q§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §^!'§ = true;
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
         if(_loc2_ != §>!^§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §>!^§.STATE_STATUS_RUNNING;
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
