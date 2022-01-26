package §try§
{
   import §_-b4§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §_-VD§:Vector.<Number>;
      
      public var §_-cZ§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§_-VD§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§_-cZ§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
