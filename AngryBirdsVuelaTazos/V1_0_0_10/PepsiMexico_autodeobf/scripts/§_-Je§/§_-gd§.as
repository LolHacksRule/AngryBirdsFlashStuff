package §_-Je§
{
   public class §_-gd§ extends §_-RH§
   {
      
      public static const §_-7J§:String = "template";
       
      
      public function §_-gd§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §_-U6§ = true;
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
         if(_loc2_ != §_-RH§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §_-RH§.STATE_STATUS_RUNNING;
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
