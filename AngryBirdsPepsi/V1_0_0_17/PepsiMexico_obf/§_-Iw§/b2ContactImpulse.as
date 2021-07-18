package §_-Iw§
{
   import §_-lh§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §_-WN§:Vector.<Number>;
      
      public var §_-bO§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§_-WN§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
            if(!_loc1_)
            {
               this.§_-bO§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
               if(!(_loc1_ && _loc2_))
               {
                  super();
               }
            }
         }
      }
   }
}
