package §!4§
{
   import §6A§.*;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const §;N§:int = 1;
      
      public static const §%!"§:int = 2;
      
      public static const §9!M§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §;N§ = 1;
         }
         do
         {
            §%!"§ = 2;
            do
            {
               §9!M§ = 4;
            }
            while(_loc1_ && _loc1_);
            
         }
         while(_loc1_);
         
      }
      
      public var §7! §:Vector.<b2ManifoldPoint>;
      
      public var §&h§:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var §2!]§:int;
      
      public var §;6§:int = 0;
      
      public function b2Manifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(_loc3_ || _loc3_)
            {
               addr28:
               this.§7! § = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
            }
            var _loc1_:int = 0;
            while(true)
            {
               if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
               {
                  while(!(_loc2_ && _loc3_))
                  {
                     if(!(_loc2_ && this))
                     {
                        this.§&h§ = new b2Vec2();
                        do
                        {
                           this.m_localPoint = new b2Vec2();
                        }
                        while(!_loc3_);
                        
                        if(!(_loc2_ && _loc1_))
                        {
                           return;
                        }
                        continue;
                     }
                  }
                  continue;
               }
               this.§7! §[_loc1_] = new b2ManifoldPoint();
               _loc1_++;
            }
         }
         §§goto(addr28);
      }
      
      public function §;!C§() : void
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
                  this.§&h§.§^!,§();
                  do
                  {
                     this.m_localPoint.§^!,§();
                     loop3:
                     do
                     {
                        this.§2!]§ = 0;
                        while(_loc2_ || _loc2_)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              this.§;6§ = 0;
                              if(!(_loc3_ && this))
                              {
                                 continue loop3;
                              }
                              continue;
                              continue;
                           }
                           loop5:
                           while(!(_loc2_ || _loc3_))
                           {
                              while(true)
                              {
                                 _loc1_++;
                                 continue loop5;
                              }
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     while(!_loc2_);
                     
                  }
                  while(_loc3_);
                  
                  return;
               }
            }
            else
            {
               (this.§7! §[_loc1_] as b2ManifoldPoint).§;!C§();
            }
            §§goto(addr111);
         }
      }
      
      public function Set(param1:b2Manifold) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§;6§ = param1.§;6§;
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
                  if(_loc4_ || _loc3_)
                  {
                     this.§&h§.SetV(param1.§&h§);
                     while(!_loc3_)
                     {
                        this.m_localPoint.SetV(param1.m_localPoint);
                        do
                        {
                           this.§2!]§ = param1.§2!]§;
                        }
                        while(!(_loc4_ || param1));
                        
                        if(_loc4_ || param1)
                        {
                           if(!_loc3_)
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
            (this.§7! §[_loc2_] as b2ManifoldPoint).Set(param1.§7! §[_loc2_]);
            _loc2_++;
         }
      }
      
      public function Copy() : b2Manifold
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Manifold = new b2Manifold();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
   }
}
