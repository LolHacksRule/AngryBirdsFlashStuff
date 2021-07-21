package §5!o§
{
   import §2"=§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §=!y§:Number;
      
      public var §%!B§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.m_id = new b2ContactID();
               while(true)
               {
                  super();
                  §§goto(addr51);
               }
            }
         }
         addr51:
         while(true)
         {
            this.§%i§();
            if(!_loc2_)
            {
               if(_loc1_ || _loc2_)
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      public function §%i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_localPoint.§@!s§();
            while(true)
            {
               this.§=!y§ = 0;
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            this.§%!B§ = 0;
            do
            {
               this.m_id.key = 0;
            }
            while(!_loc2_);
            
            if(!_loc1_)
            {
               if(_loc2_ || _loc2_)
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
         if(_loc2_)
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            while(true)
            {
               this.§=!y§ = param1.§=!y§;
               addr49:
               if(!(_loc3_ && _loc3_))
               {
                  this.m_id.Set(param1.m_id);
                  addr56:
                  if(!_loc2_)
                  {
                     while(!_loc3_)
                     {
                        §§goto(addr49);
                        §§goto(addr56);
                     }
                     while(true)
                     {
                        this.§%!B§ = param1.§%!B§;
                        §§goto(addr47);
                     }
                     addr47:
                     addr72:
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
   }
}
