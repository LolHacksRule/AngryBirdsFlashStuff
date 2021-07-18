package § G§
{
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §?s§:§4!-§;
      
      b2internal var §32§:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§?s§ = new §4!-§();
            while(true)
            {
               super();
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     this.§?s§.§1!?§ = this;
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.key = param1.§32§;
         }
      }
      
      public function Copy() : b2ContactID
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2ContactID = new b2ContactID();
         if(!_loc3_)
         {
            _loc1_.key = this.key;
         }
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§32§;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§32§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§?s§);
               addr181:
               while(true)
               {
                  §§push(this.§32§);
                  addr183:
                  while(true)
                  {
                     §§push(255);
                     addr184:
                     while(true)
                     {
                        §§push(§§pop() & §§pop());
                        addr185:
                        while(true)
                        {
                           §§pop().§7!D§ = §§pop();
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr177);
      }
   }
}
