package §23§
{
   import §!§.*;
   import §'!_§.*;
   import §0"!§.*;
   import §@!E§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §>Q§:Vector.<b2ContactConstraintPoint>;
      
      public var §;!6§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §3!e§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §9!w§:b2Body;
      
      public var §>!W§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §#!1§:int;
      
      public var §7"+§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§;!6§ = new b2Vec2();
            while(true)
            {
               this.localPoint = new b2Vec2();
               addr48:
               if(!(_loc3_ || _loc1_))
               {
                  continue;
               }
               if(false)
               {
                  loop5:
                  while(true)
                  {
                     super();
                     addr60:
                     addr83:
                     while(_loc3_ || _loc2_)
                     {
                        this.§>Q§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
                        if(_loc2_ && _loc1_)
                        {
                           continue;
                        }
                        if(!(_loc3_ || _loc3_))
                        {
                           break loop5;
                        }
                        §§goto(addr48);
                     }
                     addr91:
                     while(!_loc2_)
                     {
                        continue loop5;
                        §§goto(addr60);
                     }
                     while(true)
                     {
                        this.K = new b2Mat22();
                        §§goto(addr83);
                     }
                  }
                  while(_loc3_ || _loc3_)
                  {
                     this.§3!e§ = new b2Mat22();
                     §§goto(addr91);
                     §§goto(addr41);
                  }
                  while(true)
                  {
                     this.normal = new b2Vec2();
                     §§goto(addr97);
                  }
                  addr97:
                  addr110:
               }
               var _loc1_:int = 0;
               addr119:
               if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
               {
                  if(!(_loc3_ || this))
                  {
                     addr136:
                     if(_loc3_ || _loc1_)
                     {
                        §§goto(addr119);
                     }
                     _loc1_++;
                     §§goto(addr136);
                     addr162:
                  }
                  return;
               }
               this.§>Q§[_loc1_] = new b2ContactConstraintPoint();
               §§goto(addr162);
            }
         }
         §§goto(addr110);
      }
   }
}
