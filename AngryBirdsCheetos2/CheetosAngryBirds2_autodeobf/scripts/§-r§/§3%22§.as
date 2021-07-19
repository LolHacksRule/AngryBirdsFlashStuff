package §-r§
{
   import §"0§.b2internal;
   
   use namespace b2internal;
   
   public class §3"§
   {
       
      
      b2internal var §@!C§:int;
      
      b2internal var §7!#§:int;
      
      b2internal var §10§:int;
      
      b2internal var §&y§:int;
      
      b2internal var §-O§:b2ContactID;
      
      public function §3"§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function get §-c§() : int
      {
         return this.§@!C§;
      }
      
      public function set §-c§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@!C§ = param1;
         }
         do
         {
            §§push(this.§-O§);
            §§push(this.§-O§.§ use§ & 4294967040);
            if(!_loc2_)
            {
               §§push(this.§@!C§);
               if(!(_loc2_ && param1))
               {
                  §§push(§§pop() & 255);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§ use§ = §§pop();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function get §+!S§() : int
      {
         return this.§7!#§;
      }
      
      public function set §+!S§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§7!#§ = param1;
            do
            {
               §§push(this.§-O§);
               §§push(this.§-O§.§ use§ & 4294902015);
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§push(this.§7!#§);
               if(!_loc3_)
               {
                  §§push(8);
                  if(_loc2_)
                  {
                     §§push(§§pop() << §§pop());
                     if(_loc2_ || _loc3_)
                     {
                        addr69:
                        §§push(§§pop() & 65280);
                     }
                     §§push(§§pop() | §§pop());
                     continue;
                  }
               }
               §§goto(addr69);
            }
            while(§§pop().§ use§ = §§pop(), !_loc2_);
            
         }
      }
      
      public function get §+J§() : int
      {
         return this.§10§;
      }
      
      public function set §+J§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§10§ = param1;
            do
            {
               §§push(this.§-O§);
               §§push(this.§-O§.§ use§ & 4278255615);
               if(_loc2_)
               {
                  continue;
               }
               §§push(this.§10§);
               if(!_loc2_)
               {
                  §§push(16);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr76:
                     §§push(§§pop() << §§pop());
                     if(!_loc2_)
                     {
                        §§push(16711680);
                     }
                     §§push(§§pop() | §§pop());
                     continue;
                  }
                  §§push(§§pop() & §§pop());
               }
               §§goto(addr76);
            }
            while(§§pop().§ use§ = §§pop(), _loc2_);
            
         }
      }
      
      public function get §+!@§() : int
      {
         return this.§&y§;
      }
      
      public function set §+!@§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&y§ = param1;
            do
            {
               §§push(this.§-O§);
               §§push(this.§-O§.§ use§ & 16777215);
               if(!_loc2_)
               {
                  §§push(this.§&y§);
                  if(_loc3_)
                  {
                     §§push(§§pop() << 24);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop() & 4278190080);
                     }
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§ use§ = §§pop();
            }
            while(!_loc3_);
            
         }
      }
   }
}
