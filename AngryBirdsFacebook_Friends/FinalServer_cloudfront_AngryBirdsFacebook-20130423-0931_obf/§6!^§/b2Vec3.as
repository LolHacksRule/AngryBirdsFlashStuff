package §6!^§
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
         do
         {
            this.x = param1;
            do
            {
               this.y = param2;
               do
               {
                  this.z = param3;
               }
               while(_loc5_ && param2);
               
            }
            while(!(_loc4_ || param2));
            
         }
         while(_loc5_ && param3);
         
      }
      
      public function §%y§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(this);
            §§push(this.z = 0);
            if(_loc3_ || _loc2_)
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
         if(!_loc5_)
         {
            this.x = param1;
         }
         while(true)
         {
            this.y = param2;
            while(_loc4_ || this)
            {
               this.z = param3;
               if(_loc4_ || param2)
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
         if(_loc2_)
         {
            this.x = param1.x;
            while(true)
            {
               this.y = param1.y;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.z = param1.z;
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
      
      public function §9l§() : b2Vec3
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec3));
         §§push(this.x);
         if(!(_loc1_ && _loc1_))
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(!_loc1_)
         {
            §§push(-§§pop());
         }
         §§push(this.z);
         if(_loc2_)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec3(§§pop(),§§pop(),§§pop());
      }
      
      public function §-"I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_ || _loc1_)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.y);
               if(_loc2_ || this)
               {
                  §§push(-§§pop());
               }
               §§pop().y = §§pop();
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            §§push(this);
            §§push(this.z);
            if(!_loc1_)
            {
               §§push(-§§pop());
            }
            §§pop().z = §§pop();
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function Copy() : b2Vec3
      {
         return new b2Vec3(this.x,this.y,this.z);
      }
      
      public function §6"3§(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc2_)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.y);
               if(!(_loc2_ && param1))
               {
                  §§push(§§pop() + param1.y);
               }
               §§pop().y = §§pop();
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.z);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() + param1.z);
                     }
                     §§pop().z = §§pop();
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §9!Y§(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_ || this)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() - param1.y);
            }
            §§pop().y = §§pop();
            do
            {
               §§push(this);
               §§push(this.z);
               if(_loc2_ || this)
               {
                  §§push(§§pop() - param1.z);
               }
               §§pop().z = §§pop();
            }
            while(_loc3_);
            
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function §!!L§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.y);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() * param1);
               }
               §§pop().y = §§pop();
               do
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  continue loop0;
               }
               while(§§push(this), §§push(this.z), if(!(_loc2_ && param1))
               {
                  §§push(§§pop() * param1);
               }, §§pop().z = §§pop(), _loc2_);
               
            }
         }
      }
   }
}
