package §>k§
{
   public class §2&§ implements §5$§
   {
       
      
      private var §?!#§:Array;
      
      private var §]9§:Boolean;
      
      public function §2&§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§?!#§ = [];
            if(!(_loc1_ && _loc2_))
            {
               addr29:
               super();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §2%§(param1:§`z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?!#§.push(param1);
            if(_loc3_)
            {
               this.§]9§ = false;
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`z§ = null;
         for each(_loc1_ in this.§?!#§)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc5_)
         {
            this.§?!#§ = [];
         }
      }
      
      public function §^L§(param1:String) : §`-§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§`-§ = null;
         var _loc3_:* = Number(0);
         while(true)
         {
            if(_loc3_ >= this.§?!#§.length)
            {
               return null;
            }
            _loc2_ = (this.§?!#§[_loc3_] as §`z§).§^L§(param1);
            if(_loc5_)
            {
               break;
            }
            if(_loc2_ != null)
            {
               if(_loc4_)
               {
                  break;
               }
            }
            else
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
                  if(_loc4_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function get §'!2§() : int
      {
         return this.§?!#§.length;
      }
      
      public function §"&§(param1:int) : §`z§
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
                     if(_loc3_ || param1)
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           addr56:
                           §§push(param1 >= this.§'!2§);
                           if(!(_loc2_ && _loc3_))
                           {
                              addr74:
                              if(§§pop())
                              {
                                 §§goto(addr75);
                              }
                              else
                              {
                                 §§push(this.§]9§);
                              }
                           }
                           if(!§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§push(this.§?!#§);
                                 if(!_loc2_)
                                 {
                                    §§pop().sortOn("name");
                                    this.§]9§ = true;
                                    addr93:
                                    §§push(this.§?!#§);
                                 }
                                 return §§pop()[param1];
                              }
                           }
                           §§goto(addr93);
                        }
                        addr75:
                        return null;
                     }
                  }
               }
               §§goto(addr74);
            }
         }
         §§goto(addr56);
      }
   }
}
