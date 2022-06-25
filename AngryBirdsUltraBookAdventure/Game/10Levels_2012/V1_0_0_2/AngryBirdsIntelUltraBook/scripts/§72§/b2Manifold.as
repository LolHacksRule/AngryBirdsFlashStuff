package §72§
{
   import §7!u§.*;
   import §>H§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §"^§:int = 1;
      
      public static const §+!M§:int = 2;
      
      public static const §6!X§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §"^§ = 1;
         }
         while(true)
         {
            §+!M§ = 2;
            while(!(_loc1_ && _loc2_))
            {
               §6!X§ = 4;
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public var §,!f§:Vector.<b2ManifoldPoint>;
      
      public var §=i§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §+!?§:int;
      
      public var §63§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super();
            if(!_loc3_)
            {
               this.§,!f§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc2_ || _loc1_)
               {
                  this.§=i§ = new b2Vec2();
               }
               do
               {
                  this.m_localPoint = new b2Vec2();
               }
               while(!_loc2_);
               
               if(!_loc2_)
               {
                  continue;
               }
               if(_loc2_ || this)
               {
                  break;
               }
            }
            else
            {
               this.§,!f§[_loc1_] = new b2ManifoldPoint();
            }
            _loc1_++;
         }
      }
      
      public function §<!e§() : void
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
                  this.§=i§.§`!5§();
                  loop2:
                  while(true)
                  {
                     this.m_localPoint.§`!5§();
                     loop3:
                     while(_loc2_ || _loc1_)
                     {
                        if(!(_loc2_ || _loc1_))
                        {
                           break loop2;
                        }
                        this.§+!?§ = 0;
                        while(!_loc3_)
                        {
                           this.§63§ = 0;
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
            (this.§,!f§[_loc1_] as b2ManifoldPoint).§<!e§();
            _loc1_++;
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§63§ = param1.§63§;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(true)
               {
                  if(_loc3_ || param1)
                  {
                     this.§=i§.SetV(param1.§=i§);
                     loop2:
                     while(true)
                     {
                        this.m_localPoint.SetV(param1.m_localPoint);
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              if(_loc4_)
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
               }
               continue;
            }
            (this.§,!f§[_loc2_] as b2ManifoldPoint).Set(param1.§,!f§[_loc2_]);
            _loc2_++;
         }
      }
      
      public function Copy() : b2Manifold
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Manifold = new b2Manifold();
         if(_loc3_ || _loc2_)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
   }
}
