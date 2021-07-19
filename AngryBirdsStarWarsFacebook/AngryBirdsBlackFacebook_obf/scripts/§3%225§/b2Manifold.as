package §3"5§
{
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §1!9§:int = 1;
      
      public static const §=!m§:int = 2;
      
      public static const §3"f§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2Manifold))
         {
            §1!9§ = 1;
            while(true)
            {
               §=!m§ = 2;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            §3"f§ = 4;
            if(!_loc2_)
            {
               if(_loc1_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §="8§:Vector.<b2ManifoldPoint>;
      
      public var §[#M§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §%!9§:int;
      
      public var §6#;§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               addr32:
               this.§="8§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
            var _loc1_:int = 0;
            while(true)
            {
               if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(_loc2_ || _loc3_)
                     {
                        this.§[#M§ = new b2Vec2();
                     }
                     else
                     {
                        _loc1_++;
                        continue;
                        addr112:
                     }
                  }
                  while(!_loc3_)
                  {
                     this.m_localPoint = new b2Vec2();
                     if(_loc2_)
                     {
                        return;
                     }
                  }
                  continue;
               }
               this.§="8§[_loc1_] = new b2ManifoldPoint();
               §§goto(addr112);
            }
         }
         §§goto(addr32);
      }
      
      public function §'B§() : void
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
                  this.§[#M§.§&"Q§();
                  loop2:
                  while(true)
                  {
                     this.m_localPoint.§&"Q§();
                     while(true)
                     {
                        if(!_loc2_)
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
               continue;
            }
            (this.§="8§[_loc1_] as b2ManifoldPoint).§'B§();
            _loc1_++;
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§6#;§ = param1.§6#;§;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(!(_loc3_ && param1))
               {
                  this.§[#M§.SetV(param1.§[#M§);
               }
               loop1:
               do
               {
                  this.m_localPoint.SetV(param1.m_localPoint);
                  while(_loc4_)
                  {
                     this.§%!9§ = param1.§%!9§;
                     if(!_loc3_)
                     {
                        continue loop1;
                     }
                  }
               }
               while(_loc3_);
               
               return;
            }
            (this.§="8§[_loc2_] as b2ManifoldPoint).Set(param1.§="8§[_loc2_]);
            while(true)
            {
               _loc2_++;
            }
            addr105:
            while(_loc3_)
            {
               §§goto(addr105);
            }
         }
      }
      
      public function Copy() : b2Manifold
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Manifold = new b2Manifold();
         if(_loc2_)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
   }
}
