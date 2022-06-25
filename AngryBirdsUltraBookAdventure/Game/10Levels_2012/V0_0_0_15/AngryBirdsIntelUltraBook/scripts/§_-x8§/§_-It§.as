package §_-x8§
{
   public class §_-It§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "template";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §_-It§))
         {
            §_-pk§ = "template";
         }
      }
      
      public function §_-It§(param1:Boolean = true, param2:String = "template")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super(param1,param2);
         }
         do
         {
            §_-9o§ = true;
         }
         while(_loc3_ && param2);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.activate();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() != §_-nG§.STATE_STATUS_RUNNING)
               {
                  if(!_loc3_)
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
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.cleanup();
         }
      }
   }
}
