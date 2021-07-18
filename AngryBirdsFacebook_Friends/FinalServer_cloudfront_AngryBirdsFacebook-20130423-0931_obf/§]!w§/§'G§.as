package §]!w§
{
   import §!"@§.§]"1§;
   import §4y§.Item;
   import flash.display.Sprite;
   
   public class §'G§ extends Sprite
   {
       
      
      public var §6[§:§[!X§;
      
      public function §'G§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function §[!R§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§6[§);
            if(!(_loc2_ && param1))
            {
               if(!§§pop())
               {
               }
               §§goto(addr45);
            }
            §§pop().§^!'§(param1);
         }
         addr45:
         if(_loc3_)
         {
            §§push(this.§6[§);
         }
      }
      
      public function §`!Y§(param1:Array) : §[!X§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         var _loc5_:* = 0;
         var _loc6_:* = param1;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc8_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc8_ || _loc2_)
                  {
                     if(_loc2_.§;"V§.toUpperCase() == "CATEGORYBIRDS")
                     {
                        if(_loc8_)
                        {
                           this.§2!Y§(§]"1§.§&"5§.§!q§(_loc2_.§&N§),110,174);
                        }
                     }
                  }
                  continue;
               }
               if(!_loc7_)
               {
                  if(_loc8_)
                  {
                     if(!_loc7_)
                     {
                        addr157:
                        §§push(0);
                        if(!_loc7_)
                        {
                           _loc5_ = §§pop();
                           if(_loc8_ || param1)
                           {
                              addr84:
                              §§push(param1);
                              if(!(_loc7_ && param1))
                              {
                                 _loc6_ = §§pop();
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    if(_loc8_ || _loc3_)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       addr200:
                                       return this.§6[§;
                                       addr198:
                                       addr199:
                                    }
                                    _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                    if(_loc8_ || _loc2_)
                                    {
                                       this.§6[§.§]"A§(_loc4_);
                                    }
                                    addr196:
                                    while(true)
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr198);
                                 }
                                 addr129:
                                 addr197:
                              }
                              addr176:
                              _loc6_ = §§pop();
                              §§goto(addr196);
                           }
                           addr175:
                           §§goto(addr176);
                           §§push(param1);
                        }
                        _loc5_ = §§pop();
                        if(_loc8_ || param1)
                        {
                           §§goto(addr175);
                        }
                        §§goto(addr199);
                     }
                     §§goto(addr200);
                  }
                  §§goto(addr84);
               }
               §§goto(addr200);
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               if(_loc8_ || _loc3_)
               {
                  if(_loc8_)
                  {
                     if(_loc8_ || _loc2_)
                     {
                        §§goto(addr157);
                        §§push(0);
                     }
                  }
               }
               §§goto(addr200);
            }
            else
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc8_ || this)
               {
                  if(_loc3_.§;"V§.toUpperCase() == "CATEGORYBACKGROUNDS")
                  {
                     if(_loc8_)
                     {
                        this.§[!R§(_loc3_.§&N§);
                     }
                  }
               }
               §§goto(addr129);
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
               if(_loc2_)
               {
                  this.§6[§ = null;
               }
               if(!(_loc1_ && this))
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
      
      public function §1!R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§2!Y§(this.§6[§,110,174);
         }
      }
      
      public function §2!Y§(param1:§[!X§, param2:int = 110, param3:int = 174, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            param1.show(param2,param3);
            do
            {
               if(!param4)
               {
                  if(_loc6_)
                  {
                     while(true)
                     {
                        §]"1§.§&"5§.avatar = param1;
                     }
                     addr97:
                  }
                  while(true)
                  {
                  }
                  addr101:
               }
               while(true)
               {
                  this.§6[§ = param1;
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§goto(addr101);
               }
            }
            while(_loc5_ && param2);
            
            while(true)
            {
               if(numChildren <= 0)
               {
                  if(_loc6_ || param1)
                  {
                     addChild(param1);
                  }
                  if(_loc6_ || param2)
                  {
                     break;
                  }
               }
               else
               {
                  removeChildAt(0);
               }
            }
            return;
         }
         §§goto(addr97);
      }
   }
}
