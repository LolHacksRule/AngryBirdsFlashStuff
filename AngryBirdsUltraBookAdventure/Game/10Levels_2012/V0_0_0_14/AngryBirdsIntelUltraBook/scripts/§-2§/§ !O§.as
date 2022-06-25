package §-2§
{
   import §1n§.§ C§;
   import §8,§.§+_§;
   import §^c§.§+-§;
   import §`M§.§[A§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   
   public class § !O§ extends § C§
   {
       
      
      public function § !O§(param1:§+_§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super(param1);
         }
      }
      
      public static function §9"§(param1:Number) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() / 10);
               if(_loc4_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         §§push("$");
         if(_loc4_ || param1)
         {
            §§push(§§pop() + param1.toString());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            if(param1 != int(param1))
            {
               if(!_loc3_)
               {
                  §§push(_loc2_);
                  if(_loc4_ || § !O§)
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
      
      override public function activateView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activateView();
         }
      }
      
      public function §#'§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:String = null;
         if(_loc5_)
         {
            §%! §("Repeater_Items","Repeater_Items_Tab_0");
         }
         var _loc1_:§[A§ = getItemByName("Repeater_Items") as §[A§;
         var _loc2_:§[A§ = getItemByName("Repeater_Tabs") as §[A§;
         if(_loc5_ || _loc3_)
         {
            if(§+-§.§?!9§().§1K§.length > 0)
            {
               if(_loc5_ || this)
               {
                  _loc2_.§1l§("Repeater_Tabs_Tab_0").§`?§(§+-§.§?!9§().§1K§[0].name as String);
                  if(!_loc6_)
                  {
                     addr83:
                     §%! §("Repeater_Tabs","Repeater_Tabs_Tab_0");
                  }
               }
               var _loc3_:int = 0;
               while(true)
               {
                  if(_loc3_ >= §+-§.§?!9§().§1K§.length)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        break;
                     }
                     do
                     {
                        if(!(_loc5_ || _loc3_))
                        {
                           continue;
                        }
                     }
                     while(_loc6_ && _loc1_);
                     
                     continue;
                     addr109:
                  }
                  else
                  {
                     _loc4_ = §+-§.§?!9§().§1K§[_loc3_].name;
                  }
                  while(true)
                  {
                     §§push(_loc1_);
                     §§push("Repeater_Items_Tab_");
                     if(_loc5_ || _loc1_)
                     {
                        §§push(§§pop() + _loc3_);
                     }
                     §§pop().§1l§(§§pop()).§`?§(_loc4_);
                     while(true)
                     {
                        _loc3_++;
                        §§goto(addr109);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr83);
      }
      
      public function §"N§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() >= §+-§.§?!9§().§1K§.length)
                  {
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        addr68:
                        _loc2_++;
                     }
                     if(_loc3_ || _loc2_)
                     {
                        continue;
                     }
                     addr91:
                     return _loc2_;
                     addr90:
                  }
                  else
                  {
                     if(param1.toUpperCase() != §+-§.§?!9§().§1K§[_loc2_].name.toUpperCase())
                     {
                        §§goto(addr68);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr68);
               }
               §§goto(addr91);
            }
            break;
         }
         return §§pop();
      }
      
      override public function getRepeaterDataXML(param1:String) : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop().toUpperCase() != "Repeater_Tabs".toUpperCase())
               {
                  continue;
               }
               if(_loc2_)
               {
                  while(true)
                  {
                     continue loop0;
                     addr65:
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(this.§99§());
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                        break loop0;
                     }
                  }
               }
            }
            §§goto(addr87);
         }
         addr87:
         this.§]r§();
         return §§pop();
      }
      
      public function §]r§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:MovieClip = null;
         var _loc4_:Class = null;
         var _loc1_:Array = new Array();
         if(!_loc6_)
         {
            _loc1_[0] = new Array();
         }
         return _loc1_;
      }
      
      public function §99§() : Array
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = null;
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Class = §9!N§.§0!k§("Repeater_Button_Editor_Items");
         var _loc7_:Class = §9!N§.§0!k§("Repeater_Button_Editor_Items_Buy");
         var _loc8_:Class = §9!N§.§0!k§("Repeater_Button_Editor_Items_LimitedTime");
         var _loc9_:Class = §9!N§.§0!k§("Repeater_Button_Editor_Items_StarLimit");
         var _loc10_:Class = §9!N§.§0!k§("Repeater_Button_Editor_Items_OnSale");
         §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
         if(_loc14_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc11_:* = §§pop();
         return this.§&!;§(_loc4_,_loc5_);
      }
      
      private function §&!;§(param1:Array, param2:Array) : Array
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
               if(_loc6_ || _loc3_)
               {
                  break;
               }
               loop1:
               while(!(_loc6_ || param2))
               {
                  while(true)
                  {
                     _loc5_++;
                     continue loop1;
                  }
               }
               continue;
            }
            _loc4_[_loc5_] = param1[_loc5_].concat(param2[_loc5_]);
            §§goto(addr87);
         }
         return _loc4_;
      }
   }
}
