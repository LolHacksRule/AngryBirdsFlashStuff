package §`j§
{
   import §2!F§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §6E§:Vector.<Number>;
      
      public var dynamic:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         this.§6E§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.dynamic = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         super();
      }
   }
}
