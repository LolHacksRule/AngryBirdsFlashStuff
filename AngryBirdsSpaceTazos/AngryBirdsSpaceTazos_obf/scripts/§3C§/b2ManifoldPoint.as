package §3c§
{
   import §9t§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §?P§:Number;
      
      public var §["&§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_localPoint = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_id = new b2ContactID();
               while(true)
               {
                  super();
                  loop2:
                  while(!(_loc2_ && _loc1_))
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§`"<§();
                        if(_loc1_ || this)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §`"<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.m_localPoint.§@!d§();
            loop0:
            while(true)
            {
               this.§?P§ = 0;
               loop1:
               while(true)
               {
                  this.§["&§ = 0;
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        this.m_id.key = 0;
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr65);
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            while(true)
            {
               this.§?P§ = param1.§?P§;
               loop2:
               while(_loc3_ || _loc2_)
               {
                  this.m_id.Set(param1.m_id);
                  if(!_loc2_)
                  {
                     addr32:
                     if(!(_loc3_ || param1))
                     {
                        while(true)
                        {
                           this.§["&§ = param1.§["&§;
                           continue loop2;
                           §§goto(addr32);
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
   }
}
