package §72§
{
   import §7!u§.b2internal;
   
   use namespace b2internal;
   
   public class §%]§
   {
       
      
      b2internal var §class§:int;
      
      b2internal var §!!4§:int;
      
      b2internal var §`V§:int;
      
      b2internal var §!3§:int;
      
      b2internal var §+![§:b2ContactID;
      
      public function §%]§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function get §]p§() : int
      {
         return this.§class§;
      }
      
      public function set §]p§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§class§ = param1;
            do
            {
               §§push(this.§+![§);
               §§push(this.§+![§.§?R§ & 4294967040);
               if(_loc2_ || param1)
               {
                  §§push(this.§class§);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() & 255);
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§?R§ = §§pop();
            }
            while(_loc3_);
            
         }
      }
      
      public function get §"!o§() : int
      {
         return this.§!!4§;
      }
      
      public function set §"!o§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§!!4§ = param1;
         }
         do
         {
            §§push(this.§+![§);
            §§push(this.§+![§.§?R§ & 4294902015);
            if(_loc2_ && _loc3_)
            {
               continue;
            }
            §§push(this.§!!4§);
            if(_loc3_)
            {
               §§push(8);
               if(_loc3_ || this)
               {
                  §§push(§§pop() << §§pop());
                  if(!(_loc2_ && param1))
                  {
                     addr85:
                     §§push(§§pop() & 65280);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
            }
            §§goto(addr85);
         }
         while(§§pop().§?R§ = §§pop(), _loc2_);
         
      }
      
      public function get §8!"§() : int
      {
         return this.§`V§;
      }
      
      public function set §8!"§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§`V§ = param1;
            do
            {
               §§push(this.§+![§);
               §§push(this.§+![§.§?R§ & 4278255615);
               if(!_loc2_)
               {
                  continue;
               }
               §§push(this.§`V§);
               if(_loc2_)
               {
                  §§push(16);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§§pop() << §§pop());
                     if(!(_loc3_ && param1))
                     {
                        addr79:
                        §§push(§§pop() & 16711680);
                     }
                     §§push(§§pop() | §§pop());
                     continue;
                  }
               }
               §§goto(addr79);
            }
            while(§§pop().§?R§ = §§pop(), !_loc2_);
            
         }
      }
      
      public function get §7!i§() : int
      {
         return this.§!3§;
      }
      
      public function set §7!i§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§!3§ = param1;
         }
         do
         {
            §§push(this.§+![§);
            §§push(this.§+![§.§?R§ & 16777215);
            if(_loc3_ && _loc3_)
            {
               continue;
            }
            §§push(this.§!3§);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() << 24);
               if(_loc2_)
               {
                  addr76:
                  §§push(§§pop() & 4278190080);
               }
               §§push(§§pop() | §§pop());
               continue;
            }
            §§goto(addr76);
         }
         while(§§pop().§?R§ = §§pop(), _loc3_);
         
      }
   }
}
