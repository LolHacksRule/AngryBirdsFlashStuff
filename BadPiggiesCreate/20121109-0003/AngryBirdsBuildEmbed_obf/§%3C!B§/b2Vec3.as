package §<!B§
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
            if(_loc5_)
            {
               addr33:
               this.x = param1;
               if(_loc5_ || param2)
               {
                  this.y = param2;
                  if(!_loc4_)
                  {
                     addr48:
                     this.z = param3;
                  }
                  return;
               }
            }
            §§goto(addr48);
         }
         §§goto(addr33);
      }
      
      public function §22§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this);
            §§push(this);
            §§push(this.z = 0);
            if(!(_loc2_ && _loc2_))
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
            if(!_loc5_)
            {
               this.y = param2;
               if(!_loc5_)
               {
                  this.z = param3;
               }
            }
         }
      }
      
      public function SetV(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.x = param1.x;
            if(!_loc2_)
            {
               addr35:
               this.y = param1.y;
               if(_loc3_ || param1)
               {
                  this.z = param1.z;
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §[1§() : b2Vec3
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec3));
         §§push(this.x);
         if(_loc2_)
         {
            §§push(-§§pop());
         }
         §§push(this.y);
         if(!(_loc1_ && _loc2_))
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
      
      public function §-![§() : void
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
            if(_loc2_)
            {
               §§push(this);
               §§push(this.y);
               if(!_loc1_)
               {
                  §§push(-§§pop());
               }
               §§pop().y = §§pop();
               if(!(_loc1_ && _loc1_))
               {
                  addr62:
                  §§push(this);
                  §§push(this.z);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(-§§pop());
                  }
                  §§pop().z = §§pop();
               }
               return;
            }
         }
         §§goto(addr62);
      }
      
      public function Copy() : b2Vec3
      {
         return new b2Vec3(this.x,this.y,this.z);
      }
      
      public function §!a§(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_ || param1)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
            if(!_loc3_)
            {
               addr44:
               §§push(this);
               §§push(this.y);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() + param1.y);
               }
               §§pop().y = §§pop();
               if(!(_loc3_ && _loc3_))
               {
                  §§push(this);
                  §§push(this.z);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() + param1.z);
                  }
                  §§pop().z = §§pop();
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §&!v§(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
            if(!_loc3_)
            {
               addr59:
               §§push(this);
               §§push(this.y);
               if(_loc2_)
               {
                  §§push(§§pop() - param1.y);
               }
               §§pop().y = §§pop();
               if(_loc2_)
               {
                  §§push(this);
                  §§push(this.z);
                  if(_loc2_ || param1)
                  {
                     §§push(§§pop() - param1.z);
                  }
                  §§pop().z = §§pop();
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function §=!K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
            if(!(_loc2_ && param1))
            {
               §§goto(addr59);
            }
            §§goto(addr74);
         }
         addr59:
         §§push(this);
         §§push(this.y);
         if(_loc3_)
         {
            §§push(§§pop() * param1);
         }
         §§pop().y = §§pop();
         if(_loc3_ || param1)
         {
            addr74:
            §§push(this);
            §§push(this.z);
            if(_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().z = §§pop();
         }
      }
   }
}
