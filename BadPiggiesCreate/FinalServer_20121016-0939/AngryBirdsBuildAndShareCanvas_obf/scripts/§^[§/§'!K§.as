package §^[§
{
   import § "@§.StateLevelEditor;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§="#§;
   import §'p§.§`!T§;
   import §'p§.§`!w§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §'!K§ extends §'s§
   {
       
      
      private const §6P§:Number = 1.5;
      
      private var §"#§:Inventory;
      
      public function §'!K§(param1:StateLevelEditor)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§="#§ = null;
         if(_loc5_ || param1)
         {
            super(param1);
            if(!(_loc6_ && _loc2_))
            {
               addr36:
               init(§`7§.§>"?§.Views.View_LevelEditor[0]);
            }
            var _loc3_:int = 0;
            for each(_loc2_ in (getItemByName("Categories") as §`!T§).§"!_§)
            {
               if(!(_loc6_ && param1))
               {
                  _loc2_.setComponentState(§9!!§.§,!0§);
               }
            }
            if(!(_loc6_ && _loc3_))
            {
               this.§"#§ = new Inventory(this);
            }
            return;
         }
         §§goto(addr36);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:String = null;
         if(_loc7_)
         {
            if(param3 is §="#§)
            {
               if(_loc7_ || param1)
               {
                  addr142:
                  _loc4_ = (param3 as §="#§).mName;
               }
            }
            var _loc5_:* = param2;
            if(_loc7_)
            {
               if("SELECT_CATEGORY" === _loc5_)
               {
                  if(!_loc6_)
                  {
                     addr161:
                     §§push(0);
                     if(_loc6_)
                     {
                        addr185:
                     }
                  }
                  else
                  {
                     addr182:
                     §§push(2);
                     if(_loc7_)
                     {
                        §§goto(addr185);
                     }
                  }
                  addr190:
                  switch(§§pop())
                  {
                     case 0:
                        §5!U§.playSound("Sound_Button_Click");
                        this.§%w§(_loc4_);
                        addr123:
                        break;
                        addr123:
                        addr130:
                     case 1:
                        §5!U§.playSound("Sound_Button_Back");
                        this.§`B§();
                        break;
                        addr118:
                        addr111:
                     case 2:
                        if((param3 as §="#§).§%!v§ != §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
                        {
                           §5!U§.playSound("Sound_Button_Click");
                           if(_loc7_)
                           {
                              if(_loc7_)
                              {
                                 this.§%w§(_loc4_);
                                 if(_loc7_ || param2)
                                 {
                                    if(_loc7_)
                                    {
                                       if(_loc7_ || param3)
                                       {
                                          if(_loc7_ || param1)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                if(false)
                                                {
                                                   addr59:
                                                }
                                                break;
                                             }
                                             §§goto(addr123);
                                          }
                                       }
                                       else
                                       {
                                          addr94:
                                          this.§+K§(_loc4_);
                                          §5!U§.playSound("Sound_Button_Back");
                                          if(_loc7_ || param2)
                                          {
                                             if(_loc7_)
                                             {
                                                §§goto(addr59);
                                             }
                                             else
                                             {
                                                §§goto(addr118);
                                             }
                                          }
                                          addr214:
                                          return;
                                          addr97:
                                       }
                                       §§goto(addr111);
                                    }
                                    §§goto(addr97);
                                 }
                                 §§goto(addr214);
                              }
                              else
                              {
                                 §§goto(addr130);
                              }
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr94);
                  }
                  super.listenerEventOccured(param1,param2,param3);
                  §§goto(addr94);
               }
               else
               {
                  if("CLOSE_INVENTORY" === _loc5_)
                  {
                     if(!_loc6_)
                     {
                        §§push(1);
                        if(_loc6_ && param3)
                        {
                           §§goto(addr185);
                        }
                     }
                     else
                     {
                        §§goto(addr182);
                     }
                  }
                  else if("TOGGLE_CATEGORY" === _loc5_)
                  {
                     §§goto(addr182);
                  }
                  else
                  {
                     §§push(3);
                  }
                  §§goto(addr190);
               }
            }
            §§goto(addr161);
         }
         §§goto(addr142);
      }
      
      public function §`B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"#§.§%w§(null);
         }
      }
      
      public function §]!f§() : Boolean
      {
         return this.§"#§.isOpen();
      }
      
      public function §%w§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  addr127:
                  if(!(_loc3_ && param1))
                  {
                     §§push(this.§"#§);
                  }
                  loop4:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(param1);
                        if(_loc2_)
                        {
                           if(§§pop() != "Birds")
                           {
                              this.§<i§(param1);
                              while(!(_loc3_ && _loc3_))
                              {
                                 (§?!T§ as StateLevelEditor).§!!L§(false);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc2_)
                                    {
                                       if(!(_loc2_ || param1))
                                       {
                                          break loop2;
                                       }
                                       if(_loc2_)
                                       {
                                          §§goto(addr19);
                                       }
                                       continue loop4;
                                    }
                                    addr19:
                                 }
                                 continue;
                                 return;
                              }
                              while(true)
                              {
                                 continue loop2;
                                 §§goto(addr54);
                              }
                              addr54:
                              addr102:
                           }
                           break;
                        }
                        continue loop0;
                     }
                     (§?!T§ as StateLevelEditor).§!!L§(true);
                     §§goto(addr83);
                  }
                  addr127:
               }
               else
               {
                  §§push(this.§"#§);
                  if(_loc2_ || param1)
                  {
                     §§pop().§%w§(getItemByName(param1) as §="#§);
                     §§goto(addr102);
                  }
                  §§goto(addr127);
               }
               §§pop().§%w§(null);
            }
         }
         §§goto(addr127);
      }
      
      private function §<i§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            getItemByName("Button_Category_Blocks").setVisibility(false);
         }
         loop0:
         while(true)
         {
            getItemByName("Button_Category_Items").setVisibility(false);
            loop1:
            while(true)
            {
               getItemByName("Button_Category_Pigs").setVisibility(false);
               loop2:
               while(true)
               {
                  §§push(param1);
                  loop3:
                  while(true)
                  {
                     if(§§pop() == "Blocks")
                     {
                        if(_loc3_)
                        {
                           continue loop2;
                        }
                        continue loop0;
                     }
                     §§push(param1);
                     while(true)
                     {
                        if(_loc3_ || this)
                        {
                           if(§§pop() == "Objects")
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     if(!_loc2_)
                     {
                        getItemByName("Button_Category_Items").setVisibility(true);
                        continue loop1;
                     }
                     continue loop0;
                  }
                  addr25:
                  return;
               }
            }
         }
      }
      
      public function §+K§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§"#§.§+K§(getItemByName(param1) as §="#§);
         }
      }
      
      public function §6!p§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§"#§.§6!p§(param1);
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super.viewHeight = param1;
         }
         var _loc2_:MovieClip = getItemByName("InventoryBackground").mClip;
         if(_loc8_ || _loc2_)
         {
            _loc2_.height = 0;
         }
         var _loc3_:MovieClip = getItemByName("Container_ShopButtons").mClip;
         §§push(_loc3_.y - _loc2_.y);
         if(!(_loc7_ && param1))
         {
            §§push(§§pop() - _loc3_.height);
            if(_loc8_)
            {
               §§push(§§pop() + 5);
            }
         }
         var _loc4_:int = §§pop();
         if(!_loc7_)
         {
            _loc2_.height = _loc4_;
         }
         var _loc5_:int = 50;
         if(_loc8_)
         {
            this.§"#§.§1!J§(_loc4_ - _loc5_);
            loop0:
            while(true)
            {
               addr101:
               while(true)
               {
                  getItemByName("ScrollLine").mClip.height = _loc4_ - _loc5_ - 15;
                  addr112:
                  while(!_loc7_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            getItemByName("ScrollLine").mClip.y = 0;
            if(_loc8_ || param1)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr101);
            }
            §§goto(addr112);
         }
         var _loc6_:§`!w§;
         (_loc6_ = getItemByName("Slider") as §`!w§).§`a§(new Rectangle(_loc6_.x,23,0,_loc4_ - _loc5_ - 10 - _loc6_.height));
      }
      
      public function §=z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"#§.update(param1);
         }
      }
      
      public function §=!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§`B§();
            do
            {
               getItemByName("Categories").setVisibility(false);
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function §"!U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            getItemByName("Categories").setVisibility(true);
         }
      }
      
      public function §'!Q§() : Inventory
      {
         return this.§"#§;
      }
      
      public function §[G§() : String
      {
         return this.§"#§.§#!K§();
      }
   }
}
