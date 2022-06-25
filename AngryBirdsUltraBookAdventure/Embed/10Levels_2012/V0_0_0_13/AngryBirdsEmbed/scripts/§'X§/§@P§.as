package §'X§
{
   public class §@P§ extends §9[§
   {
      
      public static const §0!7§:String = "template";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0!7§ = "template";
         }
      }
      
      public function §@P§(param1:Boolean = true, param2:String = "template")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param1,param2);
            if(_loc3_)
            {
               § each§ = true;
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.activate();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(§§pop() != §9[§.STATE_STATUS_RUNNING)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr49);
                  }
               }
               return §9[§.STATE_STATUS_RUNNING;
            }
            §§goto(addr49);
         }
         addr49:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
   }
}
