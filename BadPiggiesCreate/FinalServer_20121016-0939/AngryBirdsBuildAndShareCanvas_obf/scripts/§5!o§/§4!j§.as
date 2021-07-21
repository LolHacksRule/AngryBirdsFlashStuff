package §5!o§
{
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class §4!j§
   {
       
      
      b2internal var §>#§:int;
      
      b2internal var § ",§:int;
      
      b2internal var §8!i§:int;
      
      b2internal var §<N§:int;
      
      b2internal var §=!e§:b2ContactID;
      
      public function §4!j§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function get §5"'§() : int
      {
         return this.§>#§;
      }
      
      public function set §5"'§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§>#§ = param1;
         }
         do
         {
            §§push(this.§=!e§);
            §§push(this.§=!e§.§,!K§ & 4294967040);
            if(!(_loc3_ && _loc2_))
            {
               §§push(this.§>#§);
               if(_loc2_)
               {
                  §§push(§§pop() & 255);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§,!K§ = §§pop();
         }
         while(_loc3_ && param1);
         
      }
      
      public function get §#"3§() : int
      {
         return this.§ ",§;
      }
      
      public function set §#"3§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ ",§ = param1;
            do
            {
               §§push(this.§=!e§);
               §§push(this.§=!e§.§,!K§ & 4294902015);
               if(!_loc3_)
               {
                  continue;
               }
               §§push(this.§ ",§);
               if(_loc3_)
               {
                  §§push(8);
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() << §§pop());
                     if(_loc3_)
                     {
                        addr60:
                        §§push(§§pop() & 65280);
                     }
                     §§push(§§pop() | §§pop());
                     continue;
                  }
               }
               §§goto(addr60);
            }
            while(§§pop().§,!K§ = §§pop(), !(_loc3_ || this));
            
         }
      }
      
      public function get §1!i§() : int
      {
         return this.§8!i§;
      }
      
      public function set §1!i§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!i§ = param1;
         }
         do
         {
            §§push(this.§=!e§);
            §§push(this.§=!e§.§,!K§ & 4278255615);
            if(_loc2_ && this)
            {
               continue;
            }
            §§push(this.§8!i§);
            if(_loc3_ || param1)
            {
               §§push(16);
               if(_loc3_)
               {
                  §§push(§§pop() << §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     addr70:
                     §§push(§§pop() & 16711680);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
            }
            §§goto(addr70);
         }
         while(§§pop().§,!K§ = §§pop(), _loc2_);
         
      }
      
      public function get §'!+§() : int
      {
         return this.§<N§;
      }
      
      public function set §'!+§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§<N§ = param1;
            do
            {
               §§push(this.§=!e§);
               §§push(this.§=!e§.§,!K§ & 16777215);
               if(!(_loc2_ && this))
               {
                  §§push(this.§<N§);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() << 24);
                     if(!_loc2_)
                     {
                        §§push(§§pop() & 4278190080);
                     }
                  }
                  §§push(§§pop() | §§pop());
               }
               §§pop().§,!K§ = §§pop();
            }
            while(!(_loc3_ || this));
            
         }
      }
   }
}
