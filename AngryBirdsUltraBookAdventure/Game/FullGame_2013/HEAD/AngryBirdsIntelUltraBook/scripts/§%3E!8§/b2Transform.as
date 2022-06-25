package §>!8§
{
   public class b2Transform
   {
       
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2Transform(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
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
                  loop2:
                  while(param1)
                  {
                     if(!(_loc3_ && param2))
                     {
                        continue loop1;
                     }
                     addr76:
                     loop3:
                     while(!_loc3_)
                     {
                        if(_loc4_)
                        {
                           while(true)
                           {
                              this.R.§<+§(param2);
                              if(_loc4_)
                              {
                                 break loop2;
                              }
                              continue loop3;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §2@§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.position.SetV(param1);
            do
            {
               this.R.§<+§(param2);
            }
            while(!_loc3_);
            
         }
      }
      
      public function §?!"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.position.§@!;§();
         }
         do
         {
            this.R.§?!"§();
         }
         while(!_loc2_);
         
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.position.SetV(param1.position);
            do
            {
               this.R.§<+§(param1.R);
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
