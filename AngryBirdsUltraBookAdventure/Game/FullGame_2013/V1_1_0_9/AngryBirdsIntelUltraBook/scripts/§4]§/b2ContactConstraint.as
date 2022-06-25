package §4]§
{
   import §#I§.*;
   import §&H§.*;
   import §>!Z§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §+"§:Vector.<b2ContactConstraintPoint>;
      
      public var §8!9§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §>!o§:b2Mat22;
      
      public var §+!K§:b2Mat22;
      
      public var §19§:b2Body;
      
      public var §"@§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §%!3§:int;
      
      public var §^#§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!9§ = new b2Vec2();
            while(true)
            {
               this.localPoint = new b2Vec2();
            }
            addr105:
         }
         loop1:
         while(true)
         {
            this.normal = new b2Vec2();
            loop2:
            while(true)
            {
               this.§>!o§ = new b2Mat22();
               while(_loc3_)
               {
                  this.§+!K§ = new b2Mat22();
                  while(_loc3_ || _loc1_)
                  {
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           super();
                           continue loop2;
                        }
                        continue;
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr45);
                        }
                        else
                        {
                           var _loc1_:int = 0;
                           addr119:
                           if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    _loc1_++;
                                    addr138:
                                    §§goto(addr119);
                                    addr147:
                                 }
                                 return;
                              }
                              §§goto(addr138);
                           }
                           this.§+"§[_loc1_] = new b2ContactConstraintPoint();
                           §§goto(addr147);
                        }
                     }
                     continue loop1;
                  }
               }
               §§goto(addr105);
            }
         }
      }
   }
}
