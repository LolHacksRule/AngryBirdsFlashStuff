package §<!L§
{
   import §[!$§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §]!P§:Vector.<Number>;
      
      public var §!!T§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§]!P§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§!!T§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
