package §3!R§
{
   import §^P§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §'!&§:Vector.<Number>;
      
      public var §^u§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§'!&§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
            do
            {
               this.§^u§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
               do
               {
                  super();
               }
               while(!(_loc2_ || _loc2_));
               
            }
            while(!_loc2_);
            
         }
      }
   }
}
