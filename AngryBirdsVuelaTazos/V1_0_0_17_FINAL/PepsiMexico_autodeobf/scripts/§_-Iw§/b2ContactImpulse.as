package §_-Iw§
{
   import §_-lh§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §_-WN§:Vector.<Number>;
      
      public var §_-bO§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§_-WN§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§_-bO§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
