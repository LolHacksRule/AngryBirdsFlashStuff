package §`w§
{
   import §7!u§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §[!D§:Vector.<Number>;
      
      public var §0W§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§[!D§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         }
         do
         {
            this.§0W§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
            do
            {
               super();
            }
            while(_loc2_);
            
         }
         while(!_loc1_);
         
      }
   }
}
