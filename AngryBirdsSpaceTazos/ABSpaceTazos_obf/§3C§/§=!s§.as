package §3c§
{
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class §=!s§
   {
       
      
      b2internal var §?"#§:int;
      
      b2internal var §%!G§:int;
      
      b2internal var §&J§:int;
      
      b2internal var §""H§:int;
      
      b2internal var §&!?§:b2ContactID;
      
      public function §=!s§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public function get §+"0§() : int
      {
         return this.§?"#§;
      }
      
      public function set §+"0§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?"#§ = param1;
            do
            {
               §§push(this.§&!?§);
               §§push(this.§&!?§.§=^§ & 4294967040);
               if(_loc3_)
               {
                  §§push(this.§?"#§);
                  if(_loc3_)
                  {
                     §§push(§§pop() & 255);
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§=^§ = §§pop();
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function get §25§() : int
      {
         return this.§%!G§;
      }
      
      public function set §25§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%!G§ = param1;
            do
            {
               §§push(this.§&!?§);
               §§push(this.§&!?§.§=^§ & 4294902015);
               if(!_loc2_)
               {
                  continue;
               }
               §§push(this.§%!G§);
               if(_loc2_ || this)
               {
                  §§push(8);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop() << §§pop());
                     if(_loc2_ || this)
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
            while(§§pop().§=^§ = §§pop(), !_loc2_);
            
         }
      }
      
      public function get §#"!§() : int
      {
         return this.§&J§;
      }
      
      public function set §#"!§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&J§ = param1;
         }
         do
         {
            §§push(this.§&!?§);
            §§push(this.§&!?§.§=^§ & 4278255615);
            if(!(_loc3_ || param1))
            {
               continue;
            }
            §§push(this.§&J§);
            if(_loc3_)
            {
               §§push(16);
               if(_loc3_ || _loc2_)
               {
                  addr66:
                  §§push(§§pop() << §§pop());
                  if(_loc3_)
                  {
                     §§push(16711680);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
               §§push(§§pop() & §§pop());
            }
            §§goto(addr66);
         }
         while(§§pop().§=^§ = §§pop(), !(_loc3_ || _loc3_));
         
      }
      
      public function get §9!2§() : int
      {
         return this.§""H§;
      }
      
      public function set §9!2§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§""H§ = param1;
         }
         do
         {
            §§push(this.§&!?§);
            §§push(this.§&!?§.§=^§ & 16777215);
            if(_loc2_)
            {
               continue;
            }
            §§push(this.§""H§);
            if(_loc3_)
            {
               §§push(§§pop() << 24);
               if(_loc3_)
               {
                  addr57:
                  §§push(§§pop() & 4278190080);
               }
               §§push(§§pop() | §§pop());
               continue;
            }
            §§goto(addr57);
         }
         while(§§pop().§=^§ = §§pop(), !_loc3_);
         
      }
   }
}
