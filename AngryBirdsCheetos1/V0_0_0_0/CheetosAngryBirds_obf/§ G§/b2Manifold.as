package § G§
{
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §<'§:int = 1;
      
      public static const §-b§:int = 2;
      
      public static const §3D§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2Manifold))
         {
            §<'§ = 1;
         }
         while(true)
         {
            §-b§ = 2;
            while(!(_loc1_ && _loc2_))
            {
               §3D§ = 4;
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public var §+!S§:Vector.<b2ManifoldPoint>;
      
      public var §39§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §3c§:int;
      
      public var §in §:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            if(_loc2_)
            {
               this.§+!S§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc2_)
               {
                  if(!_loc3_)
                  {
                     this.§39§ = new b2Vec2();
                  }
                  else
                  {
                     _loc1_++;
                     continue;
                     addr102:
                  }
               }
               while(!_loc3_)
               {
                  this.m_localPoint = new b2Vec2();
                  if(!(_loc3_ && _loc1_))
                  {
                     return;
                  }
               }
               continue;
            }
            this.§+!S§[_loc1_] = new b2ManifoldPoint();
            §§goto(addr102);
         }
      }
      
      public function §"o§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(true)
               {
                  this.§39§.§^!#§();
                  loop2:
                  while(true)
                  {
                     this.m_localPoint.§^!#§();
                     loop3:
                     while(true)
                     {
                        if(_loc3_ && _loc3_)
                        {
                           continue loop2;
                        }
                        if(_loc2_ || _loc3_)
                        {
                           this.§3c§ = 0;
                           while(!_loc3_)
                           {
                              this.§in § = 0;
                              if(!_loc3_)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       return;
                                    }
                                    break loop3;
                                 }
                                 continue loop1;
                              }
                           }
                           continue;
                        }
                     }
                     continue loop0;
                  }
               }
            }
            else
            {
               (this.§+!S§[_loc1_] as b2ManifoldPoint).§"o§();
            }
            _loc1_++;
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§in § = param1.§in §;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(!_loc4_)
               {
                  this.§39§.SetV(param1.§39§);
                  loop2:
                  while(_loc3_ || this)
                  {
                     this.m_localPoint.SetV(param1.m_localPoint);
                     while(true)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
               continue;
            }
            (this.§+!S§[_loc2_] as b2ManifoldPoint).Set(param1.§+!S§[_loc2_]);
            _loc2_++;
         }
      }
      
      public function Copy() : b2Manifold
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Manifold = new b2Manifold();
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
   }
}
