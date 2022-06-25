package §<!>§
{
   public class §#i§ extends §?Y§
   {
      
      public static const §?h§:String = "template";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?h§ = "template";
         }
      }
      
      public function §#i§(param1:Boolean = true, param2:String = "template")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
         }
         do
         {
            §8g§ = true;
         }
         while(!_loc3_);
         
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
         if(!(_loc2_ && _loc1_))
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
         if(!(_loc4_ && param1))
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(§§pop() != §?Y§.STATE_STATUS_RUNNING)
               {
                  if(_loc3_)
                  {
                     §§goto(addr54);
                  }
               }
               return §?Y§.STATE_STATUS_RUNNING;
            }
            §§goto(addr54);
         }
         addr54:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
   }
}
