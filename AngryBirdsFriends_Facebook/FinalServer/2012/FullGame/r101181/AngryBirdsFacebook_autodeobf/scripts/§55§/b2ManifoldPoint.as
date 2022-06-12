package §55§
{
   import §#]§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §[!h§:Number;
      
      public var §%!7§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.m_id = new b2ContactID();
               addr71:
               while(_loc2_)
               {
               }
            }
         }
         while(true)
         {
            super();
            while(!_loc1_)
            {
               this.§<t§();
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
            §§goto(addr71);
         }
      }
      
      public function §<t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_localPoint.§;v§();
         }
         while(true)
         {
            this.§[!h§ = 0;
            while(!(_loc2_ && _loc1_))
            {
               this.§%!7§ = 0;
               while(_loc1_ || _loc1_)
               {
                  this.m_id.key = 0;
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            while(true)
            {
               this.§[!h§ = param1.§[!h§;
               while(_loc2_)
               {
                  this.§%!7§ = param1.§%!7§;
                  loop2:
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        this.m_id.Set(param1.m_id);
                        if(_loc2_)
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
         §§goto(addr64);
      }
   }
}
