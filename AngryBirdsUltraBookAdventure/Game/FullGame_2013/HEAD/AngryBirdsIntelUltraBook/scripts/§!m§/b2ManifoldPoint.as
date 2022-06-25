package §!m§
{
   import §>!8§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §#!Y§:Number;
      
      public var §!B§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.m_localPoint = new b2Vec2();
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
                     this.§9=§();
                     if(_loc1_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc2_ && this);
               
            }
         }
      }
      
      public function §9=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_localPoint.§@!;§();
            loop0:
            while(true)
            {
               this.§#!Y§ = 0;
               while(true)
               {
                  this.§!B§ = 0;
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     while(true)
                     {
                        this.m_id.key = 0;
                        if(!(_loc2_ && this))
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.m_localPoint.SetV(param1.m_localPoint);
         }
         loop0:
         do
         {
            this.§#!Y§ = param1.§#!Y§;
            while(true)
            {
               this.§!B§ = param1.§!B§;
               while(_loc3_)
               {
                  this.m_id.Set(param1.m_id);
                  if(_loc3_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc3_ || _loc3_));
         
      }
   }
}
