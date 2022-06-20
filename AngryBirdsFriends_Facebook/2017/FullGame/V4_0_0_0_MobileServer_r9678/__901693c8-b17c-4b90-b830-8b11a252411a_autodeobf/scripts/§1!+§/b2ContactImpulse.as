package §1!+§
{
   import §9#K§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §>"]§:Vector.<Number>;
      
      public var §6#f§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§>"]§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§6#f§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
