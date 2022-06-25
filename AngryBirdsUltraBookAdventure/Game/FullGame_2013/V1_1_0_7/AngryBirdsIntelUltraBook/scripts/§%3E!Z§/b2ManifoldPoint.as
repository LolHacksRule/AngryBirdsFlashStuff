package §>!Z§
{
   import §&H§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §-J§:Number;
      
      public var §]+§:Number;
      
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
               while(_loc2_)
               {
                  super();
                  do
                  {
                     this.§2I§();
                  }
                  while(!(_loc2_ || this));
                  
                  if(_loc2_)
                  {
                     return;
                     addr56:
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §2I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.m_localPoint.§+J§();
            while(true)
            {
               this.§-J§ = 0;
               §§goto(addr84);
            }
         }
         addr84:
         while(true)
         {
            this.§]+§ = 0;
            do
            {
               this.m_id.key = 0;
            }
            while(_loc2_ && _loc2_);
            
            if(_loc1_ || _loc1_)
            {
               if(!(_loc2_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            while(true)
            {
               this.§-J§ = param1.§-J§;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§]+§ = param1.§]+§;
                     do
                     {
                        this.m_id.Set(param1.m_id);
                     }
                     while(!(_loc2_ || _loc2_));
                     
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr82);
      }
   }
}
