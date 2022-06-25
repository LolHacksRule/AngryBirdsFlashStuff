package §7a§
{
   import § D§.*;
   import §&!-§.*;
   import §8>§.*;
   import §;u§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §@a§:Vector.<b2ContactConstraintPoint>;
      
      public var §^@§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §>!H§:b2Mat22;
      
      public var §@"§:b2Mat22;
      
      public var §-!O§:b2Body;
      
      public var §3!u§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §6Y§:int;
      
      public var §<I§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^@§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.localPoint = new b2Vec2();
               loop1:
               while(true)
               {
                  this.normal = new b2Vec2();
                  while(true)
                  {
                     this.§>!H§ = new b2Mat22();
                     while(_loc2_)
                     {
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        this.§@"§ = new b2Mat22();
                        if(_loc3_ && _loc2_)
                        {
                           continue;
                        }
                        if(false)
                        {
                           loop5:
                           while(true)
                           {
                              super();
                              addr47:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 addr72:
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                           addr100:
                           var _loc1_:int = 0;
                        }
                        else
                        {
                           §§goto(addr100);
                        }
                        addr103:
                        if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                        {
                           if(!(_loc2_ || _loc2_))
                           {
                              addr130:
                              if(_loc2_ || this)
                              {
                                 §§goto(addr103);
                              }
                              _loc1_++;
                              §§goto(addr130);
                              addr146:
                           }
                           return;
                        }
                        this.§@a§[_loc1_] = new b2ContactConstraintPoint();
                        §§goto(addr146);
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
   }
}
