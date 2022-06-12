package §#]§
{
   public class b2Transform
   {
       
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2Transform(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.R = new b2Mat22();
               addr89:
               while(_loc3_)
               {
                  super();
               }
            }
         }
         loop2:
         while(param1)
         {
            for(; _loc3_ || _loc3_; this.position.SetV(param1),do
            {
               this.R.§=!"§(param2);
            }
            while(!(_loc3_ || param2));
            ,if(_loc3_)
            {
               break loop2;
            })
            {
               if(_loc3_)
               {
                  continue;
               }
               §§goto(addr89);
            }
         }
      }
      
      public function §`!r§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.position.SetV(param1);
         }
         do
         {
            this.R.§=!"§(param2);
         }
         while(!_loc4_);
         
      }
      
      public function §8[§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.position.§;v§();
         }
         do
         {
            this.R.§8[§();
         }
         while(_loc1_);
         
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.position.SetV(param1.position);
            do
            {
               this.R.§=!"§(param1.R);
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
