package §@!E§
{
   public class b2Transform
   {
       
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2Transform(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.R = new b2Mat22();
               loop1:
               while(!(_loc4_ && this))
               {
                  while(true)
                  {
                     super();
                     loop3:
                     while(param1)
                     {
                        loop4:
                        do
                        {
                           this.position.SetV(param1);
                           while(!_loc4_)
                           {
                              this.R.§8!y§(param2);
                              if(!(_loc4_ && param1))
                              {
                                 continue loop4;
                              }
                           }
                           continue loop3;
                        }
                        while(_loc4_ && param1);
                        
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §6R§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.position.SetV(param1);
            do
            {
               this.R.§8!y§(param2);
            }
            while(_loc3_);
            
         }
      }
      
      public function §^!-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.position.§>![§();
         }
         do
         {
            this.R.§^!-§();
         }
         while(_loc1_);
         
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.position.SetV(param1.position);
         }
         do
         {
            this.R.§8!y§(param1.R);
         }
         while(!_loc3_);
         
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
