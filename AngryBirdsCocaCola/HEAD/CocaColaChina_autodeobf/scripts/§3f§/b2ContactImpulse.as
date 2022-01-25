package §3f§
{
   import §7!C§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §10§:Vector.<Number>;
      
      public var §5J§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§10§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§5J§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
