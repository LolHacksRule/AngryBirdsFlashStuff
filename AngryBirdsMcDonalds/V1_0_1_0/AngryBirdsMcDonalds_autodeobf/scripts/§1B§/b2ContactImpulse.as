package §1B§
{
   import §9i§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §5!#§:Vector.<Number>;
      
      public var §@!f§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§5!#§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§@!f§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
