package §#V§
{
   import §3!m§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §^-§:Vector.<Number>;
      
      public var §'l§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§^-§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§'l§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
