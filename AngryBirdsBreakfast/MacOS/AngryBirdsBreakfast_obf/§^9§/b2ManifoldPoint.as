package §^9§
{
   import §6Z§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §4!p§:Number;
      
      public var §#!h§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_localPoint = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_id = new b2ContactID();
               while(true)
               {
                  super();
                  while(_loc1_)
                  {
                     if(!_loc2_)
                     {
                        this.§?!r§();
                        if(_loc1_ || this)
                        {
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §?!r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.m_localPoint.§5!H§();
            loop0:
            while(true)
            {
               this.§4!p§ = 0;
               loop1:
               do
               {
                  this.§#!h§ = 0;
                  while(_loc2_)
                  {
                     this.m_id.key = 0;
                     if(!_loc1_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!_loc2_);
               
            }
         }
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.m_localPoint.SetV(param1.m_localPoint);
         }
         loop0:
         while(true)
         {
            this.§4!p§ = param1.§4!p§;
            loop1:
            do
            {
               this.§#!h§ = param1.§#!h§;
               while(_loc3_)
               {
                  this.m_id.Set(param1.m_id);
                  if(_loc3_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!_loc3_);
            
            return;
         }
      }
   }
}
