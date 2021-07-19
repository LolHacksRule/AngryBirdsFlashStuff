package §3c§
{
   import §9t§.*;
   import §@!'§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §#m§:int = 1;
      
      public static const §%p§:int = 2;
      
      public static const §9!&§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#m§ = 1;
         }
         do
         {
            §%p§ = 2;
            do
            {
               §9!&§ = 4;
            }
            while(_loc2_);
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public var §,!T§:Vector.<b2ManifoldPoint>;
      
      public var §0"B§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §0w§:int;
      
      public var §[!J§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
            if(_loc2_ || this)
            {
               addr32:
               this.§,!T§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
            var _loc1_:int = 0;
            while(true)
            {
               if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
               {
                  do
                  {
                     this.§0"B§ = new b2Vec2();
                     do
                     {
                        this.m_localPoint = new b2Vec2();
                     }
                     while(_loc3_);
                     
                  }
                  while(!_loc2_);
                  
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(!(_loc3_ && _loc1_))
                  {
                     break;
                  }
               }
               else
               {
                  this.§,!T§[_loc1_] = new b2ManifoldPoint();
               }
               _loc1_++;
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function §`"<§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(true)
               {
                  if(!_loc2_)
                  {
                     this.§0"B§.§@!d§();
                     loop2:
                     while(true)
                     {
                        this.m_localPoint.§@!d§();
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              this.§0w§ = 0;
                              while(_loc3_)
                              {
                                 this.§[!J§ = 0;
                                 if(_loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
            (this.§,!T§[_loc1_] as b2ManifoldPoint).§`"<§();
            _loc1_++;
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§[!J§ = param1.§[!J§;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(_loc4_ || _loc2_)
               {
                  this.§0"B§.SetV(param1.§0"B§);
                  loop2:
                  while(!(_loc3_ && param1))
                  {
                     this.m_localPoint.SetV(param1.m_localPoint);
                     while(!_loc3_)
                     {
                        this.§0w§ = param1.§0w§;
                        if(_loc4_ || this)
                        {
                           if(_loc4_ || _loc2_)
                           {
                              return;
                           }
                           continue loop2;
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
               continue;
            }
            (this.§,!T§[_loc2_] as b2ManifoldPoint).Set(param1.§,!T§[_loc2_]);
            _loc2_++;
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
