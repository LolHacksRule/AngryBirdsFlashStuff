package §!D§
{
   import §#]§.*;
   import §4!!§.*;
   import §48§.*;
   import §55§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §+V§:Vector.<b2ContactConstraintPoint>;
      
      public var §=!,§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §?`§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §!!v§:b2Body;
      
      public var §'!4§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §<?§:int;
      
      public var §;!N§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            this.§=!,§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.localPoint = new b2Vec2();
               loop1:
               while(true)
               {
                  this.normal = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§?`§ = new b2Mat22();
                     addr82:
                     while(true)
                     {
                        this.K = new b2Mat22();
                        addr65:
                        while(_loc2_)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            loop6:
            do
            {
               super();
               while(_loc2_)
               {
                  this.§+V§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     continue loop6;
                  }
                  §§goto(addr65);
               }
               §§goto(addr82);
            }
            while(false);
            
            var _loc1_:int = 0;
            while(true)
            {
               if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
               {
                  if(_loc3_ && _loc3_)
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
                  this.§+V§[_loc1_] = new b2ContactConstraintPoint();
               }
               _loc1_++;
            }
            return;
         }
      }
   }
}
