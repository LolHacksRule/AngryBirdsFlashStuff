package §>H§
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
                     while(!_loc4_)
                     {
                        continue loop1;
                        if(_loc3_ || this)
                        {
                           break loop2;
                        }
                     }
                  }
                  return;
               }
               addr79:
               while(true)
               {
                  if(_loc3_ || param2)
                  {
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.position.SetV(param1);
            §§goto(addr79);
         }
      }
      
      public function §%%§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.position.SetV(param1);
            do
            {
               this.R.§1c§(param2);
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function §5!_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.position.§`!5§();
         }
         do
         {
            this.R.§5!_§();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.position.SetV(param1.position);
         }
         do
         {
            this.R.§1c§(param1.R);
         }
         while(_loc2_);
         
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
