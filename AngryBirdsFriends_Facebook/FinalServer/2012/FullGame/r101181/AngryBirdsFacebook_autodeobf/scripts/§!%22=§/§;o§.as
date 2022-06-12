package §!"=§
{
   import §1r§.§,!L§;
   import §4!e§.§+w§;
   import §4!e§.§08§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   
   public class §;o§ extends §+w§
   {
      
      public static const §1!?§:String = "buy";
      
      public static const §-"9§:String = "default";
      
      public static const NORMAL:String = "normal";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §1!?§ = "buy";
            while(true)
            {
               §-"9§ = "default";
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     NORMAL = "normal";
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      private var §=O§:MovieClip;
      
      private var §#k§:MovieClip;
      
      private var §'"$§:String;
      
      public function §;o§(param1:XML, param2:§08§, param3:MovieClip = null)
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
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
               while(this.§=O§ == null)
               {
                  if(!_loc5_)
                  {
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        continue loop1;
                     }
                     this.§=O§ = param1;
                  }
                  if(!(_loc5_ && param1))
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
      }
      
      public function §2!r§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1;
         if(_loc4_ || _loc2_)
         {
            §§push(§1!?§);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                           addr152:
                        }
                     }
                     else
                     {
                        addr149:
                        §§push(2);
                        if(!_loc3_)
                        {
                           §§goto(addr152);
                        }
                     }
                     §§goto(addr157);
                  }
                  else
                  {
                     §§push(NORMAL);
                     if(!_loc3_)
                     {
                        addr131:
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_)
                              {
                                 addr137:
                                 §§push(1);
                                 if(!(_loc4_ || this))
                                 {
                                    §§goto(addr152);
                                 }
                              }
                              else
                              {
                                 §§goto(addr149);
                              }
                              §§goto(addr157);
                           }
                           else
                           {
                              §§push(§-"9§);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr148);
                     }
                     addr148:
                     if(§§pop() === §§pop())
                     {
                        §§goto(addr149);
                     }
                     else
                     {
                        §§push(3);
                     }
                     addr157:
                     switch(§§pop())
                     {
                        case 0:
                           this.mClip.priceTag.visible = true;
                           this.mClip.background.gotoAndStop("buy");
                           break;
                           addr92:
                           addr84:
                        case 1:
                           this.mClip.priceTag.visible = false;
                           addr65:
                           if(!_loc3_)
                           {
                              this.mClip.background.gotoAndStop("normal");
                              if(!(_loc3_ && this))
                              {
                                 if(!_loc3_)
                                 {
                                    addr28:
                                    break;
                                 }
                              }
                              break;
                           }
                           §§goto(addr92);
                           §§goto(addr84);
                        case 2:
                           this.mClip.priceTag.visible = false;
                           if(!_loc3_)
                           {
                              if(_loc4_)
                              {
                                 this.mClip.background.gotoAndStop("default");
                                 if(!_loc3_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr65);
                              §§goto(addr28);
                           }
                     }
                     return;
                     §§push(_loc2_);
                  }
                  §§goto(addr149);
               }
               §§goto(addr148);
            }
            §§goto(addr131);
         }
         §§goto(addr137);
      }
      
      public function §1!1§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         if(!(_loc4_ && _loc3_))
         {
            if(param2 <= 0)
            {
               this.§2!r§(NORMAL);
               loop0:
               while(true)
               {
                  if(!(_loc4_ && this))
                  {
                     if(_loc5_ || param2)
                     {
                        if(_loc5_)
                        {
                           while(true)
                           {
                              continue loop0;
                           }
                           addr86:
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(§,!L§.§ X§(param2));
                              if(!(_loc4_ && this))
                              {
                                 §§push(§§pop());
                              }
                              _loc3_ = §§pop();
                              addr116:
                              while(true)
                              {
                                 this.§2!r§(§1!?§);
                              }
                           }
                           addr104:
                        }
                     }
                     while(true)
                     {
                        mClip.priceTag.itemPrice.text = _loc3_;
                        §§goto(addr116);
                     }
                  }
                  while(!_loc5_)
                  {
                     §§goto(addr116);
                  }
               }
               return;
            }
            §§goto(addr104);
         }
         §§goto(addr86);
      }
      
      private function § !=§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§8B§);
         §§push("Inventory_Item_");
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop() + param1);
         }
         var _loc2_:Class = §§pop().§6"C§(§§pop());
         var _loc3_:MovieClip = new _loc2_();
         if(!(_loc5_ && this))
         {
            _loc3_.x = 31 - _loc3_.width * 0.5;
            if(!_loc5_)
            {
               _loc3_.y = 31 - _loc3_.height * 0.5;
               addr62:
               if(_loc6_)
               {
                  _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
                  if(!_loc5_)
                  {
                     this.setIcon(_loc3_);
                  }
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function §>"-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§2!r§(§-"9§);
            do
            {
               this.setIcon(this.§=O§);
            }
            while(!_loc1_);
            
         }
      }
      
      public function §"c§() : void
      {
         try
         {
            §%!1§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §4'§() : void
      {
         try
         {
            §%!1§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
