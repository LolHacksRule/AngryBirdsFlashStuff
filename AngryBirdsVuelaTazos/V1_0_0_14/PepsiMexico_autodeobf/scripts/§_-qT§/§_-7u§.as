package §_-qT§
{
   public class §_-7u§ extends §_-O5§
   {
      
      public static const §_-7m§:String = "template";
       
      
      public function §_-7u§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §_-ZT§ = true;
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
         if(_loc2_ != §_-O5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §_-O5§.STATE_STATUS_RUNNING;
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
