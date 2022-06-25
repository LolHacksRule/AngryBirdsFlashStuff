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
         if(_loc4_ || _loc3_)
         {
            this.position = new b2Vec2();
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
                     addr85:
                     while(_loc4_)
                     {
                        this.R.§97§(param2);
                        if(_loc4_ || this)
                        {
                           addr51:
                           break loop2;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §`!D§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.position.SetV(param1);
            do
            {
               this.R.§97§(param2);
            }
            while(_loc4_);
            
         }
      }
      
      public function §3!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.position.§+J§();
         }
         do
         {
            this.R.§3!-§();
         }
         while(!(_loc1_ || this));
         
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
            this.R.§97§(param1.R);
         }
         while(!_loc3_);
         
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
