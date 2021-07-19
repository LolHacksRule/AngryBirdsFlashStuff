package §'!&§
{
   import §@!'§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §<w§:Vector.<Number>;
      
      public var §8!!§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<w§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
            do
            {
               this.§8!!§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
               do
               {
                  super();
               }
               while(!_loc1_);
               
            }
            while(_loc2_);
            
         }
      }
   }
}
