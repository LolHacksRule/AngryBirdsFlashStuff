package §_-Yp§
{
   public class b2Transform
   {
       
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2Transform(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.R = new b2Mat22();
            }
            addr91:
         }
         loop1:
         while(true)
         {
            super();
            loop2:
            while(param1)
            {
               loop3:
               while(true)
               {
                  if(!(_loc4_ && param2))
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     this.position.SetV(param1);
                     while(!_loc4_)
                     {
                        this.R.§_-tP§(param2);
                        if(!_loc4_)
                        {
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
                  continue loop2;
               }
               §§goto(addr91);
            }
            return;
         }
      }
      
      public function §_-bL§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.position.SetV(param1);
         }
         do
         {
            this.R.§_-tP§(param2);
         }
         while(_loc4_ && _loc3_);
         
      }
      
      public function §_-H2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.position.§_-el§();
            do
            {
               this.R.§_-H2§();
            }
            while(!_loc2_);
            
         }
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.position.SetV(param1.position);
            do
            {
               this.R.§_-tP§(param1.R);
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
