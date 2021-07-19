package §9"§
{
   import §0!G§.*;
   import §2!F§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §4A§:int = 1;
      
      public static const §0!&§:int = 2;
      
      public static const §5!8§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4A§ = 1;
            while(true)
            {
               §0!&§ = 2;
               while(!(_loc2_ && _loc2_))
               {
                  §5!8§ = 4;
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      public var §<s§:Vector.<b2ManifoldPoint>;
      
      public var §9]§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §8!J§:int;
      
      public var §!$§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               addr27:
               this.§<s§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
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
                     this.§9]§ = new b2Vec2();
                     while(_loc2_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           this.m_localPoint = new b2Vec2();
                           if(_loc2_)
                           {
                              if(!(_loc3_ && this))
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                           continue;
                        }
                     }
                     continue loop0;
                  }
                  return;
               }
               this.§<s§[_loc1_] = new b2ManifoldPoint();
               _loc1_++;
            }
         }
         §§goto(addr27);
      }
      
      public function §8j§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(!_loc2_)
               {
                  this.§9]§.§3a§();
               }
               while(true)
               {
                  this.m_localPoint.§3a§();
                  while(_loc3_ || _loc1_)
                  {
                     this.§8!J§ = 0;
                     while(_loc3_ || _loc2_)
                     {
                        this.§!$§ = 0;
                        if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        }
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        if(!(_loc2_ && _loc3_))
                        {
                           break loop0;
                        }
                        _loc1_++;
                        continue loop0;
                        addr112:
                     }
                  }
               }
            }
            else
            {
               (this.§<s§[_loc1_] as b2ManifoldPoint).§8j§();
            }
            §§goto(addr112);
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§!$§ = param1.§!$§;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(_loc3_ || _loc3_)
               {
                  this.§9]§.SetV(param1.§9]§);
                  loop2:
                  while(true)
                  {
                     this.m_localPoint.SetV(param1.m_localPoint);
                     while(true)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc3_)
                           {
                              if(!(_loc3_ || _loc3_))
                              {
                                 _loc2_++;
                              }
                              else
                              {
                                 addr119:
                              }
                              continue;
                              break loop1;
                           }
                           break;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
               continue;
            }
            (this.§<s§[_loc2_] as b2ManifoldPoint).Set(param1.§<s§[_loc2_]);
            §§goto(addr119);
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
