package §9"§
{
   import §2!F§.b2internal;
   
   use namespace b2internal;
   
   public class §"X§
   {
       
      
      b2internal var §]!L§:int;
      
      b2internal var §"!I§:int;
      
      b2internal var §+!0§:int;
      
      b2internal var §=t§:int;
      
      b2internal var §9f§:b2ContactID;
      
      public function §"X§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function get §<!S§() : int
      {
         return this.§]!L§;
      }
      
      public function set §<!S§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]!L§ = param1;
            do
            {
               §§push(this.§9f§);
               §§push(this.§9f§.§case § & 4294967040);
               if(!(_loc3_ && this))
               {
                  §§push(this.§]!L§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() & 255);
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§case § = §§pop();
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function get § null§() : int
      {
         return this.§"!I§;
      }
      
      public function set § null§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§"!I§ = param1;
         }
         do
         {
            §§push(this.§9f§);
            §§push(this.§9f§.§case § & 4294902015);
            if(!(_loc3_ || param1))
            {
               continue;
            }
            §§push(this.§"!I§);
            if(!_loc2_)
            {
               §§push(8);
               if(!_loc2_)
               {
                  addr71:
                  §§push(§§pop() << §§pop());
                  if(_loc3_ || _loc3_)
                  {
                     §§push(65280);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
               §§push(§§pop() & §§pop());
            }
            §§goto(addr71);
         }
         while(§§pop().§case § = §§pop(), _loc2_ && this);
         
      }
      
      public function get §!R§() : int
      {
         return this.§+!0§;
      }
      
      public function set §!R§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+!0§ = param1;
         }
         do
         {
            §§push(this.§9f§);
            §§push(this.§9f§.§case § & 4278255615);
            if(!_loc3_)
            {
               continue;
            }
            §§push(this.§+!0§);
            if(_loc3_)
            {
               §§push(16);
               if(_loc3_)
               {
                  addr66:
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
            §§goto(addr66);
         }
         while(§§pop().§case § = §§pop(), !_loc3_);
         
      }
      
      public function get §'!H§() : int
      {
         return this.§=t§;
      }
      
      public function set §'!H§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§=t§ = param1;
            do
            {
               §§push(this.§9f§);
               §§push(this.§9f§.§case § & 16777215);
               if(!_loc2_)
               {
                  §§push(this.§=t§);
                  if(!(_loc2_ && this))
                  {
                     §§push(§§pop() << 24);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop() & 4278190080);
                     }
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§case § = §§pop();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
   }
}
