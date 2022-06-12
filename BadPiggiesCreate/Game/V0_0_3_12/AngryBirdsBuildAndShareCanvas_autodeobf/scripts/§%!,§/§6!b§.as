package §%!,§
{
   public class §6!b§ extends §,v§
   {
      
      public static const §8n§:String = "template";
       
      
      public function §6!b§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §"!N§ = true;
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
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §,v§.STATE_STATUS_RUNNING;
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
