package §!§
{
   import §'!_§.*;
   import §@!E§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §9!+§:int = 1;
      
      public static const §'h§:int = 2;
      
      public static const §!F§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || b2Manifold)
         {
            §9!+§ = 1;
         }
         do
         {
            §'h§ = 2;
            do
            {
               §!F§ = 4;
            }
            while(_loc1_);
            
         }
         while(!_loc2_);
         
      }
      
      public var §`9§:Vector.<b2ManifoldPoint>;
      
      public var §4!D§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §5Q§:int;
      
      public var §4!5§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            if(_loc3_)
            {
               this.§`9§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc3_ || _loc1_)
               {
                  this.§4!D§ = new b2Vec2();
               }
               for(; !(_loc2_ && _loc3_); this.m_localPoint = new b2Vec2(),if(_loc3_)
               {
                  return;
               })
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
               }
               continue;
            }
            this.§`9§[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
      }
      
      public function §[!2§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(_loc2_)
               {
                  this.§4!D§.§>![§();
                  while(true)
                  {
                     this.m_localPoint.§>![§();
                     loop3:
                     while(!(_loc3_ && this))
                     {
                        this.§5Q§ = 0;
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            else
            {
               (this.§`9§[_loc1_] as b2ManifoldPoint).§[!2§();
               while(true)
               {
                  _loc1_++;
               }
               addr101:
            }
            while(!_loc2_)
            {
               §§goto(addr101);
            }
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§4!5§ = param1.§4!5§;
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
                  this.§4!D§.SetV(param1.§4!D§);
                  loop2:
                  while(_loc4_)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        this.m_localPoint.SetV(param1.m_localPoint);
                        while(_loc4_)
                        {
                           this.§5Q§ = param1.§5Q§;
                           if(!(_loc3_ && this))
                           {
                              if(!_loc3_)
                              {
                                 return;
                              }
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
            else
            {
               (this.§`9§[_loc2_] as b2ManifoldPoint).Set(param1.§`9§[_loc2_]);
            }
            _loc2_++;
         }
      }
      
      public function Copy() : b2Manifold
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Manifold = new b2Manifold();
         if(_loc3_)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
   }
}
