package §>!Z§
{
   import §&H§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §+!,§:int = 1;
      
      public static const §-!-§:int = 2;
      
      public static const §3!J§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+!,§ = 1;
            while(true)
            {
               §-!-§ = 2;
               while(!_loc2_)
               {
                  §3!J§ = 4;
                  if(!(_loc2_ && b2Manifold))
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public var § !C§:Vector.<b2ManifoldPoint>;
      
      public var §1!§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §3r§:int;
      
      public var §&!h§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            if(!(_loc3_ && _loc2_))
            {
               addr32:
               this.§ !C§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
            var _loc1_:int = 0;
            while(true)
            {
               if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
               {
                  loop1:
                  while(true)
                  {
                     this.§1!§ = new b2Vec2();
                     while(_loc2_ || _loc1_)
                     {
                        this.m_localPoint = new b2Vec2();
                        if(_loc2_ || _loc1_)
                        {
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                  }
                  return;
               }
               this.§ !C§[_loc1_] = new b2ManifoldPoint();
               while(true)
               {
                  _loc1_++;
               }
               addr112:
               while(!_loc2_)
               {
                  §§goto(addr112);
               }
            }
         }
         §§goto(addr32);
      }
      
      public function §2I§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               while(_loc2_)
               {
                  this.§1!§.§+J§();
                  do
                  {
                     this.m_localPoint.§+J§();
                     loop3:
                     while(true)
                     {
                        this.§3r§ = 0;
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop3;
                        }
                     }
                  }
                  while(_loc3_ && this);
                  
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               continue;
            }
            (this.§ !C§[_loc1_] as b2ManifoldPoint).§2I§();
            _loc1_++;
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§&!h§ = param1.§&!h§;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= b2Settings.b2_maxManifoldPoints)
            {
               while(!(_loc3_ && this))
               {
                  this.§1!§.SetV(param1.§1!§);
                  loop2:
                  do
                  {
                     this.m_localPoint.SetV(param1.m_localPoint);
                     while(_loc4_ || _loc2_)
                     {
                        this.§3r§ = param1.§3r§;
                        if(_loc4_)
                        {
                           continue loop2;
                        }
                     }
                  }
                  while(!_loc4_);
                  
                  if(_loc4_)
                  {
                     return;
                  }
               }
               continue;
            }
            (this.§ !C§[_loc2_] as b2ManifoldPoint).Set(param1.§ !C§[_loc2_]);
            _loc2_++;
         }
      }
      
      public function Copy() : b2Manifold
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Manifold = new b2Manifold();
         if(!_loc3_)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
   }
}
