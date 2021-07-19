package § !t§
{
   import §?s§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §&!8§:Vector.<Number>;
      
      public var §#s§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§&!8§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§#s§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
