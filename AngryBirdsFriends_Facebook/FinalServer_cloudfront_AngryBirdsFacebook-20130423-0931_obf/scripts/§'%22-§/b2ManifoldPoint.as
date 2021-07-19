package §'"-§
{
   import §6!^§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §#!5§:Number;
      
      public var §@"%§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.m_id = new b2ContactID();
               while(true)
               {
                  super();
                  §§goto(addr66);
               }
            }
         }
         addr66:
         while(true)
         {
            this.§<"U§();
            if(!(_loc2_ && _loc1_))
            {
               if(!_loc2_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr62:
      }
      
      public function §<"U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_localPoint.§%y§();
         }
         do
         {
            this.§#!5§ = 0;
            do
            {
               this.§@"%§ = 0;
               do
               {
                  this.m_id.key = 0;
               }
               while(_loc1_ && _loc1_);
               
            }
            while(!(_loc2_ || this));
            
         }
         while(!_loc2_);
         
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            do
            {
               this.§#!5§ = param1.§#!5§;
               do
               {
                  this.§@"%§ = param1.§@"%§;
                  do
                  {
                     this.m_id.Set(param1.m_id);
                  }
                  while(_loc3_);
                  
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
   }
}
