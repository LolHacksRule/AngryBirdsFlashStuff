package §_-EH§
{
   public class §_-AP§ extends §_-uz§
   {
      
      public static const §_-3o§:String = "template";
       
      
      public function §_-AP§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §_-TF§ = true;
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
         if(_loc2_ != §_-uz§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §_-uz§.STATE_STATUS_RUNNING;
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
