package §_-TE§
{
   public class §_-7C§ extends §_-PN§
   {
      
      public static const §_-dh§:String = "template";
       
      
      public function §_-7C§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §_-nF§ = true;
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
         if(_loc2_ != §_-PN§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §_-PN§.STATE_STATUS_RUNNING;
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
