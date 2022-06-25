package §#V§
{
   import §3!m§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §^-§:Vector.<Number>;
      
      public var §'l§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§^-§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         }
         do
         {
            this.§'l§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
            do
            {
               super();
            }
            while(!(_loc1_ || _loc1_));
            
         }
         while(!_loc1_);
         
      }
   }
}
