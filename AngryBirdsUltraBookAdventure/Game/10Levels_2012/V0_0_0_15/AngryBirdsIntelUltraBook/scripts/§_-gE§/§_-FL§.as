package §_-gE§
{
   import §_-5§.b2internal;
   
   use namespace b2internal;
   
   public class §_-FL§
   {
       
      
      b2internal var §_-m9§:int;
      
      b2internal var §_-08u§:int;
      
      b2internal var §_-0Cg§:int;
      
      b2internal var §_-000§:int;
      
      b2internal var §_-Vs§:b2ContactID;
      
      public function §_-FL§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public function get §_-uj§() : int
      {
         return this.§_-m9§;
      }
      
      public function set §_-uj§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§_-m9§ = param1;
            do
            {
               §§push(this.§_-Vs§);
               §§push(this.§_-Vs§.§_-Tb§ & 4294967040);
               if(_loc2_ || param1)
               {
                  §§push(this.§_-m9§);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() & 255);
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§_-Tb§ = §§pop();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function get §_-09v§() : int
      {
         return this.§_-08u§;
      }
      
      public function set §_-09v§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-08u§ = param1;
            do
            {
               §§push(this.§_-Vs§);
               §§push(this.§_-Vs§.§_-Tb§ & 4294902015);
               if(_loc3_ && param1)
               {
                  continue;
               }
               §§push(this.§_-08u§);
               if(_loc2_ || _loc3_)
               {
                  §§push(8);
                  if(_loc2_)
                  {
                     addr75:
                     §§push(§§pop() << §§pop());
                     if(!_loc3_)
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
            while(§§pop().§_-Tb§ = §§pop(), _loc3_ && this);
            
         }
      }
      
      public function get §_-Cq§() : int
      {
         return this.§_-0Cg§;
      }
      
      public function set §_-Cq§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§_-0Cg§ = param1;
         }
         do
         {
            §§push(this.§_-Vs§);
            §§push(this.§_-Vs§.§_-Tb§ & 4278255615);
            if(!_loc3_)
            {
               continue;
            }
            §§push(this.§_-0Cg§);
            if(!_loc2_)
            {
               §§push(16);
               if(!(_loc2_ && _loc2_))
               {
                  addr76:
                  §§push(§§pop() << §§pop());
                  if(_loc3_)
                  {
                     §§push(16711680);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
               §§push(§§pop() & §§pop());
            }
            §§goto(addr76);
         }
         while(§§pop().§_-Tb§ = §§pop(), _loc2_);
         
      }
      
      public function get §_-W§() : int
      {
         return this.§_-000§;
      }
      
      public function set §_-W§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-000§ = param1;
            do
            {
               §§push(this.§_-Vs§);
               §§push(this.§_-Vs§.§_-Tb§ & 16777215);
               if(!_loc2_)
               {
                  continue;
               }
               §§push(this.§_-000§);
               if(!_loc3_)
               {
                  §§push(§§pop() << 24);
                  if(!(_loc3_ && _loc2_))
                  {
                     addr71:
                     §§push(§§pop() & 4278190080);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
               §§goto(addr71);
            }
            while(§§pop().§_-Tb§ = §§pop(), _loc3_ && param1);
            
         }
      }
   }
}
