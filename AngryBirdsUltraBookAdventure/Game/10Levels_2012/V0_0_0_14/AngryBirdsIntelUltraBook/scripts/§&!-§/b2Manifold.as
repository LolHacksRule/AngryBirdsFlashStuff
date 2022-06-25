package §&!-§
{
   import §8>§.*;
   import §;u§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §,!y§:int = 1;
      
      public static const §@!`§:int = 2;
      
      public static const §6$§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,!y§ = 1;
         }
         while(true)
         {
            §@!`§ = 2;
            while(!_loc2_)
            {
               §6$§ = 4;
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      public var §<8§:Vector.<b2ManifoldPoint>;
      
      public var §0!?§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §"!1§:int;
      
      public var §]B§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            if(!_loc3_)
            {
               this.§<8§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
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
                  if(!_loc3_)
                  {
                     this.§0!?§ = new b2Vec2();
                     while(_loc2_ || this)
                     {
                        this.m_localPoint = new b2Vec2();
                        if(_loc2_)
                        {
                           if(!(_loc3_ && _loc1_))
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               return;
            }
            this.§<8§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
      }
      
      public function §#[§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(!_loc3_)
               {
                  if(_loc2_)
                  {
                     this.§0!?§.§%&§();
                  }
                  else
                  {
                     _loc1_++;
                     continue;
                     addr101:
                  }
               }
               do
               {
                  this.m_localPoint.§%&§();
                  do
                  {
                     this.§"!1§ = 0;
                     do
                     {
                        this.§]B§ = 0;
                     }
                     while(_loc3_ && this);
                     
                  }
                  while(!_loc2_);
                  
               }
               while(_loc3_ && _loc2_);
               
               if(_loc2_)
               {
                  break;
               }
               continue;
            }
            (this.§<8§[_loc1_] as b2ManifoldPoint).§#[§();
            §§goto(addr101);
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§]B§ = param1.§]B§;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(!(_loc4_ && param1))
               {
                  this.§0!?§.SetV(param1.§0!?§);
               }
               while(_loc3_)
               {
                  this.m_localPoint.SetV(param1.m_localPoint);
                  do
                  {
                     this.§"!1§ = param1.§"!1§;
                  }
                  while(_loc4_);
                  
                  if(_loc3_ || param1)
                  {
                     return;
                  }
               }
               loop3:
               while(!(_loc3_ || _loc2_))
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop3;
                  }
               }
               continue;
            }
            (this.§<8§[_loc2_] as b2ManifoldPoint).Set(param1.§<8§[_loc2_]);
            §§goto(addr114);
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
