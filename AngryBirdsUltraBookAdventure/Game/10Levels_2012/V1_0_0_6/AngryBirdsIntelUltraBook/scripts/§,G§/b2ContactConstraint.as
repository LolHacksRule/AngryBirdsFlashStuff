package §,G§
{
   import §#V§.*;
   import §3!m§.*;
   import §8w§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §7!4§:Vector.<b2ContactConstraintPoint>;
      
      public var §[!<§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §`!C§:b2Mat22;
      
      public var §&+§:b2Mat22;
      
      public var §0w§:b2Body;
      
      public var §^2§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §@!#§:int;
      
      public var §0q§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§[!<§ = new b2Vec2();
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
                     this.§`!C§ = new b2Mat22();
                     while(_loc3_ || _loc1_)
                     {
                        if(!_loc2_)
                        {
                           this.§&+§ = new b2Mat22();
                           while(!_loc2_)
                           {
                              continue loop1;
                              loop5:
                              while(true)
                              {
                                 super();
                                 do
                                 {
                                    this.§7!4§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
                                 }
                                 while(!_loc3_);
                                 
                                 if(!_loc2_)
                                 {
                                    while(false)
                                    {
                                       continue loop5;
                                    }
                                    var _loc1_:int = 0;
                                    while(true)
                                    {
                                       if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             break;
                                          }
                                          loop9:
                                          while(_loc2_ && _loc3_)
                                          {
                                             while(true)
                                             {
                                                _loc1_++;
                                                continue loop9;
                                             }
                                          }
                                          continue;
                                       }
                                       this.§7!4§[_loc1_] = new b2ContactConstraintPoint();
                                       §§goto(addr147);
                                    }
                                    return;
                                    addr38:
                                 }
                                 break;
                              }
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr38);
      }
   }
}
