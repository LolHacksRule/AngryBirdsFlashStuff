package §^9§
{
   import §'F§.*;
   import §6Z§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §1K§:int = 1;
      
      public static const §3!u§:int = 2;
      
      public static const §8!p§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1K§ = 1;
            while(true)
            {
               §3!u§ = 2;
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            §8!p§ = 4;
            if(_loc2_ || _loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §"A§:Vector.<b2ManifoldPoint>;
      
      public var §'c§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §6m§:int;
      
      public var §26§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            if(!(_loc2_ && _loc3_))
            {
               this.§"A§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§'c§ = new b2Vec2();
               }
               while(true)
               {
                  if(_loc3_ || _loc2_)
                  {
                     continue;
                  }
               }
               continue;
            }
            this.§"A§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
      }
      
      public function §?!r§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(!(_loc2_ && this))
               {
                  this.§'c§.§5!H§();
                  loop2:
                  while(true)
                  {
                     this.m_localPoint.§5!H§();
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           continue loop2;
                        }
                        if(_loc2_ && _loc3_)
                        {
                           break;
                        }
                        if(!(_loc2_ && _loc1_))
                        {
                           continue;
                        }
                     }
                     continue loop1;
                  }
               }
               continue;
            }
            (this.§"A§[_loc1_] as b2ManifoldPoint).§?!r§();
            _loc1_++;
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§26§ = param1.§26§;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(!_loc3_)
               {
                  this.§'c§.SetV(param1.§'c§);
               }
               loop1:
               while(true)
               {
                  this.m_localPoint.SetV(param1.m_localPoint);
                  while(true)
                  {
                     if(_loc3_)
                     {
                        continue loop1;
                     }
                     if(!_loc3_)
                     {
                        continue;
                     }
                  }
                  continue loop0;
               }
            }
            else
            {
               (this.§"A§[_loc2_] as b2ManifoldPoint).Set(param1.§"A§[_loc2_]);
            }
            _loc2_++;
         }
      }
      
      public function Copy() : b2Manifold
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Manifold = new b2Manifold();
         if(!_loc2_)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
   }
}
