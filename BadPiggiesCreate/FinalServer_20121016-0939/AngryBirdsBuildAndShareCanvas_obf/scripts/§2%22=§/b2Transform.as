package §2"=§
{
   public class b2Transform
   {
       
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2Transform(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.R = new b2Mat22();
               loop1:
               while(!(_loc3_ && param1))
               {
                  super();
                  loop2:
                  for(; param1; do
                  {
                     if(_loc4_ || param1)
                     {
                        continue;
                     }
                     continue loop2;
                  }
                  while(this.R.§5"4§(param2), !_loc4_);
                  ,break)
                  {
                     if(!(_loc3_ && param1))
                     {
                        if(_loc4_)
                        {
                           this.position.SetV(param1);
                           continue;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr31);
      }
      
      public function §1o§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.position.SetV(param1);
         }
         do
         {
            this.R.§5"4§(param2);
         }
         while(_loc4_ && _loc3_);
         
      }
      
      public function §,`§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.position.§@!s§();
            do
            {
               this.R.§,`§();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.position.SetV(param1.position);
         }
         do
         {
            this.R.§5"4§(param1.R);
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
