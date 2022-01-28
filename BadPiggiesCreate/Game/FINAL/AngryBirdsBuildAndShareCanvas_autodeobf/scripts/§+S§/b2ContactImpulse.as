package §+S§
{
   import §=o§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §5!^§:Vector.<Number>;
      
      public var §9!&§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§5!^§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§9!&§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
