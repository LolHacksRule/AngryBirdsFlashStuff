package §const§
{
   import §_-bW§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §_-Pe§:Vector.<Number>;
      
      public var §_-8b§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§_-Pe§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§_-8b§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
