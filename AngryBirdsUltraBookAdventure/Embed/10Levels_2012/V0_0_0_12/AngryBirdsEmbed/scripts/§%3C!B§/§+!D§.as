package §<!B§
{
   public class §+!D§ implements §<O§
   {
       
      
      private var §&!9§:Array;
      
      private var §-!9§:Boolean;
      
      public function §+!D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§&!9§ = [];
            if(!_loc2_)
            {
               addr28:
               super();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §]Y§(param1:§]!=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&!9§.push(param1);
            if(!_loc2_)
            {
               addr25:
               this.§-!9§ = false;
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§]!=§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§&!9§)
         {
            if(!(_loc5_ && this))
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_ || _loc2_)
         {
            this.§&!9§ = [];
         }
      }
      
      public function §%@§(param1:String) : §#z§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§#z§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < this.§&!9§.length)
         {
            _loc2_ = (this.§&!9§[_loc3_] as §]!=§).§%@§(param1);
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
      
      public function get §8h§() : int
      {
         return this.§&!9§.length;
      }
      
      public function §!4§(param1:int) : §]!=§
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
                           §§push(param1 >= this.§8h§);
                           if(_loc3_ || _loc3_)
                           {
                           }
                           addr79:
                           if(!§§pop())
                           {
                              §§push(this.§&!9§);
                              if(_loc3_)
                              {
                                 §§pop().sortOn("name");
                                 this.§-!9§ = true;
                                 addr89:
                                 §§push(this.§&!9§);
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
                     §§push(this.§-!9§);
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
