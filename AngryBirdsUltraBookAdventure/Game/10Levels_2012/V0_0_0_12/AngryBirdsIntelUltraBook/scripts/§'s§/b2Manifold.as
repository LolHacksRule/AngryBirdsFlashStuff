package §'s§
{
   import §&L§.*;
   import §+!,§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §8!G§:int = 1;
      
      public static const §,!0§:int = 2;
      
      public static const §#,§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §8!G§ = 1;
         }
         while(true)
         {
            §,!0§ = 2;
            while(!(_loc2_ && _loc2_))
            {
               §#,§ = 4;
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public var §`!$§:Vector.<b2ManifoldPoint>;
      
      public var §&!E§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §32§:int;
      
      public var §'!j§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc3_ || _loc1_)
            {
               addr33:
               this.§`!$§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
            §§push(0);
            if(_loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc1_:* = §§pop();
            while(true)
            {
               §§push(_loc1_);
               if(!_loc2_)
               {
                  if(§§pop() >= b2Settings.b2_maxManifoldPoints)
                  {
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§&!E§ = new b2Vec2();
                           break;
                        }
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                           §§push(§§pop() + 1);
                           if(!_loc2_)
                           {
                              addr114:
                              _loc1_ = int(§§pop());
                              continue;
                           }
                        }
                        §§goto(addr114);
                        addr124:
                     }
                     break;
                  }
                  this.§`!$§[_loc1_] = new b2ManifoldPoint();
                  §§goto(addr124);
               }
               §§goto(addr114);
            }
            do
            {
               this.m_localPoint = new b2Vec2();
            }
            while(_loc2_);
            
            return;
         }
         §§goto(addr33);
      }
      
      public function §@!D§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(0);
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc2_))
            {
               if(!_loc3_)
               {
                  if(_loc2_)
                  {
                     if(§§pop() >= b2Settings.b2_maxManifoldPoints)
                     {
                        loop1:
                        do
                        {
                           this.§&!E§.§5b§();
                           loop2:
                           while(true)
                           {
                              this.m_localPoint.§5b§();
                              loop3:
                              while(_loc2_)
                              {
                                 this.§32§ = 0;
                                 for(; _loc2_ || _loc2_; this.§'!j§ = 0,if(!(_loc3_ && _loc1_))
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop3;
                                 })
                                 {
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       continue;
                                    }
                                 }
                                 continue loop2;
                              }
                              continue loop0;
                           }
                        }
                        while(_loc3_ && _loc3_);
                        
                        return;
                     }
                     (this.§`!$§[_loc1_] as b2ManifoldPoint).§@!D§();
                     §§push(_loc1_);
                  }
                  §§push(§§pop() + 1);
               }
               §§push(int(§§pop()));
            }
            _loc1_ = §§pop();
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§'!j§ = param1.§'!j§;
         }
         §§push(0);
         if(_loc4_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(!_loc3_)
               {
                  if(_loc4_)
                  {
                     if(§§pop() >= b2Settings.b2_maxManifoldPoints)
                     {
                        loop1:
                        while(!_loc3_)
                        {
                           this.§&!E§.SetV(param1.§&!E§);
                           loop2:
                           do
                           {
                              this.m_localPoint.SetV(param1.m_localPoint);
                              while(_loc4_)
                              {
                                 this.§32§ = param1.§32§;
                                 if(_loc4_ || this)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop1;
                           }
                           while(_loc3_ && param1);
                           
                           return;
                        }
                        loop4:
                        while(!_loc4_)
                        {
                           while(true)
                           {
                              _loc2_ = §§pop();
                              continue loop4;
                           }
                        }
                        continue;
                     }
                     (this.§`!$§[_loc2_] as b2ManifoldPoint).Set(param1.§`!$§[_loc2_]);
                     while(true)
                     {
                        §§push(_loc2_);
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() + 1);
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr123);
         }
      }
      
      public function Copy() : b2Manifold
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Manifold = new b2Manifold();
         if(_loc2_ || _loc3_)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
   }
}
