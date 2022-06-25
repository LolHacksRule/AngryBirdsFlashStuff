package §>!Z§
{
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class §[k§
   {
       
      
      b2internal var §7m§:int;
      
      b2internal var §`!J§:int;
      
      b2internal var §4!+§:int;
      
      b2internal var §!!P§:int;
      
      b2internal var §<!O§:b2ContactID;
      
      public function §[k§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function get §<!y§() : int
      {
         return this.§7m§;
      }
      
      public function set §<!y§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§7m§ = param1;
         }
         do
         {
            §§push(this.§<!O§);
            §§push(this.§<!O§.§7!U§ & 4294967040);
            if(_loc2_)
            {
               §§push(this.§7m§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() & 255);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§7!U§ = §§pop();
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function get §?! §() : int
      {
         return this.§`!J§;
      }
      
      public function set §?! §(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`!J§ = param1;
            do
            {
               §§push(this.§<!O§);
               §§push(this.§<!O§.§7!U§ & 4294902015);
               if(_loc2_)
               {
                  continue;
               }
               §§push(this.§`!J§);
               if(_loc3_ || _loc2_)
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
            while(§§pop().§7!U§ = §§pop(), _loc2_ && param1);
            
         }
      }
      
      public function get §'!c§() : int
      {
         return this.§4!+§;
      }
      
      public function set §'!c§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§4!+§ = param1;
            do
            {
               §§push(this.§<!O§);
               §§push(this.§<!O§.§7!U§ & 4278255615);
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§push(this.§4!+§);
               if(_loc3_)
               {
                  §§push(16);
                  if(_loc3_ || this)
                  {
                     addr86:
                     §§push(§§pop() << §§pop());
                     if(_loc3_ || _loc3_)
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
            while(§§pop().§7!U§ = §§pop(), !_loc3_);
            
         }
      }
      
      public function get §?!`§() : int
      {
         return this.§!!P§;
      }
      
      public function set §?!`§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§!!P§ = param1;
         }
         do
         {
            §§push(this.§<!O§);
            §§push(this.§<!O§.§7!U§ & 16777215);
            if(!(_loc3_ && this))
            {
               §§push(this.§!!P§);
               if(!_loc3_)
               {
                  §§push(§§pop() << 24);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() & 4278190080);
                  }
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§7!U§ = §§pop();
         }
         while(!(_loc2_ || param1));
         
      }
   }
}
