package §6A§
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
               while(!(_loc3_ && this))
               {
                  super();
                  loop2:
                  for(; param1; if(!_loc3_)
                  {
                     break;
                  })
                  {
                     loop3:
                     while(true)
                     {
                        this.position.SetV(param1);
                        loop4:
                        while(_loc4_)
                        {
                           while(true)
                           {
                              this.R.§&o§(param2);
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §';§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.position.SetV(param1);
            do
            {
               this.R.§&o§(param2);
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function §%N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.position.§^!,§();
         }
         do
         {
            this.R.§%N§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.position.SetV(param1.position);
         }
         do
         {
            this.R.§&o§(param1.R);
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
