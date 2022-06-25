package §0!5§
{
   public class §!o§ implements include
   {
       
      
      private var §3m§:Array;
      
      private var §"!@§:Boolean;
      
      public function §!o§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§3m§ = [];
            if(!_loc2_)
            {
               addr28:
               super();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §^!0§(param1:§#!8§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3m§.push(param1);
            if(!_loc2_)
            {
               addr25:
               this.§"!@§ = false;
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#!8§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§3m§)
         {
            if(!(_loc5_ && this))
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_ || _loc2_)
         {
            this.§3m§ = [];
         }
      }
      
      public function §else §(param1:String) : §5!D§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§5!D§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < this.§3m§.length)
         {
            _loc2_ = (this.§3m§[_loc3_] as §#!8§).§else §(param1);
            if(_loc5_ || _loc3_)
            {
               if(_loc2_ != null)
               {
                  if(!_loc4_)
                  {
                     return _loc2_;
                  }
               }
               §§push(_loc3_);
               if(!_loc4_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
            }
         }
         return null;
      }
      
      public function get §5<§() : int
      {
         return this.§3m§.length;
      }
      
      public function §@!"§(param1:int) : §#!8§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!(_loc2_ && this))
            {
               §§push(0);
               if(_loc3_)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_ || this)
                        {
                           §§pop();
                           addr66:
                           addr64:
                           §§push(param1 >= this.§5<§);
                           if(_loc3_ || _loc3_)
                           {
                           }
                           addr79:
                           if(!§§pop())
                           {
                              §§push(this.§3m§);
                              if(_loc3_)
                              {
                                 §§pop().sortOn("name");
                                 this.§"!@§ = true;
                                 addr89:
                                 §§push(this.§3m§);
                              }
                              return §§pop()[param1];
                           }
                           §§goto(addr89);
                        }
                     }
                     if(§§pop())
                     {
                        return null;
                     }
                     addr77:
                     §§push(this.§"!@§);
                  }
                  §§goto(addr79);
               }
               §§goto(addr66);
            }
            §§goto(addr64);
         }
         §§goto(addr77);
      }
   }
}
