package §3!`§
{
   import §'F§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §3e§:Vector.<Number>;
      
      public var §'"!§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§3e§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         }
         while(true)
         {
            this.§'"!§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
            while(!(_loc2_ && _loc1_))
            {
               super();
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
   }
}
