package §!4§
{
   import §6A§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §#!f§:Number;
      
      public var §`!W§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.m_id = new b2ContactID();
               addr66:
               while(!_loc1_)
               {
               }
            }
         }
         while(true)
         {
            super();
            while(_loc2_)
            {
               this.§;!C§();
               if(_loc2_ || this)
               {
                  return;
               }
            }
            §§goto(addr66);
         }
      }
      
      public function §;!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_localPoint.§^!,§();
            loop0:
            while(true)
            {
               this.§#!f§ = 0;
               do
               {
                  this.§`!W§ = 0;
                  continue loop0;
               }
               while(!_loc2_);
               
            }
         }
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            while(true)
            {
               this.§#!f§ = param1.§#!f§;
               while(_loc2_ || _loc2_)
               {
                  this.§`!W§ = param1.§`!W§;
                  while(!(_loc3_ && param1))
                  {
                     this.m_id.Set(param1.m_id);
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     return;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr51);
      }
   }
}
