package §<!B§
{
   public class b2Transform
   {
       
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2Transform(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.position = new b2Vec2();
            this.R = new b2Mat22();
            super();
            if(param1)
            {
               this.position.SetV(param1);
               addr50:
               this.R.§-4§(param2);
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §6!V§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.position.SetV(param1);
            if(_loc3_)
            {
               this.R.§-4§(param2);
            }
         }
      }
      
      public function §5!I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.position.§22§();
            if(_loc1_)
            {
               addr28:
               this.R.§5!I§();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.position.SetV(param1.position);
            if(_loc2_)
            {
               this.R.§-4§(param1.R);
            }
         }
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
