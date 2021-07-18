package §[h§
{
   import § !t§.b2Body;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §;!1§:b2Vec2;
      
      public var §%?§:b2Vec2;
      
      public var §<E§:b2Vec2;
      
      public var §'!v§:Boolean;
      
      public var §7=§:Number;
      
      public var §2!q§:Number;
      
      public var §3!J§:Boolean;
      
      public var §=!G§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§;!1§ = new b2Vec2();
         if(_loc2_ || this)
         {
            this.§%?§ = new b2Vec2();
            if(_loc2_)
            {
               addr34:
               this.§<E§ = new b2Vec2();
               super();
               if(!(_loc1_ && _loc1_))
               {
                  type = b2Joint.§?k§;
                  if(_loc2_)
                  {
                     this.§<E§.Set(1,0);
                     this.§'!v§ = false;
                     if(_loc2_ || _loc1_)
                     {
                        §§goto(addr88);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr101);
               }
               addr88:
               this.§7=§ = 0;
               §§goto(addr91);
            }
            addr91:
            this.§2!q§ = 0;
            if(_loc2_)
            {
               this.§3!J§ = false;
               if(_loc2_)
               {
                  addr101:
                  this.§=!G§ = 0;
                  if(!_loc1_)
                  {
                     addr106:
                     this.motorSpeed = 0;
                  }
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function §6!V§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §[!i§ = param1;
            if(!(_loc6_ && param2))
            {
               §;!K§ = param2;
               if(!_loc6_)
               {
                  this.§;!1§ = §[!i§.GetLocalPoint(param3);
                  if(!(_loc6_ && param1))
                  {
                     addr65:
                     this.§%?§ = §;!K§.GetLocalPoint(param3);
                     if(_loc5_)
                     {
                        addr72:
                        this.§<E§ = §[!i§.GetLocalVector(param4);
                     }
                  }
                  return;
               }
            }
            §§goto(addr72);
         }
         §§goto(addr65);
      }
   }
}
