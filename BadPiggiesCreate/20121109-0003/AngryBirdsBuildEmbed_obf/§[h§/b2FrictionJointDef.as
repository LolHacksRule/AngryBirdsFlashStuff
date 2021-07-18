package §[h§
{
   import § !t§.b2Body;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §;!1§:b2Vec2;
      
      public var §%?§:b2Vec2;
      
      public var §%!$§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§;!1§ = new b2Vec2();
         if(!_loc2_)
         {
            this.§%?§ = new b2Vec2();
            if(!(_loc2_ && _loc2_))
            {
               addr43:
               super();
               type = b2Joint.§3L§;
               this.§%!$§ = 0;
               this.maxTorque = 0;
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §6!V§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §[!i§ = param1;
            if(!(_loc5_ && this))
            {
               §;!K§ = param2;
               if(!(_loc5_ && this))
               {
                  this.§;!1§.SetV(§[!i§.GetLocalPoint(param3));
                  if(_loc4_)
                  {
                     addr66:
                     this.§%?§.SetV(§;!K§.GetLocalPoint(param3));
                  }
               }
               §§goto(addr66);
            }
            return;
         }
         §§goto(addr66);
      }
   }
}
