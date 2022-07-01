package §0!j§
{
   import §!r§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §9!N§:Vector.<Number>;
      
      public var §0!>§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§9!N§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§0!>§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
