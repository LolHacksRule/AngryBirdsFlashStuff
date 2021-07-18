package §'!;§
{
   import §<!B§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §,!9§:Number;
      
      public var §?;§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_localPoint = new b2Vec2();
            if(_loc2_)
            {
               this.m_id = new b2ContactID();
               if(_loc2_ || this)
               {
                  super();
                  if(!_loc1_)
                  {
                     addr50:
                     this.§^!]§();
                  }
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      public function §^!]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.m_localPoint.§22§();
            if(_loc1_ || this)
            {
               this.§,!9§ = 0;
               if(!(_loc2_ && _loc2_))
               {
                  addr63:
                  this.§?;§ = 0;
                  if(!_loc2_)
                  {
                     this.m_id.key = 0;
                  }
               }
               return;
            }
         }
         §§goto(addr63);
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            if(!_loc3_)
            {
               this.§,!9§ = param1.§,!9§;
               if(_loc2_ || param1)
               {
                  this.§?;§ = param1.§?;§;
                  if(!_loc2_)
                  {
                  }
               }
               §§goto(addr57);
            }
            this.m_id.Set(param1.m_id);
         }
         addr57:
      }
   }
}
