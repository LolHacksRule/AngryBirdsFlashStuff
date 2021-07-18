package §_-qg§
{
   import §_-Ja§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §_-JQ§:Number;
      
      public var §_-RC§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.m_localPoint = new b2Vec2();
            if(!_loc2_)
            {
               this.m_id = new b2ContactID();
               if(!(_loc2_ && this))
               {
                  addr44:
                  super();
                  if(_loc1_ || _loc2_)
                  {
                     this.§_-i0§();
                  }
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      public function §_-i0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.m_localPoint.§_-0a§();
            if(_loc1_)
            {
               this.§_-JQ§ = 0;
               if(_loc1_ || this)
               {
                  this.§_-RC§ = 0;
                  if(_loc1_ || _loc2_)
                  {
                     addr59:
                     this.m_id.key = 0;
                  }
               }
               return;
            }
         }
         §§goto(addr59);
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            if(!(_loc3_ && _loc2_))
            {
               this.§_-JQ§ = param1.§_-JQ§;
               if(_loc2_ || this)
               {
                  this.§_-RC§ = param1.§_-RC§;
                  if(_loc2_)
                  {
                     this.m_id.Set(param1.m_id);
                  }
               }
            }
         }
      }
   }
}
