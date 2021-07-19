package §'!;§
{
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class §7y§
   {
       
      
      b2internal var §+7§:int;
      
      b2internal var §#C§:int;
      
      b2internal var §9Q§:int;
      
      b2internal var §+3§:int;
      
      b2internal var §6i§:b2ContactID;
      
      public function §7y§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public function get §5!3§() : int
      {
         return this.§+7§;
      }
      
      public function set §5!3§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§+7§ = param1;
            if(_loc2_)
            {
               addr38:
               §§push(this.§6i§);
               §§push(this.§6i§._key & 4294967040);
               if(!_loc3_)
               {
                  §§push(this.§+7§);
                  if(_loc2_)
                  {
                     §§push(§§pop() & 255);
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop()._key = §§pop();
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function get §`J§() : int
      {
         return this.§#C§;
      }
      
      public function set §`J§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§#C§ = param1;
            if(!(_loc2_ && param1))
            {
               §§push(this.§6i§);
               §§push(this.§6i§._key & 4294902015);
               if(!_loc2_)
               {
                  §§push(this.§#C§);
                  if(!_loc2_)
                  {
                     §§push(8);
                     if(_loc3_)
                     {
                        §§goto(addr81);
                     }
                  }
                  §§goto(addr79);
               }
               §§goto(addr81);
            }
         }
         addr81:
         §§push(§§pop() << §§pop());
         if(!(_loc2_ && _loc3_))
         {
            addr79:
            §§push(§§pop() & 65280);
         }
         §§pop()._key = §§pop() | §§pop();
      }
      
      public function get §'!P§() : int
      {
         return this.§9Q§;
      }
      
      public function set §'!P§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§9Q§ = param1;
            if(!_loc2_)
            {
               §§push(this.§6i§);
               §§push(this.§6i§._key & 4278255615);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(this.§9Q§);
                  if(_loc3_)
                  {
                     §§push(16);
                     if(!_loc2_)
                     {
                        §§goto(addr80);
                     }
                     §§push(§§pop() & §§pop());
                  }
                  addr80:
                  §§goto(addr81);
               }
               addr81:
               §§push(§§pop() << §§pop());
               if(!(_loc2_ && this))
               {
                  §§push(16711680);
               }
               §§pop()._key = §§pop() | §§pop();
               return;
            }
         }
         §§goto(addr80);
      }
      
      public function get §=p§() : int
      {
         return this.§+3§;
      }
      
      public function set §=p§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+3§ = param1;
            if(!_loc2_)
            {
               §§push(this.§6i§);
               §§push(this.§6i§._key & 16777215);
               if(!(_loc2_ && this))
               {
                  §§push(this.§+3§);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() << 24);
                     if(!_loc2_)
                     {
                        §§push(§§pop() & 4278190080);
                     }
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop()._key = §§pop();
            }
         }
      }
   }
}
