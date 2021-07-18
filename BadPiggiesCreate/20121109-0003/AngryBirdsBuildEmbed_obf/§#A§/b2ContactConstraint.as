package §#A§
{
   import § !t§.*;
   import §'!;§.*;
   import §<!B§.*;
   import §?s§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §>!@§:Vector.<b2ContactConstraintPoint>;
      
      public var §>v§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §<y§:b2Mat22;
      
      public var §8!R§:b2Mat22;
      
      public var §[!i§:b2Body;
      
      public var §;!K§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §+6§:int;
      
      public var §3!D§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>v§ = new b2Vec2();
            if(!(_loc3_ && _loc3_))
            {
               this.localPoint = new b2Vec2();
               if(!(_loc3_ && _loc2_))
               {
                  this.normal = new b2Vec2();
                  if(_loc2_)
                  {
                     this.§<y§ = new b2Mat22();
                     §§goto(addr60);
                  }
               }
               §§goto(addr71);
            }
            addr60:
            this.§8!R§ = new b2Mat22();
            if(_loc2_ || _loc1_)
            {
               addr71:
               super();
               this.§>!@§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
            }
            var _loc1_:int = 0;
            while(_loc1_ < b2Settings.b2_maxManifoldPoints)
            {
               this.§>!@§[_loc1_] = new b2ContactConstraintPoint();
               if(_loc3_ && _loc3_)
               {
                  break;
               }
               _loc1_++;
               if(!(_loc2_ || this))
               {
                  break;
               }
            }
            return;
         }
         §§goto(addr71);
      }
   }
}
