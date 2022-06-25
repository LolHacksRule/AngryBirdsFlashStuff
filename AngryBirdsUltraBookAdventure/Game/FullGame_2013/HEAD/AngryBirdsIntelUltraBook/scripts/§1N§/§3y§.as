package §1N§
{
   public class §3y§ extends StateBase
   {
      
      public static const STATE_NAME:String = "template";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            STATE_NAME = "template";
         }
      }
      
      public function §3y§(param1:Boolean = true, param2:String = "template")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
         do
         {
            §1!O§ = true;
         }
         while(_loc3_ && this);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.activate();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() != StateBase.STATE_STATUS_RUNNING)
               {
                  if(_loc4_ || this)
                  {
                     §§goto(addr51);
                  }
               }
               return StateBase.STATE_STATUS_RUNNING;
            }
            §§goto(addr51);
         }
         addr51:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.cleanup();
         }
      }
   }
}
