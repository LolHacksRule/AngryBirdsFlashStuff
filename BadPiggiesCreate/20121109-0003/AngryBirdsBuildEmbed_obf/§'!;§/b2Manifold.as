package §'!;§
{
   import §<!B§.*;
   import §?s§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §;!P§:int = 1;
      
      public static const § !N§:int = 2;
      
      public static const §%!5§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §;!P§ = 1;
            if(_loc2_ || _loc1_)
            {
               addr44:
               § !N§ = 2;
               if(_loc2_)
               {
                  §%!5§ = 4;
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public var §`?§:Vector.<b2ManifoldPoint>;
      
      public var §]!h§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §5!Z§:int;
      
      public var §+!X§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            if(_loc3_ || _loc1_)
            {
               this.§`?§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
         }
         var _loc1_:int = 0;
         do
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(!_loc2_)
               {
                  this.§]!h§ = new b2Vec2();
                  if(!_loc2_)
                  {
                     this.m_localPoint = new b2Vec2();
                     break;
                  }
                  break;
               }
               break;
            }
            this.§`?§[_loc1_] = new b2ManifoldPoint();
            if(!(_loc3_ || _loc2_))
            {
               break;
            }
            _loc1_++;
         }
         while(!(_loc2_ && _loc1_));
         
      }
      
      public function §^!]§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this.§`?§[_loc1_] as b2ManifoldPoint).§^!]§();
            _loc1_++;
            if(_loc2_ && this)
            {
               break;
            }
         }
         this.§]!h§.§22§();
         this.m_localPoint.§22§();
         if(!_loc2_)
         {
            this.§5!Z§ = 0;
         }
         this.§+!X§ = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§+!X§ = param1.§+!X§;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(!(_loc3_ && this))
               {
                  break;
               }
               addr88:
               this.§5!Z§ = param1.§5!Z§;
            }
            else
            {
               (this.§`?§[_loc2_] as b2ManifoldPoint).Set(param1.§`?§[_loc2_]);
               if(!_loc4_)
               {
                  break;
               }
               _loc2_++;
               if(_loc4_)
               {
                  continue;
               }
               addr81:
               this.m_localPoint.SetV(param1.m_localPoint);
               if(_loc4_)
               {
                  §§goto(addr88);
               }
            }
            return;
         }
         this.§]!h§.SetV(param1.§]!h§);
         if(!_loc3_)
         {
            §§goto(addr81);
         }
         §§goto(addr88);
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
