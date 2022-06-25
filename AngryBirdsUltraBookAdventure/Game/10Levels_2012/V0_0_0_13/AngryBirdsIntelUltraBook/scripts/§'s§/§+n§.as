package §'s§
{
   import §+!,§.b2internal;
   
   use namespace b2internal;
   
   public class §+n§
   {
       
      
      b2internal var § P§:int;
      
      b2internal var §switch§:int;
      
      b2internal var §?!3§:int;
      
      b2internal var §]<§:int;
      
      b2internal var §@!e§:b2ContactID;
      
      public function §+n§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function get §^!F§() : int
      {
         return this.§ P§;
      }
      
      public function set §^!F§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ P§ = param1;
         }
         do
         {
            §§push(this.§@!e§);
            §§push(this.§@!e§.§ k§ & 4294967040);
            if(!(_loc2_ && param1))
            {
               §§push(this.§ P§);
               if(_loc3_ || this)
               {
                  §§push(§§pop() & 255);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§ k§ = §§pop();
         }
         while(_loc2_ && param1);
         
      }
      
      public function get §[J§() : int
      {
         return this.§switch§;
      }
      
      public function set §[J§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§switch§ = param1;
         }
         do
         {
            §§push(this.§@!e§);
            §§push(this.§@!e§.§ k§ & 4294902015);
            if(_loc3_ && _loc3_)
            {
               continue;
            }
            §§push(this.§switch§);
            if(_loc2_)
            {
               §§push(8);
               if(!_loc3_)
               {
                  addr70:
                  §§push(§§pop() << §§pop());
                  if(_loc2_)
                  {
                     §§push(65280);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
               §§push(§§pop() & §§pop());
            }
            §§goto(addr70);
         }
         while(§§pop().§ k§ = §§pop(), !_loc2_);
         
      }
      
      public function get §[O§() : int
      {
         return this.§?!3§;
      }
      
      public function set §[O§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!3§ = param1;
            do
            {
               §§push(this.§@!e§);
               §§push(this.§@!e§.§ k§ & 4278255615);
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§push(this.§?!3§);
               if(!(_loc2_ && this))
               {
                  §§push(16);
                  if(_loc3_)
                  {
                     addr81:
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
               §§goto(addr81);
            }
            while(§§pop().§ k§ = §§pop(), _loc2_ && this);
            
         }
      }
      
      public function get §8_§() : int
      {
         return this.§]<§;
      }
      
      public function set §8_§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§]<§ = param1;
            do
            {
               §§push(this.§@!e§);
               §§push(this.§@!e§.§ k§ & 16777215);
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§push(this.§]<§);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() << 24);
                  if(_loc2_ || param1)
                  {
                     addr81:
                     §§push(§§pop() & 4278190080);
                  }
                  §§push(§§pop() | §§pop());
                  continue;
               }
               §§goto(addr81);
            }
            while(§§pop().§ k§ = §§pop(), !(_loc2_ || _loc3_));
            
         }
      }
   }
}
