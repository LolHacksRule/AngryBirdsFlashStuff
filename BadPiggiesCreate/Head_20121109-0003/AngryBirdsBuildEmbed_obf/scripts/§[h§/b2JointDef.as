package §[h§
{
   import § !t§.b2Body;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §!L§;
      
      public var §[!i§:b2Body;
      
      public var §;!K§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               addr52:
               this.type = b2Joint.§'y§;
               this.§!L§ = null;
            }
            this.§[!i§ = null;
            if(!(_loc2_ && _loc2_))
            {
               this.§;!K§ = null;
            }
            this.collideConnected = false;
            return;
         }
         §§goto(addr52);
      }
   }
}
