package §-"&§
{
   import §'F§.*;
   import §3!`§.*;
   import §6Z§.*;
   import §^9§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §=i§:Vector.<b2ContactConstraintPoint>;
      
      public var § !8§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §?!!§:b2Mat22;
      
      public var §""%§:b2Mat22;
      
      public var §'!n§:b2Body;
      
      public var § 5§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §>!%§:int;
      
      public var §@!o§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§ !8§ = new b2Vec2();
            while(true)
            {
               this.localPoint = new b2Vec2();
               while(true)
               {
                  this.normal = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§?!!§ = new b2Mat22();
                     while(true)
                     {
                        this.§""%§ = new b2Mat22();
                        loop4:
                        while(!_loc3_)
                        {
                           continue loop2;
                           loop6:
                           while(true)
                           {
                              this.§=i§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
                              if(_loc3_)
                              {
                                 continue;
                              }
                              if(_loc3_)
                              {
                                 continue loop4;
                              }
                              if(true)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 super();
                                 continue loop6;
                              }
                           }
                           var _loc1_:int = 0;
                           while(true)
                           {
                              if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                              {
                                 if(_loc3_ && this)
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 this.§=i§[_loc1_] = new b2ContactConstraintPoint();
                              }
                              _loc1_++;
                           }
                           return;
                        }
                     }
                  }
               }
               if(_loc3_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr34);
            }
         }
         §§goto(addr37);
      }
   }
}
