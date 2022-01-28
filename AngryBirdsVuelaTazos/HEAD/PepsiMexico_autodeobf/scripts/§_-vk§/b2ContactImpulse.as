package §_-vk§
{
   import §_-rz§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §_-cb§:Vector.<Number>;
      
      public var §_-AZ§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§_-cb§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§_-AZ§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
