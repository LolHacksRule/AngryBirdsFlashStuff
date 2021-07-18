package §9"§
{
   public class b2Transform
   {
       
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2Transform(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.R = new b2Mat22();
               while(true)
               {
                  super();
                  loop2:
                  while(!(_loc3_ && this))
                  {
                     loop3:
                     while(param1)
                     {
                        while(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              this.position.SetV(param1);
                              do
                              {
                                 this.R.§-z§(param2);
                              }
                              while(!(_loc4_ || _loc3_));
                              
                              if(!_loc3_)
                              {
                                 break loop3;
                              }
                              continue;
                              continue;
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
         §§goto(addr76);
      }
      
      public function §1D§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.position.SetV(param1);
            do
            {
               this.R.§-z§(param2);
            }
            while(_loc4_);
            
         }
      }
      
      public function §0d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.position.§^!#§();
            do
            {
               this.R.§0d§();
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.position.SetV(param1.position);
            do
            {
               this.R.§-z§(param1.R);
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
