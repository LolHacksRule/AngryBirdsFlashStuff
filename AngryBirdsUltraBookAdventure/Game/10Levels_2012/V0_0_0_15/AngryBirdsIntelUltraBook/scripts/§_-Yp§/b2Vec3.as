package §_-Yp§
{
   public class b2Vec3
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public var z:Number;
      
      public function b2Vec3(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.x = param1;
               addr40:
               if(_loc4_ && param3)
               {
                  continue;
               }
               return;
               addr47:
            }
         }
         while(true)
         {
            this.y = param2;
            while(!_loc4_)
            {
               this.z = param3;
               if(!_loc5_)
               {
                  continue;
               }
               §§goto(addr40);
            }
         }
         §§goto(addr47);
      }
      
      public function §_-el§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this);
            §§push(this);
            §§push(this.z = 0);
            if(_loc3_)
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.x = param1;
            while(true)
            {
               this.y = param2;
               loop1:
               while(_loc5_)
               {
                  while(true)
                  {
                     this.z = param3;
                     if(_loc5_ || param3)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function SetV(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.x = param1.x;
            while(true)
            {
               this.y = param1.y;
               while(!_loc3_)
               {
                  this.z = param1.z;
                  if(!(_loc3_ && _loc3_))
                  {
                     return;
                     addr60:
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §_-5M§() : b2Vec3
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec3));
         §§push(this.x);
         if(_loc1_ || _loc1_)
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(_loc1_ || this)
         {
            §§push(-§§pop());
         }
         §§push(this.z);
         if(!(_loc2_ && _loc2_))
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec3(§§pop(),§§pop(),§§pop());
      }
      
      public function §_-03q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc2_ && _loc2_))
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(!_loc2_)
            {
               §§push(-§§pop());
            }
            §§pop().y = §§pop();
            do
            {
               §§push(this);
               §§push(this.z);
               if(!(_loc2_ && this))
               {
                  §§push(-§§pop());
               }
               §§pop().z = §§pop();
            }
            while(!(_loc1_ || this));
            
         }
         while(!(_loc1_ || this));
         
      }
      
      public function Copy() : b2Vec3
      {
         return new b2Vec3(this.x,this.y,this.z);
      }
      
      public function §_-M6§(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
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
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() + param1.z);
                  }
                  §§pop().z = §§pop();
               }
               while(!_loc2_);
               
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function §_-w3§(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.y);
               if(_loc2_ || param1)
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            §§push(this);
            §§push(this.z);
            if(_loc2_)
            {
               §§push(§§pop() - param1.z);
            }
            §§pop().z = §§pop();
            if(_loc2_ || param1)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §_-mx§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this);
            §§push(this.x);
            if(!_loc2_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.y);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() * param1);
               }
               §§pop().y = §§pop();
               do
               {
                  if(!(_loc2_ && this))
                  {
                     continue;
                  }
                  continue loop0;
               }
               while(§§push(this), §§push(this.z), if(!_loc2_)
               {
                  §§push(§§pop() * param1);
               }, §§pop().z = §§pop(), !(_loc3_ || this));
               
               §§goto(addr55);
            }
         }
         addr55:
      }
   }
}
