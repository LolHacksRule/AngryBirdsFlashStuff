package §+0§
{
   public class §%!Z§ extends §,!E§
   {
      
      public static const §"!s§:String = "template";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §"!s§ = "template";
         }
      }
      
      public function §%!Z§(param1:Boolean = true, param2:String = "template")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param1,param2);
         }
         do
         {
            §#!B§ = true;
         }
         while(_loc4_ && _loc3_);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.activate();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() != §,!E§.STATE_STATUS_RUNNING)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr45);
                  }
               }
               return §,!E§.STATE_STATUS_RUNNING;
            }
            §§goto(addr45);
         }
         addr45:
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
         if(!(_loc1_ && _loc1_))
         {
            super.cleanup();
         }
      }
   }
}
