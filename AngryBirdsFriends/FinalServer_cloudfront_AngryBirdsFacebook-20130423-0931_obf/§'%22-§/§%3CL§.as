package §'"-§
{
   import §,"[§.b2internal;
   
   use namespace b2internal;
   
   public class §<L§
   {
       
      
      b2internal var §?!S§:int;
      
      b2internal var §-!C§:int;
      
      b2internal var §9"Y§:int;
      
      b2internal var §;]§:int;
      
      b2internal var §8!W§:b2ContactID;
      
      public function §<L§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function get §1g§() : int
      {
         return this.§?!S§;
      }
      
      public function set §1g§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?!S§ = param1;
         }
         do
         {
            §§push(this.§8!W§);
            §§push(this.§8!W§.§&m§ & 4294967040);
            if(!(_loc2_ && param1))
            {
               §§push(this.§?!S§);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() & 255);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§&m§ = §§pop();
         }
         while(!_loc3_);
         
      }
      
      public function get §&V§() : int
      {
         return this.§-!C§;
      }
      
      public function set §&V§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§-!C§ = param1;
            do
            {
               §§push(this.§8!W§);
               §§push(this.§8!W§.§&m§ & 4294902015);
               if(!_loc2_)
               {
                  continue;
               }
               §§push(this.§-!C§);
               if(_loc2_)
               {
                  §§push(8);
                  if(_loc2_)
                  {
                     addr75:
                     §§push(§§pop() << §§pop());
                     if(_loc2_ || this)
                     {
                        §§push(65280);
                     }
                     §§push(§§pop() | §§pop());
                     continue;
                  }
                  §§push(§§pop() & §§pop());
               }
               §§goto(addr75);
            }
            while(§§pop().§&m§ = §§pop(), !_loc2_);
            
         }
      }
      
      public function get §%!#§() : int
      {
         return this.§9"Y§;
      }
      
      public function set §%!#§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§9"Y§ = param1;
         }
         do
         {
            §§push(this.§8!W§);
            §§push(this.§8!W§.§&m§ & 4278255615);
            if(!(_loc2_ || _loc3_))
            {
               continue;
            }
            §§push(this.§9"Y§);
            if(_loc2_ || _loc2_)
            {
               §§push(16);
               if(_loc2_)
               {
                  addr85:
                  §§push(§§pop() << §§pop());
                  if(_loc2_ || param1)
                  {
                     §§push(16711680);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
               §§push(§§pop() & §§pop());
            }
            §§goto(addr85);
         }
         while(§§pop().§&m§ = §§pop(), !_loc2_);
         
      }
      
      public function get §2=§() : int
      {
         return this.§;]§;
      }
      
      public function set §2=§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§;]§ = param1;
            do
            {
               §§push(this.§8!W§);
               §§push(this.§8!W§.§&m§ & 16777215);
               if(_loc3_ || this)
               {
                  §§push(this.§;]§);
                  if(_loc3_)
                  {
                     §§push(§§pop() << 24);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() & 4278190080);
                     }
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§&m§ = §§pop();
            }
            while(!(_loc3_ || param1));
            
         }
      }
   }
}
