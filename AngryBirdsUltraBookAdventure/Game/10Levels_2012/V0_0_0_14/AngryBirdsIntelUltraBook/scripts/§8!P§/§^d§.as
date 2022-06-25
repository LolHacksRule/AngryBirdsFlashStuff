package §8!P§
{
   import §-2§.§ !O§;
   import §`M§.§9!#§;
   import §`M§.§>g§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   
   public class §^d§ extends §>g§
   {
      
      public static const §=]§:String = "buy";
      
      public static const §?l§:String = "default";
      
      public static const NORMAL:String = "normal";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=]§ = "buy";
            while(true)
            {
               §?l§ = "default";
               while(!_loc2_)
               {
                  NORMAL = "normal";
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      private var §4m§:MovieClip;
      
      private var §#!c§:MovieClip;
      
      private var §]h§:String;
      
      public function §^d§(param1:XML, param2:§9!#§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
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
               while(this.§4m§ == null)
               {
                  if(_loc6_)
                  {
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        continue loop1;
                     }
                     if(_loc5_ && param1)
                     {
                        continue loop0;
                     }
                     this.§4m§ = param1;
                  }
                  break;
               }
               return;
            }
         }
      }
      
      public function § !7§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1;
         if(!_loc3_)
         {
            §§push(§=]§);
            if(_loc4_ || param1)
            {
               §§push(_loc2_);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc3_)
                     {
                        addr119:
                        §§push(0);
                        if(!_loc4_)
                        {
                           addr155:
                        }
                     }
                     else
                     {
                        addr152:
                        §§push(1);
                        if(_loc4_)
                        {
                           §§goto(addr155);
                        }
                     }
                  }
                  else
                  {
                     §§push(NORMAL);
                     if(!_loc3_)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || param1)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc3_ && this))
                              {
                                 §§goto(addr152);
                              }
                           }
                           else
                           {
                              addr158:
                              if(§?l§ !== _loc2_)
                              {
                                 addr172:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this.mClip.priceTag.visible = true;
                                       this.mClip.background.gotoAndStop("buy");
                                       break;
                                       addr92:
                                       addr74:
                                    case 1:
                                       this.mClip.priceTag.visible = false;
                                       loop0:
                                       while(true)
                                       {
                                          this.mClip.background.gotoAndStop("normal");
                                          addr56:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                break loop0;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       addr33:
                                       break;
                                    case 2:
                                       this.mClip.priceTag.visible = false;
                                       if(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   this.mClip.background.gotoAndStop("default");
                                                   if(_loc4_ || this)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr33);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr92);
                                             }
                                             §§goto(addr74);
                                          }
                                          else
                                          {
                                             §§goto(addr56);
                                          }
                                       }
                                 }
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr172);
                           if(_loc4_ || param1)
                           {
                           }
                        }
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr172);
               }
            }
            §§goto(addr158);
         }
         §§goto(addr119);
      }
      
      public function §2!L§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         if(!_loc4_)
         {
            if(param2 <= 0)
            {
               this.§ !7§(NORMAL);
               do
               {
                  if(!(_loc4_ && param1))
                  {
                     if(!_loc4_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           continue;
                        }
                        loop1:
                        while(true)
                        {
                           this.§ !7§(§=]§);
                           addr94:
                           while(true)
                           {
                              §§push(§ !O§.§9"§(param2));
                              if(_loc5_)
                              {
                                 §§push(§§pop());
                              }
                              _loc3_ = §§pop();
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        mClip.priceTag.itemPrice.text = _loc3_;
                     }
                  }
                  while(_loc4_)
                  {
                  }
               }
               while(this.§<!D§(param1), _loc4_);
               
               return;
               addr33:
            }
            §§goto(addr94);
         }
         §§goto(addr33);
      }
      
      private function §<!D§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§9!N§);
         §§push("Inventory_Item_");
         if(_loc5_)
         {
            §§push(§§pop() + param1);
         }
         var _loc2_:Class = §§pop().§0!k§(§§pop());
         var _loc3_:MovieClip = new _loc2_();
         if(!_loc6_)
         {
            _loc3_.x = 31 - _loc3_.width * 0.5;
            if(!(_loc6_ && _loc3_))
            {
               _loc3_.y = 31 - _loc3_.height * 0.5;
               §§goto(addr56);
            }
            §§goto(addr81);
         }
         addr56:
         if(_loc5_ || param1)
         {
            addr81:
            _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
            if(!_loc6_)
            {
               this.setIcon(_loc3_);
            }
         }
      }
      
      public function §&!p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§ !7§(§?l§);
         }
         do
         {
            this.setIcon(this.§4m§);
         }
         while(!_loc1_);
         
      }
      
      public function §?t§() : void
      {
         try
         {
            §27§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §8P§() : void
      {
         try
         {
            §27§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
