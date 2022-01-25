package § y§
{
   import §54§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §]Z§:Vector.<Number>;
      
      public var §7x§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§]Z§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§7x§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
