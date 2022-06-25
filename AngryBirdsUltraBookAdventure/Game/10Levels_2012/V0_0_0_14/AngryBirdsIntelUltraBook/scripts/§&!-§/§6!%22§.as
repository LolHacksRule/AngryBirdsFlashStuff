package §&!-§
{
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class §6!"§
   {
       
      
      b2internal var §8!-§:int;
      
      b2internal var §;?§:int;
      
      b2internal var §;!7§:int;
      
      b2internal var §3!K§:int;
      
      b2internal var §0!-§:b2ContactID;
      
      public function §6!"§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function get §-7§() : int
      {
         return this.§8!-§;
      }
      
      public function set §-7§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!-§ = param1;
         }
         do
         {
            §§push(this.§0!-§);
            §§push(this.§0!-§.§,V§ & 4294967040);
            if(!(_loc2_ && _loc3_))
            {
               §§push(this.§8!-§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() & 255);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§,V§ = §§pop();
         }
         while(!_loc3_);
         
      }
      
      public function get § !=§() : int
      {
         return this.§;?§;
      }
      
      public function set § !=§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;?§ = param1;
            do
            {
               §§push(this.§0!-§);
               §§push(this.§0!-§.§,V§ & 4294902015);
               if(_loc2_)
               {
                  continue;
               }
               §§push(this.§;?§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(8);
                  if(!_loc2_)
                  {
                     §§push(§§pop() << §§pop());
                     if(_loc3_)
                     {
                        addr70:
                        §§push(§§pop() & 65280);
                     }
                     §§push(§§pop() | §§pop());
                     continue;
                  }
               }
               §§goto(addr70);
            }
            while(§§pop().§,V§ = §§pop(), _loc2_ && _loc3_);
            
         }
      }
      
      public function get §3!R§() : int
      {
         return this.§;!7§;
      }
      
      public function set §3!R§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§;!7§ = param1;
         }
         do
         {
            §§push(this.§0!-§);
            §§push(this.§0!-§.§,V§ & 4278255615);
            if(!_loc2_)
            {
               continue;
            }
            §§push(this.§;!7§);
            if(_loc2_ || param1)
            {
               §§push(16);
               if(_loc2_ || param1)
               {
                  addr85:
                  §§push(§§pop() << §§pop());
                  if(!(_loc3_ && _loc2_))
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
         while(§§pop().§,V§ = §§pop(), !_loc2_);
         
      }
      
      public function get §<!J§() : int
      {
         return this.§3!K§;
      }
      
      public function set §<!J§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§3!K§ = param1;
            do
            {
               §§push(this.§0!-§);
               §§push(this.§0!-§.§,V§ & 16777215);
               if(!(_loc2_ || param1))
               {
                  continue;
               }
               §§push(this.§3!K§);
               if(!_loc3_)
               {
                  §§push(§§pop() << 24);
                  if(!_loc3_)
                  {
                     addr71:
                     §§push(§§pop() & 4278190080);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
               §§goto(addr71);
            }
            while(§§pop().§,V§ = §§pop(), _loc3_);
            
         }
      }
   }
}
