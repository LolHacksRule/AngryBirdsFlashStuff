package §9j§
{
   import §2y§.§<N§;
   import §8!H§.§9![§;
   import §;#§.§;?§;
   import §>f§.§&!G§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   
   public class §2A§ extends §&!G§
   {
       
      
      public function §2A§(param1:§9![§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super(param1);
         }
      }
      
      public static function §>!=§(param1:Number) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(§§pop() / 10);
               if(!_loc4_)
               {
                  addr35:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               §§goto(addr37);
            }
            §§goto(addr35);
         }
         addr37:
         §§push("$");
         if(_loc3_)
         {
            §§push(§§pop() + param1.toString());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && §2A§))
         {
            if(param1 != int(param1))
            {
               if(!_loc4_)
               {
                  §§goto(addr69);
               }
            }
            §§goto(addr75);
         }
         addr69:
         §§push(_loc2_);
         if(_loc3_)
         {
            _loc2_ = §§pop() + "0";
            addr75:
            return _loc2_;
         }
      }
      
      override public function activateView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activateView();
         }
      }
      
      public function §each §() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:String = null;
         if(!_loc6_)
         {
            §?!]§("Repeater_Items","Repeater_Items_Tab_0");
         }
         var _loc1_:§<N§ = getItemByName("Repeater_Items") as §<N§;
         var _loc2_:§<N§ = getItemByName("Repeater_Tabs") as §<N§;
         if(!_loc6_)
         {
            if(§;?§.§]0§().§>!J§.length > 0)
            {
               if(_loc5_)
               {
                  _loc2_.§1!@§("Repeater_Tabs_Tab_0").§@G§(§;?§.§]0§().§>!J§[0].name as String);
                  §§goto(addr49);
               }
            }
            §§goto(addr78);
         }
         addr49:
         if(!(_loc6_ && _loc2_))
         {
            addr78:
            §?!]§("Repeater_Tabs","Repeater_Tabs_Tab_0");
         }
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= §;?§.§]0§().§>!J§.length)
            {
               if(_loc5_)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     if(_loc5_ || _loc2_)
                     {
                        break;
                     }
                     §§push(_loc1_);
                     §§push("Repeater_Items_Tab_");
                     if(_loc5_ || _loc2_)
                     {
                        §§push(§§pop() + _loc3_);
                     }
                     §§pop().§1!@§(§§pop()).§@G§(_loc4_);
                     addr150:
                  }
                  _loc3_++;
               }
               continue;
            }
            _loc4_ = §;?§.§]0§().§>!J§[_loc3_].name;
            §§goto(addr150);
         }
      }
      
      public function §6!,§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               break;
            }
            if(§§pop() >= §;?§.§]0§().§>!J§.length)
            {
               if(_loc3_ && this)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break;
               }
               addr88:
            }
            else if(param1.toUpperCase() == §;?§.§]0§().§>!J§[_loc2_].name.toUpperCase())
            {
               if(!_loc3_)
               {
                  §§goto(addr87);
               }
               §§goto(addr88);
            }
            _loc2_++;
         }
         if(!(_loc3_ && _loc3_))
         {
            return §§pop();
         }
         addr87:
         return _loc2_;
      }
      
      override public function getRepeaterDataXML(param1:String) : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(§§pop().toUpperCase() != "Repeater_Tabs".toUpperCase())
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  if(!_loc2_)
                  {
                     if(§§pop().toUpperCase() == "Repeater_Items".toUpperCase())
                     {
                        if(_loc2_ && this)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              §§push(this.§`B§());
                              if(!_loc2_)
                              {
                                 return §§pop();
                              }
                              addr77:
                              return §§pop();
                           }
                           break loop0;
                        }
                        addr78:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               return null;
            }
            §§goto(addr77);
            §§push(this.§6!x§());
         }
         §§goto(addr78);
      }
      
      public function §6!x§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:MovieClip = null;
         var _loc4_:Class = null;
         var _loc1_:Array = new Array();
         if(_loc5_ || _loc1_)
         {
            _loc1_[0] = new Array();
         }
         return _loc1_;
      }
      
      public function §`B§() : Array
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = null;
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Class = §,!j§.§!!N§("Repeater_Button_Editor_Items");
         var _loc7_:Class = §,!j§.§!!N§("Repeater_Button_Editor_Items_Buy");
         var _loc8_:Class = §,!j§.§!!N§("Repeater_Button_Editor_Items_LimitedTime");
         var _loc9_:Class = §,!j§.§!!N§("Repeater_Button_Editor_Items_StarLimit");
         var _loc10_:Class = §,!j§.§!!N§("Repeater_Button_Editor_Items_OnSale");
         §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
         if(_loc13_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc11_:* = §§pop();
         return this.§1!e§(_loc4_,_loc5_);
      }
      
      private function §1!e§(param1:Array, param2:Array) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = Math.max(param1.length,param2.length);
         var _loc4_:Array = [];
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               if(_loc6_)
               {
                  continue;
               }
               if(!(_loc6_ && _loc3_))
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
