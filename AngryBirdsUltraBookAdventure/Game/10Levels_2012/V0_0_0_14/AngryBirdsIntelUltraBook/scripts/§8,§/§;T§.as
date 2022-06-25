package §8,§
{
   public class §;T§ extends §+_§
   {
      
      public static const §3F§:String = "template";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §;T§))
         {
            §3F§ = "template";
         }
      }
      
      public function §;T§(param1:Boolean = true, param2:String = "template")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super(param1,param2);
            do
            {
               §39§ = true;
            }
            while(!(_loc4_ || param2));
            
         }
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
         if(_loc3_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_ || param1)
            {
               if(§§pop() != §+_§.STATE_STATUS_RUNNING)
               {
                  if(_loc3_)
                  {
                     §§push(_loc2_);
                  }
                  else
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr55);
            }
            return §§pop();
         }
         addr55:
         return §+_§.STATE_STATUS_RUNNING;
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
         if(_loc1_)
         {
            super.cleanup();
         }
      }
   }
}
