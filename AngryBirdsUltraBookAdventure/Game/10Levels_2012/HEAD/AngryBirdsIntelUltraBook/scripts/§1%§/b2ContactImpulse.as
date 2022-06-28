package §1%§
{
   import §8!H§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §`!c§:Vector.<Number>;
      
      public var §+&§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§`!c§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§+&§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
