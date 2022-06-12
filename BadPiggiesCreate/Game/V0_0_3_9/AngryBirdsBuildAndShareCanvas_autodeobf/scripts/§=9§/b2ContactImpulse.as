package §=9§
{
   import §7"'§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §`0§:Vector.<Number>;
      
      public var §"!@§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§`0§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§"!@§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
