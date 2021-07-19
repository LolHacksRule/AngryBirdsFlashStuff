package §9"§
{
   import §0!G§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §46§:Number;
      
      public var §`!H§:Number;
      
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
               loop1:
               while(!_loc1_)
               {
                  super();
                  while(true)
                  {
                     this.§8j§();
                     if(_loc2_ || this)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §8j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.m_localPoint.§3a§();
            while(true)
            {
               this.§46§ = 0;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§`!H§ = 0;
                     do
                     {
                        this.m_id.key = 0;
                     }
                     while(!_loc1_);
                     
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            loop0:
            while(true)
            {
               this.§46§ = param1.§46§;
               while(true)
               {
                  this.§`!H§ = param1.§`!H§;
                  loop2:
                  while(_loc3_ || this)
                  {
                     while(true)
                     {
                        this.m_id.Set(param1.m_id);
                        if(!_loc2_)
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
         §§goto(addr62);
      }
   }
}
