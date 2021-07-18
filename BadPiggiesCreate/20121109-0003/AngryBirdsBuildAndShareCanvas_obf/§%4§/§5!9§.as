package §%4§
{
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class §5!9§
   {
       
      
      b2internal var §7!e§:int;
      
      b2internal var §?"$§:int;
      
      b2internal var §1!9§:int;
      
      b2internal var §--§:int;
      
      b2internal var §>x§:b2ContactID;
      
      public function §5!9§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public function get §%;§() : int
      {
         return this.§7!e§;
      }
      
      public function set §%;§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7!e§ = param1;
            do
            {
               §§push(this.§>x§);
               §§push(this.§>x§.§9!e§ & 4294967040);
               if(!(_loc3_ && param1))
               {
                  §§push(this.§7!e§);
                  if(_loc2_)
                  {
                     §§push(§§pop() & 255);
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§9!e§ = §§pop();
            }
            while(_loc3_);
            
         }
      }
      
      public function get §0!I§() : int
      {
         return this.§?"$§;
      }
      
      public function set §0!I§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?"$§ = param1;
            do
            {
               §§push(this.§>x§);
               §§push(this.§>x§.§9!e§ & 4294902015);
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§push(this.§?"$§);
               if(!_loc3_)
               {
                  §§push(8);
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() << §§pop());
                     if(!_loc3_)
                     {
                        addr64:
                        §§push(§§pop() & 65280);
                     }
                     §§push(§§pop() | §§pop());
                     continue;
                  }
               }
               §§goto(addr64);
            }
            while(§§pop().§9!e§ = §§pop(), !_loc2_);
            
         }
      }
      
      public function get §;!2§() : int
      {
         return this.§1!9§;
      }
      
      public function set §;!2§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1!9§ = param1;
            do
            {
               §§push(this.§>x§);
               §§push(this.§>x§.§9!e§ & 4278255615);
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§push(this.§1!9§);
               if(_loc2_ || param1)
               {
                  §§push(16);
                  if(_loc2_)
                  {
                     addr75:
                     §§push(§§pop() << §§pop());
                     if(_loc2_)
                     {
                        §§push(16711680);
                     }
                     §§push(§§pop() | §§pop());
                     continue;
                  }
                  §§push(§§pop() & §§pop());
               }
               §§goto(addr75);
            }
            while(§§pop().§9!e§ = §§pop(), _loc3_);
            
         }
      }
      
      public function get §0F§() : int
      {
         return this.§--§;
      }
      
      public function set §0F§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§--§ = param1;
         }
         do
         {
            §§push(this.§>x§);
            §§push(this.§>x§.§9!e§ & 16777215);
            if(!_loc3_)
            {
               §§push(this.§--§);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() << 24);
                  if(!_loc3_)
                  {
                     §§push(§§pop() & 4278190080);
                  }
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§9!e§ = §§pop();
         }
         while(!(_loc2_ || _loc2_));
         
      }
   }
}
