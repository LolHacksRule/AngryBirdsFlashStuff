package §_-43§
{
   import §_-d6§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §_-xW§:Vector.<Number>;
      
      public var §_-Xp§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§_-xW§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§_-Xp§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
