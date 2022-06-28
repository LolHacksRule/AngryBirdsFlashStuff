package §_-aU§
{
   import §_-5§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §_-vM§:Vector.<Number>;
      
      public var §_-Tg§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§_-vM§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§_-Tg§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
