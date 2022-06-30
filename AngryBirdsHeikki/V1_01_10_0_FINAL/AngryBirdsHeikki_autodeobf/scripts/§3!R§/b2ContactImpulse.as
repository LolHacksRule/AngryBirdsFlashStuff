package §3!R§
{
   import §^P§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §'!&§:Vector.<Number>;
      
      public var §^u§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§'!&§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§^u§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
