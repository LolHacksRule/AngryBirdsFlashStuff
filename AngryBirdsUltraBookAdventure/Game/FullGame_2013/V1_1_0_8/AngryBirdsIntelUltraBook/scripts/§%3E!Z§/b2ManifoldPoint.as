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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.m_id = new b2ContactID();
               addr53:
               if(!(_loc1_ || this))
               {
                  continue;
               }
               return;
               addr60:
            }
         }
         while(true)
         {
            super();
            while(!_loc2_)
            {
               this.§2I§();
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr53);
            }
         }
         §§goto(addr60);
      }
      
      public function §2I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.m_localPoint.§+J§();
         }
         loop0:
         do
         {
            this.§-J§ = 0;
            while(true)
            {
               this.§]+§ = 0;
               while(!(_loc1_ && this))
               {
                  this.m_id.key = 0;
                  if(_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc2_);
         
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            while(true)
            {
               this.§-J§ = param1.§-J§;
               addr64:
               if(_loc2_ || param1)
               {
                  this.m_id.Set(param1.m_id);
                  addr71:
                  if(!(_loc2_ || this))
                  {
                     while(_loc2_)
                     {
                        §§goto(addr64);
                        §§goto(addr71);
                     }
                     while(true)
                     {
                        this.§]+§ = param1.§]+§;
                        §§goto(addr62);
                     }
                     addr62:
                     addr77:
                  }
                  return;
               }
            }
         }
         §§goto(addr77);
      }
   }
}
