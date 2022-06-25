package §8!;§
{
   import §+0§.§,!E§;
   import §1!E§.§31§;
   import §4;§.§5n§;
   import §[!+§.§4`§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   
   public class §`7§ extends §4`§
   {
       
      
      public function §`7§(param1:§,!E§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super(param1);
         }
      }
      
      public static function §&K§(param1:Number) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && §`7§))
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() / 10);
               if(!_loc4_)
               {
                  addr40:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               §§goto(addr42);
            }
            §§goto(addr40);
         }
         addr42:
         §§push("$");
         if(!_loc4_)
         {
            §§push(§§pop() + param1.toString());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            if(param1 != int(param1))
            {
               if(_loc3_)
               {
                  §§goto(addr74);
               }
            }
            §§goto(addr85);
         }
         addr74:
         §§push(_loc2_);
         if(_loc3_ || param1)
         {
            _loc2_ = §§pop() + "0";
            addr85:
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
      
      public function §%V§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:String = null;
         if(!(_loc5_ && _loc2_))
         {
            §>!]§("Repeater_Items","Repeater_Items_Tab_0");
         }
         var _loc1_:§31§ = getItemByName("Repeater_Items") as §31§;
         var _loc2_:§31§ = getItemByName("Repeater_Tabs") as §31§;
         if(_loc6_ || _loc2_)
         {
            if(§5n§.§0?§().§]!Q§.length > 0)
            {
               if(_loc6_)
               {
                  _loc2_.§-!3§("Repeater_Tabs_Tab_0").§<!_§(§5n§.§0?§().§]!Q§[0].name as String);
                  if(_loc6_ || _loc1_)
                  {
                  }
               }
               §§goto(addr93);
            }
            §>!]§("Repeater_Tabs","Repeater_Tabs_Tab_0");
         }
         addr93:
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= §5n§.§0?§().§]!Q§.length)
            {
               if(!(_loc5_ && _loc1_))
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
               while(_loc5_ && _loc1_);
               
               continue;
               addr115:
            }
            else
            {
               _loc4_ = §5n§.§0?§().§]!Q§[_loc3_].name;
            }
            while(true)
            {
               §§push(_loc1_);
               §§push("Repeater_Items_Tab_");
               if(_loc6_ || _loc1_)
               {
                  §§push(§§pop() + _loc3_);
               }
               §§pop().§-!3§(§§pop()).§<!_§(_loc4_);
               while(true)
               {
                  _loc3_++;
                  §§goto(addr115);
               }
            }
         }
      }
      
      public function §+!+§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               break;
            }
            if(!_loc3_)
            {
               addr86:
               return _loc2_;
            }
            if(§§pop() >= §5n§.§0?§().§]!Q§.length)
            {
               if(_loc4_ && _loc2_)
               {
                  continue;
               }
               if(!(_loc4_ && _loc2_))
               {
                  break;
               }
               addr87:
            }
            else if(param1.toUpperCase() == §5n§.§0?§().§]!Q§[_loc2_].name.toUpperCase())
            {
               if(!_loc4_)
               {
                  §§goto(addr86);
               }
               §§goto(addr87);
            }
            _loc2_++;
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
            while(true)
            {
               if(§§pop().toUpperCase() != "Repeater_Tabs".toUpperCase())
               {
                  continue;
               }
               if(!(_loc3_ && this))
               {
                  §§push(this.§=!,§());
                  break;
               }
               while(true)
               {
                  continue loop0;
                  addr54:
                  if(_loc2_)
                  {
                     addr66:
                     §§push(this.§>u§());
                     if(!(_loc3_ && _loc2_))
                     {
                        return §§pop();
                     }
                     break loop0;
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr66);
      }
      
      public function §=!,§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:MovieClip = null;
         var _loc4_:Class = null;
         var _loc1_:Array = new Array();
         if(_loc6_ || _loc2_)
         {
            _loc1_[0] = new Array();
         }
         return _loc1_;
      }
      
      public function §>u§() : Array
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = null;
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Class = §`!t§.§=J§("Repeater_Button_Editor_Items");
         var _loc7_:Class = §`!t§.§=J§("Repeater_Button_Editor_Items_Buy");
         var _loc8_:Class = §`!t§.§=J§("Repeater_Button_Editor_Items_LimitedTime");
         var _loc9_:Class = §`!t§.§=J§("Repeater_Button_Editor_Items_StarLimit");
         var _loc10_:Class = §`!t§.§=J§("Repeater_Button_Editor_Items_OnSale");
         §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
         if(_loc14_)
         {
            §§push(int(§§pop()));
         }
         var _loc11_:* = §§pop();
         return this.§]5§(_loc4_,_loc5_);
      }
      
      private function §]5§(param1:Array, param2:Array) : Array
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
               if(_loc7_ && _loc3_)
               {
                  continue;
               }
               if(!_loc7_)
               {
                  break;
               }
            }
            else
            {
               _loc4_[_loc5_] = param1[_loc5_].concat(param2[_loc5_]);
            }
            _loc5_++;
         }
         return _loc4_;
      }
   }
}
