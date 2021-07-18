package § G§
{
   import §9"§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §+7§:Number;
      
      public var §?!M§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_localPoint = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_id = new b2ContactID();
               while(true)
               {
                  super();
                  loop2:
                  while(_loc2_ || this)
                  {
                     if(_loc2_)
                     {
                        while(true)
                        {
                           this.§"o§();
                           if(_loc2_ || this)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §"o§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.m_localPoint.§^!#§();
            while(true)
            {
               this.§+7§ = 0;
               addr57:
               if(!(_loc2_ && _loc2_))
               {
                  this.m_id.key = 0;
                  addr64:
                  if(_loc2_)
                  {
                     while(_loc1_ || _loc2_)
                     {
                        §§goto(addr57);
                        §§goto(addr64);
                     }
                     while(true)
                     {
                        this.§?!M§ = 0;
                        §§goto(addr50);
                     }
                     addr50:
                     addr79:
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            while(true)
            {
               this.§+7§ = param1.§+7§;
               loop1:
               while(!(_loc2_ && param1))
               {
                  while(true)
                  {
                     this.§?!M§ = param1.§?!M§;
                     while(_loc3_)
                     {
                        this.m_id.Set(param1.m_id);
                        if(_loc3_ || this)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr83);
      }
   }
}
