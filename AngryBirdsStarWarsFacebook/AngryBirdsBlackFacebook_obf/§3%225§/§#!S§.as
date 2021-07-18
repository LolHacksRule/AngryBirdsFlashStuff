package §3"5§
{
   import §5"i§.b2internal;
   
   use namespace b2internal;
   
   public class §#!S§
   {
       
      
      b2internal var §?"0§:int;
      
      b2internal var §?!-§:int;
      
      b2internal var §`!g§:int;
      
      b2internal var §?!=§:int;
      
      b2internal var §,U§:b2ContactID;
      
      public function §#!S§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function get §7!b§() : int
      {
         return this.§?"0§;
      }
      
      public function set §7!b§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§?"0§ = param1;
            do
            {
               §§push(this.§,U§);
               §§push(this.§,U§.§8"p§ & 4294967040);
               if(!(_loc2_ && param1))
               {
                  §§push(this.§?"0§);
                  if(_loc3_)
                  {
                     §§push(§§pop() & 255);
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§8"p§ = §§pop();
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function get §4"f§() : int
      {
         return this.§?!-§;
      }
      
      public function set §4"f§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!-§ = param1;
         }
         do
         {
            §§push(this.§,U§);
            §§push(this.§,U§.§8"p§ & 4294902015);
            if(!_loc3_)
            {
               continue;
            }
            §§push(this.§?!-§);
            if(!(_loc2_ && this))
            {
               §§push(8);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() << §§pop());
                  if(!(_loc2_ && this))
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
         while(§§pop().§8"p§ = §§pop(), !(_loc3_ || this));
         
      }
      
      public function get §^"F§() : int
      {
         return this.§`!g§;
      }
      
      public function set §^"F§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§`!g§ = param1;
         }
         do
         {
            §§push(this.§,U§);
            §§push(this.§,U§.§8"p§ & 4278255615);
            if(!_loc3_)
            {
               continue;
            }
            §§push(this.§`!g§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(16);
               if(!(_loc2_ && param1))
               {
                  §§push(§§pop() << §§pop());
                  if(_loc3_ || _loc3_)
                  {
                     addr75:
                     §§push(§§pop() & 16711680);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
            }
            §§goto(addr75);
         }
         while(§§pop().§8"p§ = §§pop(), _loc2_);
         
      }
      
      public function get §]"e§() : int
      {
         return this.§?!=§;
      }
      
      public function set §]"e§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?!=§ = param1;
         }
         do
         {
            §§push(this.§,U§);
            §§push(this.§,U§.§8"p§ & 16777215);
            if(_loc3_ || _loc2_)
            {
               §§push(this.§?!=§);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop() << 24);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() & 4278190080);
                  }
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§8"p§ = §§pop();
         }
         while(!(_loc3_ || _loc2_));
         
      }
   }
}
