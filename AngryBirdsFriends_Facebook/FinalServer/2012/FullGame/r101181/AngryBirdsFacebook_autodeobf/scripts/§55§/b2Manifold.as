package §55§
{
   import §#]§.*;
   import §4!!§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §9M§:int = 1;
      
      public static const §;1§:int = 2;
      
      public static const §#[§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §9M§ = 1;
         }
         do
         {
            §;1§ = 2;
            do
            {
               §#[§ = 4;
            }
            while(!_loc2_);
            
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public var §1!d§:Vector.<b2ManifoldPoint>;
      
      public var §%C§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §<";§:int;
      
      public var §^M§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(_loc3_)
            {
               addr23:
               this.§1!d§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
            var _loc1_:int = 0;
            loop0:
            while(true)
            {
               if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
               {
                  while(_loc3_)
                  {
                     this.§%C§ = new b2Vec2();
                     do
                     {
                        this.m_localPoint = new b2Vec2();
                     }
                     while(!(_loc3_ || _loc2_));
                     
                     if(!_loc3_)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        break loop0;
                     }
                  }
                  continue;
               }
               this.§1!d§[_loc1_] = new b2ManifoldPoint();
               _loc1_++;
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function §<t§() : void
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
                  this.§%C§.§;v§();
                  loop2:
                  while(true)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        this.m_localPoint.§;v§();
                        loop3:
                        do
                        {
                           this.§<";§ = 0;
                           while(!(_loc3_ && this))
                           {
                              if(!(_loc3_ && this))
                              {
                                 this.§^M§ = 0;
                                 if(_loc2_ || _loc2_)
                                 {
                                    continue loop3;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        while(_loc3_ && _loc3_);
                        
                        if(_loc2_ || _loc3_)
                        {
                           break loop0;
                        }
                        break;
                     }
                  }
                  continue loop0;
               }
            }
            else
            {
               (this.§1!d§[_loc1_] as b2ManifoldPoint).§<t§();
            }
            _loc1_++;
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§^M§ = param1.§^M§;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc3_)
               {
                  this.§%C§.SetV(param1.§%C§);
               }
               loop1:
               while(true)
               {
                  this.m_localPoint.SetV(param1.m_localPoint);
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue loop1;
                     }
                     if(!(_loc4_ && param1))
                     {
                        continue;
                     }
                  }
                  continue loop0;
               }
            }
            else
            {
               (this.§1!d§[_loc2_] as b2ManifoldPoint).Set(param1.§1!d§[_loc2_]);
            }
            _loc2_++;
         }
      }
      
      public function Copy() : b2Manifold
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Manifold = new b2Manifold();
         if(_loc2_ || this)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
   }
}
