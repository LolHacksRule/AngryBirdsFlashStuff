package §-r§
{
   import §"0§.*;
   import §6!H§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §6C§:int = 1;
      
      public static const §>E§:int = 2;
      
      public static const §&!5§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §6C§ = 1;
            while(true)
            {
               §>E§ = 2;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            §&!5§ = 4;
            if(!(_loc1_ && _loc2_))
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §@Z§:Vector.<b2ManifoldPoint>;
      
      public var §7!A§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §#!&§:int;
      
      public var §break§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(!_loc3_)
            {
               addr22:
               this.§@Z§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
            var _loc1_:int = 0;
            while(true)
            {
               if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§7!A§ = new b2Vec2();
                  }
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                  }
                  continue;
               }
               this.§@Z§[_loc1_] = new b2ManifoldPoint();
               _loc1_++;
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function §2'§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               while(true)
               {
                  this.§7!A§.§7_§();
                  loop2:
                  while(true)
                  {
                     this.m_localPoint.§7_§();
                     loop3:
                     while(true)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.§#!&§ = 0;
                           while(_loc2_ || _loc1_)
                           {
                              this.§break§ = 0;
                              if(!_loc3_)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
            else
            {
               (this.§@Z§[_loc1_] as b2ManifoldPoint).§2'§();
            }
            _loc1_++;
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§break§ = param1.§break§;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(!(_loc3_ && param1))
               {
                  this.§7!A§.SetV(param1.§7!A§);
                  loop2:
                  while(true)
                  {
                     this.m_localPoint.SetV(param1.m_localPoint);
                     while(true)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           if(_loc3_ && param1)
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
               loop4:
               while(_loc3_ && _loc2_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop4;
                  }
               }
               continue;
            }
            (this.§@Z§[_loc2_] as b2ManifoldPoint).Set(param1.§@Z§[_loc2_]);
            §§goto(addr125);
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
