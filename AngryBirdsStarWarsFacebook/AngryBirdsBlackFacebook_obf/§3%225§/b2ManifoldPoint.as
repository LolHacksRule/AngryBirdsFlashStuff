package §3"5§
{
   import §[R§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §,#?§:Number;
      
      public var §!#a§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_localPoint = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.m_id = new b2ContactID();
            while(true)
            {
               super();
               while(_loc2_)
               {
                  if(!_loc1_)
                  {
                     this.§'B§();
                     if(!(_loc1_ && _loc1_))
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §'B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.m_localPoint.§&"Q§();
         }
         while(true)
         {
            this.§,#?§ = 0;
            while(!(_loc2_ && _loc2_))
            {
               this.§!#a§ = 0;
               while(_loc1_ || this)
               {
                  this.m_id.key = 0;
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            while(true)
            {
               this.§,#?§ = param1.§,#?§;
               while(_loc3_)
               {
                  this.§!#a§ = param1.§!#a§;
                  loop2:
                  while(_loc3_ || param1)
                  {
                     while(true)
                     {
                        this.m_id.Set(param1.m_id);
                        if(!(_loc2_ && _loc3_))
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
         §§goto(addr65);
      }
   }
}
