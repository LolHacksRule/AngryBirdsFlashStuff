package §3"5§
{
   import §5"i§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §="i§:§#!S§;
      
      b2internal var §8"p§:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§="i§ = new §#!S§();
            while(true)
            {
               super();
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     this.§="i§.§,U§ = this;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function Set(param1:b2ContactID) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.key = param1.§8"p§;
         }
      }
      
      public function Copy() : b2ContactID
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2ContactID = new b2ContactID();
         if(_loc3_ || this)
         {
            _loc1_.key = this.key;
         }
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§8"p§;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§8"p§ = param1;
         }
         loop0:
         while(true)
         {
            §§push(this.§="i§);
            loop1:
            while(true)
            {
               §§push(this.§8"p§);
               addr172:
               while(true)
               {
                  §§push(255);
                  addr183:
                  while(true)
                  {
                     §§push(§§pop() & §§pop());
                     addr184:
                     while(true)
                     {
                        §§pop().§?"0§ = §§pop();
                        addr185:
                        while(_loc2_)
                        {
                           §§push(this.§="i§);
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
   }
}
