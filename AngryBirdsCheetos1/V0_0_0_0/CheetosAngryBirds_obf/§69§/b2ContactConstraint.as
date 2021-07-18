package §69§
{
   import § G§.*;
   import §&!"§.*;
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §=R§:Vector.<b2ContactConstraintPoint>;
      
      public var §#J§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §+!=§:b2Mat22;
      
      public var §3Y§:b2Mat22;
      
      public var §<§:b2Body;
      
      public var §,!M§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §,!H§:int;
      
      public var §0t§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§#J§ = new b2Vec2();
            while(true)
            {
               this.localPoint = new b2Vec2();
               addr94:
               while(true)
               {
                  this.normal = new b2Vec2();
               }
               addr56:
               if(!_loc2_)
               {
                  continue;
               }
               this.§=R§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
               if(!_loc3_)
               {
                  addr35:
                  if(_loc2_ || _loc1_)
                  {
                     if(!_loc3_)
                     {
                        if(false)
                        {
                           loop5:
                           while(true)
                           {
                              super();
                              addr49:
                              while(true)
                              {
                                 if(_loc2_ || this)
                                 {
                                    §§goto(addr56);
                                 }
                                 addr82:
                                 while(true)
                                 {
                                    this.§3Y§ = new b2Mat22();
                                    break loop5;
                                 }
                              }
                              §§goto(addr94);
                           }
                           while(!_loc3_)
                           {
                              §§goto(addr46);
                              §§goto(addr35);
                           }
                           addr46:
                           while(true)
                           {
                              this.§+!=§ = new b2Mat22();
                              §§goto(addr82);
                           }
                           addr74:
                           addr88:
                        }
                        var _loc1_:int = 0;
                        addr103:
                        if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                        {
                           if(_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_++;
                                 addr117:
                                 §§goto(addr103);
                                 addr136:
                              }
                              return;
                           }
                           §§goto(addr117);
                        }
                        this.§=R§[_loc1_] = new b2ContactConstraintPoint();
                        §§goto(addr136);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr74);
               }
               §§goto(addr49);
            }
         }
         §§goto(addr88);
      }
   }
}
