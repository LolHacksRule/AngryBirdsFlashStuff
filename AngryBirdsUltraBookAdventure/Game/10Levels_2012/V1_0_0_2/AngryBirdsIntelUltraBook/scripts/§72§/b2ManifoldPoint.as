package §72§
{
   import §>H§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §`!k§:Number;
      
      public var §?!+§:Number;
      
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
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        this.§<!e§();
                        if(_loc2_)
                        {
                           if(!_loc1_)
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
         §§goto(addr47);
      }
      
      public function §<!e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_localPoint.§`!5§();
            while(true)
            {
               this.§`!k§ = 0;
               addr63:
               if(_loc2_ || this)
               {
                  this.m_id.key = 0;
                  addr70:
                  if(_loc1_)
                  {
                     while(!(_loc1_ && _loc2_))
                     {
                        §§goto(addr63);
                        §§goto(addr70);
                     }
                     while(true)
                     {
                        this.§?!+§ = 0;
                        §§goto(addr56);
                     }
                     addr56:
                     addr75:
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            loop0:
            while(true)
            {
               this.§`!k§ = param1.§`!k§;
               while(true)
               {
                  this.§?!+§ = param1.§?!+§;
                  loop2:
                  while(!(_loc2_ && param1))
                  {
                     while(true)
                     {
                        this.m_id.Set(param1.m_id);
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr72);
      }
   }
}
