package §%4§
{
   import §<!a§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §8!$§:Number;
      
      public var §!""§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.m_id = new b2ContactID();
               loop2:
               while(_loc2_ || this)
               {
                  this.§+N§();
                  if(!_loc1_)
                  {
                     addr44:
                     if(!(_loc2_ || this))
                     {
                        while(true)
                        {
                           super();
                           continue loop2;
                           §§goto(addr44);
                        }
                        addr78:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §+N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.m_localPoint.§?b§();
            loop0:
            while(true)
            {
               this.§8!$§ = 0;
               while(true)
               {
                  this.§!""§ = 0;
                  while(_loc2_ || _loc2_)
                  {
                     continue loop0;
                     this.m_id.key = 0;
                     if(!(_loc1_ && _loc1_))
                     {
                        return;
                        addr51:
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            loop0:
            while(true)
            {
               this.§8!$§ = param1.§8!$§;
               while(true)
               {
                  this.§!""§ = param1.§!""§;
                  while(!_loc3_)
                  {
                     if(_loc2_)
                     {
                        this.m_id.Set(param1.m_id);
                        if(_loc3_ && _loc3_)
                        {
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}
