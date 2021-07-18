package §[R§
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
            loop0:
            while(true)
            {
               this.R = new b2Mat22();
               while(true)
               {
                  super();
                  addr51:
                  while(_loc3_ || _loc3_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(param1)
         {
            §§goto(addr51);
         }
         §§goto(addr24);
      }
      
      public function §8#5§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.position.SetV(param1);
            do
            {
               this.R.§&!c§(param2);
            }
            while(_loc4_ && this);
            
         }
      }
      
      public function §^!D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.position.§&"Q§();
         }
         do
         {
            this.R.§^!D§();
         }
         while(_loc1_);
         
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.position.SetV(param1.position);
         }
         do
         {
            this.R.§&!c§(param1.R);
         }
         while(_loc2_);
         
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
