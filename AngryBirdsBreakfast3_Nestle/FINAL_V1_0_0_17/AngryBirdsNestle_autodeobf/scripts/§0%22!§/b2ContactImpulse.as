package §0"!§
{
   import §'!_§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §?G§:Vector.<Number>;
      
      public var §`4§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§?G§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§`4§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
