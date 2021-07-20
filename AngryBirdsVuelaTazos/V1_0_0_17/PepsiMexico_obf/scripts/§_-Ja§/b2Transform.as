package §_-Ja§
{
   public class b2Transform
   {
       
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2Transform(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.position = new b2Vec2();
            if(!(_loc4_ && this))
            {
               this.R = new b2Mat22();
               if(!(_loc4_ && param1))
               {
                  addr49:
                  super();
               }
               if(param1)
               {
                  this.position.SetV(param1);
                  addr53:
                  if(_loc3_)
                  {
                     this.R.§_-AH§(param2);
                  }
               }
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr49);
      }
      
      public function §_-lc§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.position.SetV(param1);
            if(_loc4_)
            {
               this.R.§_-AH§(param2);
            }
         }
      }
      
      public function §_-Xx§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.position.§_-0a§();
            if(_loc1_ || _loc2_)
            {
               this.R.§_-Xx§();
            }
         }
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.position.SetV(param1.position);
            if(_loc3_ || _loc3_)
            {
               this.R.§_-AH§(param1.R);
            }
         }
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
