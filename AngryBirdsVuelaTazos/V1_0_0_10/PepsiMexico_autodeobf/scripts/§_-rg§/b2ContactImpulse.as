package §_-rg§
{
   import §_-uS§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §_-pG§:Vector.<Number>;
      
      public var §_-f5§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§_-pG§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§_-f5§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
