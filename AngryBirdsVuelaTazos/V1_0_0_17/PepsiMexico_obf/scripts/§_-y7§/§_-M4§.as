package §_-y7§
{
   public class §_-M4§ extends §_-VA§
   {
      
      public static const §_-Az§:String = "template";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-Az§ = "template";
         }
      }
      
      public function §_-M4§(param1:Boolean = true, param2:String = "template")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
            if(!_loc4_)
            {
               addr28:
               §_-u7§ = true;
            }
            return;
         }
         §§goto(addr28);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.activate();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() != §_-VA§.STATE_STATUS_RUNNING)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§push(_loc2_);
                  }
                  else
                  {
                     §§goto(addr56);
                  }
               }
               §§goto(addr56);
            }
            return §§pop();
         }
         addr56:
         return §_-VA§.STATE_STATUS_RUNNING;
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.cleanup();
         }
      }
   }
}
