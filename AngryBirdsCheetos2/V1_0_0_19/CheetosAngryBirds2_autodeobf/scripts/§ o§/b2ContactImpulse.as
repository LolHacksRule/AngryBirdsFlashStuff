package § o§
{
   import §"0§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §"!W§:Vector.<Number>;
      
      public var §]!+§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§"!W§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§]!+§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
