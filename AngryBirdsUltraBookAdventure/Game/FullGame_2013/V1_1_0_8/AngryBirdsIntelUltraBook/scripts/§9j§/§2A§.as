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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super(param1);
         }
      }
      
      public static function §>!=§(param1:Number) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() / 10);
               if(_loc4_ || _loc3_)
               {
                  addr51:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               addr53:
               §§push("$");
               if(!_loc3_)
               {
                  §§push(§§pop() + param1.toString());
               }
               var _loc2_:* = §§pop();
               if(!(_loc3_ && _loc2_))
               {
                  if(param1 != int(param1))
                  {
                     if(!(_loc3_ && param1))
                     {
                        §§push(_loc2_);
                        if(_loc4_ || _loc3_)
                        {
                           _loc2_ = §§pop() + "0";
                           addr101:
                           return _loc2_;
                        }
                     }
                  }
               }
               §§goto(addr101);
            }
            §§goto(addr51);
         }
         §§goto(addr53);
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
         if(_loc5_)
         {
            §?!]§("Repeater_Items","Repeater_Items_Tab_0");
         }
         var _loc1_:§<N§ = getItemByName("Repeater_Items") as §<N§;
         var _loc2_:§<N§ = getItemByName("Repeater_Tabs") as §<N§;
         if(!_loc6_)
         {
            if(§;?§.§]0§().§>!J§.length > 0)
            {
               if(_loc5_ || _loc2_)
               {
                  _loc2_.§1!@§("Repeater_Tabs_Tab_0").§@G§(§;?§.§]0§().§>!J§[0].name as String);
                  if(!_loc6_)
                  {
                     addr78:
                     §?!]§("Repeater_Tabs","Repeater_Tabs_Tab_0");
                  }
                  var _loc3_:int = 0;
                  while(true)
                  {
                     if(_loc3_ >= §;?§.§]0§().§>!J§.length)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        while(!(_loc5_ || _loc1_))
                        {
                           _loc3_++;
                        }
                        continue;
                     }
                     _loc4_ = §;?§.§]0§().§>!J§[_loc3_].name;
                     while(true)
                     {
                        §§push(_loc1_);
                        §§push("Repeater_Items_Tab_");
                        if(!_loc6_)
                        {
                           §§push(§§pop() + _loc3_);
                        }
                        §§pop().§1!@§(§§pop()).§@G§(_loc4_);
                     }
                     addr140:
                     while(!_loc5_)
                     {
                        §§goto(addr140);
                     }
                     §§goto(addr129);
                  }
                  return;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §6!,§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(_loc3_)
               {
                  if(§§pop() >= §;?§.§]0§().§>!J§.length)
                  {
                     if(!(_loc4_ && this))
                     {
                        break;
                     }
                     loop1:
                     while(_loc4_)
                     {
                        while(true)
                        {
                           _loc2_++;
                           continue loop1;
                        }
                     }
                     if(!_loc4_)
                     {
                        continue;
                     }
                     addr86:
                     return _loc2_;
                     addr85:
                  }
                  else
                  {
                     if(param1.toUpperCase() != §;?§.§]0§().§>!J§[_loc2_].name.toUpperCase())
                     {
                        §§goto(addr66);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr66);
               }
               §§goto(addr86);
            }
            break;
         }
         return §§pop();
      }
      
      override public function getRepeaterDataXML(param1:String) : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            loop0:
            while(§§pop().toUpperCase() != "Repeater_Tabs".toUpperCase())
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop().toUpperCase() != "Repeater_Items".toUpperCase())
                     {
                        break;
                     }
                     if(_loc2_ && _loc2_)
                     {
                        break;
                     }
                     addr89:
                     if(_loc3_ || this)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(this.§`B§());
                           if(_loc3_)
                           {
                              return §§pop();
                           }
                           addr97:
                           return §§pop();
                        }
                        break loop0;
                     }
                     continue;
                  }
                  continue loop0;
               }
               return null;
            }
            §§goto(addr97);
            §§push(this.§6!x§());
         }
         §§goto(addr89);
      }
      
      public function §6!x§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:MovieClip = null;
         var _loc4_:Class = null;
         var _loc1_:Array = new Array();
         if(_loc6_ || _loc3_)
         {
            _loc1_[0] = new Array();
         }
         return _loc1_;
      }
      
      public function §`B§() : Array
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
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
         if(!_loc13_)
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
               if(!_loc6_)
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
               addr78:
            }
            while(!_loc7_)
            {
               §§goto(addr78);
            }
         }
         return _loc4_;
      }
   }
}
