package §6!H§
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
                     loop3:
                     while(_loc4_ || this)
                     {
                        this.position.SetV(param1);
                        while(_loc4_)
                        {
                           continue loop0;
                           this.R.§^!X§(param2);
                           if(!(_loc3_ && param2))
                           {
                              if(!_loc3_)
                              {
                                 addr53:
                                 break loop2;
                              }
                              continue loop3;
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
      
      public function §#!O§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.position.SetV(param1);
            do
            {
               this.R.§^!X§(param2);
            }
            while(!_loc4_);
            
         }
      }
      
      public function §!!D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.position.§7_§();
            do
            {
               this.R.§!!D§();
            }
            while(_loc2_ && _loc1_);
            
         }
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
            this.R.§^!X§(param1.R);
         }
         while(_loc2_);
         
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
