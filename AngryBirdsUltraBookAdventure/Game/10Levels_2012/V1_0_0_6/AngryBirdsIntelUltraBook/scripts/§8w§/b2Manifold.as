package §8w§
{
   import §3!m§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §6!C§:int = 1;
      
      public static const §>!r§:int = 2;
      
      public static const §9!D§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || b2Manifold)
         {
            §6!C§ = 1;
         }
         do
         {
            §>!r§ = 2;
            do
            {
               §9!D§ = 4;
            }
            while(!(_loc2_ || _loc1_));
            
         }
         while(!(_loc2_ || b2Manifold));
         
      }
      
      public var §4!a§:Vector.<b2ManifoldPoint>;
      
      public var §6O§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §"_§:int;
      
      public var §2V§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               this.§4!a§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(_loc3_)
               {
                  this.§6O§ = new b2Vec2();
                  while(!_loc2_)
                  {
                     this.m_localPoint = new b2Vec2();
                     if(_loc3_ || _loc1_)
                     {
                        if(!_loc2_)
                        {
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
               continue;
            }
            this.§4!a§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
      }
      
      public function §@!b§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               while(_loc2_ || this)
               {
                  this.§6O§.§&!K§();
                  loop2:
                  while(true)
                  {
                     this.m_localPoint.§&!K§();
                     while(true)
                     {
                        if(_loc2_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           this.§"_§ = 0;
                           continue;
                        }
                        continue loop2;
                     }
                  }
               }
               continue;
            }
            (this.§4!a§[_loc1_] as b2ManifoldPoint).§@!b§();
            _loc1_++;
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§2V§ = param1.§2V§;
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
                  this.§6O§.SetV(param1.§6O§);
                  loop2:
                  while(_loc3_)
                  {
                     this.m_localPoint.SetV(param1.m_localPoint);
                     while(!(_loc4_ && param1))
                     {
                        this.§"_§ = param1.§"_§;
                        if(!_loc4_)
                        {
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
                  continue loop0;
               }
               return;
            }
            (this.§4!a§[_loc2_] as b2ManifoldPoint).Set(param1.§4!a§[_loc2_]);
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
