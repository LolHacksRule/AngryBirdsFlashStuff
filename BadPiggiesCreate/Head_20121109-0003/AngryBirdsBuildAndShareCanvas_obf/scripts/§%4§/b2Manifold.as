package §%4§
{
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §%"#§:int = 1;
      
      public static const §`!5§:int = 2;
      
      public static const §&O§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%"#§ = 1;
         }
         do
         {
            §`!5§ = 2;
            do
            {
               §&O§ = 4;
            }
            while(_loc1_);
            
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public var §5S§:Vector.<b2ManifoldPoint>;
      
      public var §5!=§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §0!,§:int;
      
      public var §`!>§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               addr23:
               this.§5S§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
            var _loc1_:int = 0;
            while(true)
            {
               if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
               {
                  while(_loc3_)
                  {
                     if(_loc3_ || _loc1_)
                     {
                        this.§5!=§ = new b2Vec2();
                        do
                        {
                           this.m_localPoint = new b2Vec2();
                        }
                        while(_loc2_);
                        
                        if(_loc3_ || _loc3_)
                        {
                           return;
                        }
                        continue;
                     }
                  }
                  continue;
               }
               this.§5S§[_loc1_] = new b2ManifoldPoint();
               _loc1_++;
            }
         }
         §§goto(addr23);
      }
      
      public function §+N§() : void
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
                  this.§5!=§.§?b§();
                  while(true)
                  {
                     this.m_localPoint.§?b§();
                     loop3:
                     while(true)
                     {
                        this.§0!,§ = 0;
                        while(true)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            else
            {
               (this.§5S§[_loc1_] as b2ManifoldPoint).§+N§();
            }
            §§goto(addr101);
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§`!>§ = param1.§`!>§;
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
                  this.§5!=§.SetV(param1.§5!=§);
                  loop2:
                  while(!_loc3_)
                  {
                     this.m_localPoint.SetV(param1.m_localPoint);
                     for(; !(_loc3_ && _loc3_); this.§0!,§ = param1.§0!,§,if(!_loc3_)
                     {
                        if(!(_loc3_ && this))
                        {
                           return;
                        }
                        continue loop2;
                     })
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           continue;
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
            else
            {
               (this.§5S§[_loc2_] as b2ManifoldPoint).Set(param1.§5S§[_loc2_]);
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
