package §&!"§
{
   import §>!@§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §!d§:Vector.<Number>;
      
      public var §<!Y§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§!d§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         }
         do
         {
            this.§<!Y§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
            do
            {
               super();
            }
            while(_loc2_ && _loc2_);
            
         }
         while(!(_loc1_ || this));
         
      }
   }
}
