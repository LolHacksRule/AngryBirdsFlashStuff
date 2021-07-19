package §9t§
{
   public class b2Transform
   {
       
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2Transform(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.R = new b2Mat22();
            }
            addr101:
         }
         loop1:
         while(true)
         {
            super();
            loop2:
            while(param1)
            {
               if(_loc3_ || param2)
               {
                  this.position.SetV(param1);
               }
               for(; !_loc4_; this.R.§?"4§(param2),if(!(_loc4_ && _loc3_))
               {
                  continue loop2;
               })
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr101);
               }
               continue loop1;
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
            }
            return;
         }
      }
      
      public function §>`§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.position.SetV(param1);
            do
            {
               this.R.§?"4§(param2);
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      public function §&!e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.position.§@!d§();
            do
            {
               this.R.§&!e§();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.position.SetV(param1.position);
         }
         do
         {
            this.R.§?"4§(param1.R);
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
