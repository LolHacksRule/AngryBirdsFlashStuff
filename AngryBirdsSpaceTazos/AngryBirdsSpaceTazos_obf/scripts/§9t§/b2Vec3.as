package §9t§
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
         if(_loc4_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               this.x = param1;
               while(true)
               {
                  this.y = param2;
                  loop2:
                  while(!_loc5_)
                  {
                     while(true)
                     {
                        this.z = param3;
                        if(_loc4_)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §@!d§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(this);
            §§push(this.z = 0);
            if(_loc2_ || this)
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
            while(true)
            {
               this.y = param2;
               while(_loc4_ || this)
               {
                  this.z = param3;
                  if(!_loc4_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
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
               while(!(_loc3_ && this))
               {
                  while(true)
                  {
                     this.z = param1.z;
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §2!D§() : b2Vec3
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec3));
         §§push(this.x);
         if(!(_loc1_ && this))
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(!(_loc1_ && this))
         {
            §§push(-§§pop());
         }
         §§push(this.z);
         if(_loc2_ || _loc2_)
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec3(§§pop(),§§pop(),§§pop());
      }
      
      public function §9!H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc2_ && _loc1_))
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
         }
         while(true)
         {
            §§push(this);
            §§push(this.y);
            if(_loc1_ || _loc1_)
            {
               §§push(-§§pop());
            }
            §§pop().y = §§pop();
            while(!(_loc2_ && _loc2_))
            {
               §§push(this);
               §§push(this.z);
               if(!_loc2_)
               {
                  §§push(-§§pop());
               }
               §§pop().z = §§pop();
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function Copy() : b2Vec3
      {
         return new b2Vec3(this.x,this.y,this.z);
      }
      
      public function §]!H§(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.y);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() + param1.y);
               }
               §§pop().y = §§pop();
               do
               {
                  if(_loc3_ || _loc2_)
                  {
                     continue;
                  }
                  continue loop0;
               }
               while(§§push(this), §§push(this.z), if(!_loc2_)
               {
                  §§push(§§pop() + param1.z);
               }, §§pop().z = §§pop(), _loc2_);
               
               §§goto(addr36);
            }
         }
         addr36:
      }
      
      public function §0"-§(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc2_)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
            do
            {
               §§push(this);
               §§push(this.y);
               if(_loc3_)
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
               do
               {
                  §§push(this);
                  §§push(this.z);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() - param1.z);
                  }
                  §§pop().z = §§pop();
               }
               while(_loc2_);
               
            }
            while(_loc2_);
            
         }
      }
      
      public function §-!&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
         }
         while(true)
         {
            §§push(this);
            §§push(this.y);
            if(_loc2_ || this)
            {
               §§push(§§pop() * param1);
            }
            §§pop().y = §§pop();
            while(!_loc3_)
            {
               §§push(this);
               §§push(this.z);
               if(_loc2_)
               {
                  §§push(§§pop() * param1);
               }
               §§pop().z = §§pop();
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
   }
}
