package §_-x8§
{
   public class §_-It§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "template";
       
      
      public function §_-It§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §_-9o§ = true;
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
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §_-nG§.STATE_STATUS_RUNNING;
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
