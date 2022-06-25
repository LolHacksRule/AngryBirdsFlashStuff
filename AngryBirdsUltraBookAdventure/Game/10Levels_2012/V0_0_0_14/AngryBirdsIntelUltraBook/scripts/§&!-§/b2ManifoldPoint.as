package §&!-§
{
   import §8>§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §9!s§:Number;
      
      public var §[&§:Number;
      
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
               while(_loc1_ || this)
               {
                  super();
                  do
                  {
                     this.§#[§();
                  }
                  while(!(_loc1_ || _loc2_));
                  
                  if(!_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr55:
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §#[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_localPoint.§%&§();
         }
         loop0:
         while(true)
         {
            this.§9!s§ = 0;
            loop1:
            do
            {
               this.§[&§ = 0;
               while(_loc1_)
               {
                  this.m_id.key = 0;
                  if(_loc1_ || _loc2_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!_loc1_);
            
            return;
         }
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.m_localPoint.SetV(param1.m_localPoint);
            loop0:
            while(true)
            {
               this.§9!s§ = param1.§9!s§;
               loop1:
               do
               {
                  this.§[&§ = param1.§[&§;
                  while(_loc3_)
                  {
                     this.m_id.Set(param1.m_id);
                     if(!_loc2_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!(_loc3_ || this));
               
            }
         }
      }
   }
}
