package § o§
{
   import §"0§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §"!W§:Vector.<Number>;
      
      public var §]!+§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§"!W§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         }
         do
         {
            this.§]!+§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
            do
            {
               super();
            }
            while(!_loc1_);
            
         }
         while(!_loc1_);
         
      }
   }
}
