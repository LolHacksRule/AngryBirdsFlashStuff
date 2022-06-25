package §;%§
{
   public class b2Transform
   {
       
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2Transform(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.R = new b2Mat22();
               while(true)
               {
                  super();
                  while(true)
                  {
                     if(_loc4_)
                     {
                        if(!param1)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           do
                           {
                              this.R.§^p§(param2);
                           }
                           while(!_loc4_);
                           
                           break;
                        }
                        addr70:
                        continue;
                     }
                     continue loop0;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §'K§(param1:b2Vec2, param2:b2Mat22) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.position.SetV(param1);
            do
            {
               this.R.§^p§(param2);
            }
            while(_loc4_ && this);
            
         }
      }
      
      public function §9!O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.position.§&!K§();
            do
            {
               this.R.§9!O§();
            }
            while(!_loc1_);
            
         }
      }
      
      public function Set(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.position.SetV(param1.position);
         }
         do
         {
            this.R.§^p§(param1.R);
         }
         while(_loc3_ && param1);
         
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
