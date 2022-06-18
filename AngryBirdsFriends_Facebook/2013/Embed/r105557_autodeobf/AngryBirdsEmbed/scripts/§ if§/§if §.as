package § if§
{
   public class §if § extends §2q§
   {
      
      public static const §&! §:String = "template";
       
      
      public function §if §(param1:Boolean = true, param2:String = "template")
      {
         super(param1,param2);
         §93§ = true;
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
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         return §2q§.STATE_STATUS_RUNNING;
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
