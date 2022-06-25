package §#I§
{
   import §@!3§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §]Q§:Vector.<Number>;
      
      public var §5!K§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§]Q§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
            while(true)
            {
               this.§5!K§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            super();
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
