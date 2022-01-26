package §_-qW§
{
   import §_-SM§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §_-XU§:Vector.<Number>;
      
      public var §_-2s§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§_-XU§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§_-2s§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
