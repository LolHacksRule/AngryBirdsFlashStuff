package §_-aU§
{
   import §_-5§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §_-vM§:Vector.<Number>;
      
      public var §_-Tg§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-vM§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
            while(true)
            {
               this.§_-Tg§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
               while(_loc2_)
               {
                  super();
                  if(!(_loc1_ && _loc2_))
                  {
                     return;
                     addr54:
                  }
               }
            }
         }
         §§goto(addr54);
      }
   }
}
