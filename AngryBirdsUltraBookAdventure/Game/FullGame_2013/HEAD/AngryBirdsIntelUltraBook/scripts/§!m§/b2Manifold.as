package §!m§
{
   import §+!g§.*;
   import §>!8§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §@!"§:int = 1;
      
      public static const §<!!§:int = 2;
      
      public static const §&!>§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §@!"§ = 1;
            while(true)
            {
               §<!!§ = 2;
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     §&!>§ = 4;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public var §&!2§:Vector.<b2ManifoldPoint>;
      
      public var §-O§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §2!5§:int;
      
      public var §5<§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(_loc2_)
            {
               this.§&!2§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
         }
         §§push(0);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop() >= b2Settings.b2_maxManifoldPoints)
               {
                  while(true)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        continue;
                     }
                  }
                  continue;
               }
               this.§&!2§[_loc1_] = new b2ManifoldPoint();
               §§push(_loc1_);
               if(_loc2_)
               {
                  §§push(§§pop() + 1);
                  if(_loc2_ || _loc3_)
                  {
                  }
                  addr128:
                  _loc1_ = §§pop();
                  continue;
               }
               §§push(int(§§pop()));
            }
            §§goto(addr128);
         }
      }
      
      public function §9=§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(0);
         if(_loc2_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            §§push(_loc1_);
            if(_loc2_ || _loc1_)
            {
               if(!_loc3_)
               {
                  if(§§pop() >= b2Settings.b2_maxManifoldPoints)
                  {
                     loop1:
                     for(; _loc2_ || _loc1_; if(_loc2_ || _loc1_)
                     {
                        return;
                     })
                     {
                        this.§-O§.§@!;§();
                        loop2:
                        while(!_loc3_)
                        {
                           this.m_localPoint.§@!;§();
                           loop3:
                           do
                           {
                              this.§2!5§ = 0;
                              while(!_loc3_)
                              {
                                 this.§5<§ = 0;
                                 if(_loc2_ || this)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop2;
                           }
                           while(!(_loc2_ || _loc1_));
                           
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  (this.§&!2§[_loc1_] as b2ManifoldPoint).§9=§();
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + 1);
                  }
               }
               §§push(int(§§pop()));
            }
            _loc1_ = §§pop();
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§5<§ = param1.§5<§;
         }
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() >= b2Settings.b2_maxManifoldPoints)
               {
                  while(true)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        continue;
                     }
                  }
                  continue;
               }
               (this.§&!2§[_loc2_] as b2ManifoldPoint).Set(param1.§&!2§[_loc2_]);
               §§push(_loc2_);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() + 1);
                  if(_loc3_ || param1)
                  {
                  }
                  addr134:
                  _loc2_ = §§pop();
                  continue;
               }
               §§push(int(§§pop()));
            }
            §§goto(addr134);
         }
      }
      
      public function Copy() : b2Manifold
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Manifold = new b2Manifold();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
   }
}
