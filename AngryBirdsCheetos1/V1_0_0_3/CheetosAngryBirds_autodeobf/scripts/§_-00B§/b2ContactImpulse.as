package §_-00B§
{
   import §_-Jf§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §_-XY§:Vector.<Number>;
      
      public var §_-FO§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§_-XY§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§_-FO§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
