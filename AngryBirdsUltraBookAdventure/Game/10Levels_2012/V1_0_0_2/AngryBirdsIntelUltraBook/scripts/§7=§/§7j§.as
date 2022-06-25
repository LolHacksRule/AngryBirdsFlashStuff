package §7=§
{
   import §2h§.§'!^§;
   import §<!>§.§?Y§;
   import §?!7§.§?!x§;
   import §`!%§.§6!_§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   
   public class §7j§ extends §'!^§
   {
       
      
      public function §7j§(param1:§?Y§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super(param1);
         }
      }
      
      public static function §`B§(param1:Number) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §7j§)
         {
            §§push(param1);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() / 10);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         §§push("$");
         if(!(_loc4_ && §7j§))
         {
            §§push(§§pop() + param1.toString());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            if(param1 != int(param1))
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr84);
               }
            }
            §§goto(addr95);
         }
         addr84:
         §§push(_loc2_);
         if(!(_loc4_ && §7j§))
         {
            _loc2_ = §§pop() + "0";
            addr95:
            return _loc2_;
         }
      }
      
      override public function activateView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activateView();
         }
      }
      
      public function §[!E§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:String = null;
         if(!_loc5_)
         {
            §;!!§("Repeater_Items","Repeater_Items_Tab_0");
         }
         var _loc1_:§?!x§ = getItemByName("Repeater_Items") as §?!x§;
         var _loc2_:§?!x§ = getItemByName("Repeater_Tabs") as §?!x§;
         if(_loc6_ || this)
         {
            if(§6!_§.§1w§().§=!b§.length > 0)
            {
               if(!_loc5_)
               {
                  _loc2_.§#!0§("Repeater_Tabs_Tab_0").§`N§(§6!_§.§1w§().§=!b§[0].name as String);
                  addr55:
                  if(!_loc5_)
                  {
                     addr79:
                     §;!!§("Repeater_Tabs","Repeater_Tabs_Tab_0");
                  }
               }
               var _loc3_:int = 0;
               while(true)
               {
                  if(_loc3_ >= §6!_§.§1w§().§=!b§.length)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     do
                     {
                        if(_loc5_)
                        {
                           continue;
                        }
                     }
                     while(_loc5_ && _loc2_);
                     
                     continue;
                     addr100:
                  }
                  else
                  {
                     _loc4_ = §6!_§.§1w§().§=!b§[_loc3_].name;
                  }
                  while(true)
                  {
                     §§push(_loc1_);
                     §§push("Repeater_Items_Tab_");
                     if(_loc6_ || _loc2_)
                     {
                        §§push(§§pop() + _loc3_);
                     }
                     §§pop().§#!0§(§§pop()).§`N§(_loc4_);
                     while(true)
                     {
                        _loc3_++;
                        §§goto(addr100);
                     }
                  }
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr55);
      }
      
      public function §,!8§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc3_)
            {
               if(_loc4_ || _loc2_)
               {
                  if(§§pop() >= §6!_§.§1w§().§=!b§.length)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                        addr79:
                        _loc2_++;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        continue;
                     }
                     addr102:
                     return _loc2_;
                     addr101:
                  }
                  else
                  {
                     if(param1.toUpperCase() != §6!_§.§1w§().§=!b§[_loc2_].name.toUpperCase())
                     {
                        §§goto(addr79);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr79);
               }
               §§goto(addr102);
            }
            break;
         }
         return §§pop();
      }
      
      override public function getRepeaterDataXML(param1:String) : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(§§pop().toUpperCase() != "Repeater_Tabs".toUpperCase())
            {
               while(true)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     if(§§pop().toUpperCase() != "Repeater_Items".toUpperCase())
                     {
                        break;
                     }
                     if(_loc2_)
                     {
                        if(!(_loc3_ && this))
                        {
                           §§goto(addr61);
                        }
                        break loop0;
                     }
                     if(!(_loc3_ && _loc2_))
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               return null;
            }
            §§goto(addr81);
            §§push(this.§ S§());
         }
         addr61:
         §§push(this.§-[§());
         if(_loc2_)
         {
            return §§pop();
         }
         addr81:
         return §§pop();
      }
      
      public function § S§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:MovieClip = null;
         var _loc4_:Class = null;
         var _loc1_:Array = new Array();
         if(!(_loc5_ && _loc3_))
         {
            _loc1_[0] = new Array();
         }
         return _loc1_;
      }
      
      public function §-[§() : Array
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = null;
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Class = §%!G§.§^!B§("Repeater_Button_Editor_Items");
         var _loc7_:Class = §%!G§.§^!B§("Repeater_Button_Editor_Items_Buy");
         var _loc8_:Class = §%!G§.§^!B§("Repeater_Button_Editor_Items_LimitedTime");
         var _loc9_:Class = §%!G§.§^!B§("Repeater_Button_Editor_Items_StarLimit");
         var _loc10_:Class = §%!G§.§^!B§("Repeater_Button_Editor_Items_OnSale");
         §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
         if(!_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc11_:* = §§pop();
         return this.§`!M§(_loc4_,_loc5_);
      }
      
      private function §`!M§(param1:Array, param2:Array) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = Math.max(param1.length,param2.length);
         var _loc4_:Array = [];
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               if(_loc6_ || param1)
               {
                  break;
               }
            }
            else
            {
               _loc4_[_loc5_] = param1[_loc5_].concat(param2[_loc5_]);
               while(true)
               {
                  _loc5_++;
               }
               addr82:
            }
            while(_loc7_)
            {
               §§goto(addr82);
            }
         }
         return _loc4_;
      }
   }
}
