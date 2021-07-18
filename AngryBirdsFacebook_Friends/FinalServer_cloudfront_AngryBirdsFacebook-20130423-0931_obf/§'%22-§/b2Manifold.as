package §'"-§
{
   import §,"[§.*;
   import §6!^§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §>E§:int = 1;
      
      public static const §[!7§:int = 2;
      
      public static const §?!Q§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §>E§ = 1;
            while(true)
            {
               §[!7§ = 2;
               while(_loc1_)
               {
                  §?!Q§ = 4;
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public var §4!_§:Vector.<b2ManifoldPoint>;
      
      public var §3=§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §<"@§:int;
      
      public var §0,§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc3_ || _loc3_)
            {
               this.§4!_§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               do
               {
                  this.§3=§ = new b2Vec2();
                  do
                  {
                     this.m_localPoint = new b2Vec2();
                  }
                  while(!(_loc3_ || _loc3_));
                  
               }
               while(!_loc3_);
               
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               if(_loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§4!_§[_loc1_] = new b2ManifoldPoint();
            }
            _loc1_++;
         }
      }
      
      public function §<"U§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(_loc3_)
               {
                  this.§3=§.§%y§();
                  loop2:
                  while(true)
                  {
                     this.m_localPoint.§%y§();
                     while(!(_loc2_ && this))
                     {
                        this.§<"@§ = 0;
                        while(_loc3_)
                        {
                           continue loop2;
                           this.§0,§ = 0;
                           if(!_loc2_)
                           {
                              return;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
               loop5:
               while(!(_loc3_ || _loc2_))
               {
                  while(true)
                  {
                     _loc1_++;
                     continue loop5;
                  }
               }
               continue;
            }
            (this.§4!_§[_loc1_] as b2ManifoldPoint).§<"U§();
            §§goto(addr107);
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§0,§ = param1.§0,§;
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
                  this.§3=§.SetV(param1.§3=§);
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        break loop1;
                     }
                     this.m_localPoint.SetV(param1.m_localPoint);
                     while(_loc4_)
                     {
                        if(_loc4_ || this)
                        {
                           this.§<"@§ = param1.§<"@§;
                           if(!(_loc3_ && param1))
                           {
                              if(!(_loc3_ && this))
                              {
                                 return;
                              }
                              continue loop1;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            else
            {
               (this.§4!_§[_loc2_] as b2ManifoldPoint).Set(param1.§4!_§[_loc2_]);
            }
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
