package §`]§
{
   import §!S§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §^!6§:Vector.<Number>;
      
      public var §;3§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§^!6§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§;3§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
