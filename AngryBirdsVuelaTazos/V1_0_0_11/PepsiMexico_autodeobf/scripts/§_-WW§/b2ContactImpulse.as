package §_-WW§
{
   import §_-iO§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §_-M5§:Vector.<Number>;
      
      public var §_-Wu§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§_-M5§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§_-Wu§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
