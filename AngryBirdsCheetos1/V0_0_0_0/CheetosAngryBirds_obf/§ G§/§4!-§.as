package § G§
{
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class §4!-§
   {
       
      
      b2internal var §7!D§:int;
      
      b2internal var §@!H§:int;
      
      b2internal var §<e§:int;
      
      b2internal var §2h§:int;
      
      b2internal var §1!?§:b2ContactID;
      
      public function §4!-§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public function get §'f§() : int
      {
         return this.§7!D§;
      }
      
      public function set §'f§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7!D§ = param1;
         }
         do
         {
            §§push(this.§1!?§);
            §§push(this.§1!?§.§32§ & 4294967040);
            if(_loc2_)
            {
               §§push(this.§7!D§);
               if(_loc2_)
               {
                  §§push(§§pop() & 255);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§32§ = §§pop();
         }
         while(!_loc2_);
         
      }
      
      public function get §2H§() : int
      {
         return this.§@!H§;
      }
      
      public function set §2H§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!H§ = param1;
            do
            {
               §§push(this.§1!?§);
               §§push(this.§1!?§.§32§ & 4294902015);
               if(_loc2_ && param1)
               {
                  continue;
               }
               §§push(this.§@!H§);
               if(_loc3_ || this)
               {
                  §§push(8);
                  if(_loc3_)
                  {
                     addr71:
                     §§push(§§pop() << §§pop());
                     if(!(_loc2_ && this))
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
            while(§§pop().§32§ = §§pop(), _loc2_ && param1);
            
         }
      }
      
      public function get §!!;§() : int
      {
         return this.§<e§;
      }
      
      public function set §!!;§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<e§ = param1;
         }
         do
         {
            §§push(this.§1!?§);
            §§push(this.§1!?§.§32§ & 4278255615);
            if(!(_loc3_ || _loc2_))
            {
               continue;
            }
            §§push(this.§<e§);
            if(!(_loc2_ && param1))
            {
               §§push(16);
               if(!_loc2_)
               {
                  §§push(§§pop() << §§pop());
                  if(!_loc2_)
                  {
                     addr65:
                     §§push(§§pop() & 16711680);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
            }
            §§goto(addr65);
         }
         while(§§pop().§32§ = §§pop(), !(_loc3_ || _loc3_));
         
      }
      
      public function get §2x§() : int
      {
         return this.§2h§;
      }
      
      public function set §2x§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§2h§ = param1;
         }
         do
         {
            §§push(this.§1!?§);
            §§push(this.§1!?§.§32§ & 16777215);
            if(_loc2_ && this)
            {
               continue;
            }
            §§push(this.§2h§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() << 24);
               if(_loc3_)
               {
                  addr67:
                  §§push(§§pop() & 4278190080);
               }
               §§push(§§pop() | §§pop());
               continue;
            }
            §§goto(addr67);
         }
         while(§§pop().§32§ = §§pop(), !_loc3_);
         
      }
   }
}
