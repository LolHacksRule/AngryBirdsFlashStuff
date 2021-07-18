package §[h§
{
   import § !t§.b2Body;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §;!1§:b2Vec2;
      
      public var §%?§:b2Vec2;
      
      public var §<E§:b2Vec2;
      
      public var §%g§:Number;
      
      public var §'!v§:Boolean;
      
      public var §7=§:Number;
      
      public var §2!q§:Number;
      
      public var §3!J§:Boolean;
      
      public var §=!G§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§;!1§ = new b2Vec2();
            this.§%?§ = new b2Vec2();
            if(_loc2_ || this)
            {
               this.§<E§ = new b2Vec2();
               super();
               if(_loc2_ || _loc2_)
               {
                  type = b2Joint.§ use§;
                  this.§<E§.Set(1,0);
                  this.§%g§ = 0;
                  if(!(_loc1_ && this))
                  {
                     addr91:
                     this.§'!v§ = false;
                     if(!(_loc1_ && _loc1_))
                     {
                        this.§7=§ = 0;
                        addr104:
                        this.§2!q§ = 0;
                        this.§3!J§ = false;
                        this.§=!G§ = 0;
                        this.motorSpeed = 0;
                     }
                  }
                  return;
               }
            }
            §§goto(addr104);
         }
         §§goto(addr91);
      }
      
      public function §6!V§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §[!i§ = param1;
            if(_loc6_)
            {
               §;!K§ = param2;
               this.§;!1§ = §[!i§.GetLocalPoint(param3);
               this.§%?§ = §;!K§.GetLocalPoint(param3);
               if(_loc6_)
               {
                  addr59:
                  this.§<E§ = §[!i§.GetLocalVector(param4);
               }
               this.§%g§ = §;!K§.GetAngle() - §[!i§.GetAngle();
            }
            return;
         }
         §§goto(addr59);
      }
   }
}
