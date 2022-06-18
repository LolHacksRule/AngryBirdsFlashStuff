package §4]§
{
   import §#,§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §5!K§:Vector.<Number>;
      
      public var §+f§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§5!K§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§+f§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
