package §<=§
{
   public class §3w§ implements §9x§
   {
       
      
      private var §'!<§:Array;
      
      private var §`<§:Boolean;
      
      public function §3w§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§'!<§ = [];
            if(!_loc1_)
            {
               super();
            }
         }
      }
      
      public function §;e§(param1:§66§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'!<§.push(param1);
            if(_loc3_ || _loc3_)
            {
               addr30:
               this.§`<§ = false;
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§66§ = null;
         for each(_loc1_ in this.§'!<§)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_)
         {
            this.§'!<§ = [];
         }
      }
      
      public function §>7§(param1:String) : §#8§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§#8§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < this.§'!<§.length)
         {
            _loc2_ = (this.§'!<§[_loc3_] as §66§).§>7§(param1);
            if(!(_loc5_ || _loc3_))
            {
               continue;
            }
            if(_loc2_ != null)
            {
               if(!(_loc4_ && param1))
               {
                  return _loc2_;
               }
               continue;
            }
            §§push(_loc3_);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() + 1);
               if(!_loc4_)
               {
                  addr87:
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr87);
         }
         return null;
      }
      
      public function get §[F§() : int
      {
         return this.§'!<§.length;
      }
      
      public function §"!=§(param1:int) : §66§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || param1)
         {
            §§push(0);
            if(_loc3_)
            {
               §§push(§§pop() < §§pop());
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§pop();
                        addr64:
                        §§push(param1 >= this.§[F§);
                        if(_loc3_)
                        {
                           addr67:
                           if(§§pop())
                           {
                              return null;
                           }
                           §§push(this.§`<§);
                        }
                        if(!§§pop())
                        {
                           §§push(this.§'!<§);
                           if(!_loc2_)
                           {
                              §§pop().sortOn("name");
                              this.§`<§ = true;
                              addr84:
                              §§push(this.§'!<§);
                           }
                           return §§pop()[param1];
                        }
                        §§goto(addr84);
                     }
                  }
               }
               §§goto(addr67);
            }
         }
         §§goto(addr64);
      }
   }
}
