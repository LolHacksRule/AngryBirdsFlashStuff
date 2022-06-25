package §8w§
{
   import §;%§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §-!s§:Number;
      
      public var §%%§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_localPoint = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.m_id = new b2ContactID();
            loop1:
            do
            {
               super();
               while(_loc1_)
               {
                  this.§@!b§();
                  if(!(_loc2_ && _loc1_))
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc2_ && _loc1_);
            
            return;
         }
      }
      
      public function §@!b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.m_localPoint.§&!K§();
            while(true)
            {
               this.§-!s§ = 0;
               while(!_loc2_)
               {
                  while(_loc1_ || _loc1_)
                  {
                     this.m_id.key = 0;
                     if(_loc1_ || this)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§%%§ = 0;
            §§goto(addr65);
         }
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
               this.§-!s§ = param1.§-!s§;
               loop1:
               while(true)
               {
                  this.§%%§ = param1.§%%§;
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.m_id.Set(param1.m_id);
                        if(!(_loc2_ && _loc3_))
                        {
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
         §§goto(addr77);
      }
   }
}
