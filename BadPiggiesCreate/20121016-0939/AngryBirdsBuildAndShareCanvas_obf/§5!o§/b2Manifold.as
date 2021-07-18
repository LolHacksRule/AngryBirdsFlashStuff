package §5!o§
{
   import §2"=§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §>§:int = 1;
      
      public static const §1!0§:int = 2;
      
      public static const §7" §:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §>§ = 1;
            while(true)
            {
               §1!0§ = 2;
               while(_loc2_)
               {
                  §7" § = 4;
                  if(!_loc1_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public var §5!'§:Vector.<b2ManifoldPoint>;
      
      public var §,"'§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §="1§:int;
      
      public var §<!c§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            if(!_loc3_)
            {
               this.§5!'§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc2_)
               {
                  this.§,"'§ = new b2Vec2();
               }
               do
               {
                  this.m_localPoint = new b2Vec2();
               }
               while(_loc3_ && _loc1_);
               
               if(_loc2_)
               {
                  break;
               }
            }
            else
            {
               this.§5!'§[_loc1_] = new b2ManifoldPoint();
               while(true)
               {
                  _loc1_++;
               }
               addr102:
            }
            while(_loc3_)
            {
               §§goto(addr102);
            }
         }
      }
      
      public function §%i§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc3_ || _loc2_)
               {
                  this.§,"'§.§@!s§();
               }
               loop1:
               while(_loc3_ || _loc2_)
               {
                  if(!_loc2_)
                  {
                     this.m_localPoint.§@!s§();
                     loop2:
                     while(true)
                     {
                        this.§="1§ = 0;
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(_loc2_)
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
            (this.§5!'§[_loc1_] as b2ManifoldPoint).§%i§();
            _loc1_++;
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§<!c§ = param1.§<!c§;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc3_ || _loc2_)
               {
                  if(_loc3_)
                  {
                     this.§,"'§.SetV(param1.§,"'§);
                  }
                  else
                  {
                     _loc2_++;
                     continue;
                     addr119:
                  }
               }
               do
               {
                  this.m_localPoint.SetV(param1.m_localPoint);
                  do
                  {
                     this.§="1§ = param1.§="1§;
                  }
                  while(!_loc3_);
                  
               }
               while(!(_loc3_ || _loc2_));
               
               if(!(_loc4_ && _loc2_))
               {
                  break;
               }
               continue;
            }
            (this.§5!'§[_loc2_] as b2ManifoldPoint).Set(param1.§5!'§[_loc2_]);
            §§goto(addr119);
         }
      }
      
      public function Copy() : b2Manifold
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Manifold = new b2Manifold();
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
   }
}
