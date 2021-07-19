package §^!k§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §;b§.StateLevelEditor;
   import §=!7§.§6W§;
   import §=!7§.§8q§;
   import §=!7§.§9"8§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §return§ extends §>!V§
   {
       
      
      private const §?"%§:Number = 1.5;
      
      private var §,!7§:Inventory;
      
      public function §return§(param1:StateLevelEditor)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§9"8§ = null;
         if(!_loc5_)
         {
            super(param1);
            if(_loc6_)
            {
               init(§]!M§.§"!V§.Views.View_LevelEditor[0]);
            }
         }
         var _loc3_:int = 0;
         for each(_loc2_ in (getItemByName("Categories") as §6W§).§[z§)
         {
            if(!(_loc5_ && _loc3_))
            {
               _loc2_.setComponentState(§>!D§.§;!M§);
            }
         }
         if(_loc6_)
         {
            this.§,!7§ = new Inventory(this);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:String = null;
         if(_loc6_ || param2)
         {
            if(param3 is §9"8§)
            {
               if(_loc6_)
               {
                  _loc4_ = (param3 as §9"8§).mName;
                  addr152:
               }
               §§goto(addr152);
            }
            var _loc5_:* = param2;
            if(!_loc7_)
            {
               if("SELECT_CATEGORY" === _loc5_)
               {
                  if(!_loc7_)
                  {
                     §§push(0);
                     if(_loc7_ && param1)
                     {
                        addr187:
                     }
                  }
                  else
                  {
                     addr184:
                     §§push(1);
                     if(!_loc7_)
                     {
                        §§goto(addr187);
                     }
                  }
               }
               else
               {
                  if("CLOSE_INVENTORY" === _loc5_)
                  {
                     if(!(_loc7_ && param1))
                     {
                        §§goto(addr184);
                     }
                     loop2:
                     switch(§§pop())
                     {
                        case 0:
                           §0"#§.§9"2§("Sound_Button_Click");
                           while(true)
                           {
                              this.§ !c§(_loc4_);
                              if(_loc7_ && this)
                              {
                                 break loop2;
                              }
                              if(_loc6_)
                              {
                                 addr218:
                                 super.listenerEventOccured(param1,param2,param3);
                                 break loop2;
                              }
                           }
                           break;
                        case 1:
                           §0"#§.§9"2§("Sound_Button_Back");
                           if(_loc6_ || param1)
                           {
                              this.§?x§();
                              §§goto(addr218);
                              addr94:
                           }
                           break;
                        case 2:
                           if((param3 as §9"8§).§-!2§ == §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT)
                           {
                              if(_loc6_)
                              {
                                 this.§'!k§(_loc4_);
                              }
                              §0"#§.§9"2§("Sound_Button_Back");
                              addr90:
                           }
                           else
                           {
                              §0"#§.§9"2§("Sound_Button_Click");
                              while(_loc6_ || param1)
                              {
                                 this.§ !c§(_loc4_);
                                 if(!_loc6_)
                                 {
                                    break loop2;
                                 }
                                 if(_loc7_ && this)
                                 {
                                    continue;
                                 }
                                 if(!(_loc7_ && param1))
                                 {
                                    if(false)
                                    {
                                       addr49:
                                    }
                                    §§goto(addr218);
                                 }
                                 else
                                 {
                                    §§goto(addr90);
                                 }
                              }
                           }
                           if(!(_loc7_ && param1))
                           {
                              §§goto(addr49);
                           }
                           else
                           {
                              §§goto(addr94);
                           }
                        default:
                           §§goto(addr218);
                     }
                     return;
                     addr204:
                  }
                  else
                  {
                     if("TOGGLE_CATEGORY" !== _loc5_)
                     {
                        §§goto(addr204);
                        §§push(3);
                     }
                     §§goto(addr204);
                  }
                  §§push(2);
                  if(_loc6_ || param3)
                  {
                  }
               }
               §§goto(addr204);
            }
            §§goto(addr184);
         }
         §§goto(addr152);
      }
      
      public function §?x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§,!7§.§ !c§(null);
         }
      }
      
      public function §0"9§() : Boolean
      {
         return this.§,!7§.isOpen();
      }
      
      public function § !c§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  addr133:
                  while(true)
                  {
                     §§push(this.§,!7§);
                  }
                  addr133:
               }
               else
               {
                  §§push(this.§,!7§);
                  if(_loc2_ || _loc3_)
                  {
                     §§pop().§ !c§(getItemByName(param1) as §9"8§);
                     while(true)
                     {
                        continue loop0;
                        addr59:
                        if(_loc3_ && _loc2_)
                        {
                           continue;
                        }
                        (§4"8§ as StateLevelEditor).§17§(false);
                        addr76:
                        if(!_loc2_)
                        {
                           addr137:
                           while(true)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 §§goto(addr59);
                              }
                              else
                              {
                                 addr88:
                                 if(!(_loc3_ && param1))
                                 {
                                    addr95:
                                    (§4"8§ as StateLevelEditor).§17§(true);
                                    addr19:
                                    return;
                                    addr100:
                                 }
                                 §§goto(addr133);
                              }
                           }
                           while(true)
                           {
                              continue loop0;
                           }
                           addr137:
                           addr52:
                        }
                        if(!(_loc3_ && param1))
                        {
                           if(!(_loc2_ || _loc2_))
                           {
                              §§goto(addr137);
                           }
                        }
                        else
                        {
                           §§goto(addr100);
                        }
                        §§goto(addr19);
                     }
                  }
               }
               while(true)
               {
                  §§pop().§ !c§(null);
                  §§goto(addr137);
               }
            }
         }
         §§goto(addr133);
      }
      
      private function §'!&§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            getItemByName("Button_Category_Blocks").setVisibility(false);
            loop0:
            while(true)
            {
               getItemByName("Button_Category_Items").setVisibility(false);
               while(true)
               {
                  getItemByName("Button_Category_Pigs").setVisibility(false);
                  while(!_loc3_)
                  {
                     §§push(param1);
                     loop3:
                     while(§§pop() != "Blocks")
                     {
                        §§push(param1);
                        while(true)
                        {
                           if(!(_loc3_ && this))
                           {
                              continue;
                           }
                           continue loop3;
                        }
                        if(_loc3_ && _loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     getItemByName("Button_Category_Blocks").setVisibility(true);
                     §§goto(addr114);
                  }
               }
               addr104:
               §§goto(addr19);
            }
         }
         getItemByName("Button_Category_Items").setVisibility(true);
         §§goto(addr104);
      }
      
      public function §'!k§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§,!7§.§'!k§(getItemByName(param1) as §9"8§);
         }
      }
      
      public function §+!R§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§,!7§.§+!R§(param1);
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super.viewHeight = param1;
         }
         var _loc2_:MovieClip = getItemByName("InventoryBackgroundBase").mClip;
         if(!(_loc7_ && _loc3_))
         {
            _loc2_.height = 0;
         }
         var _loc3_:MovieClip = getItemByName("Container_ShopButtons").mClip;
         §§push(_loc3_.y - _loc2_.y);
         if(_loc8_ || _loc2_)
         {
            §§push(§§pop() - _loc3_.height);
            if(!_loc7_)
            {
               §§push(§§pop() + 5);
            }
         }
         var _loc4_:int = §§pop();
         if(_loc8_ || this)
         {
            _loc2_.height = _loc4_;
         }
         var _loc5_:int = 50;
         if(_loc8_)
         {
            this.§,!7§.§'![§(_loc4_ - _loc5_);
            loop0:
            while(true)
            {
               addr101:
               while(true)
               {
                  getItemByName("ScrollLine").mClip.height = _loc4_ - _loc5_ - 15;
                  while(true)
                  {
                     if(_loc8_)
                     {
                        getItemByName("ScrollLine").mClip.y = 0;
                        if(!_loc7_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr101);
         }
         var _loc6_:§8q§;
         (_loc6_ = getItemByName("Slider") as §8q§).§8!a§(new Rectangle(_loc6_.x,23,0,_loc4_ - _loc5_ - 10 - _loc6_.height));
      }
      
      public function §9!z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§,!7§.update(param1);
         }
      }
      
      public function §5!Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?x§();
            do
            {
               getItemByName("Categories").setVisibility(false);
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §<!k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            getItemByName("Categories").setVisibility(true);
         }
      }
      
      public function §+!m§() : Inventory
      {
         return this.§,!7§;
      }
      
      public function §8!9§() : String
      {
         return this.§,!7§.§4!X§();
      }
   }
}
