package §89§
{
   import §7=§.§7j§;
   import §?!7§.§8;§;
   import §?!7§.§=!#§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   
   public class §?O§ extends §=!#§
   {
      
      public static const §2!B§:String = "buy";
      
      public static const §'4§:String = "default";
      
      public static const NORMAL:String = "normal";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §2!B§ = "buy";
         }
         do
         {
            §'4§ = "default";
            do
            {
               NORMAL = "normal";
            }
            while(_loc2_);
            
         }
         while(!(_loc1_ || §?O§));
         
      }
      
      private var §;D§:MovieClip;
      
      private var §4!m§:MovieClip;
      
      private var §>!=§:String;
      
      public function §?O§(param1:XML, param2:§8;§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            param2 = "IconHolder";
         }
         var _loc4_:MovieClip = mClip.getChildByName(param2) as MovieClip;
         loop0:
         while(true)
         {
            if(_loc4_.numChildren <= 0)
            {
               if(_loc6_)
               {
                  super.setIcon(param1,param2,param3);
               }
               while(true)
               {
                  if(_loc6_)
                  {
                     if(this.§;D§ == null)
                     {
                        if(!(_loc5_ && param2))
                        {
                           if(_loc5_)
                           {
                              continue;
                           }
                           this.§;D§ = param1;
                        }
                        break;
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
            _loc4_.removeChildAt(0);
         }
      }
      
      public function § !%§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1;
         if(_loc3_ || this)
         {
            §§push(§2!B§);
            if(_loc3_ || _loc2_)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_)
                     {
                        addr138:
                        §§push(0);
                        if(!(_loc3_ || param1))
                        {
                           addr184:
                        }
                     }
                     else
                     {
                        addr176:
                        §§push(1);
                        if(!(_loc4_ && param1))
                        {
                           §§goto(addr184);
                        }
                     }
                  }
                  else
                  {
                     §§push(NORMAL);
                     if(!_loc4_)
                     {
                        addr150:
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc3_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && this))
                              {
                                 §§goto(addr176);
                              }
                           }
                           else
                           {
                              addr187:
                              if(§'4§ !== _loc2_)
                              {
                                 addr201:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this.mClip.priceTag.visible = true;
                                       this.mClip.background.gotoAndStop("buy");
                                       break;
                                       addr106:
                                       addr88:
                                    case 1:
                                       this.mClip.priceTag.visible = false;
                                       if(_loc3_ || this)
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             this.mClip.background.gotoAndStop("normal");
                                             addr29:
                                             break;
                                             addr58:
                                          }
                                          else
                                          {
                                             §§goto(addr106);
                                          }
                                       }
                                       break;
                                    case 2:
                                       this.mClip.priceTag.visible = false;
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             this.mClip.background.gotoAndStop("default");
                                             if(_loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr88);
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr58);
                                          §§goto(addr29);
                                       }
                                 }
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr201);
                           §§goto(addr201);
                        }
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr201);
               }
               §§goto(addr187);
            }
            §§goto(addr150);
         }
         §§goto(addr138);
      }
      
      public function §#!S§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(_loc4_)
         {
            if(param2 <= 0)
            {
               this.§ !%§(NORMAL);
               do
               {
                  if(_loc4_ || this)
                  {
                     if(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           continue;
                        }
                        addr105:
                        while(true)
                        {
                           this.§ !%§(§2!B§);
                        }
                        addr105:
                     }
                     loop1:
                     for(; _loc5_; §§goto(addr105))
                     {
                        while(true)
                        {
                           §§push(§7j§.§`B§(param2));
                           if(_loc4_ || param2)
                           {
                              §§push(§§pop());
                           }
                           _loc3_ = §§pop();
                           continue loop1;
                        }
                     }
                     mClip.priceTag.itemPrice.text = _loc3_;
                  }
               }
               while(this.§^F§(param1), _loc5_ && param1);
               
               return;
            }
            §§goto(addr93);
         }
         §§goto(addr105);
      }
      
      private function §^F§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§%!G§);
         §§push("Inventory_Item_");
         if(_loc6_)
         {
            §§push(§§pop() + param1);
         }
         var _loc2_:Class = §§pop().§^!B§(§§pop());
         var _loc3_:MovieClip = new _loc2_();
         if(_loc6_)
         {
            _loc3_.x = 31 - _loc3_.width * 0.5;
            if(!_loc5_)
            {
               _loc3_.y = 31 - _loc3_.height * 0.5;
               if(!(_loc5_ && _loc2_))
               {
                  _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
                  if(!_loc6_)
                  {
                  }
                  §§goto(addr97);
               }
            }
            this.setIcon(_loc3_);
         }
         addr97:
      }
      
      public function §@!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§ !%§(§'4§);
            do
            {
               this.setIcon(this.§;D§);
            }
            while(!_loc2_);
            
         }
      }
      
      public function §!!1§() : void
      {
         try
         {
            §?!"§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §<!§() : void
      {
         try
         {
            §?!"§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
