package §&L§
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
               loop1:
               while(true)
               {
                  super();
                  while(!_loc4_)
                  {
                     if(!param1)
                     {
                        return;
                     }
                     addr24:
                     continue loop1;
                     loop4:
                     while(_loc3_ || _loc3_)
                     {
                        while(true)
                        {
                           this.R.§>!c§(param2);
                           if(!_loc3_)
                           {
                              continue loop4;
                           }
                           if(_loc4_)
                           {
                              continue loop1;
                           }
                           §§goto(addr24);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §;o§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.position.SetV(param1);
         }
         do
         {
            this.R.§>!c§(param2);
         }
         while(_loc3_);
         
      }
      
      public function §'u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.position.§5b§();
            do
            {
               this.R.§'u§();
            }
            while(_loc1_);
            
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
            this.R.§>!c§(param1.R);
         }
         while(!_loc3_);
         
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
