package §!§
{
   import §'!_§.b2internal;
   
   use namespace b2internal;
   
   public class §super§
   {
       
      
      b2internal var §6G§:int;
      
      b2internal var §#a§:int;
      
      b2internal var §,!Q§:int;
      
      b2internal var §<!X§:int;
      
      b2internal var §<!,§:b2ContactID;
      
      public function §super§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function get §]u§() : int
      {
         return this.§6G§;
      }
      
      public function set §]u§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6G§ = param1;
         }
         do
         {
            §§push(this.§<!,§);
            §§push(this.§<!,§.§+!t§ & 4294967040);
            if(!_loc2_)
            {
               §§push(this.§6G§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() & 255);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§+!t§ = §§pop();
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public function get §@!q§() : int
      {
         return this.§#a§;
      }
      
      public function set §@!q§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#a§ = param1;
            do
            {
               §§push(this.§<!,§);
               §§push(this.§<!,§.§+!t§ & 4294902015);
               if(!_loc2_)
               {
                  continue;
               }
               §§push(this.§#a§);
               if(_loc2_ || param1)
               {
                  §§push(8);
                  if(_loc2_ || _loc2_)
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
            while(§§pop().§+!t§ = §§pop(), !_loc2_);
            
         }
      }
      
      public function get §]"0§() : int
      {
         return this.§,!Q§;
      }
      
      public function set §]"0§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§,!Q§ = param1;
            do
            {
               §§push(this.§<!,§);
               §§push(this.§<!,§.§+!t§ & 4278255615);
               if(_loc2_)
               {
                  continue;
               }
               §§push(this.§,!Q§);
               if(_loc3_ || _loc3_)
               {
                  §§push(16);
                  if(_loc3_)
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
            while(§§pop().§+!t§ = §§pop(), !(_loc3_ || param1));
            
         }
      }
      
      public function get §6u§() : int
      {
         return this.§<!X§;
      }
      
      public function set §6u§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<!X§ = param1;
         }
         do
         {
            §§push(this.§<!,§);
            §§push(this.§<!,§.§+!t§ & 16777215);
            if(_loc3_)
            {
               continue;
            }
            §§push(this.§<!X§);
            if(_loc2_ || param1)
            {
               §§push(§§pop() << 24);
               if(!_loc3_)
               {
                  addr56:
                  §§push(§§pop() & 4278190080);
               }
               §§push(§§pop() | §§pop());
               continue;
            }
            §§goto(addr56);
         }
         while(§§pop().§+!t§ = §§pop(), !(_loc2_ || _loc2_));
         
      }
   }
}
