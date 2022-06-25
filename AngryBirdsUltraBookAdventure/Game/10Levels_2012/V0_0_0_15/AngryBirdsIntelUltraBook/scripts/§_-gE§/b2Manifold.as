package §_-gE§
{
   import §_-5§.*;
   import §_-Yp§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §_-fd§:int = 1;
      
      public static const §_-f8§:int = 2;
      
      public static const §_-vN§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-fd§ = 1;
            while(true)
            {
               §_-f8§ = 2;
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     §_-vN§ = 4;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public var §_-Eg§:Vector.<b2ManifoldPoint>;
      
      public var §catch§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §_-1c§:int;
      
      public var §_-XO§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            super();
            if(_loc3_ || _loc3_)
            {
               this.§_-Eg§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(true)
               {
                  this.§catch§ = new b2Vec2();
                  while(true)
                  {
                     if(_loc3_)
                     {
                        this.m_localPoint = new b2Vec2();
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 break loop0;
                              }
                              break;
                           }
                           continue loop1;
                        }
                        continue;
                     }
                  }
                  continue loop0;
               }
            }
            else
            {
               this.§_-Eg§[_loc1_] = new b2ManifoldPoint();
            }
            _loc1_++;
         }
      }
      
      public function §_-8Y§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(true)
               {
                  this.§catch§.§_-el§();
                  while(_loc3_)
                  {
                     this.m_localPoint.§_-el§();
                     loop3:
                     while(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           this.§_-1c§ = 0;
                           while(true)
                           {
                              if(!(_loc2_ && this))
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop3;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
            else
            {
               (this.§_-Eg§[_loc1_] as b2ManifoldPoint).§_-8Y§();
            }
            _loc1_++;
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§_-XO§ = param1.§_-XO§;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(true)
               {
                  this.§catch§.SetV(param1.§catch§);
                  while(true)
                  {
                     this.m_localPoint.SetV(param1.m_localPoint);
                     while(true)
                     {
                        if(!(_loc4_ || _loc2_))
                        {
                           continue loop1;
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        if(_loc4_ || _loc3_)
                        {
                           continue;
                        }
                     }
                     continue loop0;
                  }
                  return;
               }
            }
            else
            {
               (this.§_-Eg§[_loc2_] as b2ManifoldPoint).Set(param1.§_-Eg§[_loc2_]);
            }
            _loc2_++;
         }
      }
      
      public function Copy() : b2Manifold
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Manifold = new b2Manifold();
         if(_loc2_)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
   }
}
