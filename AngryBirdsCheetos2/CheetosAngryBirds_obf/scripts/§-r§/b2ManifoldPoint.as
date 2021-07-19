package §-r§
{
   import §6!H§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §'!?§:Number;
      
      public var §,m§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.m_localPoint = new b2Vec2();
         }
         while(true)
         {
            this.m_id = new b2ContactID();
            while(!_loc1_)
            {
               super();
               while(!(_loc1_ && _loc1_))
               {
                  this.§2'§();
                  if(!_loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §2'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_localPoint.§7_§();
         }
         loop0:
         do
         {
            this.§'!?§ = 0;
            while(true)
            {
               this.§,m§ = 0;
               while(_loc1_)
               {
                  this.m_id.key = 0;
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_);
         
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            do
            {
               this.§'!?§ = param1.§'!?§;
               do
               {
                  this.§,m§ = param1.§,m§;
                  do
                  {
                     this.m_id.Set(param1.m_id);
                  }
                  while(!_loc3_);
                  
               }
               while(!_loc3_);
               
            }
            while(!_loc3_);
            
         }
      }
   }
}
