package § !t§
{
   import §?s§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §&!8§:Vector.<Number>;
      
      public var §#s§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§&!8§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
            if(!(_loc2_ && _loc2_))
            {
               addr58:
               this.§#s§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
               if(_loc1_ || this)
               {
                  super();
               }
            }
            return;
         }
         §§goto(addr58);
      }
   }
}
