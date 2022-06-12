package §55§
{
   import §4!!§.b2internal;
   
   use namespace b2internal;
   
   public class §7#§
   {
       
      
      b2internal var §4P§:int;
      
      b2internal var §[!#§:int;
      
      b2internal var §0R§:int;
      
      b2internal var §#=§:int;
      
      b2internal var §4G§:b2ContactID;
      
      public function §7#§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public function get §%i§() : int
      {
         return this.§4P§;
      }
      
      public function set §%i§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§4P§ = param1;
         }
         do
         {
            §§push(this.§4G§);
            §§push(this.§4G§.§'3§ & 4294967040);
            if(!_loc2_)
            {
               §§push(this.§4P§);
               if(_loc3_)
               {
                  §§push(§§pop() & 255);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§'3§ = §§pop();
         }
         while(_loc2_);
         
      }
      
      public function get §,!0§() : int
      {
         return this.§[!#§;
      }
      
      public function set §,!0§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[!#§ = param1;
            do
            {
               §§push(this.§4G§);
               §§push(this.§4G§.§'3§ & 4294902015);
               if(!_loc3_)
               {
                  continue;
               }
               §§push(this.§[!#§);
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
            while(§§pop().§'3§ = §§pop(), _loc2_);
            
         }
      }
      
      public function get §!O§() : int
      {
         return this.§0R§;
      }
      
      public function set §!O§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§0R§ = param1;
         }
         do
         {
            §§push(this.§4G§);
            §§push(this.§4G§.§'3§ & 4278255615);
            if(_loc2_ && this)
            {
               continue;
            }
            §§push(this.§0R§);
            if(!(_loc2_ && this))
            {
               §§push(16);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() << §§pop());
                  if(!(_loc2_ && this))
                  {
                     addr90:
                     §§push(§§pop() & 16711680);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
            }
            §§goto(addr90);
         }
         while(§§pop().§'3§ = §§pop(), !(_loc3_ || param1));
         
      }
      
      public function get §2"-§() : int
      {
         return this.§#=§;
      }
      
      public function set §2"-§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#=§ = param1;
         }
         do
         {
            §§push(this.§4G§);
            §§push(this.§4G§.§'3§ & 16777215);
            if(_loc2_)
            {
               continue;
            }
            §§push(this.§#=§);
            if(_loc3_ || param1)
            {
               §§push(§§pop() << 24);
               if(!_loc2_)
               {
                  addr67:
                  §§push(§§pop() & 4278190080);
               }
               §§push(§§pop() | §§pop());
               continue;
            }
            §§goto(addr67);
         }
         while(§§pop().§'3§ = §§pop(), _loc2_);
         
      }
   }
}
