package §`!H§
{
   import §8!H§.b2internal;
   
   use namespace b2internal;
   
   public class §#_§
   {
       
      
      b2internal var §7Y§:int;
      
      b2internal var §9!B§:int;
      
      b2internal var §@!W§:int;
      
      b2internal var § r§:int;
      
      b2internal var §4!2§:b2ContactID;
      
      public function §#_§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function get §+c§() : int
      {
         return this.§7Y§;
      }
      
      public function set §+c§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7Y§ = param1;
         }
         do
         {
            §§push(this.§4!2§);
            §§push(this.§4!2§.§^%§ & 4294967040);
            if(!(_loc2_ && param1))
            {
               §§push(this.§7Y§);
               if(_loc3_ || this)
               {
                  §§push(§§pop() & 255);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§^%§ = §§pop();
         }
         while(_loc2_ && param1);
         
      }
      
      public function get §8!O§() : int
      {
         return this.§9!B§;
      }
      
      public function set §8!O§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9!B§ = param1;
         }
         do
         {
            §§push(this.§4!2§);
            §§push(this.§4!2§.§^%§ & 4294902015);
            if(_loc3_ && _loc3_)
            {
               continue;
            }
            §§push(this.§9!B§);
            if(_loc2_)
            {
               §§push(8);
               if(!_loc3_)
               {
                  addr70:
                  §§push(§§pop() << §§pop());
                  if(_loc2_)
                  {
                     §§push(65280);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
               §§push(§§pop() & §§pop());
            }
            §§goto(addr70);
         }
         while(§§pop().§^%§ = §§pop(), !_loc2_);
         
      }
      
      public function get §,Z§() : int
      {
         return this.§@!W§;
      }
      
      public function set §,Z§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@!W§ = param1;
            do
            {
               §§push(this.§4!2§);
               §§push(this.§4!2§.§^%§ & 4278255615);
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§push(this.§@!W§);
               if(!(_loc2_ && this))
               {
                  §§push(16);
                  if(_loc3_)
                  {
                     addr81:
                     §§push(§§pop() << §§pop());
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(16711680);
                     }
                     §§push(§§pop() | §§pop());
                     continue;
                  }
                  §§push(§§pop() & §§pop());
               }
               §§goto(addr81);
            }
            while(§§pop().§^%§ = §§pop(), _loc2_ && this);
            
         }
      }
      
      public function get § !h§() : int
      {
         return this.§ r§;
      }
      
      public function set § !h§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§ r§ = param1;
            do
            {
               §§push(this.§4!2§);
               §§push(this.§4!2§.§^%§ & 16777215);
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§push(this.§ r§);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() << 24);
                  if(_loc2_ || param1)
                  {
                     addr81:
                     §§push(§§pop() & 4278190080);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
               §§goto(addr81);
            }
            while(§§pop().§^%§ = §§pop(), !(_loc2_ || _loc3_));
            
         }
      }
   }
}
