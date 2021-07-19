package §]!w§
{
   import §%i§.§0!Y§;
   import §%i§.§4!w§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   
   public class §9!x§ extends §4!w§
   {
      
      public static const §8!=§:String = "buy";
      
      public static const §8L§:String = "default";
      
      public static const NORMAL:String = "normal";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §8!=§ = "buy";
            while(true)
            {
               §8L§ = "default";
               while(_loc2_ || §9!x§)
               {
                  NORMAL = "normal";
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      private var §3!C§:MovieClip;
      
      private var §0r§:MovieClip;
      
      private var §9a§:String;
      
      public function §9!x§(param1:XML, param2:§0!Y§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            param2 = "IconHolder";
         }
         var _loc4_:MovieClip = mClip.getChildByName(param2) as MovieClip;
         loop0:
         while(true)
         {
            if(_loc4_.numChildren > 0)
            {
               _loc4_.removeChildAt(0);
               continue;
            }
            loop1:
            while(true)
            {
               super.setIcon(param1,param2,param3);
               while(this.§3!C§ == null)
               {
                  if(_loc5_ || param2)
                  {
                     if(!(_loc5_ || param1))
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        continue loop1;
                     }
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     this.§3!C§ = param1;
                  }
                  break;
               }
               return;
            }
         }
      }
      
      public function §`",§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1;
         if(_loc4_ || this)
         {
            §§push(§8!=§);
            if(_loc4_ || param1)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(0);
                        if(_loc3_ && param1)
                        {
                           addr162:
                        }
                     }
                     else
                     {
                        addr159:
                        §§push(2);
                        if(_loc4_)
                        {
                           §§goto(addr162);
                        }
                     }
                     §§goto(addr167);
                  }
                  else
                  {
                     §§push(NORMAL);
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           addr149:
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_)
                              {
                                 addr152:
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                    §§goto(addr162);
                                 }
                              }
                              else
                              {
                                 §§goto(addr159);
                              }
                              §§goto(addr167);
                           }
                           else
                           {
                              addr157:
                              §§push(§8L§);
                              §§push(_loc2_);
                           }
                           §§goto(addr159);
                        }
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr159);
                        }
                        else
                        {
                           §§push(3);
                        }
                        addr167:
                        loop3:
                        switch(§§pop())
                        {
                           case 0:
                              this.mClip.priceTag.visible = true;
                              this.mClip.background.gotoAndStop("buy");
                              break;
                              addr97:
                              addr89:
                           case 1:
                              this.mClip.priceTag.visible = false;
                              loop0:
                              while(true)
                              {
                                 this.mClip.background.gotoAndStop("normal");
                                 addr61:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       break loop0;
                                    }
                                    continue loop0;
                                 }
                              }
                              addr46:
                              break;
                           case 2:
                              this.mClip.priceTag.visible = false;
                              while(true)
                              {
                                 this.mClip.background.gotoAndStop("default");
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    if(_loc4_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             if(true)
                                             {
                                                break loop3;
                                             }
                                             §§goto(addr46);
                                          }
                                          else
                                          {
                                             §§goto(addr97);
                                          }
                                       }
                                       §§goto(addr89);
                                    }
                                    else
                                    {
                                       §§goto(addr61);
                                    }
                                 }
                                 break loop3;
                              }
                        }
                        return;
                     }
                     §§goto(addr157);
                  }
               }
               §§goto(addr149);
            }
            §§goto(addr157);
         }
         §§goto(addr152);
      }
      
      public function §[!B§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         if(!(_loc4_ && this))
         {
            §§push(param2);
            if(_loc5_)
            {
               if(§§pop() <= 0)
               {
                  this.§`",§(NORMAL);
                  loop0:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(_loc5_ || param2)
                        {
                           continue;
                        }
                        while(true)
                        {
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                           mClip.priceTag.itemPrice.text = _loc3_;
                        }
                     }
                     addr83:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§push(param2);
               }
            }
            while(true)
            {
               _loc3_ = §§pop() + "";
            }
         }
         §§goto(addr105);
      }
      
      private function §3!G§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§?q§);
         §§push("Inventory_Item_");
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() + param1);
         }
         var _loc2_:Class = §§pop().§ q§(§§pop());
         var _loc3_:MovieClip = new _loc2_();
         if(!_loc5_)
         {
            _loc3_.x = 31 - _loc3_.width * 0.5;
            if(_loc6_)
            {
               _loc3_.y = 31 - _loc3_.height * 0.5;
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr82);
               }
            }
            §§goto(addr99);
         }
         addr82:
         _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
         if(_loc6_)
         {
            addr99:
            this.setIcon(_loc3_);
         }
      }
      
      public function §`@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§`",§(§8L§);
         }
         do
         {
            this.setIcon(this.§3!C§);
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §3!J§() : void
      {
         try
         {
            §&"E§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §2!5§() : void
      {
         try
         {
            §&"E§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
