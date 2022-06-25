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
               while(_loc3_ || _loc3_)
               {
                  this.§>!o§ = new b2Mat22();
                  loop3:
                  for(; !_loc2_; if(_loc3_ || _loc2_)
                  {
                     if(false)
                     {
                        §§goto(addr42);
                     }
                     var _loc1_:int = 0;
                     while(true)
                     {
                        if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           this.§+"§[_loc1_] = new b2ContactConstraintPoint();
                           while(true)
                           {
                              _loc1_++;
                           }
                           addr132:
                        }
                        while(!_loc3_)
                        {
                           §§goto(addr132);
                        }
                     }
                     return;
                  })
                  {
                     this.§+!K§ = new b2Mat22();
                     loop4:
                     while(_loc3_)
                     {
                        while(true)
                        {
                           super();
                           do
                           {
                              this.§+"§ = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
                           }
                           while(_loc2_);
                           
                           if(!_loc2_)
                           {
                              continue;
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                     while(true)
                     {
                        this.normal = new b2Vec2();
                        break loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
   }
}
