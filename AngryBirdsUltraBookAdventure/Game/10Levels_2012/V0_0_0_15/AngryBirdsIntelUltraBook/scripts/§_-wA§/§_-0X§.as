package §_-wA§
{
   import §_-6C§.§_-05d§;
   import §_-Yl§.§_-5q§;
   import §_-x8§.§_-nG§;
   import §_-y7§.§_-xe§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   
   public class §_-0X§ extends §_-5q§
   {
       
      
      public function §_-0X§(param1:§_-nG§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super(param1);
         }
      }
      
      public static function §_-Dx§(param1:Number) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && §_-0X§))
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(§§pop() / 10);
               if(_loc3_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         §§push("$");
         if(_loc3_ || §_-0X§)
         {
            §§push(§§pop() + param1.toString());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            if(param1 != int(param1))
            {
               if(_loc3_ || §_-0X§)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     _loc2_ = §§pop() + "0";
                     addr95:
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      override public function activateView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.activateView();
         }
      }
      
      public function §_-8i§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:String = null;
         if(_loc6_)
         {
            §_-oK§("Repeater_Items","Repeater_Items_Tab_0");
         }
         var _loc1_:§_-05d§ = getItemByName("Repeater_Items") as §_-05d§;
         var _loc2_:§_-05d§ = getItemByName("Repeater_Tabs") as §_-05d§;
         if(!_loc5_)
         {
            if(§_-xe§.§_-eA§().§_-05v§.length > 0)
            {
               if(_loc6_ || _loc1_)
               {
                  _loc2_.§_-02B§("Repeater_Tabs_Tab_0").§_-0BT§(§_-xe§.§_-eA§().§_-05v§[0].name as String);
                  §§goto(addr55);
               }
            }
            §§goto(addr79);
         }
         addr55:
         if(_loc6_)
         {
            addr79:
            §_-oK§("Repeater_Tabs","Repeater_Tabs_Tab_0");
         }
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= §_-xe§.§_-eA§().§_-05v§.length)
            {
               if(!(_loc5_ && this))
               {
                  if(_loc6_ || _loc2_)
                  {
                     if(_loc6_ || _loc2_)
                     {
                        break;
                     }
                     §§push(_loc1_);
                     §§push("Repeater_Items_Tab_");
                     if(_loc6_)
                     {
                        §§push(§§pop() + _loc3_);
                     }
                     §§pop().§_-02B§(§§pop()).§_-0BT§(_loc4_);
                     addr151:
                  }
                  _loc3_++;
               }
               continue;
            }
            _loc4_ = §_-xe§.§_-eA§().§_-05v§[_loc3_].name;
            §§goto(addr151);
         }
      }
      
      public function §_-00i§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            §§push(_loc2_);
            if(!(_loc3_ || this))
            {
               addr63:
               §§push(-1);
               if(_loc3_)
               {
                  return §§pop();
               }
               else
               {
                  addr91:
               }
            }
            if(§§pop() >= §_-xe§.§_-eA§().§_-05v§.length)
            {
               if(_loc4_ && _loc3_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  §§goto(addr63);
               }
            }
            else if(param1.toUpperCase() == §_-xe§.§_-eA§().§_-05v§[_loc2_].name.toUpperCase())
            {
               break;
            }
            _loc2_++;
            continue;
            return §§pop();
         }
         while(!(_loc4_ && _loc3_));
         
         §§goto(addr91);
         §§push(_loc2_);
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
                     if(§§pop().toUpperCase() == "Repeater_Items".toUpperCase())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!_loc3_)
                           {
                              §§push(this.§_-oQ§());
                              if(_loc2_ || this)
                              {
                                 return §§pop();
                              }
                              break;
                           }
                           continue;
                        }
                        if(_loc3_)
                        {
                           break loop0;
                        }
                     }
                     return null;
                  }
                  continue loop0;
               }
               return §§pop();
            }
         }
         §§goto(addr81);
         §§push(this.§_-iw§());
      }
      
      public function §_-iw§() : Array
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
      
      public function §_-oQ§() : Array
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = null;
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Class = §_-Fc§.§_-YE§("Repeater_Button_Editor_Items");
         var _loc7_:Class = §_-Fc§.§_-YE§("Repeater_Button_Editor_Items_Buy");
         var _loc8_:Class = §_-Fc§.§_-YE§("Repeater_Button_Editor_Items_LimitedTime");
         var _loc9_:Class = §_-Fc§.§_-YE§("Repeater_Button_Editor_Items_StarLimit");
         var _loc10_:Class = §_-Fc§.§_-YE§("Repeater_Button_Editor_Items_OnSale");
         §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
         if(!_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc11_:* = §§pop();
         return this.§_-U7§(_loc4_,_loc5_);
      }
      
      private function §_-U7§(param1:Array, param2:Array) : Array
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
               if(_loc6_)
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
               addr77:
            }
            while(!_loc6_)
            {
               §§goto(addr77);
            }
         }
         return _loc4_;
      }
   }
}
