package §&H§
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
               loop3:
               while(_loc4_ || param1)
               {
                  this.R.§97§(param2);
                  if(_loc4_ || param1)
                  {
                     if(_loc3_)
                     {
                        while(!(_loc3_ && param1))
                        {
                           if(param1)
                           {
                              if(!_loc3_)
                              {
                                 this.position.SetV(param1);
                              }
                              continue loop3;
                           }
                        }
                        while(true)
                        {
                           super();
                           §§goto(addr79);
                        }
                        addr79:
                        addr92:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §`!D§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.position.SetV(param1);
            do
            {
               this.R.§97§(param2);
            }
            while(_loc3_ && param2);
            
         }
      }
      
      public function §3!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.position.§+J§();
         }
         do
         {
            this.R.§3!-§();
         }
         while(_loc2_);
         
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.position.SetV(param1.position);
            do
            {
               this.R.§97§(param1.R);
            }
            while(_loc2_);
            
         }
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
