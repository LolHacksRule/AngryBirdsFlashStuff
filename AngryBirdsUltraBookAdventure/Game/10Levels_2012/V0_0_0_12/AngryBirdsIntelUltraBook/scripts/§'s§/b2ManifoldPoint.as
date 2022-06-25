package §'s§
{
   import §&L§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §-!L§:Number;
      
      public var §^s§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.m_id = new b2ContactID();
               while(true)
               {
                  super();
                  §§goto(addr67);
               }
            }
         }
         addr67:
         while(true)
         {
            this.§@!D§();
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc2_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr63:
      }
      
      public function §@!D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.m_localPoint.§5b§();
            while(true)
            {
               this.§-!L§ = 0;
               while(!_loc2_)
               {
                  this.§^s§ = 0;
                  loop2:
                  while(_loc1_ || _loc1_)
                  {
                     while(true)
                     {
                        this.m_id.key = 0;
                        if(_loc1_)
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
         §§goto(addr67);
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            loop0:
            while(true)
            {
               this.§-!L§ = param1.§-!L§;
               while(true)
               {
                  this.§^s§ = param1.§^s§;
                  loop2:
                  while(_loc3_ || param1)
                  {
                     while(true)
                     {
                        this.m_id.Set(param1.m_id);
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop2;
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
