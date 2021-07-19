package §!4§
{
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class §%W§
   {
       
      
      b2internal var § ?§:int;
      
      b2internal var §+S§:int;
      
      b2internal var §9g§:int;
      
      b2internal var §]Z§:int;
      
      b2internal var §=D§:b2ContactID;
      
      public function §%W§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public function get §6x§() : int
      {
         return this.§ ?§;
      }
      
      public function set §6x§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§ ?§ = param1;
            do
            {
               §§push(this.§=D§);
               §§push(this.§=D§.§0k§ & 4294967040);
               if(_loc2_ || _loc2_)
               {
                  §§push(this.§ ?§);
                  if(_loc2_)
                  {
                     §§push(§§pop() & 255);
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§0k§ = §§pop();
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function get §;!'§() : int
      {
         return this.§+S§;
      }
      
      public function set §;!'§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§+S§ = param1;
            do
            {
               §§push(this.§=D§);
               §§push(this.§=D§.§0k§ & 4294902015);
               if(!_loc3_)
               {
                  continue;
               }
               §§push(this.§+S§);
               if(_loc3_)
               {
                  §§push(8);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr66:
                     §§push(§§pop() << §§pop());
                     if(!_loc2_)
                     {
                        §§push(65280);
                     }
                     §§push(§§pop() | §§pop());
                     continue;
                  }
                  §§push(§§pop() & §§pop());
               }
               §§goto(addr66);
            }
            while(§§pop().§0k§ = §§pop(), _loc2_ && this);
            
         }
      }
      
      public function get § 2§() : int
      {
         return this.§9g§;
      }
      
      public function set § 2§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§9g§ = param1;
         }
         do
         {
            §§push(this.§=D§);
            §§push(this.§=D§.§0k§ & 4278255615);
            if(_loc3_)
            {
               continue;
            }
            §§push(this.§9g§);
            if(_loc2_ || this)
            {
               §§push(16);
               if(_loc2_)
               {
                  §§push(§§pop() << §§pop());
                  if(_loc2_ || this)
                  {
                     addr69:
                     §§push(§§pop() & 16711680);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
            }
            §§goto(addr69);
         }
         while(§§pop().§0k§ = §§pop(), _loc3_);
         
      }
      
      public function get §1!$§() : int
      {
         return this.§]Z§;
      }
      
      public function set §1!$§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§]Z§ = param1;
            do
            {
               §§push(this.§=D§);
               §§push(this.§=D§.§0k§ & 16777215);
               if(!_loc2_)
               {
                  §§push(this.§]Z§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() << 24);
                     if(_loc3_)
                     {
                        §§push(§§pop() & 4278190080);
                     }
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§0k§ = §§pop();
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
   }
}
