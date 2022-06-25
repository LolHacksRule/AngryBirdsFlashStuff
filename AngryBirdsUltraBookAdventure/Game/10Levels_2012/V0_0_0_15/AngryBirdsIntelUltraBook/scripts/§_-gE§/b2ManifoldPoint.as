package §_-gE§
{
   import §_-Yp§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §_-nd§:Number;
      
      public var §_-sw§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.m_id = new b2ContactID();
               while(true)
               {
                  super();
                  §§goto(addr47);
               }
            }
         }
         addr47:
         while(true)
         {
            this.§_-8Y§();
            if(_loc2_)
            {
               if(_loc2_)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      public function §_-8Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_localPoint.§_-el§();
            loop0:
            while(true)
            {
               this.§_-nd§ = 0;
               loop1:
               do
               {
                  this.§_-sw§ = 0;
                  while(!_loc1_)
                  {
                     this.m_id.key = 0;
                     if(!_loc1_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc1_);
               
            }
         }
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            loop0:
            while(true)
            {
               this.§_-nd§ = param1.§_-nd§;
               addr82:
               while(true)
               {
                  this.§_-sw§ = param1.§_-sw§;
                  continue loop0;
               }
            }
         }
         §§goto(addr76);
      }
   }
}
