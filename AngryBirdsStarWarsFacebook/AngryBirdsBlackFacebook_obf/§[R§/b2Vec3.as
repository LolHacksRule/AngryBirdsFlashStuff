package §[R§
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
         if(!(_loc5_ && param2))
         {
            super();
            while(true)
            {
               this.x = param1;
               addr49:
               if(_loc5_ && param3)
               {
                  continue;
               }
               return;
               addr56:
            }
         }
         while(true)
         {
            this.y = param2;
            while(_loc4_)
            {
               this.z = param3;
               if(!(_loc4_ || param2))
               {
                  continue;
               }
               §§goto(addr49);
            }
         }
         §§goto(addr56);
      }
      
      public function §&"Q§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.x = param1;
            while(true)
            {
               this.y = param2;
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            this.z = param3;
            if(!_loc4_)
            {
               if(_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function SetV(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.x = param1.x;
            do
            {
               this.y = param1.y;
               do
               {
                  this.z = param1.z;
               }
               while(!(_loc3_ || _loc2_));
               
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function §5!]§() : b2Vec3
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec3));
         §§push(this.x);
         if(!_loc1_)
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(!(_loc1_ && _loc1_))
         {
            §§push(-§§pop());
         }
         §§push(this.z);
         if(!(_loc1_ && _loc1_))
         {
            §§push(-§§pop());
         }
         return new §§pop().b2Vec3(§§pop(),§§pop(),§§pop());
      }
      
      public function §=" §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            §§push(this.x);
            if(!_loc1_)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.y);
               if(!_loc1_)
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
            if(_loc2_)
            {
               §§push(-§§pop());
            }
            §§pop().z = §§pop();
            if(!(_loc1_ && this))
            {
               if(_loc2_ || _loc2_)
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
      
      public function § true§(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
         }
         while(true)
         {
            §§push(this);
            §§push(this.y);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() + param1.y);
            }
            §§pop().y = §§pop();
            while(!_loc3_)
            {
               §§push(this);
               §§push(this.z);
               if(_loc2_)
               {
                  §§push(§§pop() + param1.z);
               }
               §§pop().z = §§pop();
               if(!(_loc3_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      public function §-p§(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_ || param1)
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
         }
         while(true)
         {
            §§push(this);
            §§push(this.y);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() - param1.y);
            }
            §§pop().y = §§pop();
            while(_loc2_)
            {
               §§push(this);
               §§push(this.z);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() - param1.z);
               }
               §§pop().z = §§pop();
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §?1§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
         }
         do
         {
            §§push(this);
            §§push(this.y);
            if(_loc2_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().y = §§pop();
            do
            {
               §§push(this);
               §§push(this.z);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() * param1);
               }
               §§pop().z = §§pop();
            }
            while(_loc3_);
            
         }
         while(_loc3_);
         
      }
   }
}
