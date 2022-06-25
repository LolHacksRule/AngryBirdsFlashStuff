package §8>§
{
   public class b2Transform
   {
       
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2Transform(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.R = new b2Mat22();
               while(true)
               {
                  super();
                  continue loop0;
                  addr64:
                  if(!_loc4_)
                  {
                     addr24:
                     return;
                  }
               }
            }
         }
         while(true)
         {
            this.position.SetV(param1);
            do
            {
               this.R.§2E§(param2);
            }
            while(!(_loc3_ || param1));
            
            if(!(_loc3_ || this))
            {
               continue;
            }
            if(!(_loc4_ && this))
            {
               §§goto(addr64);
            }
            §§goto(addr88);
         }
      }
      
      public function §7R§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.position.SetV(param1);
         }
         do
         {
            this.R.§2E§(param2);
         }
         while(_loc3_);
         
      }
      
      public function §8x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.position.§%&§();
            do
            {
               this.R.§8x§();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.position.SetV(param1.position);
            do
            {
               this.R.§2E§(param1.R);
            }
            while(!_loc3_);
            
         }
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
