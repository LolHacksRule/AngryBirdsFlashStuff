package §[h§
{
   import § !t§.b2Body;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §;!1§:b2Vec2;
      
      public var §%?§:b2Vec2;
      
      public var §%g§:Number;
      
      public var §'!v§:Boolean;
      
      public var §=!1§:Number;
      
      public var §+Z§:Number;
      
      public var §3!J§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §=!m§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§;!1§ = new b2Vec2();
         if(_loc2_)
         {
            this.§%?§ = new b2Vec2();
            super();
            if(_loc2_)
            {
               type = b2Joint.e_revoluteJoint;
               if(!(_loc1_ && _loc1_))
               {
                  addr42:
                  this.§;!1§.Set(0,0);
                  this.§%?§.Set(0,0);
                  if(_loc2_ || _loc1_)
                  {
                     this.§%g§ = 0;
                     if(_loc2_ || _loc2_)
                     {
                        this.§=!1§ = 0;
                        if(_loc2_ || _loc1_)
                        {
                           addr99:
                           this.§+Z§ = 0;
                           addr102:
                           this.§=!m§ = 0;
                           if(_loc2_ || _loc1_)
                           {
                              this.motorSpeed = 0;
                              §§goto(addr115);
                           }
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr102);
               }
               §§goto(addr99);
            }
            addr115:
            this.§'!v§ = false;
            if(!(_loc1_ && this))
            {
               addr125:
               this.§3!J§ = false;
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function §6!V§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §[!i§ = param1;
            if(!_loc5_)
            {
               §;!K§ = param2;
               if(_loc4_ || param1)
               {
                  this.§;!1§ = §[!i§.GetLocalPoint(param3);
                  if(_loc4_ || param1)
                  {
                  }
                  §§goto(addr84);
               }
               this.§%?§ = §;!K§.GetLocalPoint(param3);
               if(!_loc5_)
               {
                  this.§%g§ = §;!K§.GetAngle() - §[!i§.GetAngle();
               }
            }
         }
         addr84:
      }
   }
}
