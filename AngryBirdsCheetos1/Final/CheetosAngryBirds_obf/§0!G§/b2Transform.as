package §0!G§
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
                  loop2:
                  while(_loc3_ || param2)
                  {
                     while(param1)
                     {
                        if(!(_loc3_ || param2))
                        {
                           do
                           {
                              this.R.§,K§(param2);
                           }
                           while(!(_loc3_ || param2));
                           
                        }
                        else
                        {
                           addr79:
                        }
                        if(_loc3_ || this)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      public function §>b§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.position.SetV(param1);
         }
         do
         {
            this.R.§,K§(param2);
         }
         while(!_loc4_);
         
      }
      
      public function §`!!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.position.§3a§();
            do
            {
               this.R.§`!!§();
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.position.SetV(param1.position);
         }
         do
         {
            this.R.§,K§(param1.R);
         }
         while(_loc2_ && _loc3_);
         
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
