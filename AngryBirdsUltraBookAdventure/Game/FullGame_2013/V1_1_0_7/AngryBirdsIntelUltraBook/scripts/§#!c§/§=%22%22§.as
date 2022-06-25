package §#!c§
{
   import §2y§.§8!k§;
   import §2y§.§^! §;
   import §9j§.§2A§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   
   public class §=""§ extends §8!k§
   {
      
      public static const §@[§:String = "buy";
      
      public static const §,!Q§:String = "default";
      
      public static const NORMAL:String = "normal";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@[§ = "buy";
            while(true)
            {
               §,!Q§ = "default";
               while(_loc2_)
               {
                  NORMAL = "normal";
                  if(!_loc1_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      private var §`! §:MovieClip;
      
      private var §&?§:MovieClip;
      
      private var §+!P§:String;
      
      public function §=""§(param1:XML, param2:§^! §, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
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
               while(true)
               {
                  if(!(_loc6_ && param3))
                  {
                     if(this.§`! § == null)
                     {
                        if(_loc5_ || param3)
                        {
                           if(!_loc5_)
                           {
                              continue;
                           }
                           if(!(_loc5_ || param2))
                           {
                              continue loop1;
                           }
                           this.§`! § = param1;
                        }
                        break;
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
      }
      
      public function §81§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1;
         if(_loc3_ || param1)
         {
            §§push(§@[§);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§push(0);
                        if(!(_loc3_ || _loc3_))
                        {
                           addr181:
                        }
                     }
                     else
                     {
                        addr161:
                        §§push(1);
                        if(_loc3_ || this)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(NORMAL);
                     if(_loc3_ || _loc2_)
                     {
                        addr140:
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc2_))
                        {
                           addr148:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr161);
                              }
                           }
                           else
                           {
                              addr172:
                              if(§,!Q§ !== _loc2_)
                              {
                                 addr186:
                                 loop1:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this.mClip.priceTag.visible = true;
                                       this.mClip.background.gotoAndStop("buy");
                                       break;
                                       addr96:
                                       addr78:
                                    case 1:
                                       this.mClip.priceTag.visible = false;
                                       addr69:
                                       if(!_loc4_)
                                       {
                                          this.mClip.background.gotoAndStop("normal");
                                          addr29:
                                          break;
                                          addr60:
                                       }
                                       else
                                       {
                                          §§goto(addr96);
                                       }
                                       break;
                                    case 2:
                                       this.mClip.priceTag.visible = false;
                                       while(true)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(_loc3_)
                                                {
                                                   this.mClip.background.gotoAndStop("default");
                                                   if(_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(true)
                                                      {
                                                         break loop1;
                                                      }
                                                   }
                                                   break loop1;
                                                }
                                                break;
                                             }
                                             §§goto(addr69);
                                             §§goto(addr29);
                                          }
                                          §§goto(addr60);
                                       }
                                       §§goto(addr78);
                                 }
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr186);
                           §§goto(addr186);
                        }
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr186);
               }
               §§goto(addr148);
            }
            §§goto(addr140);
         }
         §§goto(addr161);
      }
      
      public function §1!A§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(!_loc5_)
         {
            if(param2 <= 0)
            {
               this.§81§(NORMAL);
               loop0:
               while(true)
               {
                  if(!_loc5_)
                  {
                     if(!(_loc5_ && param1))
                     {
                        if(_loc4_ || this)
                        {
                           continue;
                        }
                        addr110:
                        while(true)
                        {
                           this.§81§(§@[§);
                        }
                     }
                     while(true)
                     {
                        mClip.priceTag.itemPrice.text = _loc3_;
                     }
                  }
                  addr94:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §§push(§2A§.§>!=§(param2));
               if(_loc4_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
         }
         §§goto(addr110);
      }
      
      private function §&!J§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§,!j§);
         §§push("Inventory_Item_");
         if(!_loc6_)
         {
            §§push(§§pop() + param1);
         }
         var _loc2_:Class = §§pop().§!!N§(§§pop());
         var _loc3_:MovieClip = new _loc2_();
         if(_loc5_)
         {
            _loc3_.x = 31 - _loc3_.width * 0.5;
            if(_loc5_ || _loc2_)
            {
               _loc3_.y = 31 - _loc3_.height * 0.5;
               §§goto(addr56);
            }
            §§goto(addr98);
         }
         addr56:
         if(!_loc6_)
         {
            _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
            if(_loc5_ || _loc3_)
            {
               addr98:
               this.setIcon(_loc3_);
            }
         }
      }
      
      public function §3!R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§81§(§,!Q§);
            do
            {
               this.setIcon(this.§`! §);
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §>!e§() : void
      {
         try
         {
            §#!H§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §7!E§() : void
      {
         try
         {
            §#!H§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
