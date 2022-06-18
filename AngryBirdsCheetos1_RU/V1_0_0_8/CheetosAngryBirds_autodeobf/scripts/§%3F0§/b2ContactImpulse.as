package §?0§
{
   import §'!3§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §6!K§:Vector.<Number>;
      
      public var §"!"§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§6!K§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§"!"§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
