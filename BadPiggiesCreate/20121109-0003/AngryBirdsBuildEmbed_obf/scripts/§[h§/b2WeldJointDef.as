package §[h§
{
   import § !t§.b2Body;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §;!1§:b2Vec2;
      
      public var §%?§:b2Vec2;
      
      public var §%g§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§;!1§ = new b2Vec2();
            if(!(_loc1_ && _loc1_))
            {
               this.§%?§ = new b2Vec2();
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr66);
               }
               §§goto(addr81);
            }
            §§goto(addr75);
         }
         addr66:
         super();
         if(_loc2_ || _loc1_)
         {
            addr75:
            type = b2Joint.§[=§;
            if(_loc2_)
            {
               addr81:
               this.§%g§ = 0;
            }
         }
      }
      
      public function §6!V§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §[!i§ = param1;
            if(!_loc5_)
            {
               §;!K§ = param2;
               if(!_loc4_)
               {
               }
               §§goto(addr74);
            }
            this.§;!1§.SetV(§[!i§.GetLocalPoint(param3));
            if(!(_loc5_ && this))
            {
               this.§%?§.SetV(§;!K§.GetLocalPoint(param3));
               if(_loc4_ || param1)
               {
                  §§goto(addr74);
               }
            }
            §§goto(addr74);
         }
         addr74:
         this.§%g§ = §;!K§.GetAngle() - §[!i§.GetAngle();
      }
   }
}
