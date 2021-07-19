package §6Z§
{
   public class b2Transform
   {
       
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2Transform(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.R = new b2Mat22();
               addr90:
               while(!_loc3_)
               {
                  super();
               }
            }
         }
         loop2:
         while(param1)
         {
            while(_loc4_)
            {
               this.position.SetV(param1);
               do
               {
                  this.R.§17§(param2);
               }
               while(_loc3_ && param1);
               
               if(_loc3_ && param1)
               {
                  continue;
               }
               if(_loc4_)
               {
                  break loop2;
               }
               §§goto(addr90);
            }
         }
      }
      
      public function §",§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.position.SetV(param1);
         }
         do
         {
            this.R.§17§(param2);
         }
         while(!_loc3_);
         
      }
      
      public function §&w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.position.§5!H§();
         }
         do
         {
            this.R.§&w§();
         }
         while(!_loc1_);
         
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.position.SetV(param1.position);
         }
         do
         {
            this.R.§17§(param1.R);
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
