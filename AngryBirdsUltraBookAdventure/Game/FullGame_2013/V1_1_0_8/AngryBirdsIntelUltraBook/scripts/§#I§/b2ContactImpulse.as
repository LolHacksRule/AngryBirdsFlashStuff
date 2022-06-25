package §#I§
{
   import §@!3§.b2Settings;
   
   public class b2ContactImpulse
   {
       
      
      public var §]Q§:Vector.<Number>;
      
      public var §5!K§:Vector.<Number>;
      
      public function b2ContactImpulse()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§]Q§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
            while(true)
            {
               this.§5!K§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
               while(_loc1_ || _loc2_)
               {
                  super();
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr48:
               }
            }
         }
         §§goto(addr48);
      }
   }
}
