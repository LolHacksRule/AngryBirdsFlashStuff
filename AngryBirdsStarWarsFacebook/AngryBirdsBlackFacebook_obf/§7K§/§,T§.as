package §7K§
{
   public class §,T§
   {
       
      
      public var itemID:String;
      
      public var quantity:int;
      
      public var price:int;
      
      public var normalPrice:int;
      
      public var singlePrice:int;
      
      public var §%D§:Boolean;
      
      public var text:String;
      
      public function §,T§(param1:String, param2:int, param3:int, param4:String = "", param5:Boolean = false, param6:int = -1, param7:int = -1)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || this)
         {
            super();
            while(true)
            {
               this.itemID = param1;
               while(_loc8_ || param2)
               {
                  this.quantity = param2;
                  while(true)
                  {
                     this.price = param3;
                     loop3:
                     for(; !(_loc9_ && param3); if(_loc8_ || param2)
                     {
                        return;
                     })
                     {
                        this.text = param4;
                        loop4:
                        while(true)
                        {
                           this.§%D§ = param5;
                           do
                           {
                              this.normalPrice = param6;
                              continue loop4;
                           }
                           while(!_loc8_);
                           
                           continue loop3;
                        }
                     }
                  }
                  if(_loc9_ && param2)
                  {
                     continue;
                  }
                  §§goto(addr77);
               }
            }
         }
         §§goto(addr104);
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[Prices itemID[" + this.itemID);
         if(_loc2_ || this)
         {
            §§push(§§pop() + "], quantity:");
            if(_loc2_)
            {
               §§push(this.quantity);
               if(_loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() + ", price:");
                     if(_loc2_)
                     {
                        §§push(this.price);
                        if(_loc2_)
                        {
                           addr62:
                           §§push(§§pop() + §§pop());
                           if(!_loc1_)
                           {
                              addr65:
                              §§push(§§pop() + ", normalPrice:");
                              if(_loc2_)
                              {
                                 addr69:
                                 §§push(this.normalPrice);
                                 if(!_loc1_)
                                 {
                                    §§goto(addr73);
                                 }
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr69);
                        }
                        addr73:
                        §§push(§§pop() + §§pop());
                        if(_loc2_)
                        {
                           §§push(§§pop() + ", singlePrice:");
                           if(_loc2_ || _loc2_)
                           {
                              addr87:
                              §§push(§§pop() + this.singlePrice);
                              if(!_loc1_)
                              {
                                 addr90:
                                 §§push(§§pop() + ", sale:");
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() + this.§%D§);
                                    if(_loc1_ && this)
                                    {
                                    }
                                    §§goto(addr116);
                                 }
                                 §§push(§§pop() + "]");
                              }
                           }
                        }
                        addr116:
                        return §§pop();
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr90);
               }
               §§goto(addr62);
            }
         }
         §§goto(addr90);
      }
   }
}
