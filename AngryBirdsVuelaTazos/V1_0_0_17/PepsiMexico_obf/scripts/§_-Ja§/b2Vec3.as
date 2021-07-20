package §_-Ja§
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
            if(!(_loc5_ && param3))
            {
               this.x = param1;
               if(_loc4_ || param1)
               {
                  this.y = param2;
                  if(_loc5_ && param2)
                  {
                  }
                  §§goto(addr66);
               }
               this.z = param3;
            }
         }
         addr66:
      }
      
      public function §_-0a§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this);
            §§push(this.z = 0);
            if(!(_loc2_ && this))
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
         if(!(_loc4_ && param3))
         {
            this.x = param1;
            if(_loc5_)
            {
               this.y = param2;
               if(!_loc4_)
               {
                  addr45:
                  this.z = param3;
               }
               return;
            }
         }
         §§goto(addr45);
      }
      
      public function SetV(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.x = param1.x;
            if(!(_loc2_ && _loc3_))
            {
               this.y = param1.y;
               addr34:
               if(_loc3_)
               {
                  this.z = param1.z;
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function §_-D§() : b2Vec3
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
         if(_loc2_ || _loc1_)
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
      
      public function §_-2F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc1_ || _loc2_)
            {
               §§push(-§§pop());
            }
            §§pop().x = §§pop();
            if(!_loc2_)
            {
               addr36:
               §§push(this);
               §§push(this.y);
               if(!_loc2_)
               {
                  §§push(-§§pop());
               }
               §§pop().y = §§pop();
               if(_loc1_)
               {
                  §§push(this);
                  §§push(this.z);
                  if(_loc1_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().z = §§pop();
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function Copy() : b2Vec3
      {
         return new b2Vec3(this.x,this.y,this.z);
      }
      
      public function §_-Jv§(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc2_)
            {
               §§push(§§pop() + param1.x);
            }
            §§pop().x = §§pop();
            if(_loc2_)
            {
               §§push(this);
               §§push(this.y);
               if(_loc2_)
               {
                  §§push(§§pop() + param1.y);
               }
               §§pop().y = §§pop();
               if(!(_loc3_ && _loc2_))
               {
                  addr49:
                  §§push(this);
                  §§push(this.z);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() + param1.z);
                  }
                  §§pop().z = §§pop();
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §_-XY§(param1:b2Vec3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(this.x);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() - param1.x);
            }
            §§pop().x = §§pop();
            if(!_loc3_)
            {
               §§goto(addr43);
            }
            §§goto(addr59);
         }
         addr43:
         §§push(this);
         §§push(this.y);
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop() - param1.y);
         }
         §§pop().y = §§pop();
         if(_loc2_)
         {
            addr59:
            §§push(this);
            §§push(this.z);
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop() - param1.z);
            }
            §§pop().z = §§pop();
         }
      }
      
      public function §_-6z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            §§push(this.x);
            if(_loc3_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().x = §§pop();
            if(_loc3_ || _loc2_)
            {
               §§push(this);
               §§push(this.y);
               if(_loc3_)
               {
                  §§push(§§pop() * param1);
               }
               §§pop().y = §§pop();
               if(!_loc3_)
               {
               }
               §§goto(addr73);
            }
            §§push(this);
            §§push(this.z);
            if(!(_loc2_ && param1))
            {
               §§push(§§pop() * param1);
            }
            §§pop().z = §§pop();
         }
         addr73:
      }
   }
}
