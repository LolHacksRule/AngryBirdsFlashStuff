package §!§
{
   import §@!E§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §`!8§:Number;
      
      public var §;8§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.m_id = new b2ContactID();
               loop2:
               while(!(_loc1_ && this))
               {
                  this.§[!2§();
                  if(!(_loc1_ && _loc1_))
                  {
                     addr49:
                     if(_loc1_ && this)
                     {
                        while(true)
                        {
                           super();
                           continue loop2;
                           §§goto(addr49);
                        }
                        addr83:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §[!2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.m_localPoint.§>![§();
            while(true)
            {
               this.§`!8§ = 0;
               while(!_loc1_)
               {
                  this.§;8§ = 0;
                  loop2:
                  while(!(_loc1_ && this))
                  {
                     while(true)
                     {
                        this.m_id.key = 0;
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            while(true)
            {
               this.§`!8§ = param1.§`!8§;
               while(_loc3_)
               {
                  while(!(_loc2_ && param1))
                  {
                     this.m_id.Set(param1.m_id);
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§;8§ = param1.§;8§;
            §§goto(addr53);
         }
      }
   }
}
