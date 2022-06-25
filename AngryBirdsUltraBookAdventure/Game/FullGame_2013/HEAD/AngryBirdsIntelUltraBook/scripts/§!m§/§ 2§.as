package §!m§
{
   import §+!g§.b2internal;
   
   use namespace b2internal;
   
   public class § 2§
   {
       
      
      b2internal var §2!>§:int;
      
      b2internal var §2N§:int;
      
      b2internal var §%=§:int;
      
      b2internal var §&!;§:int;
      
      b2internal var §[m§:b2ContactID;
      
      public function § 2§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function get §set §() : int
      {
         return this.§2!>§;
      }
      
      public function set §set §(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2!>§ = param1;
            do
            {
               §§push(this.§[m§);
               §§push(this.§[m§.§1o§ & 4294967040);
               if(!(_loc3_ && this))
               {
                  §§push(this.§2!>§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() & 255);
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§1o§ = §§pop();
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function get §-!A§() : int
      {
         return this.§2N§;
      }
      
      public function set §-!A§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2N§ = param1;
         }
         do
         {
            §§push(this.§[m§);
            §§push(this.§[m§.§1o§ & 4294902015);
            if(_loc2_ && this)
            {
               continue;
            }
            §§push(this.§2N§);
            if(_loc3_)
            {
               §§push(8);
               if(!(_loc2_ && param1))
               {
                  addr76:
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
            §§goto(addr76);
         }
         while(§§pop().§1o§ = §§pop(), _loc2_ && _loc2_);
         
      }
      
      public function get §=!<§() : int
      {
         return this.§%=§;
      }
      
      public function set §=!<§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§%=§ = param1;
            do
            {
               §§push(this.§[m§);
               §§push(this.§[m§.§1o§ & 4278255615);
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§push(this.§%=§);
               if(!_loc2_)
               {
                  §§push(16);
                  if(!(_loc2_ && param1))
                  {
                     addr86:
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
               §§goto(addr86);
            }
            while(§§pop().§1o§ = §§pop(), _loc2_);
            
         }
      }
      
      public function get §[f§() : int
      {
         return this.§&!;§;
      }
      
      public function set §[f§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&!;§ = param1;
         }
         do
         {
            §§push(this.§[m§);
            §§push(this.§[m§.§1o§ & 16777215);
            if(!(_loc2_ && param1))
            {
               §§push(this.§&!;§);
               if(!_loc2_)
               {
                  §§push(§§pop() << 24);
                  if(_loc3_)
                  {
                     §§push(§§pop() & 4278190080);
                  }
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§1o§ = §§pop();
         }
         while(!(_loc3_ || _loc2_));
         
      }
   }
}
