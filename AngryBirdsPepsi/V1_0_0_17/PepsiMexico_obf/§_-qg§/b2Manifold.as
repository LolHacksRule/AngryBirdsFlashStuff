package §_-qg§
{
   import §_-Ja§.*;
   import §_-lh§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §_-1§:int = 1;
      
      public static const §_-zO§:int = 2;
      
      public static const §_-77§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §_-1§ = 1;
            if(!_loc2_)
            {
               addr39:
               §_-zO§ = 2;
               if(!_loc2_)
               {
                  §_-77§ = 4;
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public var §_-hn§:Vector.<b2ManifoldPoint>;
      
      public var §_-Pv§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §_-Sj§:int;
      
      public var §_-Tu§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc3_)
            {
               addr25:
               this.§_-hn§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
            var _loc1_:int = 0;
            while(true)
            {
               if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr83);
               }
               this.§_-hn§[_loc1_] = new b2ManifoldPoint();
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_++;
                  if(!_loc3_)
                  {
                     break;
                  }
               }
            }
            this.§_-Pv§ = new b2Vec2();
            if(_loc3_)
            {
               this.m_localPoint = new b2Vec2();
            }
            addr83:
            return;
         }
         §§goto(addr25);
      }
      
      public function §_-i0§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§_-hn§[_loc1_] as b2ManifoldPoint).§_-i0§();
            _loc1_++;
         }
         if(!_loc2_)
         {
            this.§_-Pv§.§_-0a§();
            this.m_localPoint.§_-0a§();
         }
         this.§_-Sj§ = 0;
         this.§_-Tu§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§_-Tu§ = param1.§_-Tu§;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < b2Settings.b2_maxManifoldPoints)
            {
               continue;
            }
            if(!_loc3_)
            {
               addr53:
               this.§_-Pv§.SetV(param1.§_-Pv§);
               if(_loc4_ || _loc2_)
               {
                  this.m_localPoint.SetV(param1.m_localPoint);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr83);
               }
               break;
            }
            §§goto(addr83);
         }
         this.§_-Sj§ = param1.§_-Sj§;
         addr83:
      }
      
      public function Copy() : b2Manifold
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Manifold = new b2Manifold();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
   }
}
