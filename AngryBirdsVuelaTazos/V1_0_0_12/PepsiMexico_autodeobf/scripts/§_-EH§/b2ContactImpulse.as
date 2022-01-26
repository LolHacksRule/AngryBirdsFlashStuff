package §_-EH§
{
   import §_-sU§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §_-Km§:Vector.<Number>;
      
      public var §_-er§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§_-Km§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§_-er§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
