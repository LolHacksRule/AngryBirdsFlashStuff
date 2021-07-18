package §^9§
{
   import §'F§.b2internal;
   
   use namespace b2internal;
   
   public class §>!_§
   {
       
      
      b2internal var § !J§:int;
      
      b2internal var §#!u§:int;
      
      b2internal var §?!]§:int;
      
      b2internal var §,"$§:int;
      
      b2internal var §]!A§:b2ContactID;
      
      public function §>!_§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public function get §5!q§() : int
      {
         return this.§ !J§;
      }
      
      public function set §5!q§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ !J§ = param1;
            do
            {
               §§push(this.§]!A§);
               §§push(this.§]!A§.§?" § & 4294967040);
               if(_loc3_)
               {
                  §§push(this.§ !J§);
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() & 255);
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§?" § = §§pop();
            }
            while(_loc2_);
            
         }
      }
      
      public function get §95§() : int
      {
         return this.§#!u§;
      }
      
      public function set §95§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#!u§ = param1;
         }
         do
         {
            §§push(this.§]!A§);
            §§push(this.§]!A§.§?" § & 4294902015);
            if(!_loc2_)
            {
               continue;
            }
            §§push(this.§#!u§);
            if(!(_loc3_ && this))
            {
               §§push(8);
               if(!_loc3_)
               {
                  §§push(§§pop() << §§pop());
                  if(!_loc3_)
                  {
                     addr59:
                     §§push(§§pop() & 65280);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
            }
            §§goto(addr59);
         }
         while(§§pop().§?" § = §§pop(), _loc3_ && _loc2_);
         
      }
      
      public function get §!"+§() : int
      {
         return this.§?!]§;
      }
      
      public function set §!"+§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!]§ = param1;
            do
            {
               §§push(this.§]!A§);
               §§push(this.§]!A§.§?" § & 4278255615);
               if(_loc3_ && param1)
               {
                  continue;
               }
               §§push(this.§?!]§);
               if(!(_loc3_ && param1))
               {
                  §§push(16);
                  if(!_loc3_)
                  {
                     §§push(§§pop() << §§pop());
                     if(!_loc3_)
                     {
                        addr64:
                        §§push(§§pop() & 16711680);
                     }
                     §§push(§§pop() | §§pop());
                     continue;
                  }
               }
               §§goto(addr64);
            }
            while(§§pop().§?" § = §§pop(), _loc3_ && _loc2_);
            
         }
      }
      
      public function get §#!t§() : int
      {
         return this.§,"$§;
      }
      
      public function set §#!t§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§,"$§ = param1;
            do
            {
               §§push(this.§]!A§);
               §§push(this.§]!A§.§?" § & 16777215);
               if(!_loc2_)
               {
                  §§push(this.§,"$§);
                  if(_loc3_)
                  {
                     §§push(§§pop() << 24);
                     if(!_loc2_)
                     {
                        §§push(§§pop() & 4278190080);
                     }
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§?" § = §§pop();
            }
            while(!(_loc3_ || this));
            
         }
      }
   }
}
