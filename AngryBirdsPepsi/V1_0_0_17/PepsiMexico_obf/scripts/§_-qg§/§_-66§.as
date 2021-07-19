package §_-qg§
{
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class §_-66§
   {
       
      
      b2internal var §_-aR§:int;
      
      b2internal var §_-ZM§:int;
      
      b2internal var §_-sl§:int;
      
      b2internal var §_-hF§:int;
      
      b2internal var §_-nN§:b2ContactID;
      
      public function §_-66§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function get §_-cf§() : int
      {
         return this.§_-aR§;
      }
      
      public function set §_-cf§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-aR§ = param1;
            if(!(_loc2_ && this))
            {
               §§push(this.§_-nN§);
               §§push(this.§_-nN§.§_-Bj§ & 4294967040);
               if(_loc3_)
               {
                  §§push(this.§_-aR§);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() & 255);
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§_-Bj§ = §§pop();
            }
         }
      }
      
      public function get §_-qC§() : int
      {
         return this.§_-ZM§;
      }
      
      public function set §_-qC§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-ZM§ = param1;
            if(_loc2_ || param1)
            {
               §§goto(addr30);
            }
            §§goto(addr75);
         }
         addr30:
         §§push(this.§_-nN§);
         §§push(this.§_-nN§.§_-Bj§ & 4294902015);
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§_-ZM§);
            if(_loc2_)
            {
               §§push(8);
               if(!_loc3_)
               {
                  §§goto(addr75);
               }
               §§push(§§pop() & §§pop());
            }
            addr75:
            §§goto(addr76);
         }
         addr76:
         §§push(§§pop() << §§pop());
         if(_loc2_ || _loc2_)
         {
            §§push(65280);
         }
         §§pop().§_-Bj§ = §§pop() | §§pop();
      }
      
      public function get §_-qs§() : int
      {
         return this.§_-sl§;
      }
      
      public function set §_-qs§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§_-sl§ = param1;
            if(_loc3_ || param1)
            {
               addr38:
               §§push(this.§_-nN§);
               §§push(this.§_-nN§.§_-Bj§ & 4278255615);
               if(!_loc2_)
               {
                  §§push(this.§_-sl§);
                  if(_loc3_)
                  {
                     §§push(16);
                     if(!_loc2_)
                     {
                        §§goto(addr67);
                     }
                  }
                  §§goto(addr65);
               }
               §§goto(addr67);
            }
            addr67:
            §§push(§§pop() << §§pop());
            if(!_loc2_)
            {
               addr65:
               §§push(§§pop() & 16711680);
            }
            §§pop().§_-Bj§ = §§pop() | §§pop();
            return;
         }
         §§goto(addr38);
      }
      
      public function get §_-oN§() : int
      {
         return this.§_-hF§;
      }
      
      public function set §_-oN§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§_-hF§ = param1;
            if(!_loc3_)
            {
               §§push(this.§_-nN§);
               §§push(this.§_-nN§.§_-Bj§ & 16777215);
               if(_loc2_ || _loc3_)
               {
                  §§push(this.§_-hF§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() << 24);
                     if(!_loc3_)
                     {
                        §§push(§§pop() & 4278190080);
                     }
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§_-Bj§ = §§pop();
            }
         }
      }
   }
}
