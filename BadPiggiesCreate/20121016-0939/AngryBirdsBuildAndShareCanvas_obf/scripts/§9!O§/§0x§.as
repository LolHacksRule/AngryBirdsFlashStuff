package §9!O§
{
   import §%_§.§4m§;
   import §8" §.§6<§;
   
   public class §0x§
   {
      
      public static const §1!O§:String = "BOLTS";
      
      public static const § !N§:String = "BLOCKS";
      
      public static const §5!C§:String = "COINS";
      
      public static const §!!n§:String = "CONSUMABLE";
      
      public static const UNLOCK:String = "UNLOCK";
      
      public static const INCREASE_ITEM_COUNT:String = "INCREASE_ITEM_COUNT";
      
      private static var §1%§:§0x§;
      
      private static var §extends§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §1!O§ = "BOLTS";
            do
            {
               § !N§ = "BLOCKS";
               loop1:
               do
               {
                  §5!C§ = "COINS";
                  loop2:
                  while(true)
                  {
                     §!!n§ = "CONSUMABLE";
                     do
                     {
                        UNLOCK = "UNLOCK";
                        do
                        {
                           INCREASE_ITEM_COUNT = "INCREASE_ITEM_COUNT";
                           continue loop2;
                        }
                        while(!(_loc1_ || _loc2_));
                        
                     }
                     while(_loc2_);
                     
                     continue loop1;
                  }
               }
               while(!_loc1_);
               
            }
            while(!_loc1_);
            
         }
      }
      
      public function §0x§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function get §2=§() : §0x§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§1%§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr54:
                     §1%§ = new §0x§();
                  }
               }
               return §1%§;
            }
         }
         §§goto(addr54);
      }
      
      public function init(param1:String = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr76:
               while(true)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(§§pop())
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              §extends§ = §6<§;
                           }
                           addr58:
                        }
                        while(true)
                        {
                           if(_loc3_)
                           {
                              break loop4;
                           }
                           continue loop0;
                        }
                     }
                     return;
                     addr54:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §"""§(param1:String, param2:int = 0, param3:String = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param1;
         if(_loc6_ || param2)
         {
            §§push(§1!O§);
            if(!(_loc5_ && this))
            {
               §§push(_loc4_);
               if(!(_loc5_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || this)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                           addr209:
                        }
                     }
                     else
                     {
                        addr280:
                        §§push(4);
                        if(_loc6_ || this)
                        {
                           addr288:
                        }
                     }
                  }
                  else
                  {
                     §§push(§ !N§);
                     if(_loc6_ || this)
                     {
                        §§push(_loc4_);
                        if(_loc6_ || param2)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_)
                              {
                                 addr201:
                                 §§push(1);
                                 if(_loc6_ || param2)
                                 {
                                    §§goto(addr209);
                                 }
                                 §§goto(addr310);
                              }
                              else
                              {
                                 addr229:
                                 §§push(2);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§goto(addr310);
                                 }
                                 else
                                 {
                                    §§goto(addr288);
                                 }
                              }
                              §§goto(addr310);
                           }
                           else
                           {
                              §§push(§5!C§);
                              if(!_loc5_)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc5_ && this))
                                 {
                                    addr221:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc5_ && param3))
                                       {
                                          §§goto(addr229);
                                       }
                                       §§goto(addr310);
                                    }
                                    else
                                    {
                                       §§push(§!!n§);
                                       if(!(_loc5_ && param3))
                                       {
                                          addr246:
                                          §§push(_loc4_);
                                          if(_loc6_ || param3)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(3);
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr310);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr288);
                                                   }
                                                }
                                                §§goto(addr310);
                                             }
                                             else
                                             {
                                                §§push(INCREASE_ITEM_COUNT);
                                                if(!_loc5_)
                                                {
                                                   addr264:
                                                   §§push(_loc4_);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§goto(addr280);
                                                         }
                                                         else
                                                         {
                                                            addr292:
                                                            §§push(5);
                                                            if(_loc5_)
                                                            {
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(UNLOCK);
                                                      }
                                                      §§goto(addr292);
                                                   }
                                                   addr291:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§goto(addr292);
                                                   }
                                                   else
                                                   {
                                                      addr310:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            §extends§["doJsCall"]("bolts",param2);
                                                            if(_loc6_ || this)
                                                            {
                                                               break;
                                                            }
                                                            addr93:
                                                            break;
                                                         case 1:
                                                            §extends§["doJsCall"]("blocks",param2);
                                                            if(!(_loc5_ && this))
                                                            {
                                                               break;
                                                            }
                                                            addr77:
                                                            break;
                                                         case 2:
                                                            §extends§["doJsCall"]("coins",param2);
                                                            if(!(_loc5_ && param3))
                                                            {
                                                               §§goto(addr77);
                                                            }
                                                            break;
                                                         case 3:
                                                            §extends§["doJsCall"]("consumables",param3,param2);
                                                            if(!_loc6_)
                                                            {
                                                               addr119:
                                                               break;
                                                            }
                                                            §§goto(addr93);
                                                            break;
                                                         case 4:
                                                            §extends§["doJsCall"]("increaseItemCount",param2);
                                                            break;
                                                         case 5:
                                                            §extends§["doJsCall"]("unlock",param2);
                                                            §§goto(addr119);
                                                         default:
                                                            throw new Error(param1 + " is not for sale!");
                                                      }
                                                      return;
                                                      §§push(6);
                                                   }
                                                   §§goto(addr310);
                                                }
                                                §§goto(addr291);
                                                §§push(_loc4_);
                                             }
                                          }
                                          §§goto(addr291);
                                       }
                                       §§goto(addr264);
                                    }
                                 }
                              }
                              §§goto(addr264);
                           }
                        }
                        §§goto(addr264);
                     }
                     §§goto(addr246);
                  }
                  §§goto(addr310);
               }
               §§goto(addr221);
            }
            §§goto(addr246);
         }
         §§goto(addr201);
      }
   }
}
