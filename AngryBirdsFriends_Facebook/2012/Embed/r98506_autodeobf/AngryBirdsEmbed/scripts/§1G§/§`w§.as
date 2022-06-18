package §1G§
{
   public class §`w§ extends §`U§
   {
      
      public static const §?1§:String = "template";
       
      
      public function §`w§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §^"§ = true;
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
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §`U§.STATE_STATUS_RUNNING;
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
