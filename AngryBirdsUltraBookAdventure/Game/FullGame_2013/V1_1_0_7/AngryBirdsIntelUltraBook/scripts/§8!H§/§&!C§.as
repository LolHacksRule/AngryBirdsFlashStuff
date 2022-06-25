package §8!H§
{
   public class §&!C§ extends §9![§
   {
      
      public static const §'!q§:String = "template";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §&!C§))
         {
            §'!q§ = "template";
         }
      }
      
      public function §&!C§(param1:Boolean = true, param2:String = "template")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
            do
            {
               §-O§ = true;
            }
            while(!_loc4_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.activate();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(§§pop() != §9![§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_)
                  {
                     §§goto(addr55);
                  }
               }
               return §9![§.STATE_STATUS_RUNNING;
            }
            §§goto(addr55);
         }
         addr55:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
