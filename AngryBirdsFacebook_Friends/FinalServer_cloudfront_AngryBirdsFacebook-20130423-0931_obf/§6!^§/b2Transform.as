package §6!^§
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
            loop0:
            while(true)
            {
               this.R = new b2Mat22();
               loop1:
               while(true)
               {
                  super();
                  while(param1)
                  {
                     if(_loc3_)
                     {
                        this.position.SetV(param1);
                     }
                     while(!(_loc4_ && param1))
                     {
                        if(_loc3_)
                        {
                           this.R.§^D§(param2);
                           if(_loc3_ || param1)
                           {
                              continue loop0;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr19);
               }
            }
         }
         addr19:
      }
      
      public function §6!Q§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.position.SetV(param1);
            do
            {
               this.R.§^D§(param2);
            }
            while(_loc4_);
            
         }
      }
      
      public function §75§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.position.§%y§();
         }
         do
         {
            this.R.§75§();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.position.SetV(param1.position);
         }
         do
         {
            this.R.§^D§(param1.R);
         }
         while(!_loc3_);
         
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
