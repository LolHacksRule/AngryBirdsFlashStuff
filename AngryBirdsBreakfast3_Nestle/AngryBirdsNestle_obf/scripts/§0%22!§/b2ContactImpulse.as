package §0"!§
{
   import §'!_§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §?G§:Vector.<Number>;
      
      public var §`4§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§?G§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
            do
            {
               this.§`4§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
               do
               {
                  super();
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(!_loc2_);
            
         }
      }
   }
}
