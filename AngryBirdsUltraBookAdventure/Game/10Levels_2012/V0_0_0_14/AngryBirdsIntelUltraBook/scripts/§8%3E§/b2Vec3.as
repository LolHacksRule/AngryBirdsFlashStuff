package §8>§
{
   public class b2Vec3
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public var z:Number;
      
      public function b2Vec3(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
         }
         while(true)
         {
            this.x = param1;
            while(_loc4_ || param3)
            {
               this.y = param2;
               while(!(_loc5_ && param1))
               {
                  this.z = param3;
                  if(!(_loc5_ && param1))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §%&§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this);
            §§push(this.z = 0);
            if(_loc3_ || this)
            {
               var _loc1_:*;
               §§push(_loc1_ = §§pop());
            }
            §§pop().y = §§pop();
            §§pop().x = _loc1_;
         }
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            this.x = param1;
         }
         while(true)
         {
            this.y = param2;
            while(!_loc5_)
            {
               this.z = param3;
               if(_loc4_ || param1)
               {
                  return;
               }
            }
         }
      }
      
      public function SetV(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.x = param1.x;
         }
         do
         {
            this.y = param1.y;
            do
            {
               this.z = param1.z;
            }
            while(!_loc2_);
            
         }
         while(_loc3_);
         
      }
      
      public function §2!'§() : b2Vec3
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec3));
         §§push(this.x);
         if(_loc2_ || this)
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(!(_loc1_ && this))
         {
            §§push(-§§pop());
         }
         §§push(this.z);
         if(_loc2_ || _loc1_)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec3(§§pop(),§§pop(),§§pop());
      }
      
      public function §%r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_ || _loc2_)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc2_ || this)
               {
                  §§push(-§§pop());
               }
               §§pop().y = §§pop();
               do
               {
                  §§push(this);
                  §§push(this.z);
                  if(_loc2_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().z = §§pop();
               }
               while(!(_loc2_ || _loc2_));
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function Copy() : b2Vec3
      {
         return new b2Vec3(this.x,this.y,this.z);
      }
      
      public function §[!C§(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc3_)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(!_loc3_)
            {
               §§push(§§pop() + param1.y);
            }
            §§pop().y = §§pop();
            do
            {
               §§push(this);
               §§push(this.z);
               if(_loc2_)
               {
                  §§push(§§pop() + param1.z);
               }
               §§pop().z = §§pop();
            }
            while(!(_loc2_ || _loc2_));
            
         }
         while(!_loc2_);
         
      }
      
      public function §@9§(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.y);
               if(!_loc2_)
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            §§push(this);
            §§push(this.z);
            if(_loc3_)
            {
               §§push(§§pop() - param1.z);
            }
            §§pop().z = §§pop();
            if(_loc3_ || _loc3_)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §;a§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(this.x);
            if(!_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.y);
               if(_loc2_ || param1)
               {
                  §§push(§§pop() * param1);
               }
               §§pop().y = §§pop();
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.z);
                     if(_loc2_)
                     {
                        §§push(§§pop() * param1);
                     }
                     §§pop().z = §§pop();
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr81);
      }
   }
}
