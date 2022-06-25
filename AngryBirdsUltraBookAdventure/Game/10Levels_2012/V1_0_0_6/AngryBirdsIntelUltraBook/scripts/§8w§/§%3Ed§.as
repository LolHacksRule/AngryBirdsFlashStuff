package §8w§
{
   import §3!m§.b2internal;
   
   use namespace b2internal;
   
   public class §>d§
   {
       
      
      b2internal var §^%§:int;
      
      b2internal var §&t§:int;
      
      b2internal var §52§:int;
      
      b2internal var §%!6§:int;
      
      b2internal var §50§:b2ContactID;
      
      public function §>d§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public function get §-!f§() : int
      {
         return this.§^%§;
      }
      
      public function set §-!f§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§^%§ = param1;
         }
         do
         {
            §§push(this.§50§);
            §§push(this.§50§.§6N§ & 4294967040);
            if(!_loc3_)
            {
               §§push(this.§^%§);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() & 255);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§6N§ = §§pop();
         }
         while(!_loc2_);
         
      }
      
      public function get §,!i§() : int
      {
         return this.§&t§;
      }
      
      public function set §,!i§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§&t§ = param1;
            do
            {
               §§push(this.§50§);
               §§push(this.§50§.§6N§ & 4294902015);
               if(!_loc3_)
               {
                  continue;
               }
               §§push(this.§&t§);
               if(_loc3_ || param1)
               {
                  §§push(8);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() << §§pop());
                     if(!(_loc2_ && param1))
                     {
                        addr85:
                        §§push(§§pop() & 65280);
                     }
                     §§push(§§pop() | §§pop());
                     continue;
                  }
               }
               §§goto(addr85);
            }
            while(§§pop().§6N§ = §§pop(), !(_loc3_ || _loc2_));
            
         }
      }
      
      public function get §&!c§() : int
      {
         return this.§52§;
      }
      
      public function set §&!c§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§52§ = param1;
         }
         do
         {
            §§push(this.§50§);
            §§push(this.§50§.§6N§ & 4278255615);
            if(_loc3_ && this)
            {
               continue;
            }
            §§push(this.§52§);
            if(!_loc3_)
            {
               §§push(16);
               if(!_loc3_)
               {
                  §§push(§§pop() << §§pop());
                  if(_loc2_ || param1)
                  {
                     addr74:
                     §§push(§§pop() & 16711680);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
            }
            §§goto(addr74);
         }
         while(§§pop().§6N§ = §§pop(), !(_loc2_ || _loc2_));
         
      }
      
      public function get §"P§() : int
      {
         return this.§%!6§;
      }
      
      public function set §"P§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%!6§ = param1;
            do
            {
               §§push(this.§50§);
               §§push(this.§50§.§6N§ & 16777215);
               if(!_loc3_)
               {
                  §§push(this.§%!6§);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop() << 24);
                     if(_loc2_ || this)
                     {
                        §§push(§§pop() & 4278190080);
                     }
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§6N§ = §§pop();
            }
            while(!_loc2_);
            
         }
      }
   }
}
