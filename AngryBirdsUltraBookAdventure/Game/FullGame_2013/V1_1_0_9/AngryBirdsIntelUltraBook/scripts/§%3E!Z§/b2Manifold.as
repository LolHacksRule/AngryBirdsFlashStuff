package §>!Z§
{
   import §&H§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §+!,§:int = 1;
      
      public static const §-!-§:int = 2;
      
      public static const §3!J§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+!,§ = 1;
            do
            {
               §-!-§ = 2;
               do
               {
                  §3!J§ = 4;
               }
               while(_loc1_ && _loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public var § !C§:Vector.<b2ManifoldPoint>;
      
      public var §1!§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §3r§:int;
      
      public var §&!h§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               this.§ !C§ = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(!_loc3_)
               {
                  this.§1!§ = new b2Vec2();
               }
               do
               {
                  this.m_localPoint = new b2Vec2();
               }
               while(!_loc2_);
               
               if(_loc2_ || _loc1_)
               {
                  break;
               }
            }
            else
            {
               this.§ !C§[_loc1_] = new b2ManifoldPoint();
               while(true)
               {
                  _loc1_++;
               }
               addr97:
            }
            while(!_loc2_)
            {
               §§goto(addr97);
            }
         }
      }
      
      public function §2I§() : void
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
                  this.§1!§.§+J§();
                  loop2:
                  while(_loc2_ || _loc3_)
                  {
                     this.m_localPoint.§+J§();
                     loop3:
                     do
                     {
                        this.§3r§ = 0;
                        while(!(_loc3_ && _loc3_))
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              this.§&!h§ = 0;
                              if(!_loc3_)
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
                     while(_loc3_);
                     
                     if(!(_loc3_ && _loc3_))
                     {
                        break loop0;
                     }
                  }
                  continue loop0;
               }
            }
            else
            {
               (this.§ !C§[_loc1_] as b2ManifoldPoint).§2I§();
            }
            _loc1_++;
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§&!h§ = param1.§&!h§;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= b2Settings.b2_maxManifoldPoints)
            {
               loop1:
               while(!_loc4_)
               {
                  this.§1!§.SetV(param1.§1!§);
                  loop2:
                  do
                  {
                     this.m_localPoint.SetV(param1.m_localPoint);
                     while(_loc3_ || param1)
                     {
                        this.§3r§ = param1.§3r§;
                        if(_loc3_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(!_loc3_);
                  
                  return;
               }
               loop4:
               while(_loc4_ && _loc2_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop4;
                  }
               }
               continue;
            }
            (this.§ !C§[_loc2_] as b2ManifoldPoint).Set(param1.§ !C§[_loc2_]);
            §§goto(addr109);
         }
      }
      
      public function Copy() : b2Manifold
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Manifold = new b2Manifold();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
   }
}
