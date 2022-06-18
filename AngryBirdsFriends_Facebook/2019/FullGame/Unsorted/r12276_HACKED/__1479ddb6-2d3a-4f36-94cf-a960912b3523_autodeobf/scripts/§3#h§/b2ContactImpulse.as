package §3#h§
{
   import §1#F§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §9#§:Vector.<Number>;
      
      public var §?!g§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§9#§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§?!g§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
