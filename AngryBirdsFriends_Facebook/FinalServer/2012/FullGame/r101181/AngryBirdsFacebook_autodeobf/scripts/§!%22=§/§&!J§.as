package §!"=§
{
   import §!K§.Item;
   import §#!H§.§=!F§;
   import flash.display.Sprite;
   
   public class §&!J§ extends Sprite
   {
       
      
      public var §<!l§:§8S§;
      
      public function §&!J§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function §37§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§<!l§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr43:
                     this.§<!l§.§6!9§(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §>7§(param1:Array) : §8S§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         var _loc5_:* = 0;
         var _loc6_:* = param1;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(!_loc8_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc7_)
                  {
                     if(_loc2_.§[C§.toUpperCase() != "CATEGORYBIRDS")
                     {
                        continue;
                     }
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
                  this.§%!A§(§=!F§.§;"§.§,"9§(_loc2_.§;!Y§),110,174);
                  continue;
               }
               if(!_loc8_)
               {
                  addr142:
                  if(!(_loc8_ && param1))
                  {
                     if(!(_loc8_ && _loc3_))
                     {
                        §§push(0);
                        if(!(_loc8_ && this))
                        {
                           _loc5_ = §§pop();
                           if(!(_loc8_ && this))
                           {
                              §§push(param1);
                              if(!_loc8_)
                              {
                                 _loc6_ = §§pop();
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    if(_loc7_)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 loop2:
                                 while(§§pop())
                                 {
                                    _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                    if(_loc7_ || param1)
                                    {
                                       this.§<!l§.§0!L§(_loc4_);
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 addr189:
                                 return this.§<!l§;
                                 addr188:
                                 addr187:
                                 addr128:
                                 addr186:
                              }
                              addr165:
                              _loc6_ = §§pop();
                              §§goto(addr185);
                           }
                           §§goto(addr188);
                        }
                        addr151:
                        _loc5_ = §§pop();
                        if(_loc7_)
                        {
                           §§goto(addr165);
                           §§push(param1);
                        }
                        §§goto(addr188);
                     }
                     addr150:
                     §§goto(addr151);
                     §§push(0);
                  }
                  if(_loc7_ || _loc3_)
                  {
                     §§goto(addr150);
                  }
                  §§goto(addr189);
               }
               §§goto(addr187);
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               if(_loc7_)
               {
                  if(!(_loc8_ && param1))
                  {
                     §§goto(addr142);
                  }
               }
               §§goto(addr189);
            }
            else
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(!_loc8_)
               {
                  if(_loc3_.§[C§.toUpperCase() == "CATEGORYBACKGROUNDS")
                  {
                     if(_loc7_)
                     {
                        this.§37§(_loc3_.§;!Y§);
                     }
                  }
               }
               §§goto(addr128);
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            if(numChildren <= 0)
            {
               if(!(_loc2_ || _loc1_))
               {
                  break;
               }
               if(!_loc1_)
               {
                  this.§<!l§ = null;
                  break;
               }
            }
            else
            {
               removeChildAt(0);
            }
         }
      }
      
      public function §1%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§%!A§(this.§<!l§,110,174);
         }
      }
      
      public function §%!A§(param1:§8S§, param2:int = 110, param3:int = 174, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            param1.show(param2,param3);
            loop0:
            do
            {
               if(!param4)
               {
                  if(_loc6_)
                  {
                     §=!F§.§;"§.avatar = param1;
                  }
                  loop1:
                  while(true)
                  {
                     addr73:
                     while(true)
                     {
                        this.§<!l§ = param1;
                        if(!(_loc5_ && param3))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr73);
            }
            while(_loc5_);
            
         }
         while(true)
         {
            if(numChildren <= 0)
            {
               if(!(_loc5_ && param3))
               {
                  addChild(param1);
               }
               if(!_loc5_)
               {
                  break;
               }
            }
            else
            {
               removeChildAt(0);
            }
         }
      }
   }
}
