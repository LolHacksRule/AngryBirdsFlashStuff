package §5!5§
{
   public class §1!E§ extends §1!b§
   {
      
      public static const §!_§:String = "template";
       
      
      public function §1!E§(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §#!R§ = true;
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
         if(_loc2_ != §1!b§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §1!b§.STATE_STATUS_RUNNING;
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
