package §4!&§
{
   import §8!%§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §+B§:Vector.<Number>;
      
      public var §8$§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§+B§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§8$§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
